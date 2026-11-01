package com.google.common.math;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.primitives.Cthis;
import com.umeng.analytics.pro.ak;
import java.math.RoundingMode;
import org.mozilla.javascript.v8dtoa.FastDtoa;

@ki0(emulated = true)
/* renamed from: com.google.common.math.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew {

    /* renamed from: case, reason: not valid java name */
    @af2
    public static final int f15412case = 46340;

    /* renamed from: do, reason: not valid java name */
    @af2
    public static final int f15413do = 1073741824;

    /* renamed from: if, reason: not valid java name */
    @af2
    public static final int f15417if = -1257966797;

    /* renamed from: for, reason: not valid java name */
    @af2
    public static final byte[] f15415for = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    /* renamed from: new, reason: not valid java name */
    @af2
    public static final int[] f15418new = {1, 10, 100, 1000, FastDtoa.kTen4, FastDtoa.kTen5, 1000000, FastDtoa.kTen7, FastDtoa.kTen8, 1000000000};

    /* renamed from: try, reason: not valid java name */
    @af2
    public static final int[] f15419try = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};

    /* renamed from: else, reason: not valid java name */
    private static final int[] f15414else = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    /* renamed from: goto, reason: not valid java name */
    @af2
    public static int[] f15416goto = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* renamed from: com.google.common.math.new$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f15420do;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f15420do = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15420do[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15420do[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15420do[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15420do[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15420do[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15420do[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15420do[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private Cnew() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m17333break(int i, int i2) {
        Celse.m17306try(ak.av, i);
        Celse.m17306try("b", i2);
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int iNumberOfTrailingZeros2 = i >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros3 = Integer.numberOfTrailingZeros(i2);
        int i3 = i2 >> iNumberOfTrailingZeros3;
        while (iNumberOfTrailingZeros2 != i3) {
            int i4 = iNumberOfTrailingZeros2 - i3;
            int i5 = (i4 >> 31) & i4;
            int i6 = (i4 - i5) - i5;
            i3 += i5;
            iNumberOfTrailingZeros2 = i6 >> Integer.numberOfTrailingZeros(i6);
        }
        return iNumberOfTrailingZeros2 << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros3);
    }

    /* renamed from: case, reason: not valid java name */
    public static int m17334case(int i, int i2) {
        long j = i - i2;
        int i3 = (int) j;
        Celse.m17303if(j == ((long) i3), "checkedSubtract", i, i2);
        return i3;
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m17335catch(int i) {
        return (i > 0) & ((i & (i + (-1))) == 0);
    }

    @li0
    @o8
    /* renamed from: class, reason: not valid java name */
    public static boolean m17336class(int i) {
        return Ccase.m17234const(i);
    }

    @af2
    /* renamed from: const, reason: not valid java name */
    public static int m17337const(int i, int i2) {
        return (((i - i2) ^ (-1)) ^ (-1)) >>> 31;
    }

    /* renamed from: default, reason: not valid java name */
    private static int m17338default(int i) {
        return (int) Math.sqrt(i);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m17339do(int i, int i2) {
        Celse.m17306try("n", i);
        Celse.m17306try("k", i2);
        int i3 = 0;
        af1.m204const(i2 <= i, "k (%s) > n (%s)", i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        int[] iArr = f15416goto;
        if (i2 >= iArr.length || i > iArr[i2]) {
            return Integer.MAX_VALUE;
        }
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1) {
            return i;
        }
        long j = 1;
        while (i3 < i2) {
            long j2 = j * (i - i3);
            i3++;
            j = j2 / i3;
        }
        return (int) j;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m17340else(int i, int i2, RoundingMode roundingMode) {
        af1.m205continue(roundingMode);
        if (i2 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i3 = i / i2;
        int i4 = i - (i2 * i3);
        if (i4 == 0) {
            return i3;
        }
        int i5 = ((i ^ i2) >> 31) | 1;
        switch (Cdo.f15420do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(i4 == 0);
                z = false;
                return !z ? i3 + i5 : i3;
            case 2:
                z = false;
                if (!z) {
                }
                break;
            case 3:
                if (i5 >= 0) {
                }
                if (!z) {
                }
                break;
            case 4:
                if (!z) {
                }
                break;
            case 5:
                if (i5 <= 0) {
                }
                if (!z) {
                }
                break;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i4);
                int iAbs2 = iAbs - (Math.abs(i2) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i3 & 1) != 0))) {
                        }
                    }
                } else if (iAbs2 <= 0) {
                }
                if (!z) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    @li0
    /* renamed from: final, reason: not valid java name */
    public static int m17341final(int i, RoundingMode roundingMode) {
        int iM17337const;
        Celse.m17302goto("x", i);
        int iM17351super = m17351super(i);
        int i2 = f15418new[iM17351super];
        switch (Cdo.f15420do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(i == i2);
            case 2:
            case 3:
                return iM17351super;
            case 4:
            case 5:
                iM17337const = m17337const(i2, i);
                return iM17351super + iM17337const;
            case 6:
            case 7:
            case 8:
                iM17337const = m17337const(f15419try[iM17351super], i);
                return iM17351super + iM17337const;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m17342for(int i, int i2) {
        long j = i + i2;
        int i3 = (int) j;
        Celse.m17303if(j == ((long) i3), "checkedAdd", i, i2);
        return i3;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m17343goto(int i) {
        Celse.m17306try("n", i);
        int[] iArr = f15414else;
        if (i < iArr.length) {
            return iArr[i];
        }
        return Integer.MAX_VALUE;
    }

    @o8
    /* renamed from: if, reason: not valid java name */
    public static int m17344if(int i) {
        Celse.m17302goto("x", i);
        if (i <= 1073741824) {
            return 1 << (-Integer.numberOfLeadingZeros(i - 1));
        }
        throw new ArithmeticException("ceilingPowerOfTwo(" + i + ") not representable as an int");
    }

    /* renamed from: import, reason: not valid java name */
    public static int m17345import(int i, int i2) {
        if (i2 > 0) {
            int i3 = i % i2;
            return i3 >= 0 ? i3 : i3 + i2;
        }
        throw new ArithmeticException("Modulus " + i2 + " must be > 0");
    }

    @li0
    /* renamed from: native, reason: not valid java name */
    public static int m17346native(int i, int i2) {
        Celse.m17306try("exponent", i2);
        if (i == -2) {
            if (i2 < 32) {
                return (i2 & 1) == 0 ? 1 << i2 : -(1 << i2);
            }
            return 0;
        }
        if (i == -1) {
            return (i2 & 1) == 0 ? 1 : -1;
        }
        if (i == 0) {
            return i2 == 0 ? 1 : 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            if (i2 < 32) {
                return 1 << i2;
            }
            return 0;
        }
        int i3 = 1;
        while (i2 != 0) {
            if (i2 == 1) {
                return i * i3;
            }
            i3 *= (i2 & 1) == 0 ? 1 : i;
            i *= i;
            i2 >>= 1;
        }
        return i3;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m17347new(int i, int i2) {
        long j = i * i2;
        int i3 = (int) j;
        Celse.m17303if(j == ((long) i3), "checkedMultiply", i, i2);
        return i3;
    }

    @o8
    /* renamed from: public, reason: not valid java name */
    public static int m17348public(int i, int i2) {
        return Cthis.m17704throws(i + i2);
    }

    @o8
    /* renamed from: return, reason: not valid java name */
    public static int m17349return(int i, int i2) {
        return Cthis.m17704throws(i * i2);
    }

    @o8
    /* renamed from: static, reason: not valid java name */
    public static int m17350static(int i, int i2) {
        Celse.m17306try("exponent", i2);
        if (i == -2) {
            return i2 >= 32 ? (i2 & 1) + Integer.MAX_VALUE : (i2 & 1) == 0 ? 1 << i2 : (-1) << i2;
        }
        if (i == -1) {
            return (i2 & 1) == 0 ? 1 : -1;
        }
        if (i == 0) {
            return i2 == 0 ? 1 : 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            if (i2 >= 31) {
                return Integer.MAX_VALUE;
            }
            return 1 << i2;
        }
        int i3 = ((i >>> 31) & i2 & 1) + Integer.MAX_VALUE;
        int iM17349return = 1;
        while (i2 != 0) {
            if (i2 == 1) {
                return m17349return(iM17349return, i);
            }
            if ((i2 & 1) != 0) {
                iM17349return = m17349return(iM17349return, i);
            }
            i2 >>= 1;
            if (i2 > 0) {
                if ((-46340 > i) || (i > 46340)) {
                    return i3;
                }
                i *= i;
            }
        }
        return iM17349return;
    }

    /* renamed from: super, reason: not valid java name */
    private static int m17351super(int i) {
        byte b = f15415for[Integer.numberOfLeadingZeros(i)];
        return b - m17337const(i, f15418new[b]);
    }

    @o8
    /* renamed from: switch, reason: not valid java name */
    public static int m17352switch(int i, int i2) {
        return Cthis.m17704throws(i - i2);
    }

    @o8
    /* renamed from: this, reason: not valid java name */
    public static int m17353this(int i) {
        Celse.m17302goto("x", i);
        return Integer.highestOneBit(i);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m17354throw(int i, RoundingMode roundingMode) {
        Celse.m17302goto("x", i);
        switch (Cdo.f15420do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(m17335catch(i));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                return (31 - iNumberOfLeadingZeros) + m17337const(f15417if >>> iNumberOfLeadingZeros, i);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    @li0
    /* renamed from: throws, reason: not valid java name */
    public static int m17355throws(int i, RoundingMode roundingMode) {
        int iM17337const;
        Celse.m17306try("x", i);
        int iM17338default = m17338default(i);
        switch (Cdo.f15420do[roundingMode.ordinal()]) {
            case 1:
                Celse.m17298catch(iM17338default * iM17338default == i);
            case 2:
            case 3:
                return iM17338default;
            case 4:
            case 5:
                iM17337const = m17337const(iM17338default * iM17338default, i);
                return iM17338default + iM17337const;
            case 6:
            case 7:
            case 8:
                iM17337const = m17337const((iM17338default * iM17338default) + iM17338default, i);
                return iM17338default + iM17337const;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m17356try(int i, int i2) {
        Celse.m17306try("exponent", i2);
        if (i == -2) {
            Celse.m17303if(i2 < 32, "checkedPow", i, i2);
            return (i2 & 1) == 0 ? 1 << i2 : (-1) << i2;
        }
        if (i == -1) {
            return (i2 & 1) == 0 ? 1 : -1;
        }
        if (i == 0) {
            return i2 == 0 ? 1 : 0;
        }
        if (i == 1) {
            return 1;
        }
        if (i == 2) {
            Celse.m17303if(i2 < 31, "checkedPow", i, i2);
            return 1 << i2;
        }
        int iM17347new = 1;
        while (i2 != 0) {
            if (i2 == 1) {
                return m17347new(iM17347new, i);
            }
            if ((i2 & 1) != 0) {
                iM17347new = m17347new(iM17347new, i);
            }
            i2 >>= 1;
            if (i2 > 0) {
                Celse.m17303if((-46340 <= i) & (i <= 46340), "checkedPow", i, i2);
                i *= i;
            }
        }
        return iM17347new;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m17357while(int i, int i2) {
        return (i & i2) + ((i ^ i2) >> 1);
    }
}
