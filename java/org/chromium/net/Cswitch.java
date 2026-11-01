package org.chromium.net;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.X509Util;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.net.switch, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cswitch implements X509Util.Natives {

    /* renamed from: do, reason: not valid java name */
    private static X509Util.Natives f33732do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<X509Util.Natives> f33733if = new Cdo();

    /* renamed from: org.chromium.net.switch$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<X509Util.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(X509Util.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            X509Util.Natives unused = Cswitch.f33732do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static X509Util.Natives m37716if() {
        if (oe0.f4582do) {
            X509Util.Natives natives = f33732do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.X509Util.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cswitch();
    }

    @Override // org.chromium.net.X509Util.Natives
    public void notifyKeyChainChanged() {
        oe0.I();
    }
}
