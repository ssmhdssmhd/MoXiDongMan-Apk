package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class nv1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f4332do = 1;

    /* renamed from: if, reason: not valid java name */
    private static final long f4333if = 562949953421311L;

    /* renamed from: break, reason: not valid java name */
    public static void m5374break(long[] jArr, long[] jArr2) {
        if (k21.m4188finally(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM4181const = k21.m4181const();
        long[] jArrM4181const2 = k21.m4181const();
        m5390throw(jArr, jArrM4181const);
        m5385import(jArrM4181const, 1, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m5385import(jArrM4181const2, 1, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m5385import(jArrM4181const, 3, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m5385import(jArrM4181const, 6, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m5385import(jArrM4181const, 12, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m5385import(jArrM4181const, 24, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m5385import(jArrM4181const, 48, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m5385import(jArrM4181const, 96, jArrM4181const2);
        m5376catch(jArrM4181const, jArrM4181const2, jArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m5375case(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        jArr2[0] = j & f4333if;
        jArr2[1] = ((j >>> 49) ^ (j2 << 15)) & f4333if;
        jArr2[2] = ((j2 >>> 34) ^ (j3 << 30)) & f4333if;
        jArr2[3] = (j3 >>> 19) ^ (j4 << 45);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m5376catch(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4205super = k21.m4205super();
        m5380else(jArr, jArr2, jArrM4205super);
        m5378const(jArrM4205super, jArr3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m5377class(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4205super = k21.m4205super();
        m5380else(jArr, jArr2, jArrM4205super);
        m5384if(jArr3, jArrM4205super, jArr3);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m5378const(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = j5 ^ (j7 >>> 50);
        long j9 = (j4 ^ ((j7 >>> 1) ^ (j7 << 14))) ^ (j6 >>> 50);
        long j10 = j ^ (j8 << 63);
        long j11 = (j2 ^ (j6 << 63)) ^ ((j8 >>> 1) ^ (j8 << 14));
        long j12 = ((j3 ^ (j7 << 63)) ^ ((j6 >>> 1) ^ (j6 << 14))) ^ (j8 >>> 50);
        long j13 = j9 >>> 1;
        jArr2[0] = (j10 ^ j13) ^ (j13 << 15);
        jArr2[1] = (j13 >>> 49) ^ j11;
        jArr2[2] = j12;
        jArr2[3] = 1 & j9;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5379do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m5380else(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        m5375case(jArr, jArr4);
        m5375case(jArr2, jArr5);
        m5383goto(jArr4[0], jArr5[0], jArr3, 0);
        m5383goto(jArr4[1], jArr5[1], jArr3, 1);
        m5383goto(jArr4[2], jArr5[2], jArr3, 2);
        m5383goto(jArr4[3], jArr5[3], jArr3, 3);
        for (int i = 5; i > 0; i--) {
            jArr3[i] = jArr3[i] ^ jArr3[i - 1];
        }
        m5383goto(jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        m5383goto(jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 3);
        for (int i2 = 7; i2 > 1; i2--) {
            jArr3[i2] = jArr3[i2] ^ jArr3[i2 - 2];
        }
        long j = jArr4[0] ^ jArr4[2];
        long j2 = jArr4[1] ^ jArr4[3];
        long j3 = jArr5[0] ^ jArr5[2];
        long j4 = jArr5[1] ^ jArr5[3];
        m5383goto(j ^ j2, j3 ^ j4, jArr3, 3);
        long[] jArr6 = new long[3];
        m5383goto(j, j3, jArr6, 0);
        m5383goto(j2, j4, jArr6, 1);
        long j5 = jArr6[0];
        long j6 = jArr6[1];
        long j7 = jArr6[2];
        jArr3[2] = jArr3[2] ^ j5;
        jArr3[3] = (j5 ^ j6) ^ jArr3[3];
        jArr3[4] = jArr3[4] ^ (j6 ^ j7);
        jArr3[5] = jArr3[5] ^ j7;
        m5391try(jArr3);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m5381final(long[] jArr, int i) {
        int i2 = i + 3;
        long j = jArr[i2];
        long j2 = j >>> 1;
        jArr[i] = jArr[i] ^ ((j2 << 15) ^ j2);
        int i3 = i + 1;
        jArr[i3] = (j2 >>> 49) ^ jArr[i3];
        jArr[i2] = j & 1;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m5382for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m5383goto(long j, long j2, long[] jArr, int i) {
        long[] jArr2 = new long[8];
        jArr2[1] = j2;
        jArr2[2] = jArr2[1] << 1;
        jArr2[3] = jArr2[2] ^ j2;
        jArr2[4] = jArr2[2] << 1;
        jArr2[5] = jArr2[4] ^ j2;
        jArr2[6] = jArr2[3] << 1;
        jArr2[7] = jArr2[6] ^ j2;
        int i2 = (int) j;
        long j3 = (jArr2[(i2 >>> 3) & 7] << 3) ^ jArr2[i2 & 7];
        long j4 = 0;
        int i3 = 36;
        do {
            int i4 = (int) (j >>> i3);
            long j5 = (jArr2[(i4 >>> 12) & 7] << 12) ^ (((jArr2[i4 & 7] ^ (jArr2[(i4 >>> 3) & 7] << 3)) ^ (jArr2[(i4 >>> 6) & 7] << 6)) ^ (jArr2[(i4 >>> 9) & 7] << 9));
            j3 ^= j5 << i3;
            j4 ^= j5 >>> (-i3);
            i3 -= 15;
        } while (i3 > 0);
        jArr[i] = jArr[i] ^ (f4333if & j3);
        int i5 = i + 1;
        jArr[i5] = jArr[i5] ^ ((j3 >>> 49) ^ (j4 << 15));
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5384if(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr2[6] ^ jArr[6];
    }

    /* renamed from: import, reason: not valid java name */
    public static void m5385import(long[] jArr, int i, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m5389this(jArr, jArrM4205super);
        while (true) {
            m5378const(jArrM4205super, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m5389this(jArr2, jArrM4205super);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m5386native(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m5387new(BigInteger bigInteger) {
        long[] jArrM4201public = k21.m4201public(bigInteger);
        m5381final(jArrM4201public, 0);
        return jArrM4201public;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m5388super(long[] jArr, long[] jArr2) {
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (jM4710break & 4294967295L) | (jM4710break2 << 32);
        long j2 = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        long jM4710break3 = ln0.m4710break(jArr[2]);
        long j3 = (4294967295L & jM4710break3) ^ (jArr[3] << 32);
        long j4 = jM4710break3 >>> 32;
        jArr2[0] = j ^ (j2 << 8);
        jArr2[1] = ((j3 ^ (j4 << 8)) ^ (j2 >>> 56)) ^ (j2 << 33);
        jArr2[2] = (j2 >>> 31) ^ ((j4 >>> 56) ^ (j4 << 33));
        jArr2[3] = j4 >>> 31;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m5389this(long[] jArr, long[] jArr2) {
        ln0.m4715for(jArr[0], jArr2, 0);
        ln0.m4715for(jArr[1], jArr2, 2);
        ln0.m4715for(jArr[2], jArr2, 4);
        jArr2[6] = jArr[3] & 1;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m5390throw(long[] jArr, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m5389this(jArr, jArrM4205super);
        m5378const(jArrM4205super, jArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m5391try(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        jArr[0] = j ^ (j2 << 49);
        jArr[1] = (j2 >>> 15) ^ (j3 << 34);
        jArr[2] = (j3 >>> 30) ^ (j4 << 19);
        jArr[3] = ((j4 >>> 45) ^ (j5 << 4)) ^ (j6 << 53);
        jArr[4] = ((j5 >>> 60) ^ (j7 << 38)) ^ (j6 >>> 11);
        jArr[5] = (j7 >>> 26) ^ (j8 << 23);
        jArr[6] = j8 >>> 41;
        jArr[7] = 0;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m5392while(long[] jArr, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m5389this(jArr, jArrM4205super);
        m5384if(jArr2, jArrM4205super, jArr2);
    }
}
