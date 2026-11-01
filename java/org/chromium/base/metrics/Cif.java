package org.chromium.base.metrics;

import android.support.v4.cx0;
import android.support.v4.dl;
import android.support.v4.oe0;
import org.chromium.base.JniStaticTestMocker;
import org.chromium.base.NativeLibraryLoadedStatus;
import org.chromium.base.metrics.NativeUmaRecorder;

@dl("crbug.com/993421")
@cx0
/* renamed from: org.chromium.base.metrics.if, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cif implements NativeUmaRecorder.Natives {

    /* renamed from: do, reason: not valid java name */
    private static NativeUmaRecorder.Natives f33204do;

    /* renamed from: if, reason: not valid java name */
    public static final JniStaticTestMocker<NativeUmaRecorder.Natives> f33205if = new Cdo();

    /* renamed from: org.chromium.base.metrics.if$do, reason: invalid class name */
    public class Cdo implements JniStaticTestMocker<NativeUmaRecorder.Natives> {
        @Override // org.chromium.base.JniStaticTestMocker
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setInstanceForTesting(NativeUmaRecorder.Natives natives) {
            if (!oe0.f4582do) {
                throw new RuntimeException("Tried to set a JNI mock when mocks aren't enabled!");
            }
            NativeUmaRecorder.Natives unused = Cif.f33204do = natives;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static NativeUmaRecorder.Natives m37173if() {
        if (oe0.f4582do) {
            NativeUmaRecorder.Natives natives = f33204do;
            if (natives != null) {
                return natives;
            }
            if (oe0.f4583if) {
                throw new UnsupportedOperationException("No mock found for the native implementation for org.chromium.base.metrics.NativeUmaRecorder.Natives. The current configuration requires all native implementations to have a mock instance.");
            }
        }
        NativeLibraryLoadedStatus.m36863do(true);
        return new Cif();
    }

    @Override // org.chromium.base.metrics.NativeUmaRecorder.Natives
    public long recordBooleanHistogram(String str, long j, boolean z) {
        return oe0.h(str, j, z);
    }

    @Override // org.chromium.base.metrics.NativeUmaRecorder.Natives
    public long recordExponentialHistogram(String str, long j, int i, int i2, int i3, int i4) {
        return oe0.i(str, j, i, i2, i3, i4);
    }

    @Override // org.chromium.base.metrics.NativeUmaRecorder.Natives
    public long recordLinearHistogram(String str, long j, int i, int i2, int i3, int i4) {
        return oe0.j(str, j, i, i2, i3, i4);
    }

    @Override // org.chromium.base.metrics.NativeUmaRecorder.Natives
    public long recordSparseHistogram(String str, long j, int i) {
        return oe0.k(str, j, i);
    }

    @Override // org.chromium.base.metrics.NativeUmaRecorder.Natives
    public void recordUserAction(String str, long j) {
        oe0.l(str, j);
    }
}
