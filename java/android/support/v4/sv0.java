package android.support.v4;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.SystemClock;

/* loaded from: classes.dex */
public final class sv0 {

    /* renamed from: do, reason: not valid java name */
    private static final double f6312do;

    static {
        f6312do = Build.VERSION.SDK_INT >= 17 ? 1.0d / Math.pow(10.0d, 6.0d) : 1.0d;
    }

    private sv0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static double m7612do(long j) {
        double dM7613if = m7613if() - j;
        double d = f6312do;
        Double.isNaN(dM7613if);
        return dM7613if * d;
    }

    @TargetApi(17)
    /* renamed from: if, reason: not valid java name */
    public static long m7613if() {
        return Build.VERSION.SDK_INT >= 17 ? SystemClock.elapsedRealtimeNanos() : SystemClock.uptimeMillis();
    }
}
