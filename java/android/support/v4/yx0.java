package android.support.v4;

/* loaded from: classes3.dex */
public class yx0 {

    /* renamed from: do, reason: not valid java name */
    public static final float f8359do = 0.001f;

    private yx0() {
    }

    /* renamed from: break, reason: not valid java name */
    public static float m9978break(float f, float f2, float f3, float f4, float f5) {
        return f4 + ((f5 - f4) * ((f - f2) / (f3 - f2)));
    }

    /* renamed from: case, reason: not valid java name */
    public static float m9979case(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m9980catch(int i, int i2) {
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    /* renamed from: class, reason: not valid java name */
    public static float m9981class(int[] iArr, int i, int i2) {
        if (iArr.length < 2 || iArr[0] <= 0 || iArr[1] <= 0) {
            throw new IllegalArgumentException("Expected dimensions to have length >= 2 && dimensions[0] > 0 && dimensions[1] > 0");
        }
        float fMax = Math.max(i / iArr[0], i2 / iArr[1]);
        iArr[0] = (int) (iArr[0] * fMax);
        iArr[1] = (int) (iArr[1] * fMax);
        return fMax;
    }

    /* renamed from: const, reason: not valid java name */
    public static float m9982const(float f) {
        return f * f * (3.0f - (f * 2.0f));
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m9983do(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: else, reason: not valid java name */
    public static float m9984else(float f, boolean z) {
        return z ? -f : f;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m9985for(int i, int i2, int i3) {
        int i4 = i2 > i3 ? i3 : i2;
        if (i2 <= i3) {
            i2 = i3;
        }
        return i < i4 ? i4 : i > i2 ? i2 : i;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m9986goto(int i, boolean z) {
        return z ? -i : i;
    }

    /* renamed from: if, reason: not valid java name */
    public static float m9987if(float f, float f2, float f3) {
        float f4 = f2 > f3 ? f3 : f2;
        if (f2 <= f3) {
            f2 = f3;
        }
        return f < f4 ? f4 : f > f2 ? f2 : f;
    }

    /* renamed from: new, reason: not valid java name */
    public static long m9988new(long j, long j2, long j3) {
        long j4 = j2 > j3 ? j3 : j2;
        if (j2 <= j3) {
            j2 = j3;
        }
        return j < j4 ? j4 : j > j2 ? j2 : j;
    }

    /* renamed from: this, reason: not valid java name */
    public static float m9989this(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m9990try(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
