package org.chromium.base;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.ApplicationStatus;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif implements ApplicationStatus.Natives {

    /* renamed from: do, reason: not valid java name */
    private static ApplicationStatus.Natives f33167do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<ApplicationStatus.Natives> f33168if = new Cdo();

    /* renamed from: org.chromium.base.if$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<ApplicationStatus.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(ApplicationStatus.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            ApplicationStatus.Natives unused = Cif.f33167do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static ApplicationStatus.Natives m37118if() {
        if (oe0.f4582do) {
            ApplicationStatus.Natives natives = f33167do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.ApplicationStatus.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Cif();
    }

    @Override // org.chromium.base.ApplicationStatus.Natives
    public void onApplicationStateChange(int i) {
        oe0.m5585do(i);
    }
}
