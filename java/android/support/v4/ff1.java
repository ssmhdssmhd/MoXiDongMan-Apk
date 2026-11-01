package android.support.v4;

/* loaded from: classes3.dex */
public class ff1 {
    private ff1() {
    }

    /* renamed from: do, reason: not valid java name */
    public static int m2267do(int i) {
        if (i <= 1024) {
            return 80;
        }
        return (((i - 1) / 1024) * 16) + 96;
    }
}
