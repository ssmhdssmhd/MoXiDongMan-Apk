package android.support.v4;

/* loaded from: classes4.dex */
public final class yd1 {

    /* renamed from: do, reason: not valid java name */
    public static final int f8188do = 0;

    /* renamed from: for, reason: not valid java name */
    private static final boolean f8189for;

    /* renamed from: if, reason: not valid java name */
    private static final int f8190if;

    static {
        int iM9813for = m9813for();
        f8190if = iM9813for;
        f8189for = iM9813for != 0;
    }

    private yd1() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static int m9812do() {
        return f8190if;
    }

    /* renamed from: for, reason: not valid java name */
    private static int m9813for() {
        try {
            return ((Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m9814if() {
        return f8189for;
    }
}
