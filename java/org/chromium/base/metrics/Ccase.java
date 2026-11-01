package org.chromium.base.metrics;

import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.base.metrics.StatisticsRecorderAndroid;

@dl("crbug.com/993421")
/* renamed from: org.chromium.base.metrics.case, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccase implements StatisticsRecorderAndroid.Natives {

    /* renamed from: do, reason: not valid java name */
    private static StatisticsRecorderAndroid.Natives f33178do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<StatisticsRecorderAndroid.Natives> f33179if = new Cdo();

    /* renamed from: org.chromium.base.metrics.case$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<StatisticsRecorderAndroid.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(StatisticsRecorderAndroid.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            StatisticsRecorderAndroid.Natives unused = Ccase.f33178do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static StatisticsRecorderAndroid.Natives m37155if() {
        if (oe0.f4582do) {
            StatisticsRecorderAndroid.Natives natives = f33178do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.metrics.StatisticsRecorderAndroid.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(false);
        return new Ccase();
    }

    @Override // org.chromium.base.metrics.StatisticsRecorderAndroid.Natives
    public String toJson(int i) {
        return oe0.q(i);
    }
}
