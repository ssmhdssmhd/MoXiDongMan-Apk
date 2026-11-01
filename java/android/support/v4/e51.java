package android.support.v4;

/* loaded from: classes3.dex */
public final class e51 {
    private e51() {
    }

    /* renamed from: do, reason: not valid java name */
    public static int m1657do(String str) {
        return (str.charAt(1) == 'x' || str.charAt(1) == 'X') ? Integer.parseInt(str.substring(2), 16) : Integer.parseInt(str, 16);
    }

    /* renamed from: if, reason: not valid java name */
    public static long m1658if(String str) {
        return (str.charAt(1) == 'x' || str.charAt(1) == 'X') ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str, 16);
    }
}
