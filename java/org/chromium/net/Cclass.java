package org.chromium.net;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.NetworkActivationRequest;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.class, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cclass implements NetworkActivationRequest.Natives {

    /* renamed from: do, reason: not valid java name */
    private static NetworkActivationRequest.Natives f33440do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<NetworkActivationRequest.Natives> f33441if = new Cdo();

    /* renamed from: org.chromium.net.class$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<NetworkActivationRequest.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(NetworkActivationRequest.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            NetworkActivationRequest.Natives unused = Cclass.f33440do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static NetworkActivationRequest.Natives m37481if() {
        if (oe0.f4582do) {
            NetworkActivationRequest.Natives natives = f33440do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.NetworkActivationRequest.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cclass();
    }

    @Override // org.chromium.net.NetworkActivationRequest.Natives
    public void notifyAvailable(long j, long j2) {
        oe0.z(j, j2);
    }
}
