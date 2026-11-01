package android.support.v4;

/* loaded from: classes2.dex */
public class ia0 {

    /* renamed from: do, reason: not valid java name */
    private static long f2652do;

    /* renamed from: do, reason: not valid java name */
    public static boolean m3324do() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean z = jCurrentTimeMillis - f2652do > 400;
        if (z) {
            f2652do = jCurrentTimeMillis;
        }
        return z;
    }
}
