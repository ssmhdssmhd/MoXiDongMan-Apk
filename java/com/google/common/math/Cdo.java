package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

@ki0(emulated = true)
/* renamed from: com.google.common.math.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    @af2
    public static final int f15391do = 256;

    /* renamed from: if, reason: not valid java name */
    @af2
    public static final BigInteger f15393if = new BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);

    /* renamed from: for, reason: not valid java name */
    private static final double f15392for = Math.log(10.0d);

    /* renamed from: new, reason: not valid java name */
    private static final double f15394new = Math.log(2.0d);

    /* renamed from: com.google.common.math.do$do, reason: invalid class name and collision with other inner class name */
    public static /* synthetic */ class C0131do {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f15395do;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f15395do = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15395do[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15395do[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15395do[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15395do[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15395do[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15395do[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15395do[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private Cdo() {
    }

    @li0
    /* renamed from: break, reason: not valid java name */
    public static int m17282break(BigInteger bigInteger, RoundingMode roundingMode) {
        int iCompareTo;
        Celse.m17296break("x", bigInteger);
        if (m17295try(bigInteger)) {
            return Ccase.m17250super(bigInteger.longValue(), roundingMode);
        }
        double dM17284catch = m17284catch(bigInteger, RoundingMode.FLOOR);
        double d = f15394new;
        Double.isNaN(dM17284catch);
        int i = (int) ((dM17284catch * d) / f15392for);
        BigInteger bigIntegerPow = BigInteger.TEN.pow(i);
        int iCompareTo2 = bigIntegerPow.compareTo(bigInteger);
        if (iCompareTo2 > 0) {
            do {
                i--;
                bigIntegerPow = bigIntegerPow.divide(BigInteger.TEN);
                iCompareTo = bigIntegerPow.compareTo(bigInteger);
            } while (iCompareTo > 0);
        } else {
            BigInteger bigIntegerMultiply = BigInteger.TEN.multiply(bigIntegerPow);
            int i2 = iCompareTo2;
            int iCompareTo3 = bigIntegerMultiply.compareTo(bigInteger);
            while (iCompareTo3 <= 0) {
                i++;
                BigInteger bigIntegerMultiply2 = BigInteger.TEN.multiply(bigIntegerMultiply);
                int iCompareTo4 = bigIntegerMultiply2.compareTo(bigInteger);
                BigInteger bigInteger2 = bigIntegerMultiply;
                bigIntegerMultiply = bigIntegerMultiply2;
                bigIntegerPow = bigInteger2;
                i2 = iCompareTo3;
                iCompareTo3 = iCompareTo4;
            }
            iCompareTo = i2;
        }
        switch (C0131do.f15395do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(iCompareTo == 0);
            case 2:
            case 3:
                return i;
            case 4:
            case 5:
                return bigIntegerPow.equals(bigInteger) ? i : i + 1;
            case 6:
            case 7:
            case 8:
                return bigInteger.pow(2).compareTo(bigIntegerPow.pow(2).multiply(BigInteger.TEN)) <= 0 ? i : i + 1;
            default:
                throw new AssertionError();
        }
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public static BigInteger m17283case(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(m17284catch(bigInteger, RoundingMode.FLOOR));
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m17284catch(BigInteger bigInteger, RoundingMode roundingMode) {
        Celse.m17296break("x", (BigInteger) af1.m205continue(bigInteger));
        int iBitLength = bigInteger.bitLength() - 1;
        switch (C0131do.f15395do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(m17288else(bigInteger));
            case 2:
            case 3:
                return iBitLength;
            case 4:
            case 5:
                return m17288else(bigInteger) ? iBitLength : iBitLength + 1;
            case 6:
            case 7:
            case 8:
                return iBitLength < 256 ? bigInteger.compareTo(f15393if.shiftRight(256 - iBitLength)) <= 0 ? iBitLength : iBitLength + 1 : bigInteger.pow(2).bitLength() + (-1) < (iBitLength * 2) + 1 ? iBitLength : iBitLength + 1;
            default:
                throw new AssertionError();
        }
    }

    @li0
    /* renamed from: class, reason: not valid java name */
    public static BigInteger m17285class(BigInteger bigInteger, RoundingMode roundingMode) {
        Celse.m17300else("x", bigInteger);
        if (m17295try(bigInteger)) {
            return BigInteger.valueOf(Ccase.m17240finally(bigInteger.longValue(), roundingMode));
        }
        BigInteger bigIntegerM17289final = m17289final(bigInteger);
        switch (C0131do.f15395do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(bigIntegerM17289final.pow(2).equals(bigInteger));
            case 2:
            case 3:
                return bigIntegerM17289final;
            case 4:
            case 5:
                int iIntValue = bigIntegerM17289final.intValue();
                return iIntValue * iIntValue == bigInteger.intValue() && bigIntegerM17289final.pow(2).equals(bigInteger) ? bigIntegerM17289final : bigIntegerM17289final.add(BigInteger.ONE);
            case 6:
            case 7:
            case 8:
                return bigIntegerM17289final.pow(2).add(bigIntegerM17289final).compareTo(bigInteger) >= 0 ? bigIntegerM17289final : bigIntegerM17289final.add(BigInteger.ONE);
            default:
                throw new AssertionError();
        }
    }

    @li0
    /* renamed from: const, reason: not valid java name */
    private static BigInteger m17286const(BigInteger bigInteger) {
        return Cif.m17328super(Math.sqrt(Cfor.m17308do(bigInteger)), RoundingMode.HALF_EVEN);
    }

    /* renamed from: do, reason: not valid java name */
    public static BigInteger m17287do(int i, int i2) {
        int i3;
        Celse.m17306try("n", i);
        Celse.m17306try("k", i2);
        int i4 = 1;
        af1.m204const(i2 <= i, "k (%s) > n (%s)", i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        int[] iArr = Ccase.f15379goto;
        if (i2 < iArr.length && i <= iArr[i2]) {
            return BigInteger.valueOf(Ccase.m17236do(i, i2));
        }
        BigInteger bigIntegerDivide = BigInteger.ONE;
        long j = i;
        long j2 = 1;
        int iM17256while = Ccase.m17256while(j, RoundingMode.CEILING);
        while (true) {
            int i5 = iM17256while;
            while (i4 < i2) {
                i3 = i - i4;
                i4++;
                i5 += iM17256while;
                if (i5 >= 63) {
                    break;
                }
                j *= i3;
                j2 *= i4;
            }
            return bigIntegerDivide.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            bigIntegerDivide = bigIntegerDivide.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            j = i3;
            j2 = i4;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m17288else(BigInteger bigInteger) {
        af1.m205continue(bigInteger);
        return bigInteger.signum() > 0 && bigInteger.getLowestSetBit() == bigInteger.bitLength() - 1;
    }

    @li0
    /* renamed from: final, reason: not valid java name */
    private static BigInteger m17289final(BigInteger bigInteger) {
        BigInteger bigIntegerShiftLeft;
        int iM17284catch = m17284catch(bigInteger, RoundingMode.FLOOR);
        if (iM17284catch < 1023) {
            bigIntegerShiftLeft = m17286const(bigInteger);
        } else {
            int i = (iM17284catch - 52) & (-2);
            bigIntegerShiftLeft = m17286const(bigInteger.shiftRight(i)).shiftLeft(i >> 1);
        }
        BigInteger bigIntegerShiftRight = bigIntegerShiftLeft.add(bigInteger.divide(bigIntegerShiftLeft)).shiftRight(1);
        if (bigIntegerShiftLeft.equals(bigIntegerShiftRight)) {
            return bigIntegerShiftLeft;
        }
        while (true) {
            BigInteger bigIntegerShiftRight2 = bigIntegerShiftRight.add(bigInteger.divide(bigIntegerShiftRight)).shiftRight(1);
            if (bigIntegerShiftRight2.compareTo(bigIntegerShiftRight) >= 0) {
                return bigIntegerShiftRight;
            }
            bigIntegerShiftRight = bigIntegerShiftRight2;
        }
    }

    @li0
    /* renamed from: for, reason: not valid java name */
    public static BigInteger m17290for(BigInteger bigInteger, BigInteger bigInteger2, RoundingMode roundingMode) {
        return new BigDecimal(bigInteger).divide(new BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }

    /* renamed from: goto, reason: not valid java name */
    public static BigInteger m17291goto(List<BigInteger> list) {
        return m17294this(list, 0, list.size());
    }

    @o8
    /* renamed from: if, reason: not valid java name */
    public static BigInteger m17292if(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(m17284catch(bigInteger, RoundingMode.CEILING));
    }

    /* renamed from: new, reason: not valid java name */
    public static BigInteger m17293new(int i) {
        Celse.m17306try("n", i);
        long[] jArr = Ccase.f15377else;
        if (i < jArr.length) {
            return BigInteger.valueOf(jArr[i]);
        }
        ArrayList arrayList = new ArrayList(Cnew.m17340else(Cnew.m17354throw(i, RoundingMode.CEILING) * i, 64, RoundingMode.CEILING));
        int length = jArr.length;
        long j = jArr[length - 1];
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j2 = j >> iNumberOfTrailingZeros;
        int iM17256while = Ccase.m17256while(j2, RoundingMode.FLOOR) + 1;
        long j3 = length;
        int iM17256while2 = Ccase.m17256while(j3, RoundingMode.FLOOR) + 1;
        int i2 = 1 << (iM17256while2 - 1);
        while (j3 <= i) {
            if ((i2 & j3) != 0) {
                i2 <<= 1;
                iM17256while2++;
            }
            int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j3);
            long j4 = j3 >> iNumberOfTrailingZeros2;
            iNumberOfTrailingZeros += iNumberOfTrailingZeros2;
            if ((iM17256while2 - iNumberOfTrailingZeros2) + iM17256while >= 64) {
                arrayList.add(BigInteger.valueOf(j2));
                j2 = 1;
            }
            j2 *= j4;
            iM17256while = Ccase.m17256while(j2, RoundingMode.FLOOR) + 1;
            j3++;
        }
        if (j2 > 1) {
            arrayList.add(BigInteger.valueOf(j2));
        }
        return m17291goto(arrayList).shiftLeft(iNumberOfTrailingZeros);
    }

    /* renamed from: this, reason: not valid java name */
    public static BigInteger m17294this(List<BigInteger> list, int i, int i2) {
        int i3 = i2 - i;
        if (i3 == 0) {
            return BigInteger.ONE;
        }
        if (i3 == 1) {
            return list.get(i);
        }
        if (i3 == 2) {
            return list.get(i).multiply(list.get(i + 1));
        }
        if (i3 == 3) {
            return list.get(i).multiply(list.get(i + 1)).multiply(list.get(i + 2));
        }
        int i4 = (i2 + i) >>> 1;
        return m17294this(list, i, i4).multiply(m17294this(list, i4, i2));
    }

    @li0
    /* renamed from: try, reason: not valid java name */
    public static boolean m17295try(BigInteger bigInteger) {
        return bigInteger.bitLength() <= 63;
    }
}
