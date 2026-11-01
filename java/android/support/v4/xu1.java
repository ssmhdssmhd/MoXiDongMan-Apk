package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class xu1 {

    /* renamed from: do, reason: not valid java name */
    public static final int[] f8026do = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511};

    /* renamed from: if, reason: not valid java name */
    private static final int f8027if = 511;

    /* renamed from: break, reason: not valid java name */
    public static void m9569break(int[] iArr) {
        int i = iArr[16];
        int iM6354throw = q21.m6354throw(16, i >>> 9, iArr) + (i & 511);
        if (iM6354throw > 511 || (iM6354throw == 511 && q21.m6321abstract(16, iArr, f8026do))) {
            iM6354throw = (iM6354throw + q21.m6340interface(16, iArr)) & 511;
        }
        iArr[16] = iM6354throw;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m9570case(int[] iArr, int[] iArr2) {
        o21.m5450if(iArr, iArr2);
        int i = iArr[16];
        iArr2[32] = q21.i(16, i << 1, iArr, 0, iArr2, 16) + (i * i);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m9571catch(int[] iArr, int[] iArr2) {
        int[] iArrM6351switch = q21.m6351switch(33);
        m9570case(iArr, iArrM6351switch);
        m9581this(iArrM6351switch, iArr2);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m9572class(int[] iArr, int i, int[] iArr2) {
        int[] iArrM6351switch = q21.m6351switch(33);
        m9570case(iArr, iArrM6351switch);
        while (true) {
            m9581this(iArrM6351switch, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m9570case(iArr2, iArrM6351switch);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m9573const(int[] iArr, int[] iArr2, int[] iArr3) {
        int iJ = (q21.J(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        if (iJ < 0) {
            iJ = (iJ + q21.m6331extends(16, iArr3)) & 511;
        }
        iArr3[16] = iJ;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m9574do(int[] iArr, int[] iArr2, int[] iArr3) {
        int iM6329do = q21.m6329do(16, iArr, iArr2, iArr3) + iArr[16] + iArr2[16];
        if (iM6329do > 511 || (iM6329do == 511 && q21.m6321abstract(16, iArr3, f8026do))) {
            iM6329do = (iM6329do + q21.m6340interface(16, iArr3)) & 511;
        }
        iArr3[16] = iM6329do;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m9575else(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM6351switch = q21.m6351switch(33);
        m9582try(iArr, iArr2, iArrM6351switch);
        m9581this(iArrM6351switch, iArr3);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m9576final(int[] iArr, int[] iArr2) {
        int i = iArr[16];
        iArr2[16] = (q21.w(16, iArr, i << 23, iArr2) | (i << 1)) & 511;
    }

    /* renamed from: for, reason: not valid java name */
    public static int[] m9577for(BigInteger bigInteger) {
        int[] iArrM6327continue = q21.m6327continue(521, bigInteger);
        if (q21.m6321abstract(17, iArrM6327continue, f8026do)) {
            q21.b0(17, iArrM6327continue);
        }
        return iArrM6327continue;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m9578goto(int[] iArr, int[] iArr2) {
        if (q21.m6352synchronized(17, iArr)) {
            q21.b0(17, iArr2);
        } else {
            q21.J(17, f8026do, iArr, iArr2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m9579if(int[] iArr, int[] iArr2) {
        int iM6345protected = q21.m6345protected(16, iArr, iArr2) + iArr[16];
        if (iM6345protected > 511 || (iM6345protected == 511 && q21.m6321abstract(16, iArr2, f8026do))) {
            iM6345protected = (iM6345protected + q21.m6340interface(16, iArr2)) & 511;
        }
        iArr2[16] = iM6345protected;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m9580new(int[] iArr, int[] iArr2) {
        int i = iArr[16];
        iArr2[16] = (q21.n(16, iArr, i, iArr2) >>> 23) | (i >>> 1);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m9581this(int[] iArr, int[] iArr2) {
        int i = iArr[32];
        int iQ = (q21.q(16, iArr, 16, 9, i, iArr2, 0) >>> 23) + (i >>> 9) + q21.m6326const(16, iArr, iArr2);
        if (iQ > 511 || (iQ == 511 && q21.m6321abstract(16, iArr2, f8026do))) {
            iQ = (iQ + q21.m6340interface(16, iArr2)) & 511;
        }
        iArr2[16] = iQ;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m9582try(int[] iArr, int[] iArr2, int[] iArr3) {
        o21.m5449do(iArr, iArr2, iArr3);
        int i = iArr[16];
        int i2 = iArr2[16];
        iArr3[32] = q21.d(16, i, iArr2, i2, iArr, iArr3, 16) + (i * i2);
    }
}
