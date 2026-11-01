package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class uu1 {

    /* renamed from: case, reason: not valid java name */
    private static final int f6986case = -1;

    /* renamed from: do, reason: not valid java name */
    private static final long f6987do = 4294967295L;

    /* renamed from: try, reason: not valid java name */
    private static final int f6991try = -1;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f6989if = {-1, 0, 0, -1, -2, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f6988for = {1, -2, 0, 2, 0, -2, 0, 2, 1, 0, 0, 0, -2, 1, 0, -2, -3, -1, -1, -1, -1, -1, -1, -1};

    /* renamed from: new, reason: not valid java name */
    private static final int[] f6990new = {-1, 1, -1, -3, -1, 1, -1, -3, -2, -1, -1, -1, 1, -2, -1, 1, 2};

    /* renamed from: break, reason: not valid java name */
    public static void m8642break(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = i & 4294967295L;
            long j3 = (iArr[0] & 4294967295L) + j2 + 0;
            iArr[0] = (int) j3;
            long j4 = (j3 >> 32) + ((iArr[1] & 4294967295L) - j2);
            iArr[1] = (int) j4;
            long j5 = j4 >> 32;
            if (j5 != 0) {
                long j6 = j5 + (iArr[2] & 4294967295L);
                iArr[2] = (int) j6;
                j5 = j6 >> 32;
            }
            long j7 = j5 + (iArr[3] & 4294967295L) + j2;
            iArr[3] = (int) j7;
            long j8 = (j7 >> 32) + (4294967295L & iArr[4]) + j2;
            iArr[4] = (int) j8;
            j = j8 >> 32;
        } else {
            j = 0;
        }
        if ((j == 0 || q21.m6356transient(12, iArr, 5) == 0) && !(iArr[11] == -1 && q21.m6358volatile(12, iArr, f6989if))) {
            return;
        }
        m8653new(iArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m8643case(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            q21.n(12, iArr, 0, iArr2);
        } else {
            q21.k(12, iArr2, q21.m6329do(12, iArr, f6989if, iArr2));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m8644catch(int[] iArr, int[] iArr2) {
        int[] iArrM6351switch = q21.m6351switch(24);
        m21.m4824if(iArr, iArrM6351switch);
        m8655this(iArrM6351switch, iArr2);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m8645class(int[] iArr, int i, int[] iArr2) {
        int[] iArrM6351switch = q21.m6351switch(24);
        m21.m4824if(iArr, iArrM6351switch);
        while (true) {
            m8655this(iArrM6351switch, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m21.m4824if(iArr2, iArrM6351switch);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    private static void m8646const(int[] iArr) {
        long j = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j;
        long j2 = (j >> 32) + (iArr[1] & 4294967295L) + 1;
        iArr[1] = (int) j2;
        long j3 = j2 >> 32;
        if (j3 != 0) {
            long j4 = j3 + (iArr[2] & 4294967295L);
            iArr[2] = (int) j4;
            j3 = j4 >> 32;
        }
        long j5 = j3 + ((iArr[3] & 4294967295L) - 1);
        iArr[3] = (int) j5;
        long j6 = (j5 >> 32) + ((4294967295L & iArr[4]) - 1);
        iArr[4] = (int) j6;
        if ((j6 >> 32) != 0) {
            q21.m6343package(12, iArr, 5);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8647do(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.m6329do(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && q21.m6358volatile(12, iArr3, f6989if))) {
            m8653new(iArr3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m8648else(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM6351switch = q21.m6351switch(24);
        m21.m4823do(iArr, iArr2, iArrM6351switch);
        m8655this(iArrM6351switch, iArr3);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m8649final(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(12, iArr, iArr2, iArr3) != 0) {
            m8646const(iArr3);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8650for(int[] iArr, int[] iArr2) {
        if (q21.m6345protected(12, iArr, iArr2) != 0 || (iArr2[11] == -1 && q21.m6358volatile(12, iArr2, f6989if))) {
            m8653new(iArr2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m8651goto(int[] iArr, int[] iArr2) {
        if (q21.m6352synchronized(12, iArr)) {
            q21.b0(12, iArr2);
        } else {
            q21.J(12, f6989if, iArr, iArr2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8652if(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.m6329do(24, iArr, iArr2, iArr3) != 0 || (iArr3[23] == -1 && q21.m6358volatile(24, iArr3, f6988for))) {
            int[] iArr4 = f6990new;
            if (q21.m6326const(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6356transient(24, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m8653new(int[] iArr) {
        long j = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j;
        long j2 = (j >> 32) + ((iArr[1] & 4294967295L) - 1);
        iArr[1] = (int) j2;
        long j3 = j2 >> 32;
        if (j3 != 0) {
            long j4 = j3 + (iArr[2] & 4294967295L);
            iArr[2] = (int) j4;
            j3 = j4 >> 32;
        }
        long j5 = j3 + (iArr[3] & 4294967295L) + 1;
        iArr[3] = (int) j5;
        long j6 = (j5 >> 32) + (4294967295L & iArr[4]) + 1;
        iArr[4] = (int) j6;
        if ((j6 >> 32) != 0) {
            q21.m6356transient(12, iArr, 5);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m8654super(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(24, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f6990new;
            if (q21.V(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6343package(24, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m8655this(int[] iArr, int[] iArr2) {
        long j = iArr[16] & 4294967295L;
        long j2 = iArr[17] & 4294967295L;
        long j3 = iArr[18] & 4294967295L;
        long j4 = iArr[19] & 4294967295L;
        long j5 = iArr[20] & 4294967295L;
        long j6 = iArr[21] & 4294967295L;
        long j7 = iArr[22] & 4294967295L;
        long j8 = iArr[23] & 4294967295L;
        long j9 = ((iArr[12] & 4294967295L) + j5) - 1;
        long j10 = (iArr[13] & 4294967295L) + j7;
        long j11 = (iArr[14] & 4294967295L) + j7 + j8;
        long j12 = (iArr[15] & 4294967295L) + j8;
        long j13 = j2 + j6;
        long j14 = j6 - j8;
        long j15 = j7 - j8;
        long j16 = j9 + j14;
        long j17 = (iArr[0] & 4294967295L) + j16 + 0;
        iArr2[0] = (int) j17;
        long j18 = (j17 >> 32) + (((iArr[1] & 4294967295L) + j8) - j9) + j10;
        iArr2[1] = (int) j18;
        long j19 = (j18 >> 32) + (((iArr[2] & 4294967295L) - j6) - j10) + j11;
        iArr2[2] = (int) j19;
        long j20 = (j19 >> 32) + ((iArr[3] & 4294967295L) - j11) + j12 + j16;
        iArr2[3] = (int) j20;
        long j21 = (j20 >> 32) + (((((iArr[4] & 4294967295L) + j) + j6) + j10) - j12) + j16;
        iArr2[4] = (int) j21;
        long j22 = (j21 >> 32) + ((iArr[5] & 4294967295L) - j) + j10 + j11 + j13;
        iArr2[5] = (int) j22;
        long j23 = (j22 >> 32) + (((iArr[6] & 4294967295L) + j3) - j2) + j11 + j12;
        iArr2[6] = (int) j23;
        long j24 = (j23 >> 32) + ((((iArr[7] & 4294967295L) + j) + j4) - j3) + j12;
        iArr2[7] = (int) j24;
        long j25 = (j24 >> 32) + (((((iArr[8] & 4294967295L) + j) + j2) + j5) - j4);
        iArr2[8] = (int) j25;
        long j26 = (j25 >> 32) + (((iArr[9] & 4294967295L) + j3) - j5) + j13;
        iArr2[9] = (int) j26;
        long j27 = (j26 >> 32) + ((((iArr[10] & 4294967295L) + j3) + j4) - j14) + j15;
        iArr2[10] = (int) j27;
        long j28 = (j27 >> 32) + ((((iArr[11] & 4294967295L) + j4) + j5) - j15);
        iArr2[11] = (int) j28;
        m8642break((int) ((j28 >> 32) + 1), iArr2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m8656throw(int[] iArr, int[] iArr2) {
        if (q21.w(12, iArr, 0, iArr2) != 0 || (iArr2[11] == -1 && q21.m6358volatile(12, iArr2, f6989if))) {
            m8653new(iArr2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int[] m8657try(BigInteger bigInteger) {
        int[] iArrM6327continue = q21.m6327continue(384, bigInteger);
        if (iArrM6327continue[11] == -1) {
            int[] iArr = f6989if;
            if (q21.m6358volatile(12, iArrM6327continue, iArr)) {
                q21.V(12, iArr, iArrM6327continue);
            }
        }
        return iArrM6327continue;
    }
}
