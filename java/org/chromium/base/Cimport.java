package org.chromium.base;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.TimeUtils;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.import, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cimport implements TimeUtils.Natives {

    /* renamed from: do, reason: not valid java name */
    private static TimeUtils.Natives f33169do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<TimeUtils.Natives> f33170if = new Cdo();

    /* renamed from: org.chromium.base.import$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<TimeUtils.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(TimeUtils.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            TimeUtils.Natives unused = Cimport.f33169do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static TimeUtils.Natives m37121if() {
        if (oe0.f4582do) {
            TimeUtils.Natives natives = f33169do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.TimeUtils.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cimport();
    }

    @Override // org.chromium.base.TimeUtils.Natives
    public long getTimeTicksNowUs() {
        return oe0.m5596interface();
    }
}
