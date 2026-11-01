package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class hq1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f2452do = 4294967295L;

    /* renamed from: new, reason: not valid java name */
    private static final int f2455new = Integer.MAX_VALUE;

    /* renamed from: try, reason: not valid java name */
    private static final int f2456try = Integer.MAX_VALUE;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f2454if = {-1, -1, 0, -1, -1, -1, -1, -2};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f2453for = {1, 0, -2, 1, 1, -2, 0, 2, -2, -3, 3, -2, -1, -1, 0, -2};

    /* renamed from: break, reason: not valid java name */
    public static void m3090break(int[] iArr, int[] iArr2) {
        long j = iArr[8] & 4294967295L;
        long j2 = iArr[9] & 4294967295L;
        long j3 = iArr[10] & 4294967295L;
        long j4 = iArr[11] & 4294967295L;
        long j5 = iArr[12] & 4294967295L;
        long j6 = iArr[13] & 4294967295L;
        long j7 = iArr[14] & 4294967295L;
        long j8 = iArr[15] & 4294967295L;
        long j9 = j3 + j4;
        long j10 = j6 + j7;
        long j11 = j10 + (j8 << 1);
        long j12 = j + j2 + j10;
        long j13 = j9 + j5 + j8 + j12;
        long j14 = (iArr[0] & 4294967295L) + j13 + j6 + j7 + j8 + 0;
        iArr2[0] = (int) j14;
        long j15 = (j14 >> 32) + (((iArr[1] & 4294967295L) + j13) - j) + j7 + j8;
        iArr2[1] = (int) j15;
        long j16 = (j15 >> 32) + ((iArr[2] & 4294967295L) - j12);
        iArr2[2] = (int) j16;
        long j17 = (j16 >> 32) + ((((iArr[3] & 4294967295L) + j13) - j2) - j3) + j6;
        iArr2[3] = (int) j17;
        long j18 = (j17 >> 32) + ((((iArr[4] & 4294967295L) + j13) - j9) - j) + j7;
        iArr2[4] = (int) j18;
        long j19 = (j18 >> 32) + (iArr[5] & 4294967295L) + j11 + j3;
        iArr2[5] = (int) j19;
        long j20 = (j19 >> 32) + (iArr[6] & 4294967295L) + j4 + j7 + j8;
        iArr2[6] = (int) j20;
        long j21 = (j20 >> 32) + (4294967295L & iArr[7]) + j13 + j11 + j5;
        iArr2[7] = (int) j21;
        m3092catch((int) (j21 >> 32), iArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m3091case(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            q21.n(8, iArr, 0, iArr2);
        } else {
            q21.k(8, iArr2, k21.m4191if(iArr, f2454if, iArr2));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m3092catch(int i, int[] iArr) {
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
            long j6 = j4 + ((iArr[2] & 4294967295L) - j2);
            iArr[2] = (int) j6;
            long j7 = (j6 >> 32) + (iArr[3] & 4294967295L) + j2;
            iArr[3] = (int) j7;
            long j8 = j7 >> 32;
            if (j8 != 0) {
                long j9 = j8 + (iArr[4] & 4294967295L);
                iArr[4] = (int) j9;
                long j10 = (j9 >> 32) + (iArr[5] & 4294967295L);
                iArr[5] = (int) j10;
                long j11 = (j10 >> 32) + (iArr[6] & 4294967295L);
                iArr[6] = (int) j11;
                j8 = j11 >> 32;
            }
            long j12 = j8 + (4294967295L & iArr[7]) + j2;
            iArr[7] = (int) j12;
            j = j12 >> 32;
        } else {
            j = 0;
        }
        if (j != 0 || ((iArr[7] >>> 1) >= Integer.MAX_VALUE && k21.m4206switch(iArr, f2454if))) {
            m3101new(iArr);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m3093class(int[] iArr, int[] iArr2) {
        int[] iArrM4187final = k21.m4187final();
        k21.b(iArr, iArrM4187final);
        m3090break(iArrM4187final, iArr2);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m3094const(int[] iArr, int i, int[] iArr2) {
        int[] iArrM4187final = k21.m4187final();
        k21.b(iArr, iArrM4187final);
        while (true) {
            m3090break(iArrM4187final, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                k21.b(iArr2, iArrM4187final);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3095do(int[] iArr, int[] iArr2, int[] iArr3) {
        if (k21.m4191if(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= Integer.MAX_VALUE && k21.m4206switch(iArr3, f2454if))) {
            m3101new(iArr3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m3096else(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM4187final = k21.m4187final();
        k21.m4199private(iArr, iArr2, iArrM4187final);
        m3090break(iArrM4187final, iArr3);
    }

    /* renamed from: final, reason: not valid java name */
    private static void m3097final(int[] iArr) {
        long j = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j3;
            j2 = j3 >> 32;
        }
        long j4 = j2 + (iArr[2] & 4294967295L) + 1;
        iArr[2] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr[3] & 4294967295L) - 1);
        iArr[3] = (int) j5;
        long j6 = j5 >> 32;
        if (j6 != 0) {
            long j7 = j6 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j7;
            long j8 = (j7 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j8;
            long j9 = (j8 >> 32) + (iArr[6] & 4294967295L);
            iArr[6] = (int) j9;
            j6 = j9 >> 32;
        }
        iArr[7] = (int) (j6 + ((4294967295L & iArr[7]) - 1));
    }

    /* renamed from: for, reason: not valid java name */
    public static void m3098for(int[] iArr, int[] iArr2) {
        if (q21.m6345protected(8, iArr, iArr2) != 0 || ((iArr2[7] >>> 1) >= Integer.MAX_VALUE && k21.m4206switch(iArr2, f2454if))) {
            m3101new(iArr2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m3099goto(int[] iArr, int[] iArr2, int[] iArr3) {
        if (k21.m4195interface(iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && q21.m6358volatile(16, iArr3, f2453for))) {
            q21.V(16, f2453for, iArr3);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3100if(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.m6329do(16, iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && q21.m6358volatile(16, iArr3, f2453for))) {
            q21.V(16, f2453for, iArr3);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m3101new(int[] iArr) {
        long j = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j3;
            j2 = j3 >> 32;
        }
        long j4 = j2 + ((iArr[2] & 4294967295L) - 1);
        iArr[2] = (int) j4;
        long j5 = (j4 >> 32) + (iArr[3] & 4294967295L) + 1;
        iArr[3] = (int) j5;
        long j6 = j5 >> 32;
        if (j6 != 0) {
            long j7 = j6 + (iArr[4] & 4294967295L);
            iArr[4] = (int) j7;
            long j8 = (j7 >> 32) + (iArr[5] & 4294967295L);
            iArr[5] = (int) j8;
            long j9 = (j8 >> 32) + (iArr[6] & 4294967295L);
            iArr[6] = (int) j9;
            j6 = j9 >> 32;
        }
        iArr[7] = (int) (j6 + (4294967295L & iArr[7]) + 1);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m3102super(int[] iArr, int[] iArr2, int[] iArr3) {
        if (k21.d(iArr, iArr2, iArr3) != 0) {
            m3097final(iArr3);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m3103this(int[] iArr, int[] iArr2) {
        if (k21.m4186extends(iArr)) {
            k21.j(iArr2);
        } else {
            k21.d(f2454if, iArr, iArr2);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m3104throw(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(16, iArr, iArr2, iArr3) != 0) {
            q21.m6326const(16, f2453for, iArr3);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int[] m3105try(BigInteger bigInteger) {
        int[] iArrM4196native = k21.m4196native(bigInteger);
        if ((iArrM4196native[7] >>> 1) >= Integer.MAX_VALUE) {
            int[] iArr = f2454if;
            if (k21.m4206switch(iArrM4196native, iArr)) {
                k21.g(iArr, iArrM4196native);
            }
        }
        return iArrM4196native;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m3106while(int[] iArr, int[] iArr2) {
        if (q21.w(8, iArr, 0, iArr2) != 0 || ((iArr2[7] >>> 1) >= Integer.MAX_VALUE && k21.m4206switch(iArr2, f2454if))) {
            m3101new(iArr2);
        }
    }
}
