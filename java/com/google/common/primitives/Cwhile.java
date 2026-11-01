package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Comparator;

@ki0
@o8
/* renamed from: com.google.common.primitives.while, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cwhile {

    /* renamed from: do, reason: not valid java name */
    public static final long f15531do = -1;

    /* renamed from: com.google.common.primitives.while$do, reason: invalid class name */
    public enum Cdo implements Comparator<long[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < iMin; i++) {
                if (jArr[i] != jArr2[i]) {
                    return Cwhile.m17758do(jArr[i], jArr2[i]);
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    /* renamed from: com.google.common.primitives.while$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final long[] f15533do = new long[37];

        /* renamed from: if, reason: not valid java name */
        public static final int[] f15535if = new int[37];

        /* renamed from: for, reason: not valid java name */
        public static final int[] f15534for = new int[37];

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i = 2; i <= 36; i++) {
                long j = i;
                f15533do[i] = Cwhile.m17761for(-1L, j);
                f15535if[i] = (int) Cwhile.m17755catch(-1L, j);
                f15534for[i] = bigInteger.toString(i).length() - 1;
            }
        }

        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public static boolean m17770do(long j, int i, int i2) {
            if (j < 0) {
                return true;
            }
            long[] jArr = f15533do;
            if (j < jArr[i2]) {
                return false;
            }
            return j > jArr[i2] || i > f15535if[i2];
        }
    }

    private Cwhile() {
    }

    @lf
    /* renamed from: break, reason: not valid java name */
    public static long m17753break(String str, int i) {
        af1.m205continue(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        if (i < 2 || i > 36) {
            throw new NumberFormatException("illegal radix: " + i);
        }
        int i2 = Cif.f15534for[i] - 1;
        long j = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            int iDigit = Character.digit(str.charAt(i3), i);
            if (iDigit == -1) {
                throw new NumberFormatException(str);
            }
            if (i3 > i2 && Cif.m17770do(j, iDigit, i)) {
                throw new NumberFormatException("Too large for unsigned long: " + str);
            }
            j = (j * i) + iDigit;
        }
        return j;
    }

    /* renamed from: case, reason: not valid java name */
    public static Comparator<long[]> m17754case() {
        return Cdo.INSTANCE;
    }

    /* renamed from: catch, reason: not valid java name */
    public static long m17755catch(long j, long j2) {
        if (j2 < 0) {
            return m17758do(j, j2) < 0 ? j : j - j2;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (m17758do(j3, j2) < 0) {
            j2 = 0;
        }
        return j3 - j2;
    }

    /* renamed from: class, reason: not valid java name */
    public static void m17756class(long[] jArr) {
        af1.m205continue(jArr);
        m17757const(jArr, 0, jArr.length);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m17757const(long[] jArr, int i, int i2) {
        af1.m205continue(jArr);
        af1.s(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = m17764new(jArr[i3]);
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = m17764new(jArr[i]);
            i++;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m17758do(long j, long j2) {
        return Cbreak.m17482new(m17764new(j), m17764new(j2));
    }

    /* renamed from: else, reason: not valid java name */
    public static long m17759else(long... jArr) {
        af1.m220new(jArr.length > 0);
        long jM17764new = m17764new(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long jM17764new2 = m17764new(jArr[i]);
            if (jM17764new2 > jM17764new) {
                jM17764new = jM17764new2;
            }
        }
        return m17764new(jM17764new);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m17760final(long[] jArr) {
        af1.m205continue(jArr);
        m17765super(jArr, 0, jArr.length);
    }

    /* renamed from: for, reason: not valid java name */
    public static long m17761for(long j, long j2) {
        if (j2 < 0) {
            return m17758do(j, j2) < 0 ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return j3 + (m17758do(j - (j3 * j2), j2) < 0 ? 0 : 1);
    }

    /* renamed from: goto, reason: not valid java name */
    public static long m17762goto(long... jArr) {
        af1.m220new(jArr.length > 0);
        long jM17764new = m17764new(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long jM17764new2 = m17764new(jArr[i]);
            if (jM17764new2 < jM17764new) {
                jM17764new = jM17764new2;
            }
        }
        return m17764new(jM17764new);
    }

    @lf
    /* renamed from: if, reason: not valid java name */
    public static long m17763if(String str) {
        Ccatch ccatchM17506do = Ccatch.m17506do(str);
        try {
            return m17753break(ccatchM17506do.f15494do, ccatchM17506do.f15495if);
        } catch (NumberFormatException e) {
            NumberFormatException numberFormatException = new NumberFormatException("Error parsing value: " + str);
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static long m17764new(long j) {
        return j ^ Long.MIN_VALUE;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m17765super(long[] jArr, int i, int i2) {
        af1.m205continue(jArr);
        af1.s(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = Long.MAX_VALUE ^ jArr[i3];
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = jArr[i] ^ Long.MAX_VALUE;
            i++;
        }
    }

    @lf
    /* renamed from: this, reason: not valid java name */
    public static long m17766this(String str) {
        return m17753break(str, 10);
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m17767throw(long j) {
        return m17769while(j, 10);
    }

    /* renamed from: try, reason: not valid java name */
    public static String m17768try(String str, long... jArr) {
        af1.m205continue(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 5);
        sb.append(m17767throw(jArr[0]));
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str);
            sb.append(m17767throw(jArr[i]));
        }
        return sb.toString();
    }

    /* renamed from: while, reason: not valid java name */
    public static String m17769while(long j, int i) {
        af1.m202catch(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i);
        if (j == 0) {
            return "0";
        }
        if (j > 0) {
            return Long.toString(j, i);
        }
        int i2 = 64;
        char[] cArr = new char[64];
        int i3 = i - 1;
        if ((i & i3) == 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i2--;
                cArr[i2] = Character.forDigit(((int) j) & i3, i);
                j >>>= iNumberOfTrailingZeros;
            } while (j != 0);
        } else {
            long jM17761for = (i & 1) == 0 ? (j >>> 1) / (i >>> 1) : m17761for(j, i);
            long j2 = i;
            cArr[63] = Character.forDigit((int) (j - (jM17761for * j2)), i);
            i2 = 63;
            while (jM17761for > 0) {
                i2--;
                cArr[i2] = Character.forDigit((int) (jM17761for % j2), i);
                jM17761for /= j2;
            }
        }
        return new String(cArr, i2, 64 - i2);
    }
}
