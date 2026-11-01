package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class yv1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f8350do = 134217727;

    /* renamed from: for, reason: not valid java name */
    private static final long[] f8351for = {878416384462358536L, 3513665537849438403L, -9076969306111048948L, 585610922974906400L, 34087042};

    /* renamed from: if, reason: not valid java name */
    private static final long f8352if = 144115188075855871L;

    /* renamed from: break, reason: not valid java name */
    public static void m9955break(long[] jArr, long[] jArr2) {
        if (l21.m4547goto(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM4546for = l21.m4546for();
        long[] jArrM4546for2 = l21.m4546for();
        m9971throw(jArr, jArrM4546for);
        m9957catch(jArrM4546for, jArr, jArrM4546for);
        m9966import(jArrM4546for, 2, jArrM4546for2);
        m9957catch(jArrM4546for2, jArrM4546for, jArrM4546for2);
        m9966import(jArrM4546for2, 4, jArrM4546for);
        m9957catch(jArrM4546for, jArrM4546for2, jArrM4546for);
        m9966import(jArrM4546for, 8, jArrM4546for2);
        m9957catch(jArrM4546for2, jArrM4546for, jArrM4546for2);
        m9971throw(jArrM4546for2, jArrM4546for2);
        m9957catch(jArrM4546for2, jArr, jArrM4546for2);
        m9966import(jArrM4546for2, 17, jArrM4546for);
        m9957catch(jArrM4546for, jArrM4546for2, jArrM4546for);
        m9971throw(jArrM4546for, jArrM4546for);
        m9957catch(jArrM4546for, jArr, jArrM4546for);
        m9966import(jArrM4546for, 35, jArrM4546for2);
        m9957catch(jArrM4546for2, jArrM4546for, jArrM4546for2);
        m9966import(jArrM4546for2, 70, jArrM4546for);
        m9957catch(jArrM4546for, jArrM4546for2, jArrM4546for);
        m9971throw(jArrM4546for, jArrM4546for);
        m9957catch(jArrM4546for, jArr, jArrM4546for);
        m9966import(jArrM4546for, 141, jArrM4546for2);
        m9957catch(jArrM4546for2, jArrM4546for, jArrM4546for2);
        m9971throw(jArrM4546for2, jArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m9956case(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        jArr2[0] = j & f8352if;
        jArr2[1] = ((j >>> 57) ^ (j2 << 7)) & f8352if;
        jArr2[2] = ((j2 >>> 50) ^ (j3 << 14)) & f8352if;
        jArr2[3] = ((j3 >>> 43) ^ (j4 << 21)) & f8352if;
        jArr2[4] = (j4 >>> 36) ^ (j5 << 28);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m9957catch(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4549new = l21.m4549new();
        m9961else(jArr, jArr2, jArrM4549new);
        m9959const(jArrM4549new, jArr3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m9958class(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM4549new = l21.m4549new();
        m9961else(jArr, jArr2, jArrM4549new);
        m9965if(jArr3, jArrM4549new, jArr3);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m9959const(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = jArr[8];
        long j10 = j5 ^ ((((j9 >>> 27) ^ (j9 >>> 22)) ^ (j9 >>> 20)) ^ (j9 >>> 15));
        long j11 = j ^ ((((j6 << 37) ^ (j6 << 42)) ^ (j6 << 44)) ^ (j6 << 49));
        long j12 = (j2 ^ ((((j7 << 37) ^ (j7 << 42)) ^ (j7 << 44)) ^ (j7 << 49))) ^ ((((j6 >>> 27) ^ (j6 >>> 22)) ^ (j6 >>> 20)) ^ (j6 >>> 15));
        long j13 = j10 >>> 27;
        jArr2[0] = (((j11 ^ j13) ^ (j13 << 5)) ^ (j13 << 7)) ^ (j13 << 12);
        jArr2[1] = j12;
        jArr2[2] = (j3 ^ ((((j8 << 37) ^ (j8 << 42)) ^ (j8 << 44)) ^ (j8 << 49))) ^ ((((j7 >>> 27) ^ (j7 >>> 22)) ^ (j7 >>> 20)) ^ (j7 >>> 15));
        jArr2[3] = (j4 ^ ((((j9 << 37) ^ (j9 << 42)) ^ (j9 << 44)) ^ (j9 << 49))) ^ ((((j8 >>> 27) ^ (j8 >>> 22)) ^ (j8 >>> 20)) ^ (j8 >>> 15));
        jArr2[4] = f8350do & j10;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m9960do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr2[4] ^ jArr[4];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m9961else(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[5];
        long[] jArr5 = new long[5];
        m9956case(jArr, jArr4);
        m9956case(jArr2, jArr5);
        long[] jArr6 = new long[26];
        m9964goto(jArr4[0], jArr5[0], jArr6, 0);
        m9964goto(jArr4[1], jArr5[1], jArr6, 2);
        m9964goto(jArr4[2], jArr5[2], jArr6, 4);
        m9964goto(jArr4[3], jArr5[3], jArr6, 6);
        m9964goto(jArr4[4], jArr5[4], jArr6, 8);
        long j = jArr4[0] ^ jArr4[1];
        long j2 = jArr5[0] ^ jArr5[1];
        long j3 = jArr4[0] ^ jArr4[2];
        long j4 = jArr5[0] ^ jArr5[2];
        long j5 = jArr4[2] ^ jArr4[4];
        long j6 = jArr5[2] ^ jArr5[4];
        long j7 = jArr4[3] ^ jArr4[4];
        long j8 = jArr5[3] ^ jArr5[4];
        m9964goto(j3 ^ jArr4[3], j4 ^ jArr5[3], jArr6, 18);
        m9964goto(j5 ^ jArr4[1], j6 ^ jArr5[1], jArr6, 20);
        long j9 = j ^ j7;
        long j10 = j2 ^ j8;
        long j11 = j9 ^ jArr4[2];
        long j12 = jArr5[2] ^ j10;
        m9964goto(j9, j10, jArr6, 22);
        m9964goto(j11, j12, jArr6, 24);
        m9964goto(j, j2, jArr6, 10);
        m9964goto(j3, j4, jArr6, 12);
        m9964goto(j5, j6, jArr6, 14);
        m9964goto(j7, j8, jArr6, 16);
        jArr3[0] = jArr6[0];
        jArr3[9] = jArr6[9];
        long j13 = jArr6[0] ^ jArr6[1];
        long j14 = jArr6[2] ^ j13;
        long j15 = jArr6[10] ^ j14;
        jArr3[1] = j15;
        long j16 = jArr6[3] ^ jArr6[4];
        long j17 = j14 ^ (j16 ^ (jArr6[11] ^ jArr6[12]));
        jArr3[2] = j17;
        long j18 = jArr6[5] ^ jArr6[6];
        long j19 = ((j13 ^ j16) ^ j18) ^ jArr6[8];
        long j20 = jArr6[13] ^ jArr6[14];
        jArr3[3] = (j19 ^ j20) ^ ((jArr6[18] ^ jArr6[22]) ^ jArr6[24]);
        long j21 = (jArr6[7] ^ jArr6[8]) ^ jArr6[9];
        long j22 = j21 ^ jArr6[17];
        jArr3[8] = j22;
        long j23 = (j21 ^ j18) ^ (jArr6[15] ^ jArr6[16]);
        jArr3[7] = j23;
        long j24 = j15 ^ j23;
        long j25 = (jArr6[19] ^ jArr6[20]) ^ (jArr6[25] ^ jArr6[24]);
        jArr3[4] = (j25 ^ (jArr6[18] ^ jArr6[23])) ^ j24;
        jArr3[5] = ((j17 ^ j22) ^ j25) ^ (jArr6[21] ^ jArr6[22]);
        jArr3[6] = ((((jArr6[9] ^ (j19 ^ jArr6[0])) ^ j20) ^ jArr6[21]) ^ jArr6[23]) ^ jArr6[25];
        m9972try(jArr3);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m9962final(long[] jArr, int i) {
        int i2 = i + 4;
        long j = jArr[i2];
        long j2 = j >>> 27;
        jArr[i] = ((j2 << 12) ^ (((j2 << 5) ^ j2) ^ (j2 << 7))) ^ jArr[i];
        jArr[i2] = j & f8350do;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m9963for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m9964goto(long j, long j2, long[] jArr, int i) {
        long[] jArr2 = new long[8];
        jArr2[1] = j2;
        jArr2[2] = jArr2[1] << 1;
        jArr2[3] = jArr2[2] ^ j2;
        jArr2[4] = jArr2[2] << 1;
        jArr2[5] = jArr2[4] ^ j2;
        jArr2[6] = jArr2[3] << 1;
        jArr2[7] = jArr2[6] ^ j2;
        long j3 = jArr2[((int) j) & 7];
        long j4 = 0;
        int i2 = 48;
        do {
            int i3 = (int) (j >>> i2);
            long j5 = (jArr2[(i3 >>> 6) & 7] << 6) ^ (jArr2[i3 & 7] ^ (jArr2[(i3 >>> 3) & 7] << 3));
            j3 ^= j5 << i2;
            j4 ^= j5 >>> (-i2);
            i2 -= 9;
        } while (i2 > 0);
        jArr[i] = f8352if & j3;
        jArr[i + 1] = (((((j & 72198606942111744L) & ((j2 << 7) >> 63)) >>> 8) ^ j4) << 7) ^ (j3 >>> 57);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m9965if(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr[6] ^ jArr2[6];
        jArr3[7] = jArr[7] ^ jArr2[7];
        jArr3[8] = jArr2[8] ^ jArr[8];
    }

    /* renamed from: import, reason: not valid java name */
    public static void m9966import(long[] jArr, int i, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(9);
        m9970this(jArr, jArrM6355throws);
        while (true) {
            m9959const(jArrM6355throws, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m9970this(jArr2, jArrM6355throws);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m9967native(long[] jArr) {
        return ((int) (jArr[0] ^ (jArr[4] >>> 15))) & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m9968new(BigInteger bigInteger) {
        long[] jArrM4543case = l21.m4543case(bigInteger);
        m9962final(jArrM4543case, 0);
        return jArrM4543case;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m9969super(long[] jArr, long[] jArr2) {
        long[] jArrM4546for = l21.m4546for();
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (jM4710break & 4294967295L) | (jM4710break2 << 32);
        jArrM4546for[0] = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        long jM4710break3 = ln0.m4710break(jArr[2]);
        long jM4710break4 = ln0.m4710break(jArr[3]);
        long j2 = (jM4710break3 & 4294967295L) | (jM4710break4 << 32);
        jArrM4546for[1] = (jM4710break3 >>> 32) | ((-4294967296L) & jM4710break4);
        long jM4710break5 = ln0.m4710break(jArr[4]);
        jArrM4546for[2] = jM4710break5 >>> 32;
        m9957catch(jArrM4546for, f8351for, jArr2);
        jArr2[0] = jArr2[0] ^ j;
        jArr2[1] = jArr2[1] ^ j2;
        jArr2[2] = jArr2[2] ^ (4294967295L & jM4710break5);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m9970this(long[] jArr, long[] jArr2) {
        for (int i = 0; i < 4; i++) {
            ln0.m4715for(jArr[i], jArr2, i << 1);
        }
        jArr2[8] = ln0.m4717if((int) jArr[4]);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m9971throw(long[] jArr, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(9);
        m9970this(jArr, jArrM6355throws);
        m9959const(jArrM6355throws, jArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m9972try(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = jArr[8];
        long j10 = jArr[9];
        jArr[0] = j ^ (j2 << 57);
        jArr[1] = (j2 >>> 7) ^ (j3 << 50);
        jArr[2] = (j3 >>> 14) ^ (j4 << 43);
        jArr[3] = (j4 >>> 21) ^ (j5 << 36);
        jArr[4] = (j5 >>> 28) ^ (j6 << 29);
        jArr[5] = (j6 >>> 35) ^ (j7 << 22);
        jArr[6] = (j7 >>> 42) ^ (j8 << 15);
        jArr[7] = (j8 >>> 49) ^ (j9 << 8);
        jArr[8] = (j9 >>> 56) ^ (j10 << 1);
        jArr[9] = j10 >>> 63;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m9973while(long[] jArr, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(9);
        m9970this(jArr, jArrM6355throws);
        m9965if(jArr2, jArrM6355throws, jArr2);
    }
}
