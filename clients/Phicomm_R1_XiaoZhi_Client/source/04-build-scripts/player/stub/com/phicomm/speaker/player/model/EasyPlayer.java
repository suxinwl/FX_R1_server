package com.phicomm.speaker.player.model;

import android.content.Context;

/**
 * 【仅编译期 stub，不进 dex】原厂 EasyPlayer 的方法签名影子。
 *
 * <p>注入层与被注入的原厂代码在**同一个 dex** 里，运行时拿到的是真类；
 * 但 javac 编译注入类时必须有个「长得一样」的类型才能做类型检查，
 * 所以这里只声明我们会用到的那几个方法，编译到 stubout/ 后不打包。</p>
 */
public class EasyPlayer {

    public static EasyPlayer getInstance(Context context) {
        return null;
    }

    public boolean play(PlayRequestInfo playRequestInfo, boolean startSelf) {
        return false;
    }

    public boolean playIndex(int index, boolean startSelf) {
        return false;
    }

    public boolean start() {
        return false;
    }

    public boolean pause() {
        return false;
    }

    public boolean stop() {
        return false;
    }

    public boolean playNext(boolean startSelf) {
        return false;
    }

    public boolean playPre(boolean startSelf) {
        return false;
    }

    public boolean isPlaying() {
        return false;
    }

    public PlaySong getCurrentSong() {
        return null;
    }

    public PlayPositionInfo getPlayPosition() {
        return null;
    }

    public int getPlayMode() {
        return 0;
    }

    public boolean setPlayMode(int mode) {
        return false;
    }

    /** 当前在跑哪个播放器（0=网络 1=蓝牙 … 具体枚举值未考证，页面只显示数字）。 */
    public int getPlayerSort() {
        return 0;
    }

    public boolean isNetPlayerOnline() {
        return false;
    }

    public boolean isBluetoothPlayerOnline() {
        return false;
    }
}
