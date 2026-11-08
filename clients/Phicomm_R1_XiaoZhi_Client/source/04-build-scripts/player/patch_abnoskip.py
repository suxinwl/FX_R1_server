# -*- coding: utf-8 -*-
"""
pl-1.6.124：有声书/节目行播放失败 ⇒ 引擎禁止自动跳下一集。

现象：点节目 198 集，解析偶发失败时引擎 HandlePlayError 走
      「mPlayFailedCounter<=10 ⇒ gotoNext」快速跳轨（实测 2 秒连跳 4 集），
      页面显示 202、队列停在 200 —— 有声书是连着的故事，跳一集剧情就断档。

根因：原厂 HandlePlayError（new_NetPlayer / NetPlayer4 两个引擎各一份）对
      任何曲目失败都 gotoNext —— 对音乐歌单合理，对节目行是灾难。

改法：方法头插闸门 —— invoke-static PCtl.abNoSkipOnErr()Z（只读本地队列镜像，
      零 binder）。命中 ⇒ 清失败计数、stop()、reportPlayEnd、return（原地停）；
      不命中 ⇒ 原逻辑原样（歌单照旧跳）。
"""
import io, sys

MARK = 'r1web: 有声书/节目失败不跳集'

GATE = """    # {mark}：故事连着，跳一集剧情就断档 ⇒ 原地停
    invoke-static {{}}, Lcn/workbuddy/r1web/PCtl;->abNoSkipOnErr()Z

    move-result v0

    if-eqz v0, :abns_off

    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/player/model/{cls};->mPlayFailedCounter:I

    invoke-virtual {{p0}}, Lcom/phicomm/speaker/player/model/{cls};->stop()Z

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/{cls};->mContext:Landroid/content/Context;

    invoke-static {{v0}}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayEnd(Landroid/content/Context;)V

    return-void

    :abns_off
"""


def norm(t):
    return t.replace('\r\n', '\n')


def patch(path, cls):
    s = norm(io.open(path, encoding='utf-8', errors='ignore').read())
    if MARK in s:
        print('  [OK] %s 已打过' % cls)
        return
    anchor = '.method private HandlePlayError()V'
    i = s.find(anchor)
    if i < 0:
        print('  [FAIL] %s: 找不到 HandlePlayError' % cls)
        sys.exit(1)
    # 锚 .registers 行（方法头第一行），闸门插在它之后、原第一条指令之前
    j = s.find('.registers', i)
    if j < 0:
        print('  [FAIL] %s: 找不到 .registers' % cls)
        sys.exit(1)
    eol = s.find('\n', j)
    if eol < 0:
        print('  [FAIL] %s: .registers 行异常' % cls)
        sys.exit(1)
    s = s[:eol + 1] + GATE.format(mark=MARK, cls=cls) + s[eol + 1:]
    io.open(path, 'w', encoding='utf-8', newline='\n').write(s)
    print('  [OK] %s.HandlePlayError 节目失败不跳集闸门已插' % cls)


def main():
    if len(sys.argv) < 3:
        print('usage: patch_abnoskip.py new_NetPlayer.smali NetPlayer4.smali')
        sys.exit(1)
    patch(sys.argv[1], 'new_NetPlayer')
    patch(sys.argv[2], 'NetPlayer4')


if __name__ == '__main__':
    main()
