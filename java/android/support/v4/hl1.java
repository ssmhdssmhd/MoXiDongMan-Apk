package android.support.v4;

import java.util.Random;

/* loaded from: classes3.dex */
public class hl1 {

    /* renamed from: do, reason: not valid java name */
    private static final Random f2439do = new Random();

    /* renamed from: do, reason: not valid java name */
    public static byte[] m3057do(int i) {
        ee2.m1839public(i >= 0, "Count cannot be negative.", new Object[0]);
        byte[] bArr = new byte[i];
        f2439do.nextBytes(bArr);
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static float m3058for(float f, float f2) {
        ee2.m1839public(f2 >= f, "Start value must be smaller or equal to end value.", new Object[0]);
        ee2.m1839public(f >= 0.0f, "Both range values must be non-negative.", new Object[0]);
        return f == f2 ? f : f + ((f2 - f) * f2439do.nextFloat());
    }

    /* renamed from: if, reason: not valid java name */
    public static double m3059if(double d, double d2) {
        ee2.m1839public(d2 >= d, "Start value must be smaller or equal to end value.", new Object[0]);
        ee2.m1839public(d >= 0.0d, "Both range values must be non-negative.", new Object[0]);
        return d == d2 ? d : d + ((d2 - d) * f2439do.nextDouble());
    }

    /* renamed from: new, reason: not valid java name */
    public static int m3060new(int i, int i2) {
        ee2.m1839public(i2 >= i, "Start value must be smaller or equal to end value.", new Object[0]);
        ee2.m1839public(i >= 0, "Both range values must be non-negative.", new Object[0]);
        return i == i2 ? i : i + f2439do.nextInt(i2 - i);
    }

    /* renamed from: try, reason: not valid java name */
    public static long m3061try(long j, long j2) {
        ee2.m1839public(j2 >= j, "Start value must be smaller or equal to end value.", new Object[0]);
        ee2.m1839public(j >= 0, "Both range values must be non-negative.", new Object[0]);
        return j == j2 ? j : (long) m3059if(j, j2);
    }
}
