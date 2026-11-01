package com.google.common.primitives;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import freemarker.core.o3;
import java.util.Arrays;
import java.util.Comparator;

@ki0
@o8
/* renamed from: com.google.common.primitives.throw, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cthrow {

    /* renamed from: do, reason: not valid java name */
    public static final long f15527do = 4294967295L;

    /* renamed from: com.google.common.primitives.throw$do, reason: invalid class name */
    public enum Cdo implements Comparator<int[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < iMin; i++) {
                if (iArr[i] != iArr2[i]) {
                    return Cthrow.m17717if(iArr[i], iArr2[i]);
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    private Cthrow() {
    }

    @lf
    /* renamed from: break, reason: not valid java name */
    public static int m17707break(String str) {
        return m17709catch(str, 10);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m17708case(String str, int... iArr) {
        af1.m205continue(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(m17719native(iArr[0]));
        for (int i = 1; i < iArr.length; i++) {
            sb.append(str);
            sb.append(m17719native(iArr[i]));
        }
        return sb.toString();
    }

    @lf
    /* renamed from: catch, reason: not valid java name */
    public static int m17709catch(String str, int i) throws NumberFormatException {
        af1.m205continue(str);
        long j = Long.parseLong(str, i);
        if ((4294967295L & j) == j) {
            return (int) j;
        }
        throw new NumberFormatException("Input " + str + " in base " + i + " is not in the range of an unsigned integer");
    }

    /* renamed from: class, reason: not valid java name */
    public static int m17710class(int i, int i2) {
        return (int) (m17718import(i) % m17718import(i2));
    }

    /* renamed from: const, reason: not valid java name */
    public static int m17711const(long j) {
        if (j <= 0) {
            return 0;
        }
        if (j >= o3.f24027catch) {
            return -1;
        }
        return (int) j;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m17712do(long j) {
        af1.m232throw((j >> 32) == 0, "out of range: %s", j);
        return (int) j;
    }

    /* renamed from: else, reason: not valid java name */
    public static Comparator<int[]> m17713else() {
        return Cdo.INSTANCE;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m17714final(int[] iArr) {
        af1.m205continue(iArr);
        m17722super(iArr, 0, iArr.length);
    }

    @lf
    /* renamed from: for, reason: not valid java name */
    public static int m17715for(String str) {
        Ccatch ccatchM17506do = Ccatch.m17506do(str);
        try {
            return m17709catch(ccatchM17506do.f15494do, ccatchM17506do.f15495if);
        } catch (NumberFormatException e) {
            NumberFormatException numberFormatException = new NumberFormatException("Error parsing value: " + str);
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m17716goto(int... iArr) {
        af1.m220new(iArr.length > 0);
        int iM17725try = m17725try(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int iM17725try2 = m17725try(iArr[i]);
            if (iM17725try2 > iM17725try) {
                iM17725try = iM17725try2;
            }
        }
        return m17725try(iM17725try);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m17717if(int i, int i2) {
        return Cthis.m17705try(m17725try(i), m17725try(i2));
    }

    /* renamed from: import, reason: not valid java name */
    public static long m17718import(int i) {
        return i & 4294967295L;
    }

    /* renamed from: native, reason: not valid java name */
    public static String m17719native(int i) {
        return m17721public(i, 10);
    }

    /* renamed from: new, reason: not valid java name */
    public static int m17720new(int i, int i2) {
        return (int) (m17718import(i) / m17718import(i2));
    }

    /* renamed from: public, reason: not valid java name */
    public static String m17721public(int i, int i2) {
        return Long.toString(i & 4294967295L, i2);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m17722super(int[] iArr, int i, int i2) {
        af1.m205continue(iArr);
        af1.s(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = m17725try(iArr[i3]);
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = m17725try(iArr[i]);
            i++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int m17723this(int... iArr) {
        af1.m220new(iArr.length > 0);
        int iM17725try = m17725try(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int iM17725try2 = m17725try(iArr[i]);
            if (iM17725try2 < iM17725try) {
                iM17725try = iM17725try2;
            }
        }
        return m17725try(iM17725try);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m17724throw(int[] iArr) {
        af1.m205continue(iArr);
        m17726while(iArr, 0, iArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m17725try(int i) {
        return i ^ Integer.MIN_VALUE;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m17726while(int[] iArr, int i, int i2) {
        af1.m205continue(iArr);
        af1.s(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = Integer.MAX_VALUE ^ iArr[i3];
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = iArr[i] ^ Integer.MAX_VALUE;
            i++;
        }
    }
}
