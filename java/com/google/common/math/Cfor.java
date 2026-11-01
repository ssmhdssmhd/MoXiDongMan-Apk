package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.li0;
import java.math.BigInteger;

@li0
/* renamed from: com.google.common.math.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor {

    /* renamed from: case, reason: not valid java name */
    public static final long f15396case = 4503599627370496L;

    /* renamed from: do, reason: not valid java name */
    public static final long f15397do = 4503599627370495L;

    /* renamed from: else, reason: not valid java name */
    @af2
    public static final long f15398else = 4607182418800017408L;

    /* renamed from: for, reason: not valid java name */
    public static final long f15399for = Long.MIN_VALUE;

    /* renamed from: if, reason: not valid java name */
    public static final long f15400if = 9218868437227405312L;

    /* renamed from: new, reason: not valid java name */
    public static final int f15401new = 52;

    /* renamed from: try, reason: not valid java name */
    public static final int f15402try = 1023;

    private Cfor() {
    }

    /* renamed from: case, reason: not valid java name */
    public static double m17307case(double d) {
        return -Math.nextUp(-d);
    }

    /* renamed from: do, reason: not valid java name */
    public static double m17308do(BigInteger bigInteger) {
        BigInteger bigIntegerAbs = bigInteger.abs();
        boolean z = true;
        int iBitLength = bigIntegerAbs.bitLength() - 1;
        if (iBitLength < 63) {
            return bigInteger.longValue();
        }
        if (iBitLength > 1023) {
            double dSignum = bigInteger.signum();
            Double.isNaN(dSignum);
            return dSignum * Double.POSITIVE_INFINITY;
        }
        int i = (iBitLength - 52) - 1;
        long jLongValue = bigIntegerAbs.shiftRight(i).longValue();
        long j = (jLongValue >> 1) & 4503599627370495L;
        if ((jLongValue & 1) == 0 || ((j & 1) == 0 && bigIntegerAbs.getLowestSetBit() >= i)) {
            z = false;
        }
        if (z) {
            j++;
        }
        return Double.longBitsToDouble((((iBitLength + 1023) << 52) + j) | (bigInteger.signum() & Long.MIN_VALUE));
    }

    /* renamed from: else, reason: not valid java name */
    public static double m17309else(double d) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d) & 4503599627370495L) | f15398else);
    }

    /* renamed from: for, reason: not valid java name */
    public static long m17310for(double d) {
        af1.m235try(m17312new(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? jDoubleToRawLongBits << 1 : jDoubleToRawLongBits | 4503599627370496L;
    }

    /* renamed from: if, reason: not valid java name */
    public static double m17311if(double d) {
        af1.m220new(!Double.isNaN(d));
        return Math.max(d, 0.0d);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m17312new(double d) {
        return Math.getExponent(d) <= 1023;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m17313try(double d) {
        return Math.getExponent(d) >= -1022;
    }
}
