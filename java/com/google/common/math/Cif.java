package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

@ki0(emulated = true)
/* renamed from: com.google.common.math.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif {

    /* renamed from: case, reason: not valid java name */
    @af2
    public static final int f15404case = 170;

    /* renamed from: do, reason: not valid java name */
    private static final double f15405do = -2.147483648E9d;

    /* renamed from: for, reason: not valid java name */
    private static final double f15407for = -9.223372036854776E18d;

    /* renamed from: if, reason: not valid java name */
    private static final double f15408if = 2.147483647E9d;

    /* renamed from: new, reason: not valid java name */
    private static final double f15409new = 9.223372036854776E18d;

    /* renamed from: try, reason: not valid java name */
    private static final double f15410try = Math.log(2.0d);

    /* renamed from: else, reason: not valid java name */
    @af2
    public static final double[] f15406else = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    /* renamed from: com.google.common.math.if$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f15411do;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f15411do = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15411do[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15411do[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15411do[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15411do[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15411do[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15411do[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15411do[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private Cif() {
    }

    @li0
    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public static double m17316break(Iterator<? extends Number> it) {
        af1.m235try(it.hasNext(), "Cannot take mean of 0 values");
        double dM17321do = m17321do(it.next().doubleValue());
        long j = 1;
        while (it.hasNext()) {
            j++;
            double dM17321do2 = m17321do(it.next().doubleValue()) - dM17321do;
            double d = j;
            Double.isNaN(d);
            dM17321do += dM17321do2 / d;
        }
        return dM17321do;
    }

    @li0
    /* renamed from: case, reason: not valid java name */
    public static boolean m17317case(double d) {
        if (d <= 0.0d || !Cfor.m17312new(d)) {
            return false;
        }
        long jM17310for = Cfor.m17310for(d);
        return (jM17310for & (jM17310for - 1)) == 0;
    }

    @li0
    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public static double m17318catch(double... dArr) {
        af1.m235try(dArr.length > 0, "Cannot take mean of 0 values");
        double dM17321do = m17321do(dArr[0]);
        long j = 1;
        for (int i = 1; i < dArr.length; i++) {
            m17321do(dArr[i]);
            j++;
            double d = dArr[i] - dM17321do;
            double d2 = j;
            Double.isNaN(d2);
            dM17321do += d / d2;
        }
        return dM17321do;
    }

    @Deprecated
    /* renamed from: class, reason: not valid java name */
    public static double m17319class(int... iArr) {
        af1.m235try(iArr.length > 0, "Cannot take mean of 0 values");
        long j = 0;
        for (int i : iArr) {
            j += i;
        }
        double d = j;
        double length = iArr.length;
        Double.isNaN(d);
        Double.isNaN(length);
        return d / length;
    }

    @Deprecated
    /* renamed from: const, reason: not valid java name */
    public static double m17320const(long... jArr) {
        af1.m235try(jArr.length > 0, "Cannot take mean of 0 values");
        double d = jArr[0];
        long j = 1;
        for (int i = 1; i < jArr.length; i++) {
            j++;
            double d2 = jArr[i];
            Double.isNaN(d2);
            double d3 = j;
            Double.isNaN(d3);
            d += (d2 - d) / d3;
        }
        return d;
    }

    @lf
    @li0
    /* renamed from: do, reason: not valid java name */
    private static double m17321do(double d) {
        af1.m220new(Cfor.m17312new(d));
        return d;
    }

    /* renamed from: else, reason: not valid java name */
    public static double m17322else(double d) {
        return Math.log(d) / f15410try;
    }

    @li0
    /* renamed from: final, reason: not valid java name */
    public static double m17323final(double d, RoundingMode roundingMode) {
        if (!Cfor.m17312new(d)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (Cdo.f15411do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(m17331try(d));
                return d;
            case 2:
                return (d >= 0.0d || m17331try(d)) ? d : ((long) d) - 1;
            case 3:
                return (d <= 0.0d || m17331try(d)) ? d : ((long) d) + 1;
            case 4:
                return d;
            case 5:
                if (m17331try(d)) {
                    return d;
                }
                return ((long) d) + (d > 0.0d ? 1 : -1);
            case 6:
                return Math.rint(d);
            case 7:
                double dRint = Math.rint(d);
                return Math.abs(d - dRint) == 0.5d ? d + Math.copySign(0.5d, d) : dRint;
            case 8:
                double dRint2 = Math.rint(d);
                return Math.abs(d - dRint2) == 0.5d ? d : dRint2;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m17324for(double d, double d2, double d3) {
        if (m17327new(d, d2, d3)) {
            return 0;
        }
        if (d < d2) {
            return -1;
        }
        if (d > d2) {
            return 1;
        }
        return com.google.common.primitives.Cdo.m17550new(Double.isNaN(d), Double.isNaN(d2));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @li0
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17325goto(double d, RoundingMode roundingMode) {
        boolean zM17317case;
        af1.m235try(d > 0.0d && Cfor.m17312new(d), "x must be positive and finite");
        int exponent = Math.getExponent(d);
        if (!Cfor.m17313try(d)) {
            return m17325goto(d * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (Cdo.f15411do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(m17317case(d));
                return !z ? exponent + 1 : exponent;
            case 2:
                if (!z) {
                }
                break;
            case 3:
                z = !m17317case(d);
                if (!z) {
                }
                break;
            case 4:
                z = exponent < 0;
                zM17317case = m17317case(d);
                z &= !zM17317case;
                if (!z) {
                }
                break;
            case 5:
                z = exponent >= 0;
                zM17317case = m17317case(d);
                z &= !zM17317case;
                if (!z) {
                }
                break;
            case 6:
            case 7:
            case 8:
                double dM17309else = Cfor.m17309else(d);
                if (dM17309else * dM17309else > 2.0d) {
                    z = true;
                }
                if (!z) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static double m17326if(int i) {
        Celse.m17306try("n", i);
        if (i > 170) {
            return Double.POSITIVE_INFINITY;
        }
        double d = 1.0d;
        int i2 = i & (-16);
        while (true) {
            i2++;
            if (i2 > i) {
                return d * f15406else[i >> 4];
            }
            double d2 = i2;
            Double.isNaN(d2);
            d *= d2;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m17327new(double d, double d2, double d3) {
        Celse.m17304new("tolerance", d3);
        return Math.copySign(d - d2, 1.0d) <= d3 || d == d2 || (Double.isNaN(d) && Double.isNaN(d2));
    }

    @li0
    /* renamed from: super, reason: not valid java name */
    public static BigInteger m17328super(double d, RoundingMode roundingMode) {
        double dM17323final = m17323final(d, roundingMode);
        if ((dM17323final < f15409new) && (f15407for - dM17323final < 1.0d)) {
            return BigInteger.valueOf((long) dM17323final);
        }
        BigInteger bigIntegerShiftLeft = BigInteger.valueOf(Cfor.m17310for(dM17323final)).shiftLeft(Math.getExponent(dM17323final) - 52);
        return dM17323final < 0.0d ? bigIntegerShiftLeft.negate() : bigIntegerShiftLeft;
    }

    @li0
    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public static double m17329this(Iterable<? extends Number> iterable) {
        return m17316break(iterable.iterator());
    }

    @li0
    /* renamed from: throw, reason: not valid java name */
    public static int m17330throw(double d, RoundingMode roundingMode) {
        double dM17323final = m17323final(d, roundingMode);
        Celse.m17299do((dM17323final < 2.147483648E9d) & (dM17323final > -2.147483649E9d), d, roundingMode);
        return (int) dM17323final;
    }

    @li0
    /* renamed from: try, reason: not valid java name */
    public static boolean m17331try(double d) {
        return Cfor.m17312new(d) && (d == 0.0d || 52 - Long.numberOfTrailingZeros(Cfor.m17310for(d)) <= Math.getExponent(d));
    }

    @li0
    /* renamed from: while, reason: not valid java name */
    public static long m17332while(double d, RoundingMode roundingMode) {
        double dM17323final = m17323final(d, roundingMode);
        Celse.m17299do((f15407for - dM17323final < 1.0d) & (dM17323final < f15409new), d, roundingMode);
        return (long) dM17323final;
    }
}
