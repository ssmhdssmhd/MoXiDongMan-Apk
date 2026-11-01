package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class st1 {

    /* renamed from: case, reason: not valid java name */
    private static final int f6249case = 2147483646;

    /* renamed from: do, reason: not valid java name */
    private static final long f6250do = 4294967295L;

    /* renamed from: try, reason: not valid java name */
    private static final int f6254try = 2147483646;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f6252if = {-1, -1, -1, -3};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f6251for = {1, 0, 0, 4, -2, -1, 3, -4};

    /* renamed from: new, reason: not valid java name */
    private static final int[] f6253new = {-1, -1, -1, -5, 1, 0, -4, 3};

    /* renamed from: break, reason: not valid java name */
    public static void m7580break(int[] iArr, int[] iArr2) {
        long j = 4294967295L & iArr[7];
        long j2 = (iArr[3] & 4294967295L) + j;
        long j3 = (iArr[6] & 4294967295L) + (j << 1);
        long j4 = (iArr[2] & 4294967295L) + j3;
        long j5 = (iArr[5] & 4294967295L) + (j3 << 1);
        long j6 = (iArr[1] & 4294967295L) + j5;
        long j7 = (iArr[4] & 4294967295L) + (j5 << 1);
        long j8 = (iArr[0] & 4294967295L) + j7;
        iArr2[0] = (int) j8;
        long j9 = j6 + (j8 >>> 32);
        iArr2[1] = (int) j9;
        long j10 = j4 + (j9 >>> 32);
        iArr2[2] = (int) j10;
        long j11 = j2 + (j7 << 1) + (j10 >>> 32);
        iArr2[3] = (int) j11;
        m7582catch((int) (j11 >>> 32), iArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m7581case(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            q21.n(4, iArr, 0, iArr2);
        } else {
            q21.k(4, iArr2, g21.m2521do(iArr, f6252if, iArr2));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m7582catch(int i, int[] iArr) {
        while (i != 0) {
            long j = i & 4294967295L;
            long j2 = (iArr[0] & 4294967295L) + j;
            iArr[0] = (int) j2;
            long j3 = j2 >> 32;
            if (j3 != 0) {
                long j4 = j3 + (iArr[1] & 4294967295L);
                iArr[1] = (int) j4;
                long j5 = (j4 >> 32) + (iArr[2] & 4294967295L);
                iArr[2] = (int) j5;
                j3 = j5 >> 32;
            }
            long j6 = j3 + (4294967295L & iArr[3]) + (j << 1);
            iArr[3] = (int) j6;
            i = (int) (j6 >> 32);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m7583class(int[] iArr, int[] iArr2) {
        int[] iArrM2517class = g21.m2517class();
        g21.m2531instanceof(iArr, iArrM2517class);
        m7580break(iArrM2517class, iArr2);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m7584const(int[] iArr, int i, int[] iArr2) {
        int[] iArrM2517class = g21.m2517class();
        g21.m2531instanceof(iArr, iArrM2517class);
        while (true) {
            m7580break(iArrM2517class, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                g21.m2531instanceof(iArr2, iArrM2517class);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7585do(int[] iArr, int[] iArr2, int[] iArr3) {
        if (g21.m2521do(iArr, iArr2, iArr3) != 0 || ((iArr3[3] >>> 1) >= 2147483646 && g21.m2539return(iArr3, f6252if))) {
            m7591new(iArr3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m7586else(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM2517class = g21.m2517class();
        g21.m2525finally(iArr, iArr2, iArrM2517class);
        m7580break(iArrM2517class, iArr3);
    }

    /* renamed from: final, reason: not valid java name */
    private static void m7587final(int[] iArr) {
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
        iArr[3] = (int) (j2 + ((4294967295L & iArr[3]) - 2));
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7588for(int[] iArr, int[] iArr2) {
        if (q21.m6345protected(4, iArr, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && g21.m2539return(iArr2, f6252if))) {
            m7591new(iArr2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7589goto(int[] iArr, int[] iArr2, int[] iArr3) {
        if (g21.m2541strictfp(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && k21.m4206switch(iArr3, f6251for))) {
            int[] iArr4 = f6253new;
            q21.m6326const(iArr4.length, iArr4, iArr3);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7590if(int[] iArr, int[] iArr2, int[] iArr3) {
        if (k21.m4191if(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && k21.m4206switch(iArr3, f6251for))) {
            int[] iArr4 = f6253new;
            q21.m6326const(iArr4.length, iArr4, iArr3);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m7591new(int[] iArr) {
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
        iArr[3] = (int) (j2 + (4294967295L & iArr[3]) + 2);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m7592super(int[] iArr, int[] iArr2, int[] iArr3) {
        if (g21.a(iArr, iArr2, iArr3) != 0) {
            m7587final(iArr3);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m7593this(int[] iArr, int[] iArr2) {
        if (g21.m2547throws(iArr)) {
            g21.g(iArr2);
        } else {
            g21.a(f6252if, iArr, iArr2);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m7594throw(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(10, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f6253new;
            q21.V(iArr4.length, iArr4, iArr3);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int[] m7595try(BigInteger bigInteger) {
        int[] iArrM2551while = g21.m2551while(bigInteger);
        if ((iArrM2551while[3] >>> 1) >= 2147483646) {
            int[] iArr = f6252if;
            if (g21.m2539return(iArrM2551while, iArr)) {
                g21.d(iArr, iArrM2551while);
            }
        }
        return iArrM2551while;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m7596while(int[] iArr, int[] iArr2) {
        if (q21.w(4, iArr, 0, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && g21.m2539return(iArr2, f6252if))) {
            m7591new(iArr2);
        }
    }
}
