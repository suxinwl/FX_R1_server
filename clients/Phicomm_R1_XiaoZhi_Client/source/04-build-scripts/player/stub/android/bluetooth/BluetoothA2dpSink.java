package android.bluetooth;

import java.util.List;

/**
 * 【仅编译期 stub，不进 dex】{@code android.bluetooth.BluetoothA2dpSink} 是
 * 框架的<b>隐藏类</b>（framework.jar 里，不在 android.jar 中），javac 编不到它，
 * 但运行时系统里有 —— 原厂 BluetoothPlayer 就是直接用它的（A2DP sink = 音箱角色）。
 *
 * <p>这里只声明我们用得到的几个方法，签名必须和真类一致，否则运行期
 * NoSuchMethod。编译产物落在 stubout/ 不进 dex。</p>
 */
public final class BluetoothA2dpSink implements BluetoothProfile {

    public List<BluetoothDevice> getConnectedDevices() {
        return null;
    }

    public int getConnectionState(BluetoothDevice device) {
        return 0;
    }

    /** 隐藏方法（API19+）：主动去连某个已配对设备的 A2DP。 */
    public boolean connect(BluetoothDevice device) {
        return false;
    }

    public boolean disconnect(BluetoothDevice device) {
        return false;
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        return null;
    }
}
