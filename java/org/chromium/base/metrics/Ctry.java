package org.chromium.base.metrics;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.base.metrics.RecordUserAction;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.metrics.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry implements RecordUserAction.Natives {

    /* renamed from: do, reason: not valid java name */
    private static RecordUserAction.Natives f33208do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<RecordUserAction.Natives> f33209if = new Cdo();

    /* renamed from: org.chromium.base.metrics.try$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<RecordUserAction.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(RecordUserAction.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            RecordUserAction.Natives unused = Ctry.f33208do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static RecordUserAction.Natives m37179if() {
        if (oe0.f4582do) {
            RecordUserAction.Natives natives = f33208do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.metrics.RecordUserAction.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Ctry();
    }

    @Override // org.chromium.base.metrics.RecordUserAction.Natives
    public long addActionCallbackForTesting(RecordUserAction.UserActionCallback userActionCallback) {
        return oe0.o(userActionCallback);
    }

    @Override // org.chromium.base.metrics.RecordUserAction.Natives
    public void removeActionCallbackForTesting(long j) {
        oe0.p(j);
    }
}
