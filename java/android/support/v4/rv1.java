package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class rv1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f5952do = 2199023255551L;

    /* renamed from: if, reason: not valid java name */
    private static final long f5953if = 576460752303423487L;

    /* renamed from: break, reason: not valid java name */
    public static void m7160break(long[] jArr, long[] jArr2) {
        if (k21.m4188finally(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM4181const = k21.m4181const();
        long[] jArrM4181const2 = k21.m4181const();
        m7176throw(jArr, jArrM4181const);
        m7162catch(jArrM4181const, jArr, jArrM4181const);
        m7176throw(jArrM4181const, jArrM4181const);
        m7162catch(jArrM4181const, jArr, jArrM4181const);
        m7171import(jArrM4181const, 3, jArrM4181const2);
        m7162catch(jArrM4181const2, jArrM4181const, jArrM4181const2);
        m7176throw(jArrM4181const2, jArrM4181const2);
        m7162catch(jArrM4181const2, jArr, jArrM4181const2);
        m7171import(jArrM4181const2, 7, jArrM4181const);
        m7162catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m7171import(jArrM4181const, 14, jArrM4181const2);
        m7162catch(jArrM4181const2, jArrM4181const, jArrM4181const2);
        m7176throw(jArrM4181const2, jArrM4181const2);
        m7162catch(jArrM4181const2, jArr, jArrM4181const2);
        m7171import(jArrM4181const2, 29, jArrM4181const);
        m7162catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m7171import(jArrM4181const, 58, jArrM4181const2);
        m7162catch(jArrM4181const2, jArrM4181const, jArrM4181const2);
        m7171import(jArrM4181const2, 116, jArrM4181const);
        m7162catch(jArrM4181const, jArrM4181const2, jArrM4181const);
        m7176throw(jArrM4181const, jArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m7161case(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        jArr2[0] = j & f5953if;
        jArr2[1] = ((j >>> 59) ^ (j2 << 5)) & f5953if;
        jArr2[2] = ((j2 >>> 54) ^ (j3 << 10)) & f5953if;
        jArr2[3] = (j3 >>> 49) ^ (j4 << 15);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m7162catch(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4205super = k21.m4205super();
        m7166else(jArr, jArr2, jArrM4205super);
        m7164const(jArrM4205super, jArr3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m7163class(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4205super = k21.m4205super();
        m7166else(jArr, jArr2, jArrM4205super);
        m7170if(jArr3, jArrM4205super, jArr3);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m7164const(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = j6 ^ (j8 >>> 31);
        long j10 = (j5 ^ ((j8 >>> 41) ^ (j8 << 33))) ^ (j7 >>> 31);
        long j11 = ((j4 ^ (j8 << 23)) ^ ((j7 >>> 41) ^ (j7 << 33))) ^ (j9 >>> 31);
        long j12 = j ^ (j10 << 23);
        long j13 = (j2 ^ (j9 << 23)) ^ ((j10 >>> 41) ^ (j10 << 33));
        long j14 = ((j3 ^ (j7 << 23)) ^ ((j9 >>> 41) ^ (j9 << 33))) ^ (j10 >>> 31);
        long j15 = j11 >>> 41;
        jArr2[0] = j12 ^ j15;
        jArr2[1] = (j15 << 10) ^ j13;
        jArr2[2] = j14;
        jArr2[3] = f5952do & j11;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7165do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m7166else(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[4];
        long[] jArr5 = new long[4];
        m7161case(jArr, jArr4);
        m7161case(jArr2, jArr5);
        m7169goto(jArr4[0], jArr5[0], jArr3, 0);
        m7169goto(jArr4[1], jArr5[1], jArr3, 1);
        m7169goto(jArr4[2], jArr5[2], jArr3, 2);
        m7169goto(jArr4[3], jArr5[3], jArr3, 3);
        for (int i = 5; i > 0; i--) {
            jArr3[i] = jArr3[i] ^ jArr3[i - 1];
        }
        m7169goto(jArr4[0] ^ jArr4[1], jArr5[0] ^ jArr5[1], jArr3, 1);
        m7169goto(jArr4[2] ^ jArr4[3], jArr5[2] ^ jArr5[3], jArr3, 3);
        for (int i2 = 7; i2 > 1; i2--) {
            jArr3[i2] = jArr3[i2] ^ jArr3[i2 - 2];
        }
        long j = jArr4[0] ^ jArr4[2];
        long j2 = jArr4[1] ^ jArr4[3];
        long j3 = jArr5[0] ^ jArr5[2];
        long j4 = jArr5[1] ^ jArr5[3];
        m7169goto(j ^ j2, j3 ^ j4, jArr3, 3);
        long[] jArr6 = new long[3];
        m7169goto(j, j3, jArr6, 0);
        m7169goto(j2, j4, jArr6, 1);
        long j5 = jArr6[0];
        long j6 = jArr6[1];
        long j7 = jArr6[2];
        jArr3[2] = jArr3[2] ^ j5;
        jArr3[3] = (j5 ^ j6) ^ jArr3[3];
        jArr3[4] = jArr3[4] ^ (j6 ^ j7);
        jArr3[5] = jArr3[5] ^ j7;
        m7177try(jArr3);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m7167final(long[] jArr, int i) {
        int i2 = i + 3;
        long j = jArr[i2];
        long j2 = j >>> 41;
        jArr[i] = jArr[i] ^ j2;
        int i3 = i + 1;
        jArr[i3] = (j2 << 10) ^ jArr[i3];
        jArr[i2] = j & f5952do;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m7168for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m7169goto(long j, long j2, long[] jArr, int i) {
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
        jArr[i] = jArr[i] ^ (f5953if & j3);
        int i5 = i + 1;
        jArr[i5] = jArr[i5] ^ ((j3 >>> 59) ^ (j4 << 5));
    }

    /* renamed from: if, reason: not valid java name */
    public static void m7170if(long[] jArr, long[] jArr2, long[] jArr3) {
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
    public static void m7171import(long[] jArr, int i, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m7175this(jArr, jArrM4205super);
        while (true) {
            m7164const(jArrM4205super, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m7175this(jArr2, jArrM4205super);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m7172native(long[] jArr) {
        return ((int) (jArr[0] ^ (jArr[2] >>> 31))) & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m7173new(BigInteger bigInteger) {
        long[] jArrM4201public = k21.m4201public(bigInteger);
        m7167final(jArrM4201public, 0);
        return jArrM4201public;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m7174super(long[] jArr, long[] jArr2) {
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (jM4710break & 4294967295L) | (jM4710break2 << 32);
        long j2 = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        long jM4710break3 = ln0.m4710break(jArr[2]);
        long jM4710break4 = ln0.m4710break(jArr[3]);
        long j3 = (4294967295L & jM4710break3) | (jM4710break4 << 32);
        long j4 = (jM4710break3 >>> 32) | ((-4294967296L) & jM4710break4);
        long j5 = j4 >>> 27;
        long j6 = j4 ^ ((j2 >>> 27) | (j4 << 37));
        long j7 = j2 ^ (j2 << 37);
        long[] jArrM4205super = k21.m4205super();
        int[] iArr = {32, 117, 191};
        int i = 0;
        for (int i2 = 3; i < i2; i2 = 3) {
            int i3 = iArr[i] >>> 6;
            int i4 = iArr[i] & 63;
            jArrM4205super[i3] = jArrM4205super[i3] ^ (j7 << i4);
            int i5 = i3 + 1;
            int i6 = -i4;
            jArrM4205super[i5] = jArrM4205super[i5] ^ ((j6 << i4) | (j7 >>> i6));
            int i7 = i3 + 2;
            jArrM4205super[i7] = jArrM4205super[i7] ^ ((j5 << i4) | (j6 >>> i6));
            int i8 = i3 + 3;
            jArrM4205super[i8] = jArrM4205super[i8] ^ (j5 >>> i6);
            i++;
        }
        m7164const(jArrM4205super, jArr2);
        jArr2[0] = jArr2[0] ^ j;
        jArr2[1] = jArr2[1] ^ j3;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m7175this(long[] jArr, long[] jArr2) {
        ln0.m4715for(jArr[0], jArr2, 0);
        ln0.m4715for(jArr[1], jArr2, 2);
        ln0.m4715for(jArr[2], jArr2, 4);
        jArr2[6] = ln0.m4717if((int) jArr[3]);
        jArr2[7] = ln0.m4713do((int) (r0 >>> 32)) & 4294967295L;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m7176throw(long[] jArr, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m7175this(jArr, jArrM4205super);
        m7164const(jArrM4205super, jArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7177try(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        jArr[0] = j ^ (j2 << 59);
        jArr[1] = (j2 >>> 5) ^ (j3 << 54);
        jArr[2] = (j3 >>> 10) ^ (j4 << 49);
        jArr[3] = (j4 >>> 15) ^ (j5 << 44);
        jArr[4] = (j5 >>> 20) ^ (j6 << 39);
        jArr[5] = (j6 >>> 25) ^ (j7 << 34);
        jArr[6] = (j7 >>> 30) ^ (j8 << 29);
        jArr[7] = j8 >>> 35;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m7178while(long[] jArr, long[] jArr2) {
        long[] jArrM4205super = k21.m4205super();
        m7175this(jArr, jArrM4205super);
        m7170if(jArr2, jArrM4205super, jArr2);
    }
}
