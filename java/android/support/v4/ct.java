package android.support.v4;

/* loaded from: classes2.dex */
public final class ct {
    /* renamed from: do, reason: not valid java name */
    public static float m1011do(float f, float f2, float f3, float f4) {
        float f5 = f / f4;
        return (f3 * f5 * f5 * f5) + f2;
    }

    /* renamed from: for, reason: not valid java name */
    public static float m1012for(float f, float f2, float f3, float f4) {
        float f5 = (f / f4) - 1.0f;
        return (f3 * ((f5 * f5 * f5) + 1.0f)) + f2;
    }

    /* renamed from: if, reason: not valid java name */
    public static float m1013if(float f, float f2, float f3, float f4) {
        float f5;
        float f6 = f / (f4 / 2.0f);
        float f7 = f3 / 2.0f;
        if (f6 < 1.0f) {
            f5 = f7 * f6 * f6 * f6;
        } else {
            float f8 = f6 - 2.0f;
            f5 = f7 * ((f8 * f8 * f8) + 2.0f);
        }
        return f5 + f2;
    }
}
