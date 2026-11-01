package org.chromium.net.impl;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.net.impl.CronetLibraryLoader;

@dl("crbug.com/993421")
/* renamed from: org.chromium.net.impl.for, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cfor implements CronetLibraryLoader.Natives {

    /* renamed from: do, reason: not valid java name */
    private static CronetLibraryLoader.Natives f33653do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<CronetLibraryLoader.Natives> f33654if = new Cdo();

    /* renamed from: org.chromium.net.impl.for$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<CronetLibraryLoader.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(CronetLibraryLoader.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            CronetLibraryLoader.Natives unused = Cfor.f33653do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CronetLibraryLoader.Natives m37667if() {
        if (oe0.f4582do) {
            CronetLibraryLoader.Natives natives = f33653do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.net.impl.CronetLibraryLoader.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cfor();
    }

    @Override // org.chromium.net.impl.CronetLibraryLoader.Natives
    public void cronetInitOnInitThread() {
        oe0.P();
    }

    @Override // org.chromium.net.impl.CronetLibraryLoader.Natives
    public String getCronetVersion() {
        return oe0.Q();
    }
}
