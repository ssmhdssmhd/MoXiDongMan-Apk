package com.google.common.math;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.math.BigInteger;
import java.math.RoundingMode;

@lf
@ki0
/* renamed from: com.google.common.math.else, reason: invalid class name */
/* loaded from: classes2.dex */
final class Celse {
    private Celse() {
    }

    /* renamed from: break, reason: not valid java name */
    public static BigInteger m17296break(@b51 String str, BigInteger bigInteger) {
        if (bigInteger.signum() > 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be > 0");
    }

    /* renamed from: case, reason: not valid java name */
    public static long m17297case(@b51 String str, long j) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " (" + j + ") must be >= 0");
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m17298catch(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m17299do(boolean z, double d, RoundingMode roundingMode) {
        if (z) {
            return;
        }
        throw new ArithmeticException("rounded value is out of range for input " + d + " and rounding mode " + roundingMode);
    }

    /* renamed from: else, reason: not valid java name */
    public static BigInteger m17300else(@b51 String str, BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be >= 0");
    }

    /* renamed from: for, reason: not valid java name */
    public static void m17301for(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + j + ", " + j2 + ")");
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m17302goto(@b51 String str, int i) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " (" + i + ") must be > 0");
    }

    /* renamed from: if, reason: not valid java name */
    public static void m17303if(boolean z, String str, int i, int i2) {
        if (z) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + i + ", " + i2 + ")");
    }

    /* renamed from: new, reason: not valid java name */
    public static double m17304new(@b51 String str, double d) {
        if (d >= 0.0d) {
            return d;
        }
        throw new IllegalArgumentException(str + " (" + d + ") must be >= 0");
    }

    /* renamed from: this, reason: not valid java name */
    public static long m17305this(@b51 String str, long j) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " (" + j + ") must be > 0");
    }

    /* renamed from: try, reason: not valid java name */
    public static int m17306try(@b51 String str, int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " (" + i + ") must be >= 0");
    }
}
