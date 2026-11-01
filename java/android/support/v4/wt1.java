package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class wt1 {

    /* renamed from: case, reason: not valid java name */
    private static final int f7692case = -1;

    /* renamed from: do, reason: not valid java name */
    private static final long f7693do = 4294967295L;

    /* renamed from: else, reason: not valid java name */
    private static final int f7694else = -2147483647;

    /* renamed from: try, reason: not valid java name */
    private static final int f7698try = -1;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f7696if = {Integer.MAX_VALUE, -1, -1, -1, -1};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f7695for = {1, 1073741825, 0, 0, 0, -2, -2, -1, -1, -1};

    /* renamed from: new, reason: not valid java name */
    private static final int[] f7697new = {-1, -1073741826, -1, -1, -1, 1, 1};

    /* renamed from: break, reason: not valid java name */
    public static void m9269break(int i, int[] iArr) {
        if ((i == 0 || h21.m2903package(f7694else, i, iArr, 0) == 0) && !(iArr[4] == -1 && h21.m2910super(iArr, f7696if))) {
            return;
        }
        q21.m6354throw(5, f7694else, iArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m9270case(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM2912this = h21.m2912this();
        h21.m2901native(iArr, iArr2, iArrM2912this);
        m9282this(iArrM2912this, iArr3);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m9271catch(int[] iArr, int[] iArr2) {
        int[] iArrM2912this = h21.m2912this();
        h21.m2882abstract(iArr, iArrM2912this);
        m9282this(iArrM2912this, iArr2);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m9272class(int[] iArr, int i, int[] iArr2) {
        int[] iArrM2912this = h21.m2912this();
        h21.m2882abstract(iArr, iArrM2912this);
        while (true) {
            m9282this(iArrM2912this, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                h21.m2882abstract(iArr2, iArrM2912this);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m9273const(int[] iArr, int[] iArr2, int[] iArr3) {
        if (h21.m2909strictfp(iArr, iArr2, iArr3) != 0) {
            q21.Y(5, f7694else, iArr3);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m9274do(int[] iArr, int[] iArr2, int[] iArr3) {
        if (h21.m2890do(iArr, iArr2, iArr3) != 0 || (iArr3[4] == -1 && h21.m2910super(iArr3, f7696if))) {
            q21.m6354throw(5, f7694else, iArr3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m9275else(int[] iArr, int[] iArr2, int[] iArr3) {
        if (h21.m2914throws(iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && q21.m6358volatile(10, iArr3, f7695for))) {
            int[] iArr4 = f7697new;
            if (q21.m6326const(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6356transient(10, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m9276final(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(10, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = f7697new;
            if (q21.V(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6343package(10, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m9277for(int[] iArr, int[] iArr2) {
        if (q21.m6345protected(5, iArr, iArr2) != 0 || (iArr2[4] == -1 && h21.m2910super(iArr2, f7696if))) {
            q21.m6354throw(5, f7694else, iArr2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m9278goto(int[] iArr, int[] iArr2) {
        if (h21.m2918while(iArr)) {
            h21.m2898implements(iArr2);
        } else {
            h21.m2909strictfp(f7696if, iArr, iArr2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m9279if(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.m6329do(10, iArr, iArr2, iArr3) != 0 || (iArr3[9] == -1 && q21.m6358volatile(10, iArr3, f7695for))) {
            int[] iArr4 = f7697new;
            if (q21.m6326const(iArr4.length, iArr4, iArr3) != 0) {
                q21.m6356transient(10, iArr3, iArr4.length);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int[] m9280new(BigInteger bigInteger) {
        int[] iArrM2886class = h21.m2886class(bigInteger);
        if (iArrM2886class[4] == -1) {
            int[] iArr = f7696if;
            if (h21.m2910super(iArrM2886class, iArr)) {
                h21.m2905protected(iArr, iArrM2886class);
            }
        }
        return iArrM2886class;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m9281super(int[] iArr, int[] iArr2) {
        if (q21.w(5, iArr, 0, iArr2) != 0 || (iArr2[4] == -1 && h21.m2910super(iArr2, f7696if))) {
            q21.m6354throw(5, f7694else, iArr2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m9282this(int[] iArr, int[] iArr2) {
        long j = iArr[5] & 4294967295L;
        long j2 = iArr[6] & 4294967295L;
        long j3 = iArr[7] & 4294967295L;
        long j4 = iArr[8] & 4294967295L;
        long j5 = iArr[9] & 4294967295L;
        long j6 = (iArr[0] & 4294967295L) + j + (j << 31) + 0;
        iArr2[0] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[1] & 4294967295L) + j2 + (j2 << 31);
        iArr2[1] = (int) j7;
        long j8 = (j7 >>> 32) + (iArr[2] & 4294967295L) + j3 + (j3 << 31);
        iArr2[2] = (int) j8;
        long j9 = (j8 >>> 32) + (iArr[3] & 4294967295L) + j4 + (j4 << 31);
        iArr2[3] = (int) j9;
        long j10 = (j9 >>> 32) + (4294967295L & iArr[4]) + j5 + (j5 << 31);
        iArr2[4] = (int) j10;
        m9269break((int) (j10 >>> 32), iArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m9283try(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            q21.n(5, iArr, 0, iArr2);
        } else {
            q21.k(5, iArr2, h21.m2890do(iArr, f7696if, iArr2));
        }
    }
}
