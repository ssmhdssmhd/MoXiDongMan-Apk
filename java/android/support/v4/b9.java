package android.support.v4;

/* loaded from: classes3.dex */
public class b9 {
    /* renamed from: do, reason: not valid java name */
    public static boolean m476do(byte b, int i) {
        return ((1 << i) & ((long) b)) != 0;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte m477for(byte b, int i) {
        return (byte) (b & ((1 << i) ^ (-1)));
    }

    /* renamed from: if, reason: not valid java name */
    public static byte m478if(byte b, int i) {
        return (byte) (b | (1 << i));
    }
}
