package com.phicomm.speaker.player.light;

/** 仅供 javac 编译注入层用（运行时用的是 player 里那个真类）。
 *  真类就两个方法：setColor(long ledMask, int color) 与 native set_color(long, int)。 */
public class LedLight {
    public static void setColor(long ledMask, int color) {
    }

    /** 直写硬件的 native（绕开 setColor 的 mColor 去重缓存）。
     *  七彩必须走它：setColor 被我们挂了钩子，takeover 里再回调 setColor 会无限递归。 */
    public static native void set_color(long ledMask, int color);
}
