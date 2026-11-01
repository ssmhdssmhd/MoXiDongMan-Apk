package android.support.v4;

/* loaded from: classes3.dex */
public final class we1 {
    private we1() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m9128do(int i) {
        return (i & (i + (-1))) == 0;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m9129if(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }
}
