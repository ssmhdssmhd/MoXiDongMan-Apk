package org.chromium.net;

import android.net.TrafficStats;
import android.os.Process;
import android.support.v4.lo0;
import org.chromium.base.annotations.CalledByNative;

@lo0("net::android::traffic_stats")
/* loaded from: classes3.dex */
public class AndroidTrafficStats {
    private AndroidTrafficStats() {
    }

    @CalledByNative
    private static long getCurrentUidRxBytes() {
        long uidRxBytes = TrafficStats.getUidRxBytes(Process.myUid());
        if (uidRxBytes != -1) {
            return uidRxBytes;
        }
        return 0L;
    }

    @CalledByNative
    private static long getCurrentUidTxBytes() {
        long uidTxBytes = TrafficStats.getUidTxBytes(Process.myUid());
        if (uidTxBytes != -1) {
            return uidTxBytes;
        }
        return 0L;
    }

    @CalledByNative
    private static long getTotalRxBytes() {
        long totalRxBytes = TrafficStats.getTotalRxBytes();
        if (totalRxBytes != -1) {
            return totalRxBytes;
        }
        return 0L;
    }

    @CalledByNative
    private static long getTotalTxBytes() {
        long totalTxBytes = TrafficStats.getTotalTxBytes();
        if (totalTxBytes != -1) {
            return totalTxBytes;
        }
        return 0L;
    }
}
