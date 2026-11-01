package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.Features;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.this, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cthis implements Features.Natives {

    /* renamed from: do, reason: not valid java name */
    private static Features.Natives f33282do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<Features.Natives> f33283if = new Cdo();

    /* renamed from: org.chromium.base.this$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<Features.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(Features.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            Features.Natives unused = Cthis.f33282do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Features.Natives m37267if() {
        if (oe0.f4582do) {
            Features.Natives natives = f33282do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.Features.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cthis();
    }

    @Override // org.chromium.base.Features.Natives
    public boolean getFieldTrialParamByFeatureAsBoolean(long j, String str, boolean z) {
        return oe0.m5597native(j, str, z);
    }

    @Override // org.chromium.base.Features.Natives
    public boolean isEnabled(long j) {
        return oe0.m5602public(j);
    }
}
