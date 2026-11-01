package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class vv1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f7349do = 140737488355327L;

    /* renamed from: if, reason: not valid java name */
    private static final long f7350if = 1152921504606846975L;

    /* renamed from: break, reason: not valid java name */
    public static void m8968break(long[] jArr, long[] jArr2) {
        if (k21.m4188finally(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM4181const = k21.m4181const();
        long[] jArrM4181const2 = k21.m4181const();
        m8984throw(jArr, jArrM4181const);
        m8970catch(jArrM4181const, jArr, jArrM4181const);
        m8984throw(jArrM4181const, jArrM4181const);
        m8970catch(jArrM4181const, jArr, jArrM4181const);
        m8979import(jArrM4181const, 3, jArrM4181const2);
        m8970catch(jArrM4181const2, jArrM4181const, jArrM4181const2);
        m8984throw(jArrM4181const2, jArrM4181const2);
        m8970catch(jArrM4181const2, jArr, jArrM4181const2);
        m8979import(jArrM4181const2, 7, jArrM4181const);
        m8970catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m8979import(jArrM4181const, 14, jArrM4181const2);
        m8970catch(jArrM4181const2, jArrM4181const, jArrM4181const2);
        m8984throw(jArrM4181const2, jArrM4181const2);
        m8970catch(jArrM4181const2, jArr, jArrM4181const2);
        m8979import(jArrM4181const2, 29, jArrM4181const);
        m8970catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m8984throw(jArrM4181const, jArrM4181const);
        m8970catch(jArrM4181const, jArr, jArrM4181const);
        m8979import(jArrM4181const, 59, jArrM4181const2);
        m8970catch(jArrM4181const2, jArrM4181const, jArrM4181const2);
        m8984throw(jArrM4181const2, jArrM4181const2);
        m8970catch(jArrM4181const2, jArr, jArrM4181const2);
        m8979import(jArrM4181const2, 119, jArrM4181const);
        m8970catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m8984throw(jArrM4181const, jArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m8969case(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        jArr2[0] = j & f7350if;
        jArr2[1] = ((j >>> 60) ^ (j2 << 4)) & f7350if;
        jArr2[2] = ((j2 >>> 56) ^ (j3 << 8)) & f7350if;
        jArr2[3] = (j3 >>> 52) ^ (j4 << 12);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m8970catch(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4205super = k21.m4205super();
        m8974else(jArr, jArr2, jArrM4205super);
        m8972const(jArrM4205super, jArr3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m8971class(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4205super = k21.m4205super();
        m8974else(jArr, jArr2, jArrM4205super);
        m8978if(jArr3, jArrM4205super, jArr3);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m8972const(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = j7 ^ (j8 >>> 17);
        long j10 = (j6 ^ (j8 << 47)) ^ (j9 >>> 17);
        long j11 = ((j5 ^ (j8 >>> 47)) ^ (j9 << 47)) ^ (j10 >>> 17);
        long j12 = j ^ (j11 << 17);
        long j13 = (j2 ^ (j10 << 17)) ^ (j11 >>> 47);
        long j14 = ((j3 ^ (j9 << 17)) ^ (j10 >>> 47)) ^ (j11 << 47);
        long j15 = (((j4 ^ (j8 << 17)) ^ (j9 >>> 47)) ^ (j10 << 47)) ^ (j11 >>> 17);
        long j16 = j15 >>> 47;
        jArr2[0] = j12 ^ j16;
        jArr2[1] = j13;
        jArr2[2] = (j16 << 30) ^ j14;
        jArr2[3] = f7349do & j15;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8973do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m8974else(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        m8969case(jArr, jArr4);
        m8969case(jArr2, jArr5);
        m8977goto(jArr4[0], jArr5[0], jArr3, 0);
        m8977goto(jArr4[1], jArr5[1], jArr3, 1);
        m8977goto(jArr4[2], jArr5[2], jArr3, 2);
        m8977goto(jArr4[3], jArr5[3], jArr3, 3);
        for (int i = 5; i > 0; i--) {
            jArr3[i] = jArr3[i] ^ jArr3[i - 1];
        }
        m8977goto(jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        m8977goto(jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 3);
        for (int i2 = 7; i2 > 1; i2--) {
            jArr3[i2] = jArr3[i2] ^ jArr3[i2 - 2];
        }
        long j = jArr4[0] ^ jArr4[2];
        long j2 = jArr4[1] ^ jArr4[3];
        long j3 = jArr5[0] ^ jArr5[2];
        long j4 = jArr5[1] ^ jArr5[3];
        m8977goto(j ^ j2, j3 ^ j4, jArr3, 3);
        long[] jArr6 = new long[3];
        m8977goto(j, j3, jArr6, 0);
        m8977goto(j2, j4, jArr6, 1);
        long j5 = jArr6[0];
        long j6 = jArr6[1];
        long j7 = jArr6[2];
        jArr3[2] = jArr3[2] ^ j5;
        jArr3[3] = (j5 ^ j6) ^ jArr3[3];
        jArr3[4] = jArr3[4] ^ (j6 ^ j7);
        jArr3[5] = jArr3[5] ^ j7;
        m8985try(jArr3);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m8975final(long[] jArr, int i) {
        int i2 = i + 3;
        long j = jArr[i2];
        long j2 = j >>> 47;
        jArr[i] = jArr[i] ^ j2;
        int i3 = i + 2;
        jArr[i3] = (j2 << 30) ^ jArr[i3];
        jArr[i2] = j & f7349do;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8976for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m8977goto(long j, long j2, long[] jArr, int i) {
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
        int i3 = 54;
        do {
            int i4 = (int) (j >>> i3);
            long j5 = (jArr2[(i4 >>> 3) & 7] << 3) ^ jArr2[i4 & 7];
            j3 ^= j5 << i3;
            j4 ^= j5 >>> (-i3);
            i3 -= 6;
        } while (i3 > 0);
        jArr[i] = jArr[i] ^ (f7350if & j3);
        int i5 = i + 1;
        jArr[i5] = ((((((j & 585610922974906400L) & ((j2 << 4) >> 63)) >>> 5) ^ j4) << 4) ^ (j3 >>> 60)) ^ jArr[i5];
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8978if(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr2[7] ^ jArr[7];
    }

    /* renamed from: import, reason: not valid java name */
    public static void m8979import(long[] jArr, int i, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m8983this(jArr, jArrM4205super);
        while (true) {
            m8972const(jArrM4205super, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m8983this(jArr2, jArrM4205super);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m8980native(long[] jArr) {
        return ((int) ((jArr[0] ^ (jArr[1] >>> 17)) ^ (jArr[2] >>> 34))) & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m8981new(BigInteger bigInteger) {
        long[] jArrM4201public = k21.m4201public(bigInteger);
        m8975final(jArrM4201public, 0);
        return jArrM4201public;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m8982super(long[] jArr, long[] jArr2) {
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (jM4710break & 4294967295L) | (jM4710break2 << 32);
        long j2 = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        long jM4710break3 = ln0.m4710break(jArr[2]);
        long jM4710break4 = ln0.m4710break(jArr[3]);
        long j3 = (4294967295L & jM4710break3) | (jM4710break4 << 32);
        long j4 = (jM4710break4 & (-4294967296L)) | (jM4710break3 >>> 32);
        long j5 = j4 >>> 49;
        long j6 = (j2 >>> 49) | (j4 << 15);
        long j7 = j4 ^ (j2 << 15);
        long[] jArrM4205super = k21.m4205super();
        int[] iArr = {39, 120};
        int i = 0;
        for (int i2 = 2; i < i2; i2 = 2) {
            int i3 = iArr[i] >>> 6;
            int i4 = iArr[i] & 63;
            jArrM4205super[i3] = jArrM4205super[i3] ^ (j2 << i4);
            int i5 = i3 + 1;
            int i6 = -i4;
            jArrM4205super[i5] = jArrM4205super[i5] ^ ((j7 << i4) | (j2 >>> i6));
            int i7 = i3 + 2;
            jArrM4205super[i7] = jArrM4205super[i7] ^ ((j6 << i4) | (j7 >>> i6));
            int i8 = i3 + 3;
            jArrM4205super[i8] = jArrM4205super[i8] ^ ((j5 << i4) | (j6 >>> i6));
            int i9 = i3 + 4;
            jArrM4205super[i9] = jArrM4205super[i9] ^ (j5 >>> i6);
            i++;
        }
        m8972const(jArrM4205super, jArr2);
        jArr2[0] = jArr2[0] ^ j;
        jArr2[1] = jArr2[1] ^ j3;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m8983this(long[] jArr, long[] jArr2) {
        ln0.m4715for(jArr[0], jArr2, 0);
        ln0.m4715for(jArr[1], jArr2, 2);
        ln0.m4715for(jArr[2], jArr2, 4);
        jArr2[6] = ln0.m4717if((int) jArr[3]);
        jArr2[7] = ln0.m4713do((int) (r0 >>> 32)) & 4294967295L;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m8984throw(long[] jArr, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m8983this(jArr, jArrM4205super);
        m8972const(jArrM4205super, jArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m8985try(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        jArr[0] = j ^ (j2 << 60);
        jArr[1] = (j2 >>> 4) ^ (j3 << 56);
        jArr[2] = (j3 >>> 8) ^ (j4 << 52);
        jArr[3] = (j4 >>> 12) ^ (j5 << 48);
        jArr[4] = (j5 >>> 16) ^ (j6 << 44);
        jArr[5] = (j6 >>> 20) ^ (j7 << 40);
        jArr[6] = (j7 >>> 24) ^ (j8 << 36);
        jArr[7] = j8 >>> 28;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m8986while(long[] jArr, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m8983this(jArr, jArrM4205super);
        m8978if(jArr2, jArrM4205super, jArr2);
    }
}
