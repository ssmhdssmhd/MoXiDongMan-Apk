package android.support.v4;

/* loaded from: classes3.dex */
public class a1 {

    /* renamed from: do, reason: not valid java name */
    public static final short f9do = 1;

    /* renamed from: if, reason: not valid java name */
    public static final short f10if = 2;

    /* renamed from: do, reason: not valid java name */
    public static String m11do(short s) {
        return s != 1 ? s != 2 ? "UNKNOWN" : "fatal" : "warning";
    }

    /* renamed from: if, reason: not valid java name */
    public static String m12if(short s) {
        return m11do(s) + "(" + ((int) s) + ")";
    }
}
