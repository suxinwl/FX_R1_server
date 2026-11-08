# -*- coding: utf-8 -*-
"""pl-1.6.61：夜灯占着底部时，不让原厂开「音乐律动」灯效（lightId 519）。

背景（用户报「暂停和播放音乐的时候底部夜灯还是会闪一下」）：
  播放 → EasyPlayer.startPlayEffectLight() → PlayerVisualizerHelper.enable()
       → PlayerVisualizer.enable() → requestLightEffect(ctx, 519, true)
  519 由**灯效服务**跑动画、直接写 A 组（15 颗氛围环），不走 LedLight.setColor
  ⇒ pl-1.6.59 挂在 setColor 上的 takeover 钩子根本拦不到它 ⇒ 底部夜灯被律动盖住。

  暂停 → disable() → close 519（灯效服务清它写的灯 ⇒ 底部黑一下）
       + LedLight.setColor(0x7FFF, 0)（A 组写黑，暂停窗口日志里实见）。

做法：在 PlayerVisualizer.enable() 门口加一道闸门 —— 夜灯占着底部
（Amb.nightAmbOn()）就直接 return，519 根本不开。
disable() **不动**：夜灯期间它每句恰好都是我们要的 ——
  close 519 正是开夜灯时想做的（Amb.stopMusicLight 走的就是它）；
  setColor(0x7FFF,0) 被 takeover 钩子拦（sNightAmb 时 return true）；
  release Visualizer + 置 mVisualizerEnable=false 也正是要的
  （否则关夜灯后 enable() 会被原厂的 `if-nez mVisualizerEnable` 跳过，519 回不来）。

★ 寄存器：本方法 .registers 6，原厂第一个用 v0 的是 `iget-boolean v0, mVisualizerEnable`
  （在分支标签之后）⇒ 闸门内部用 v0 不冲突。
★ 幂等：已打过就直接跳过（build 脚本可重复跑）。
"""
import io
import sys

MARK = 'r1web: 夜灯期间不开音乐律动 519'

ANCHOR = """.method public enable()V
    .registers 6

    .prologue
    const/4 v4, 0x1
"""

NEW = """.method public enable()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    # r1web: 夜灯期间不开音乐律动 519 —— 灯效服务直接写 A 组，钩子拦不到
    invoke-static {}, Lcn/workbuddy/r1web/Amb;->nightAmbOn()Z

    move-result v0

    # r1web: 排障日志（pl-1.6.61 dbg）
    const-string v1, "r1web"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PV.enable gate nightAmbOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    # r1web: 夜灯占着底部时，闸门拦住 519（nightAmbOn 为 true 时 v0!=0，
    #   不跳 ⇒ 落到 return-void 直接拦截；nightAmbOn 为 false 时 v0==0，
    #   if-eqz 跳到 :r1_pv_on_orig 走原厂正常开灯逻辑）
    if-eqz v0, :r1_pv_on_orig

    return-void

    :r1_pv_on_orig
"""


def main():
    p = sys.argv[1]
    s = io.open(p, encoding='utf-8', errors='ignore', newline='').read()
    s = s.replace('\r\n', '\n')
    if MARK in s:
        print('  [OK] PlayerVisualizer.enable 夜灯闸门已打过')
        return
    n = s.count('.method public enable()V')
    if n != 1:
        print('  [FAIL] PlayerVisualizer.enable()V 找到 %d 个（期望 1）' % n)
        sys.exit(1)
    if ANCHOR in s:
        s = s.replace(ANCHOR, NEW, 1)
        print('  [OK] PlayerVisualizer.enable 夜灯闸门')
    else:
        # 退一步：只要方法头 + .prologue + 下一行在就行（baksmali 版本差异）
        i = s.find('.method public enable()V')
        j = s.find('.prologue', i)
        if j < 0:
            print('  [FAIL] 找不到 enable() 的 .prologue')
            sys.exit(1)
        k = s.find('\n', s.find('\n', j) + 1) + 1   # .prologue 那行的下一行行尾
        tail = NEW[NEW.index('    # r1web'):]
        s = s[:k] + tail + s[k:]
        print('  [OK] PlayerVisualizer.enable 夜灯闸门（宽松锚点）')
    io.open(p, 'w', encoding='utf-8', newline='\n').write(s)


if __name__ == '__main__':
    main()
