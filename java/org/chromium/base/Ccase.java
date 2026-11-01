package org.chromium.base;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.CpuFeatures;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase implements CpuFeatures.Natives {

    /* renamed from: do, reason: not valid java name */
    private static CpuFeatures.Natives f33145do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<CpuFeatures.Natives> f33146if = new Cdo();

    /* renamed from: org.chromium.base.case$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<CpuFeatures.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(CpuFeatures.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            CpuFeatures.Natives unused = Ccase.f33145do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static CpuFeatures.Natives m37001if() {
        if (oe0.f4582do) {
            CpuFeatures.Natives natives = f33145do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.CpuFeatures.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Ccase();
    }

    @Override // org.chromium.base.CpuFeatures.Natives
    public int getCoreCount() {
        return oe0.m5578break();
    }

    @Override // org.chromium.base.CpuFeatures.Natives
    public long getCpuFeatures() {
        return oe0.m5580catch();
    }
}
