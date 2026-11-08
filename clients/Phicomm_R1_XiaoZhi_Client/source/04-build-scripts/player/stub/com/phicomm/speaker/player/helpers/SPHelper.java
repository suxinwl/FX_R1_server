package com.phicomm.speaker.player.helpers;

import android.content.Context;

/**
 * 【编译期 stub】原厂 SPHelper 的影子 —— 只声明注入层用到的那两个方法。
 *
 * <p>★ stub 不进 dex：运行期真的调到 smali_exo 里那份原厂实现
 * （它内部走 PreferenceUtil 取名为 "com.phicomm.speaker.player" 的 SP）。</p>
 *
 * <p>用它而不是写文件：:NetPlayer 子进程读不到主进程建的 files/ 下的 flag（实测
 * exists() 恒 false），而 SP 两个进程口径一致。</p>
 */
public class SPHelper {

    public static int getIntValue(Context ctx, String key, int def) {
        return def;
    }

    public static void setIntValue(Context ctx, String key, int value) {
    }
}
