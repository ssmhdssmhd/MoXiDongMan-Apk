package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class lu1 {

    /* renamed from: case, reason: not valid java name */
    private static final int f3770case = -1;

    /* renamed from: do, reason: not valid java name */
    private static final long f3771do = 4294967295L;

    /* renamed from: try, reason: not valid java name */
    private static final int f3775try = -1;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f3773if = {1, 0, 0, -1, -1, -1, -1};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f3772for = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};

    /* renamed from: new, reason: not valid java name */
    private static final int[] f3774new = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    /* renamed from: break, reason: not valid java name */
    public static void m4774break(int[] iArr, int[] iArr2) {
        long j = iArr[10] & 4294967295L;
        long j2 = iArr[11] & 4294967295L;
        long j3 = iArr[12] & 4294967295L;
        long j4 = iArr[13] & 4294967295L;
        long j5 = ((iArr[7] & 4294967295L) + j2) - 1;
        long j6 = (iArr[8] & 4294967295L) + j3;
        long j7 = (iArr[9] & 4294967295L) + j4;
        long j8 = ((iArr[0] & 4294967295L) - j5) + 0;
        long j9 = j8 & 4294967295L;
        long j10 = (j8 >> 32) + ((iArr[1] & 4294967295L) - j6);
        iArr2[1] = (int) j10;
        long j11 = (j10 >> 32) + ((iArr[2] & 4294967295L) - j7);
        iArr2[2] = (int) j11;
        long j12 = (j11 >> 32) + (((iArr[3] & 4294967295L) + j5) - j);
        long j13 = j12 & 4294967295L;
        long j14 = (j12 >> 32) + (((iArr[4] & 4294967295L) + j6) - j2);
        iArr2[4] = (int) j14;
        long j15 = (j14 >> 32) + (((iArr[5] & 4294967295L) + j7) - j3);
        iArr2[5] = (int) j15;
        long j16 = (j15 >> 32) + (((iArr[6] & 4294967295L) + j) - j4);
        iArr2[6] = (int) j16;
        long j17 = (j16 >> 32) + 1;
        long j18 = j13 + j17;
        long j19 = j9 - j17;
        iArr2[0] = (int) j19;
        long j20 = j19 >> 32;
        if (j20 != 0) {
            long j21 = j20 + (iArr2[1] & 4294967295L);
            iArr2[1] = (int) j21;
            long j22 = (j21 >> 32) + (4294967295L & iArr2[2]);
            iArr2[2] = (int) j22;
            j18 += j22 >> 32;
        }
        iArr2[3] = (int) j18;
        if (((j18 >> 32) == 0 || q21.m6356transient(7, iArr2, 4) == 0) && !(iArr2[6] == -1 && j21.m3706while(iArr2, f3773if))) {
            return;
        }
        m4785new(iArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m4775case(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            q21.n(7, iArr, 0, iArr2);
        } else {
            q21.k(7, iArr2, j21.m3683if(iArr, f3773if, iArr2));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m4776catch(int i, int[] iArr) {
        long j;
        if (i != 0) {
            long j2 = i & 4294967295L;
            long j3 = ((iArr[0] & 4294967295L) - j2) + 0;
            iArr[0] = (int) j3;
            long j4 = j3 >> 32;
            if (j4 != 0) {
                long j5 = j4 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j5;
                long j6 = (j5 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j6;
                j4 = j6 >> 32;
            }
            long j7 = j4 + (4294967295L & iArr[3]) + j2;
            iArr[3] = (int) j7;
            j = j7 >> 32;
        } else {
            j = 0;
        }
        if ((j == 0 || q21.m6356transient(7, iArr, 4) == 0) && !(iArr[6] == -1 && j21.m3706while(iArr, f3773if))) {
            return;
        }
        m4785new(iArr);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m4777class(int[] iArr, int[] iArr2) {
        int[] iArrM3671catch = j21.m3671catch();
        j21.m3705volatile(iArr, iArrM3671catch);
        m4774break(iArrM3671catch, iArr2);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m4778const(int[] iArr, int i, int[] iArr2) {
        int[] iArrM3671catch = j21.m3671catch();
        j21.m3705volatile(iArr, iArrM3671catch);
        while (true) {
            m4774break(iArrM3671catch, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                j21.m3705volatile(iArr2, iArrM3671catch);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4779do(int[] iArr, int[] iArr2, int[] iArr3) {
        if (j21.m3683if(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && j21.m3706while(iArr3, f3773if))) {
            m4785new(iArr3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m4780else(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM3671catch = j21.m3671catch();
        j21.m3694return(iArr, iArr2, iArrM3671catch);
        m4774break(iArrM3671catch, iArr3);
    }

    /* renamed from: final, reason: not valid java name */
    private static void m4781final(int[] iArr) {
        long j = (iArr[0] & 4294967295L) + 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j3;
            long j4 = (j3 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j4;
            j2 = j4 >> 32;
        }
        long j5 = j2 + ((4294967295L & iArr[3]) - 1);
        iArr[3] = (int) j5;
        if ((j5 >> 32) != 0) {
            q21.m6343package(7, iArr, 4);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4782for(int[] iArr, int[] iArr2) {
        if (q21.m6345protected(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && j21.m3706while(iArr2, f3773if))) {
            m4785new(iArr2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m4783goto(int[] iArr, int[] iArr2, int[] iArr3) {
        if (j21.m3678extends(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && q21.m6358volatile(14, iArr3, f3772for))) {
            int[] iArr4 = f3774new;
            if (q21.m6326const(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6356transient(14, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4784if(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.m6329do(14, iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && q21.m6358volatile(14, iArr3, f3772for))) {
            int[] iArr4 = f3774new;
            if (q21.m6326const(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6356transient(14, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m4785new(int[] iArr) {
        long j = (iArr[0] & 4294967295L) - 1;
        iArr[0] = (int) j;
        long j2 = j >> 32;
        if (j2 != 0) {
            long j3 = j2 + (iArr[1] & 4294967295L);
            iArr[1] = (int) j3;
            long j4 = (j3 >> 32) + (iArr[2] & 4294967295L);
            iArr[2] = (int) j4;
            j2 = j4 >> 32;
        }
        long j5 = j2 + (4294967295L & iArr[3]) + 1;
        iArr[3] = (int) j5;
        if ((j5 >> 32) != 0) {
            q21.m6356transient(7, iArr, 4);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m4786super(int[] iArr, int[] iArr2, int[] iArr3) {
        if (j21.m3692protected(iArr, iArr2, iArr3) != 0) {
            m4781final(iArr3);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m4787this(int[] iArr, int[] iArr2) {
        if (j21.m3688native(iArr)) {
            j21.a(iArr2);
        } else {
            j21.m3692protected(f3773if, iArr, iArr2);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m4788throw(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(14, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f3774new;
            if (q21.V(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6343package(14, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int[] m4789try(BigInteger bigInteger) {
        int[] iArrM3679final = j21.m3679final(bigInteger);
        if (iArrM3679final[6] == -1) {
            int[] iArr = f3773if;
            if (j21.m3706while(iArrM3679final, iArr)) {
                j21.m3686instanceof(iArr, iArrM3679final);
            }
        }
        return iArrM3679final;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m4790while(int[] iArr, int[] iArr2) {
        if (q21.w(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && j21.m3706while(iArr2, f3773if))) {
            m4785new(iArr2);
        }
    }
}
