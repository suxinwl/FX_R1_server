# -*- coding: utf-8 -*-
"""
pl-1.6.23：`new_NetPlayer.pause()` 幂等化。

现象：音箱空闲（引擎 mPlayState = MEDIA_STOPPED(0) / MEDIA_PLAY_ERROR(4) /
      没建 PlayerInstance）时点「暂停」，界面弹 ERR 暂停，但什么都没坏。

根因：pauseInternal() 在 0/4 分支直接 return 0，pause() 把它原样返回，
      经 PlayerBinderWrapper$2$6 -> Future<Boolean> -> AIDL 落到 PCtl.pause()
      => ok(false, "暂停") => 文案 ERR。
      功能上「暂停一个本来就没在播的东西」本来就该算成功，返回 false 纯属误报。

改法：只动 pause() 的失败尾巴（:cond_2d），返回 true，并打标记便于复核。
      不动 start()（起播失败必须如实报错），不动 pauseInternal()（别处可能依赖它）。
"""
import io, sys, os

CV = 'cond_2d'

OLD = """.line 189
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->pauseInternal()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 190
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x1

    return v0

    :cond_2d
    return v1"""

NEW = """.line 189
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->pauseInternal()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 190
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x1

    return v0

    :cond_2d
    # r1web: pause 幂等 —— 已停止/已出错/未建实例时引擎给 false，对上层就是「已经暂停好了」
    const/4 v0, 0x1

    return v0"""


def norm(t):
    return t.replace('\r\n', '\n')


def main():
    p = sys.argv[1]
    s = norm(io.open(p, encoding='utf-8', errors='ignore').read())
    if 'r1web: pause 幂等' in s:
        print('  [OK] pause 幂等已打过')
        return
    if OLD not in s:
        # 退一步：只锚 :cond_2d + return v1（在 pause 之后出现的第一处）
        i = s.find('pauseInternal()Z')
        if i < 0:
            print('  [FAIL] 找不到 pauseInternal 调用')
            sys.exit(1)
        j = s.find(':cond_2d\n    return v1', i)
        if j < 0:
            print('  [FAIL] 找不到 :cond_2d return v1')
            sys.exit(1)
        tail = ':cond_2d\n    return v1'
        new_tail = (':cond_2d\n'
                    '    # r1web: pause 幂等 —— 已停止/已出错/未建实例时引擎给 false，'
                    '对上层就是「已经暂停好了」\n'
                    '    const/4 v0, 0x1\n\n'
                    '    return v0')
        s = s[:j] + new_tail + s[j + len(tail):]
    else:
        s = s.replace(OLD, NEW, 1)
    io.open(p, 'w', encoding='utf-8', newline='\n').write(s)
    print('  [OK] new_NetPlayer.pause 幂等化')


if __name__ == '__main__':
    main()
