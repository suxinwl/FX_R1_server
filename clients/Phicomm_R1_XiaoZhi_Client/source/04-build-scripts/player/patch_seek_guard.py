# -*- coding: utf-8 -*-
"""
pl-1.6.129：MultiMediaPlayer.seek 未 prepare 直接拒绝 —— 不许再碰 MediaPlayer。

现象（2026-11-03 logcat 实锤，pid 31023 = :NetPlayer）：
    20:08:25.707 E/MediaPlayer: Attempt to call getDuration without a valid mediaplayer
    20:08:25.707 E/MediaPlayer: Attempt to perform seekTo in wrong state: mCurrentState=0
    20:08:25.708 E/MediaPlayer: Error (-38,0)
    20:08:25.717 NetPlayer4 set new PlayState: 4        (= MEDIA_PLAY_ERROR)
    20:08:25.724 NetPlayer4 stop PlayState: MEDIA_PLAY_ERROR

根因：原厂 seek(I) 一进门就 getCurrentMediaPlayer() + getDuration()。
      prepareAsync 还没回来（mMediaPlayerPrepared=false、native 状态 0）时被拖一把，
      getDuration/seekTo 抛 -38，错误回调把**整条播放**判成失败 ⇒「点了只进队列不出声」。
      而 PCtl.seekTo 本来就用「返回 <0」表示拖不动，所以这里直接返回 -1 即可，
      不需要任何 MediaPlayer 调用。

改法：方法头（monitor-enter 之后、try 区之前）插闸门
      getCurrentMediaPlayerPrepared() == false ⇒ monitor-exit + return -1。

⚠️ 第一版把 if-eqz/if-nez 写反了（prepared=true 反而落进拒绝分支）⇒ 所有 seek 全被拒；
   实机 logcat 打出 idx=1 / mpPrepared=true 才定位到，现已改为 if-nez。
"""
import io
import sys

MARK = 'r1web: 未 prepare 不许 seek'

GATE = """    # {mark}（否则 getDuration / seekTo 抛 -38 把整条播放判死）
    # 注意：getCurrentMediaPlayerPrepared() 返回 1 = 已 prepare ⇒ 非零要**跳过去**
    invoke-direct {{p0}}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getCurrentMediaPlayerPrepared()Z

    move-result v2

    if-nez v2, :r1seek_ok

    const-string v2, "R1SEEK"

    const-string v0, "还没 prepare ⇒ 拒绝 seek（防 -38 打死整条播放）"

    invoke-static {{v2, v0}}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :r1seek_ok

"""


def norm(t):
    return t.replace('\r\n', '\n')


def patch(path):
    s = norm(io.open(path, encoding='utf-8', errors='ignore').read())
    if MARK in s:
        print('  [OK] MultiMediaPlayer.seek 闸门已打过')
        return
    anchor = '.method public declared-synchronized seek(I)I'
    i = s.find(anchor)
    if i < 0:
        print('  [FAIL] 找不到 MultiMediaPlayer.seek(I)I')
        sys.exit(1)
    j = s.find('monitor-enter p0', i)
    if j < 0:
        print('  [FAIL] seek 里找不到 monitor-enter p0')
        sys.exit(1)
    eol = s.find('\n', j)
    if eol < 0:
        print('  [FAIL] monitor-enter 行异常')
        sys.exit(1)
    s = s[:eol + 1] + GATE.format(mark=MARK) + s[eol + 1:]
    io.open(path, 'w', encoding='utf-8', newline='\n').write(s)
    print('  [OK] MultiMediaPlayer.seek 未 prepare 拒绝闸门已插')


def main():
    if len(sys.argv) < 2:
        print('usage: patch_seek_guard.py <smali_build_dir>')
        sys.exit(1)
    path = sys.argv[1].rstrip('/') + '/com/phicomm/speaker/player/model/MultiMediaPlayer.smali'
    patch(path)


if __name__ == '__main__':
    main()
