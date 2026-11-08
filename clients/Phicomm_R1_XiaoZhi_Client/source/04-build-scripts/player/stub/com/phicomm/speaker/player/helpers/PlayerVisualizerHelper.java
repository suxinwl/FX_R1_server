package com.phicomm.speaker.player.helpers;

import android.content.Context;

/**
 * 【编译期 stub】原厂 PlayerVisualizerHelper 的影子 —— 只声明注入层用到的方法。
 *
 * <p>★ stub 不进 dex：运行期真的调到 smali_exo 里那份原厂实现。</p>
 *
 * <p>pl-1.6.61 为什么需要它：原厂放歌时会 {@code obtain(ctx).enable()} 开
 * 「音乐律动」灯效（lightId 519）—— 那个动画由**灯效服务**直接写 A 组，
 * 不走 {@code LedLight.setColor}，我们挂在 setColor 上的钩子拦不到它
 * ⇒ 夜灯开着放歌，底部氛围环被 519 的律动盖住（用户看到的「闪一下」）。
 * 现在夜灯开/关时由 Amb 主动 disable / enable 这条通路。</p>
 */
public class PlayerVisualizerHelper {

    public static PlayerVisualizerHelper obtain(Context ctx) {
        return null;
    }

    public synchronized void enable() {
    }

    public synchronized void disable() {
    }
}
