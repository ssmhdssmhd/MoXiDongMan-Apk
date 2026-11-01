package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.FieldTrialList;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.break, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cbreak implements FieldTrialList.Natives {

    /* renamed from: do, reason: not valid java name */
    private static FieldTrialList.Natives f33143do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<FieldTrialList.Natives> f33144if = new Cdo();

    /* renamed from: org.chromium.base.break$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<FieldTrialList.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(FieldTrialList.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            FieldTrialList.Natives unused = Cbreak.f33143do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static FieldTrialList.Natives m36998if() {
        if (oe0.f4582do) {
            FieldTrialList.Natives natives = f33143do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.FieldTrialList.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cbreak();
    }

    @Override // org.chromium.base.FieldTrialList.Natives
    public boolean createFieldTrial(String str, String str2) {
        return oe0.m5603return(str, str2);
    }

    @Override // org.chromium.base.FieldTrialList.Natives
    public String findFullName(String str) {
        return oe0.m5604static(str);
    }

    @Override // org.chromium.base.FieldTrialList.Natives
    public String getVariationParameter(String str, String str2) {
        return oe0.m5607switch(str, str2);
    }

    @Override // org.chromium.base.FieldTrialList.Natives
    public void logActiveTrials() {
        oe0.m5611throws();
    }

    @Override // org.chromium.base.FieldTrialList.Natives
    public boolean trialExists(String str) {
        return oe0.m5584default(str);
    }
}
