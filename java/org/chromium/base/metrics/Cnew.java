package org.chromium.base.metrics;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.base.metrics.RecordHistogram;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.metrics.new, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cnew implements RecordHistogram.Natives {

    /* renamed from: do, reason: not valid java name */
    private static RecordHistogram.Natives f33206do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<RecordHistogram.Natives> f33207if = new Cdo();

    /* renamed from: org.chromium.base.metrics.new$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<RecordHistogram.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(RecordHistogram.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            RecordHistogram.Natives unused = Cnew.f33206do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static RecordHistogram.Natives m37176if() {
        if (oe0.f4582do) {
            RecordHistogram.Natives natives = f33206do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.metrics.RecordHistogram.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cnew();
    }

    @Override // org.chromium.base.metrics.RecordHistogram.Natives
    public int getHistogramTotalCountForTesting(String str) {
        return oe0.m(str);
    }

    @Override // org.chromium.base.metrics.RecordHistogram.Natives
    public int getHistogramValueCountForTesting(String str, int i) {
        return oe0.n(str, i);
    }
}
