package android.support.v4;

/* loaded from: classes.dex */
public final class zx0 {

    /* renamed from: do, reason: not valid java name */
    public static final float f8677do = 1.0E-4f;

    private zx0() {
    }

    /* renamed from: case, reason: not valid java name */
    public static float m10314case(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: do, reason: not valid java name */
    public static float m10315do(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: else, reason: not valid java name */
    private static float m10316else(float f, float f2, float f3, float f4) {
        return (f <= f2 || f <= f3 || f <= f4) ? (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2 : f;
    }

    /* renamed from: for, reason: not valid java name */
    public static float m10317for(float f, int i) {
        float f2 = i;
        int i2 = (int) (f / f2);
        if (Math.signum(f) * f2 < 0.0f && i2 * i != f) {
            i2--;
        }
        return f - (i2 * i);
    }

    /* renamed from: if, reason: not valid java name */
    public static float m10318if(float f, float f2, float f3, float f4, float f5, float f6) {
        return m10316else(m10315do(f, f2, f3, f4), m10315do(f, f2, f5, f4), m10315do(f, f2, f5, f6), m10315do(f, f2, f3, f6));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m10319new(int i, int i2) {
        int i3 = i / i2;
        if ((i ^ i2) < 0 && i3 * i2 != i) {
            i3--;
        }
        return i - (i3 * i2);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m10320try(float f, float f2, float f3) {
        return f + f3 >= f2;
    }
}
