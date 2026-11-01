package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class fu1 {

    /* renamed from: case, reason: not valid java name */
    private static final int f1998case = -1;

    /* renamed from: do, reason: not valid java name */
    private static final long f1999do = 4294967295L;

    /* renamed from: try, reason: not valid java name */
    private static final int f2003try = -1;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f2001if = {-1, -1, -2, -1, -1, -1};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f2000for = {1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};

    /* renamed from: new, reason: not valid java name */
    private static final int[] f2002new = {-1, -1, -3, -1, -2, -1, 1, 0, 2};

    /* renamed from: break, reason: not valid java name */
    public static void m2415break(int[] iArr, int[] iArr2) {
        long j = iArr[6] & 4294967295L;
        long j2 = iArr[7] & 4294967295L;
        long j3 = (iArr[10] & 4294967295L) + j;
        long j4 = (iArr[11] & 4294967295L) + j2;
        long j5 = (iArr[0] & 4294967295L) + j3 + 0;
        int i = (int) j5;
        long j6 = (j5 >> 32) + (iArr[1] & 4294967295L) + j4;
        iArr2[1] = (int) j6;
        long j7 = j3 + (iArr[8] & 4294967295L);
        long j8 = j4 + (iArr[9] & 4294967295L);
        long j9 = (j6 >> 32) + (iArr[2] & 4294967295L) + j7;
        long j10 = j9 & 4294967295L;
        long j11 = (j9 >> 32) + (iArr[3] & 4294967295L) + j8;
        iArr2[3] = (int) j11;
        long j12 = (j11 >> 32) + (iArr[4] & 4294967295L) + (j7 - j);
        iArr2[4] = (int) j12;
        long j13 = (j12 >> 32) + (iArr[5] & 4294967295L) + (j8 - j2);
        iArr2[5] = (int) j13;
        long j14 = j13 >> 32;
        long j15 = j10 + j14;
        long j16 = j14 + (i & 4294967295L);
        iArr2[0] = (int) j16;
        long j17 = j16 >> 32;
        if (j17 != 0) {
            long j18 = j17 + (4294967295L & iArr2[1]);
            iArr2[1] = (int) j18;
            j15 += j18 >> 32;
        }
        iArr2[2] = (int) j15;
        if (((j15 >> 32) == 0 || q21.m6356transient(6, iArr2, 3) == 0) && !(iArr2[5] == -1 && i21.m3233return(iArr2, f2001if))) {
            return;
        }
        m2426new(iArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2416case(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            q21.n(6, iArr, 0, iArr2);
        } else {
            q21.k(6, iArr2, i21.m3215do(iArr, f2001if, iArr2));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m2417catch(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = i & 4294967295L;
            long j3 = (iArr[0] & 4294967295L) + j2 + 0;
            iArr[0] = (int) j3;
            long j4 = j3 >> 32;
            if (j4 != 0) {
                long j5 = j4 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j5;
                j4 = j5 >> 32;
            }
            long j6 = j4 + (4294967295L & iArr[2]) + j2;
            iArr[2] = (int) j6;
            j = j6 >> 32;
        } else {
            j = 0;
        }
        if ((j == 0 || q21.m6356transient(6, iArr, 3) == 0) && !(iArr[5] == -1 && i21.m3233return(iArr, f2001if))) {
            return;
        }
        m2426new(iArr);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m2418class(int[] iArr, int[] iArr2) {
        int[] iArrM3211class = i21.m3211class();
        i21.m3223implements(iArr, iArrM3211class);
        m2415break(iArrM3211class, iArr2);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m2419const(int[] iArr, int i, int[] iArr2) {
        int[] iArrM3211class = i21.m3211class();
        i21.m3223implements(iArr, iArrM3211class);
        while (true) {
            m2415break(iArrM3211class, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                i21.m3223implements(iArr2, iArrM3211class);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2420do(int[] iArr, int[] iArr2, int[] iArr3) {
        if (i21.m3215do(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && i21.m3233return(iArr3, f2001if))) {
            m2426new(iArr3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m2421else(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM3211class = i21.m3211class();
        i21.m3219finally(iArr, iArr2, iArrM3211class);
        m2415break(iArrM3211class, iArr3);
    }

    /* renamed from: final, reason: not valid java name */
    private static void m2422final(int[] iArr) {
        long j = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j3;
            j2 = j3 >> 32;
        }
        long j4 = j2 + ((4294967295L & iArr[2]) - 1);
        iArr[2] = (int) j4;
        if ((j4 >> 32) != 0) {
            q21.m6343package(6, iArr, 3);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m2423for(int[] iArr, int[] iArr2) {
        if (q21.m6345protected(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && i21.m3233return(iArr2, f2001if))) {
            m2426new(iArr2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m2424goto(int[] iArr, int[] iArr2, int[] iArr3) {
        if (i21.m3235strictfp(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && q21.m6358volatile(12, iArr3, f2000for))) {
            int[] iArr4 = f2002new;
            if (q21.m6326const(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6356transient(12, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2425if(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.m6329do(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && q21.m6358volatile(12, iArr3, f2000for))) {
            int[] iArr4 = f2002new;
            if (q21.m6326const(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6356transient(12, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m2426new(int[] iArr) {
        long j = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j3;
            j2 = j3 >> 32;
        }
        long j4 = j2 + (4294967295L & iArr[2]) + 1;
        iArr[2] = (int) j4;
        if ((j4 >> 32) != 0) {
            q21.m6356transient(6, iArr, 3);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m2427super(int[] iArr, int[] iArr2, int[] iArr3) {
        if (i21.m3238synchronized(iArr, iArr2, iArr3) != 0) {
            m2422final(iArr3);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m2428this(int[] iArr, int[] iArr2) {
        if (i21.m3241throws(iArr)) {
            i21.f(iArr2);
        } else {
            i21.m3238synchronized(f2001if, iArr, iArr2);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m2429throw(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(12, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f2002new;
            if (q21.V(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6343package(12, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int[] m2430try(BigInteger bigInteger) {
        int[] iArrM3245while = i21.m3245while(bigInteger);
        if (iArrM3245while[5] == -1) {
            int[] iArr = f2001if;
            if (i21.m3233return(iArrM3245while, iArr)) {
                i21.c(iArr, iArrM3245while);
            }
        }
        return iArrM3245while;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m2431while(int[] iArr, int[] iArr2) {
        if (q21.w(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && i21.m3233return(iArr2, f2001if))) {
            m2426new(iArr2);
        }
    }
}
