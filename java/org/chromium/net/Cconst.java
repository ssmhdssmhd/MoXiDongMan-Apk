package org.chromium.net;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.NetworkChangeNotifier;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.const, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cconst implements NetworkChangeNotifier.Natives {

    /* renamed from: do, reason: not valid java name */
    private static NetworkChangeNotifier.Natives f33442do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<NetworkChangeNotifier.Natives> f33443if = new Cdo();

    /* renamed from: org.chromium.net.const$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<NetworkChangeNotifier.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(NetworkChangeNotifier.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            NetworkChangeNotifier.Natives unused = Cconst.f33442do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static NetworkChangeNotifier.Natives m37484if() {
        if (oe0.f4582do) {
            NetworkChangeNotifier.Natives natives = f33442do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.NetworkChangeNotifier.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cconst();
    }

    @Override // org.chromium.net.NetworkChangeNotifier.Natives
    public void notifyConnectionTypeChanged(long j, NetworkChangeNotifier networkChangeNotifier, int i, long j2) {
        oe0.A(j, networkChangeNotifier, i, j2);
    }

    @Override // org.chromium.net.NetworkChangeNotifier.Natives
    public void notifyMaxBandwidthChanged(long j, NetworkChangeNotifier networkChangeNotifier, int i) {
        oe0.B(j, networkChangeNotifier, i);
    }

    @Override // org.chromium.net.NetworkChangeNotifier.Natives
    public void notifyOfNetworkConnect(long j, NetworkChangeNotifier networkChangeNotifier, long j2, int i) {
        oe0.C(j, networkChangeNotifier, j2, i);
    }

    @Override // org.chromium.net.NetworkChangeNotifier.Natives
    public void notifyOfNetworkDisconnect(long j, NetworkChangeNotifier networkChangeNotifier, long j2) {
        oe0.D(j, networkChangeNotifier, j2);
    }

    @Override // org.chromium.net.NetworkChangeNotifier.Natives
    public void notifyOfNetworkSoonToDisconnect(long j, NetworkChangeNotifier networkChangeNotifier, long j2) {
        oe0.E(j, networkChangeNotifier, j2);
    }

    @Override // org.chromium.net.NetworkChangeNotifier.Natives
    public void notifyPurgeActiveNetworkList(long j, NetworkChangeNotifier networkChangeNotifier, long[] jArr) {
        oe0.F(j, networkChangeNotifier, jArr);
    }
}
