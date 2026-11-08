# -*- coding: utf-8 -*-
"""pl-1.6.28：把「七彩氛围灯」挂到原厂 LedLight.setColor 入口。

原理：原厂 PlayerVisualizer 每帧调 LedLight.setColor(0x7FFF, 基色) —— 15 颗同色。
但底层 API 是「掩码 + 颜色」（setColor(long mask, int color)），逐颗写完全可行
（小飞的魔改版就是靠它做多色效果）。所以在 setColor 开头插一个分流：

    invoke-static {p2}, Lcn/workbuddy/r1web/Amb;->takeover(I)Z
    move-result v0
    if-eqz v0, :r1_amb_orig     ; Amb 返回 false（七彩没开）⇒ 走原厂
    return-void                 ; 返回 true ⇒ 这一帧 Amb 已经逐颗写完了
    :r1_amb_orig

★ 寄存器：本方法 .registers 5，参数 J 占 p0/p1、I 占 p2 ⇒ v0/v1 空闲，
  原厂后面第一句就是 `sget v0, ...mColor:I`，用 v0 不冲突。
★ 幂等：已打过就直接跳过（build 脚本可重复跑）。
"""
import io
import sys

ANCHOR = """.method public static setColor(JI)V
    .registers 5
    .param p0, "ledMask"    # J
    .param p2, "color"    # I

    .prologue
"""

NEW = """.method public static setColor(JI)V
    .registers 5
    .param p0, "ledMask"    # J
    .param p2, "color"    # I

    .prologue
    # r1web: 七彩氛围灯 —— 开着时整帧由 Amb 逐颗写（每次闪动乱序一次）
    invoke-static {p2}, Lcn/workbuddy/r1web/Amb;->takeover(I)Z

    move-result v0

    if-eqz v0, :r1_amb_orig

    return-void

    :r1_amb_orig
"""

MARK = 'r1web: 七彩氛围灯'


def main():
    p = sys.argv[1]
    s = io.open(p, encoding='utf-8', errors='ignore', newline='').read()
    s = s.replace('\r\n', '\n')
    if MARK in s:
        print('  [OK] 七彩氛围灯钩子已打过')
        return
    if ANCHOR not in s:
        # 退一步：只要方法头 + .prologue 在就行（不同 baksmali 版本的 .param 行可能有出入）
        i = s.find('.method public static setColor(JI)V')
        if i < 0:
            print('  [FAIL] 找不到 LedLight.setColor(JI)V')
            sys.exit(1)
        j = s.find('.prologue', i)
        if j < 0:
            print('  [FAIL] 找不到 setColor 的 .prologue')
            sys.exit(1)
        k = s.find('\n', j) + 1
        head = s[i:k]
        tail = NEW[NEW.index('.prologue'):]
        tail = tail[tail.index('\n') + 1:]
        s = s[:k] + tail + s[k:]
        print('  [OK] 七彩氛围灯钩子（宽松锚点）')
    else:
        s = s.replace(ANCHOR, NEW, 1)
        print('  [OK] 七彩氛围灯钩子')
    io.open(p, 'w', encoding='utf-8', newline='\n').write(s)


if __name__ == '__main__':
    main()
