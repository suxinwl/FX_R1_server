package com.phicomm.speaker.player.model;

/**
 * 【仅编译期 stub，不进 dex】原厂 RemotePlayer 的方法签名影子。
 *
 * <p>DLNA / AirPlay 这两个播放服务（:DlnaPlayer / :AirPlayer 独立进程）是
 * EasyPlayer 在构造时就 bind 上的，{@code stopService} 对「只被 bind、没被 start」
 * 的服务无效 ⇒ 开关只能走它自己的 connect/disconnectRemoteService（内部
 * bindService / unbindService）。</p>
 */
public class RemotePlayer {

    public void connectRemoteService() {
    }

    public void disconnectRemoteService() {
    }
}
