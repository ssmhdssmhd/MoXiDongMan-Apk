package android.support.v4;

/* loaded from: classes2.dex */
public class j20 {

    /* renamed from: do, reason: not valid java name */
    private static long f2957do = 0;

    /* renamed from: if, reason: not valid java name */
    private static final long f2958if = 800;

    /* renamed from: do, reason: not valid java name */
    public static boolean m3667do() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - f2957do < f2958if) {
            return true;
        }
        f2957do = jCurrentTimeMillis;
        return false;
    }
}
