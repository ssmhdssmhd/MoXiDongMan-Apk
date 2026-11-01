package android.support.v4;

/* loaded from: classes4.dex */
public final class ve1 {
    private ve1() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m8841do(int i) {
        return (i & (i + (-1))) == 0;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m8842if(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }
}
