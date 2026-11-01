package android.support.v4;

import com.google.common.collect.Cprivate;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class dt {

    /* renamed from: do, reason: not valid java name */
    private static final long f1123do = 4294967295L;

    /* renamed from: for, reason: not valid java name */
    private static final int f1124for = Integer.MAX_VALUE;

    /* renamed from: if, reason: not valid java name */
    public static final int[] f1125if = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};

    /* renamed from: new, reason: not valid java name */
    private static final int[] f1126new = {361, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, Cprivate.f14515try};

    /* renamed from: try, reason: not valid java name */
    private static final int f1127try = 19;

    /* renamed from: break, reason: not valid java name */
    public static void m1526break(int[] iArr, int[] iArr2) {
        if (k21.m4186extends(iArr)) {
            k21.j(iArr2);
        } else {
            k21.d(f1125if, iArr, iArr2);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int[] m1527case(BigInteger bigInteger) {
        int[] iArrM4196native = k21.m4196native(bigInteger);
        while (true) {
            int[] iArr = f1125if;
            if (!k21.m4206switch(iArrM4196native, iArr)) {
                return iArrM4196native;
            }
            k21.g(iArr, iArrM4196native);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m1528catch(int[] iArr, int[] iArr2) {
        int i = iArr[7];
        q21.v(8, iArr, 8, i, iArr2, 0);
        int iM4211transient = k21.m4211transient(19, iArr, iArr2) << 1;
        int i2 = iArr2[7];
        iArr2[7] = (i2 & Integer.MAX_VALUE) + q21.m6354throw(7, (iM4211transient + ((i2 >>> 31) - (i >>> 31))) * 19, iArr2);
        if (k21.m4206switch(iArr2, f1125if)) {
            m1542throw(iArr2);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m1529class(int i, int[] iArr) {
        int i2 = iArr[7];
        iArr[7] = (i2 & Integer.MAX_VALUE) + q21.m6354throw(7, ((i << 1) | (i2 >>> 31)) * 19, iArr);
        if (k21.m4206switch(iArr, f1125if)) {
            m1542throw(iArr);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m1530const(int[] iArr, int[] iArr2) {
        int[] iArrM4187final = k21.m4187final();
        k21.b(iArr, iArrM4187final);
        m1528catch(iArrM4187final, iArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1531do(int[] iArr, int[] iArr2, int[] iArr3) {
        k21.m4191if(iArr, iArr2, iArr3);
        if (k21.m4206switch(iArr3, f1125if)) {
            m1542throw(iArr3);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m1532else(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            q21.n(8, iArr, 0, iArr2);
        } else {
            k21.m4191if(iArr, f1125if, iArr2);
            q21.k(8, iArr2, 0);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m1533final(int[] iArr, int i, int[] iArr2) {
        int[] iArrM4187final = k21.m4187final();
        k21.b(iArr, iArrM4187final);
        while (true) {
            m1528catch(iArrM4187final, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                k21.b(iArr2, iArrM4187final);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1534for(int[] iArr, int[] iArr2) {
        q21.m6345protected(8, iArr, iArr2);
        if (k21.m4206switch(iArr2, f1125if)) {
            m1542throw(iArr2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1535goto(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrM4187final = k21.m4187final();
        k21.m4199private(iArr, iArr2, iArrM4187final);
        m1528catch(iArrM4187final, iArr3);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1536if(int[] iArr, int[] iArr2, int[] iArr3) {
        q21.m6329do(16, iArr, iArr2, iArr3);
        if (q21.m6358volatile(16, iArr3, f1126new)) {
            m1540super(iArr3);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m1537import(int[] iArr, int[] iArr2, int[] iArr3) {
        if (q21.J(16, iArr, iArr2, iArr3) != 0) {
            m1539new(iArr3);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m1538native(int[] iArr, int[] iArr2) {
        q21.w(8, iArr, 0, iArr2);
        if (k21.m4206switch(iArr2, f1125if)) {
            m1542throw(iArr2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static int m1539new(int[] iArr) {
        int[] iArr2 = f1126new;
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L);
        iArr[0] = (int) j;
        long jM6356transient = j >> 32;
        if (jM6356transient != 0) {
            jM6356transient = q21.m6356transient(8, iArr, 1);
        }
        long j2 = jM6356transient + ((iArr[8] & 4294967295L) - 19);
        iArr[8] = (int) j2;
        long jM6343package = j2 >> 32;
        if (jM6343package != 0) {
            jM6343package = q21.m6343package(15, iArr, 9);
        }
        long j3 = jM6343package + (iArr[15] & 4294967295L) + (4294967295L & (iArr2[15] + 1));
        iArr[15] = (int) j3;
        return (int) (j3 >> 32);
    }

    /* renamed from: super, reason: not valid java name */
    private static int m1540super(int[] iArr) {
        int[] iArr2 = f1126new;
        long j = (iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L);
        iArr[0] = (int) j;
        long jM6343package = j >> 32;
        if (jM6343package != 0) {
            jM6343package = q21.m6343package(8, iArr, 1);
        }
        long j2 = jM6343package + (iArr[8] & 4294967295L) + 19;
        iArr[8] = (int) j2;
        long jM6356transient = j2 >> 32;
        if (jM6356transient != 0) {
            jM6356transient = q21.m6356transient(15, iArr, 9);
        }
        long j3 = jM6356transient + ((iArr[15] & 4294967295L) - (4294967295L & (iArr2[15] + 1)));
        iArr[15] = (int) j3;
        return (int) (j3 >> 32);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1541this(int[] iArr, int[] iArr2, int[] iArr3) {
        k21.m4195interface(iArr, iArr2, iArr3);
        if (q21.m6358volatile(16, iArr3, f1126new)) {
            m1540super(iArr3);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private static int m1542throw(int[] iArr) {
        long j = (iArr[0] & 4294967295L) + 19;
        iArr[0] = (int) j;
        long jM6356transient = j >> 32;
        if (jM6356transient != 0) {
            jM6356transient = q21.m6356transient(7, iArr, 1);
        }
        long j2 = jM6356transient + ((4294967295L & iArr[7]) - 2147483648L);
        iArr[7] = (int) j2;
        return (int) (j2 >> 32);
    }

    /* renamed from: try, reason: not valid java name */
    private static int m1543try(int[] iArr) {
        long j = (iArr[0] & 4294967295L) - 19;
        iArr[0] = (int) j;
        long jM6343package = j >> 32;
        if (jM6343package != 0) {
            jM6343package = q21.m6343package(7, iArr, 1);
        }
        long j2 = jM6343package + (4294967295L & iArr[7]) + 2147483648L;
        iArr[7] = (int) j2;
        return (int) (j2 >> 32);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m1544while(int[] iArr, int[] iArr2, int[] iArr3) {
        if (k21.d(iArr, iArr2, iArr3) != 0) {
            m1543try(iArr3);
        }
    }
}
