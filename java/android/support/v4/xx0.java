package android.support.v4;

/* loaded from: classes2.dex */
public final class xx0 {
    private xx0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static float m9608do(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    /* renamed from: for, reason: not valid java name */
    public static int m9609for(float f) {
        return (int) (f + (f < 0.0f ? -0.5f : 0.5f));
    }

    /* renamed from: if, reason: not valid java name */
    public static float m9610if(int i, int i2, int i3, int i4) {
        int i5 = i - i3;
        int i6 = i2 - i4;
        return (float) Math.sqrt((i5 * i5) + (i6 * i6));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m9611new(int[] iArr) {
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        return i;
    }
}
