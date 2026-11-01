package org.mozilla.javascript.v8dtoa;

import android.support.v4.hy1;

/* loaded from: classes3.dex */
public class FastDtoa {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int kFastDtoaMaximalLength = 17;
    public static final int kTen4 = 10000;
    public static final int kTen5 = 100000;
    public static final int kTen6 = 1000000;
    public static final int kTen7 = 10000000;
    public static final int kTen8 = 100000000;
    public static final int kTen9 = 1000000000;
    public static final int maximal_target_exponent = -32;
    public static final int minimal_target_exponent = -60;

    public static long biggestPowerTen(int i, int i2) {
        int i3 = 1000000000;
        int i4 = 1;
        switch (i2) {
            case 30:
            case 31:
            case 32:
                if (1000000000 <= i) {
                    i4 = 9;
                    break;
                }
            case 27:
            case 28:
            case 29:
                if (100000000 <= i) {
                    i4 = 8;
                    i3 = kTen8;
                    break;
                }
            case 24:
            case 25:
            case 26:
                if (10000000 <= i) {
                    i4 = 7;
                    i3 = kTen7;
                    break;
                }
            case 20:
            case 21:
            case 22:
            case 23:
                if (1000000 <= i) {
                    i4 = 6;
                    i3 = 1000000;
                    break;
                }
            case 17:
            case 18:
            case 19:
                if (100000 <= i) {
                    i4 = 5;
                    i3 = kTen5;
                    break;
                }
            case 14:
            case 15:
            case 16:
                if (10000 <= i) {
                    i4 = 4;
                    i3 = kTen4;
                    break;
                }
            case 10:
            case 11:
            case 12:
            case 13:
                if (1000 <= i) {
                    i4 = 3;
                    i3 = 1000;
                    break;
                }
            case 7:
            case 8:
            case 9:
                if (100 <= i) {
                    i4 = 2;
                    i3 = 100;
                    break;
                }
            case 4:
            case 5:
            case 6:
                if (10 <= i) {
                    i3 = 10;
                    break;
                }
            case 1:
            case 2:
            case 3:
                if (1 <= i) {
                    i3 = 1;
                    i4 = 0;
                    break;
                }
            case 0:
                i4 = -1;
                i3 = 0;
                break;
            default:
                i3 = 0;
                i4 = 0;
                break;
        }
        return (i3 << 32) | (4294967295L & i4);
    }

    public static boolean digitGen(DiyFp diyFp, DiyFp diyFp2, DiyFp diyFp3, FastDtoaBuilder fastDtoaBuilder, int i) {
        DiyFp diyFp4 = new DiyFp(diyFp.f() - 1, diyFp.e());
        DiyFp diyFp5 = new DiyFp(diyFp3.f() + 1, diyFp3.e());
        DiyFp diyFpMinus = DiyFp.minus(diyFp5, diyFp4);
        DiyFp diyFp6 = new DiyFp(1 << (-diyFp2.e()), diyFp2.e());
        int iF = (int) ((diyFp5.f() >>> (-diyFp6.e())) & 4294967295L);
        long jF = diyFp5.f() & (diyFp6.f() - 1);
        long jBiggestPowerTen = biggestPowerTen(iF, 64 - (-diyFp6.e()));
        int i2 = (int) ((jBiggestPowerTen >>> 32) & 4294967295L);
        int i3 = ((int) (jBiggestPowerTen & 4294967295L)) + 1;
        while (i3 > 0) {
            fastDtoaBuilder.append((char) ((iF / i2) + 48));
            iF %= i2;
            i3--;
            long j = (iF << (-diyFp6.e())) + jF;
            if (j < diyFpMinus.f()) {
                fastDtoaBuilder.point = (fastDtoaBuilder.end - i) + i3;
                return roundWeed(fastDtoaBuilder, DiyFp.minus(diyFp5, diyFp2).f(), diyFpMinus.f(), j, i2 << (-diyFp6.e()), 1L);
            }
            i2 /= 10;
        }
        long j2 = 1;
        do {
            long j3 = jF * 5;
            j2 *= 5;
            diyFpMinus.setF(diyFpMinus.f() * 5);
            diyFpMinus.setE(diyFpMinus.e() + 1);
            diyFp6.setF(diyFp6.f() >>> 1);
            diyFp6.setE(diyFp6.e() + 1);
            fastDtoaBuilder.append((char) (((int) ((j3 >>> (-diyFp6.e())) & 4294967295L)) + 48));
            jF = j3 & (diyFp6.f() - 1);
            i3--;
        } while (jF >= diyFpMinus.f());
        fastDtoaBuilder.point = (fastDtoaBuilder.end - i) + i3;
        return roundWeed(fastDtoaBuilder, DiyFp.minus(diyFp5, diyFp2).f() * j2, diyFpMinus.f(), jF, diyFp6.f(), j2);
    }

    public static boolean dtoa(double d, FastDtoaBuilder fastDtoaBuilder) {
        return grisu3(d, fastDtoaBuilder);
    }

    public static boolean grisu3(double d, FastDtoaBuilder fastDtoaBuilder) {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        DiyFp diyFpAsNormalizedDiyFp = DoubleHelper.asNormalizedDiyFp(jDoubleToLongBits);
        DiyFp diyFp = new DiyFp();
        DiyFp diyFp2 = new DiyFp();
        DoubleHelper.normalizedBoundaries(jDoubleToLongBits, diyFp, diyFp2);
        DiyFp diyFp3 = new DiyFp();
        int cachedPower = CachedPowers.getCachedPower(diyFpAsNormalizedDiyFp.e() + 64, -60, -32, diyFp3);
        return digitGen(DiyFp.times(diyFp, diyFp3), DiyFp.times(diyFpAsNormalizedDiyFp, diyFp3), DiyFp.times(diyFp2, diyFp3), fastDtoaBuilder, cachedPower);
    }

    public static String numberToString(double d) {
        FastDtoaBuilder fastDtoaBuilder = new FastDtoaBuilder();
        if (numberToString(d, fastDtoaBuilder)) {
            return fastDtoaBuilder.format();
        }
        return null;
    }

    public static boolean roundWeed(FastDtoaBuilder fastDtoaBuilder, long j, long j2, long j3, long j4, long j5) {
        long j6 = j - j5;
        long j7 = j + j5;
        long j8 = j3;
        while (j8 < j6 && j2 - j8 >= j4) {
            long j9 = j8 + j4;
            if (j9 >= j6 && j6 - j8 < j9 - j6) {
                break;
            }
            fastDtoaBuilder.decreaseLast();
            j8 = j9;
        }
        if (j8 < j7 && j2 - j8 >= j4) {
            long j10 = j8 + j4;
            if (j10 < j7 || j7 - j8 > j10 - j7) {
                return false;
            }
        }
        return 2 * j5 <= j8 && j8 <= j2 - (4 * j5);
    }

    private static boolean uint64_lte(long j, long j2) {
        if (j != j2) {
            if (!(((j < 0) ^ (j < j2)) ^ (j2 < 0))) {
                return false;
            }
        }
        return true;
    }

    public static boolean numberToString(double d, FastDtoaBuilder fastDtoaBuilder) {
        fastDtoaBuilder.reset();
        if (d < 0.0d) {
            fastDtoaBuilder.append(hy1.f2561for);
            d = -d;
        }
        return dtoa(d, fastDtoaBuilder);
    }
}
