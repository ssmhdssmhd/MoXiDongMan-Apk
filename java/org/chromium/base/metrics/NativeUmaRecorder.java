package org.chromium.base.metrics;

import android.os.SystemClock;
import android.support.v4.cx0;
import android.support.v4.lo0;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@lo0("base::android")
@cx0
/* loaded from: classes3.dex */
final class NativeUmaRecorder implements UmaRecorder {

    /* renamed from: do, reason: not valid java name */
    private final Map<String, Long> f33175do = Collections.synchronizedMap(new HashMap());

    public interface Natives {
        long recordBooleanHistogram(String str, long j, boolean z);

        long recordExponentialHistogram(String str, long j, int i, int i2, int i3, int i4);

        long recordLinearHistogram(String str, long j, int i, int i2, int i3, int i4);

        long recordSparseHistogram(String str, long j, int i);

        void recordUserAction(String str, long j);
    }

    /* renamed from: do, reason: not valid java name */
    private long m37127do(String str) {
        Long l = this.f33175do.get(str);
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    /* renamed from: if, reason: not valid java name */
    private void m37128if(String str, long j, long j2) {
        if (j != j2) {
            this.f33175do.put(str, Long.valueOf(j2));
        }
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordBooleanHistogram(String str, boolean z) {
        long jM37127do = m37127do(str);
        m37128if(str, jM37127do, Cif.m37173if().recordBooleanHistogram(str, jM37127do, z));
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordExponentialHistogram(String str, int i, int i2, int i3, int i4) {
        long jM37127do = m37127do(str);
        m37128if(str, jM37127do, Cif.m37173if().recordExponentialHistogram(str, jM37127do, i, i2, i3, i4));
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordLinearHistogram(String str, int i, int i2, int i3, int i4) {
        long jM37127do = m37127do(str);
        m37128if(str, jM37127do, Cif.m37173if().recordLinearHistogram(str, jM37127do, i, i2, i3, i4));
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordSparseHistogram(String str, int i) {
        long jM37127do = m37127do(str);
        m37128if(str, jM37127do, Cif.m37173if().recordSparseHistogram(str, jM37127do, i));
    }

    @Override // org.chromium.base.metrics.UmaRecorder
    public void recordUserAction(String str, long j) {
        Cif.m37173if().recordUserAction(str, SystemClock.elapsedRealtime() - j);
    }
}
