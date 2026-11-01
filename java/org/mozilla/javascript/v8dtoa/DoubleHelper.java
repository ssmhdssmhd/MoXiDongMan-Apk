package org.mozilla.javascript.v8dtoa;

/* loaded from: classes3.dex */
public class DoubleHelper {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int kDenormalExponent = -1074;
    private static final int kExponentBias = 1075;
    public static final long kExponentMask = 9218868437227405312L;
    public static final long kHiddenBit = 4503599627370496L;
    public static final long kSignMask = Long.MIN_VALUE;
    public static final long kSignificandMask = 4503599627370495L;
    private static final int kSignificandSize = 52;

    public static DiyFp asDiyFp(long j) {
        return new DiyFp(significand(j), exponent(j));
    }

    public static DiyFp asNormalizedDiyFp(long j) {
        long jSignificand = significand(j);
        int iExponent = exponent(j);
        while ((4503599627370496L & jSignificand) == 0) {
            jSignificand <<= 1;
            iExponent--;
        }
        return new DiyFp(jSignificand << 11, iExponent - 11);
    }

    public static int exponent(long j) {
        return isDenormal(j) ? kDenormalExponent : ((int) (((j & 9218868437227405312L) >>> 52) & 4294967295L)) - 1075;
    }

    public static boolean isDenormal(long j) {
        return (j & 9218868437227405312L) == 0;
    }

    public static boolean isInfinite(long j) {
        return (j & 9218868437227405312L) == 9218868437227405312L && (j & 4503599627370495L) == 0;
    }

    public static boolean isNan(long j) {
        return (j & 9218868437227405312L) == 9218868437227405312L && (j & 4503599627370495L) != 0;
    }

    public static boolean isSpecial(long j) {
        return (j & 9218868437227405312L) == 9218868437227405312L;
    }

    public static void normalizedBoundaries(long j, DiyFp diyFp, DiyFp diyFp2) {
        DiyFp diyFpAsDiyFp = asDiyFp(j);
        boolean z = diyFpAsDiyFp.f() == 4503599627370496L;
        diyFp2.setF((diyFpAsDiyFp.f() << 1) + 1);
        diyFp2.setE(diyFpAsDiyFp.e() - 1);
        diyFp2.normalize();
        if (!z || diyFpAsDiyFp.e() == kDenormalExponent) {
            diyFp.setF((diyFpAsDiyFp.f() << 1) - 1);
            diyFp.setE(diyFpAsDiyFp.e() - 1);
        } else {
            diyFp.setF((diyFpAsDiyFp.f() << 2) - 1);
            diyFp.setE(diyFpAsDiyFp.e() - 2);
        }
        diyFp.setF(diyFp.f() << (diyFp.e() - diyFp2.e()));
        diyFp.setE(diyFp2.e());
    }

    public static int sign(long j) {
        return (j & Long.MIN_VALUE) == 0 ? 1 : -1;
    }

    public static long significand(long j) {
        long j2 = 4503599627370495L & j;
        return !isDenormal(j) ? j2 + 4503599627370496L : j2;
    }
}
