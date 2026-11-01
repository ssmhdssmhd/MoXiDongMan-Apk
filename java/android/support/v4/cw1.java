package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class cw1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f881do = 33554431;

    /* renamed from: if, reason: not valid java name */
    private static final long f882if = 576460752303423487L;

    /* renamed from: break, reason: not valid java name */
    public static void m1041break(long[] jArr, long[] jArr2) {
        if (n21.m5074goto(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM5073for = n21.m5073for();
        long[] jArrM5073for2 = n21.m5073for();
        long[] jArrM5073for3 = n21.m5073for();
        m1057throw(jArr, jArrM5073for);
        m1052import(jArrM5073for, 1, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1052import(jArrM5073for2, 1, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1052import(jArrM5073for, 3, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1052import(jArrM5073for, 6, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1052import(jArrM5073for, 12, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for3);
        m1052import(jArrM5073for3, 24, jArrM5073for);
        m1052import(jArrM5073for, 24, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1052import(jArrM5073for, 48, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1052import(jArrM5073for, 96, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1052import(jArrM5073for, 192, jArrM5073for2);
        m1043catch(jArrM5073for, jArrM5073for2, jArrM5073for);
        m1043catch(jArrM5073for, jArrM5073for3, jArr2);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m1042case(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        jArr2[0] = j & f882if;
        jArr2[1] = ((j >>> 59) ^ (j2 << 5)) & f882if;
        jArr2[2] = ((j2 >>> 54) ^ (j3 << 10)) & f882if;
        jArr2[3] = ((j3 >>> 49) ^ (j4 << 15)) & f882if;
        jArr2[4] = ((j4 >>> 44) ^ (j5 << 20)) & f882if;
        jArr2[5] = ((j5 >>> 39) ^ (j6 << 25)) & f882if;
        jArr2[6] = (j6 >>> 34) ^ (j7 << 30);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m1043catch(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM5076new = n21.m5076new();
        m1047else(jArr, jArr2, jArrM5076new);
        m1045const(jArrM5076new, jArr3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m1044class(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM5076new = n21.m5076new();
        m1047else(jArr, jArr2, jArrM5076new);
        m1051if(jArr3, jArrM5076new, jArr3);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m1045const(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = jArr[6];
        long j8 = jArr[7];
        long j9 = jArr[12];
        long j10 = j6 ^ (j9 << 39);
        long j11 = j7 ^ ((j9 >>> 25) ^ (j9 << 62));
        long j12 = j8 ^ (j9 >>> 2);
        long j13 = jArr[11];
        long j14 = j5 ^ (j13 << 39);
        long j15 = j10 ^ ((j13 >>> 25) ^ (j13 << 62));
        long j16 = j11 ^ (j13 >>> 2);
        long j17 = jArr[10];
        long j18 = j4 ^ (j17 << 39);
        long j19 = j14 ^ ((j17 >>> 25) ^ (j17 << 62));
        long j20 = j15 ^ (j17 >>> 2);
        long j21 = jArr[9];
        long j22 = j3 ^ (j21 << 39);
        long j23 = j18 ^ ((j21 >>> 25) ^ (j21 << 62));
        long j24 = j19 ^ (j21 >>> 2);
        long j25 = jArr[8];
        long j26 = j ^ (j12 << 39);
        long j27 = (j2 ^ (j25 << 39)) ^ ((j12 >>> 25) ^ (j12 << 62));
        long j28 = (j22 ^ ((j25 >>> 25) ^ (j25 << 62))) ^ (j12 >>> 2);
        long j29 = j16 >>> 25;
        jArr2[0] = j26 ^ j29;
        jArr2[1] = (j29 << 23) ^ j27;
        jArr2[2] = j28;
        jArr2[3] = j23 ^ (j25 >>> 2);
        jArr2[4] = j24;
        jArr2[5] = j20;
        jArr2[6] = j16 & f881do;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1046do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr[5] ^ jArr2[5];
        jArr3[6] = jArr2[6] ^ jArr[6];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m1047else(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[7];
        long[] jArr5 = new long[7];
        m1042case(jArr, jArr4);
        m1042case(jArr2, jArr5);
        for (int i = 0; i < 7; i++) {
            m1050goto(jArr4, jArr5[i], jArr3, i);
        }
        m1058try(jArr3);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m1048final(long[] jArr, int i) {
        int i2 = i + 6;
        long j = jArr[i2];
        long j2 = j >>> 25;
        jArr[i] = jArr[i] ^ j2;
        int i3 = i + 1;
        jArr[i3] = (j2 << 23) ^ jArr[i3];
        jArr[i2] = j & f881do;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1049for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1050goto(long[] jArr, long j, long[] jArr2, int i) {
        long[] jArr3 = new long[8];
        jArr3[1] = j;
        jArr3[2] = jArr3[1] << 1;
        jArr3[3] = jArr3[2] ^ j;
        jArr3[4] = jArr3[2] << 1;
        jArr3[5] = jArr3[4] ^ j;
        jArr3[6] = jArr3[3] << 1;
        jArr3[7] = jArr3[6] ^ j;
        for (int i2 = 0; i2 < 7; i2++) {
            long j2 = jArr[i2];
            int i3 = (int) j2;
            long j3 = 0;
            long j4 = jArr3[i3 & 7] ^ (jArr3[(i3 >>> 3) & 7] << 3);
            int i4 = 54;
            do {
                int i5 = (int) (j2 >>> i4);
                long j5 = (jArr3[(i5 >>> 3) & 7] << 3) ^ jArr3[i5 & 7];
                j4 ^= j5 << i4;
                j3 ^= j5 >>> (-i4);
                i4 -= 6;
            } while (i4 > 0);
            int i6 = i + i2;
            jArr2[i6] = jArr2[i6] ^ (f882if & j4);
            int i7 = i6 + 1;
            jArr2[i7] = jArr2[i7] ^ ((j3 << 5) ^ (j4 >>> 59));
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m1051if(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 0; i < 13; i++) {
            jArr3[i] = jArr[i] ^ jArr2[i];
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m1052import(long[] jArr, int i, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(13);
        m1056this(jArr, jArrM6355throws);
        while (true) {
            m1045const(jArrM6355throws, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m1056this(jArr2, jArrM6355throws);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static int m1053native(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m1054new(BigInteger bigInteger) {
        long[] jArrM5070case = n21.m5070case(bigInteger);
        m1048final(jArrM5070case, 0);
        return jArrM5070case;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m1055super(long[] jArr, long[] jArr2) {
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (jM4710break & 4294967295L) | (jM4710break2 << 32);
        long j2 = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        long jM4710break3 = ln0.m4710break(jArr[2]);
        long jM4710break4 = ln0.m4710break(jArr[3]);
        long j3 = (jM4710break3 & 4294967295L) | (jM4710break4 << 32);
        long j4 = (jM4710break3 >>> 32) | (jM4710break4 & (-4294967296L));
        long jM4710break5 = ln0.m4710break(jArr[4]);
        long jM4710break6 = ln0.m4710break(jArr[5]);
        long j5 = (jM4710break5 >>> 32) | (jM4710break6 & (-4294967296L));
        long jM4710break7 = ln0.m4710break(jArr[6]);
        long j6 = jM4710break7 & 4294967295L;
        long j7 = jM4710break7 >>> 32;
        jArr2[0] = j ^ (j2 << 44);
        jArr2[1] = (j3 ^ (j4 << 44)) ^ (j2 >>> 20);
        jArr2[2] = (((jM4710break5 & 4294967295L) | (jM4710break6 << 32)) ^ (j5 << 44)) ^ (j4 >>> 20);
        jArr2[3] = (((j7 << 44) ^ j6) ^ (j5 >>> 20)) ^ (j2 << 13);
        jArr2[4] = (j2 >>> 51) ^ ((j7 >>> 20) ^ (j4 << 13));
        jArr2[5] = (j5 << 13) ^ (j4 >>> 51);
        jArr2[6] = (j7 << 13) ^ (j5 >>> 51);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1056this(long[] jArr, long[] jArr2) {
        for (int i = 0; i < 6; i++) {
            ln0.m4715for(jArr[i], jArr2, i << 1);
        }
        jArr2[12] = ln0.m4717if((int) jArr[6]);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m1057throw(long[] jArr, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(13);
        m1056this(jArr, jArrM6355throws);
        m1045const(jArrM6355throws, jArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m1058try(long[] jArr) {
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
        long j11 = jArr[10];
        long j12 = jArr[11];
        long j13 = jArr[12];
        long j14 = jArr[13];
        jArr[0] = j ^ (j2 << 59);
        jArr[1] = (j2 >>> 5) ^ (j3 << 54);
        jArr[2] = (j3 >>> 10) ^ (j4 << 49);
        jArr[3] = (j4 >>> 15) ^ (j5 << 44);
        jArr[4] = (j5 >>> 20) ^ (j6 << 39);
        jArr[5] = (j6 >>> 25) ^ (j7 << 34);
        jArr[6] = (j7 >>> 30) ^ (j8 << 29);
        jArr[7] = (j8 >>> 35) ^ (j9 << 24);
        jArr[8] = (j9 >>> 40) ^ (j10 << 19);
        jArr[9] = (j10 >>> 45) ^ (j11 << 14);
        jArr[10] = (j11 >>> 50) ^ (j12 << 9);
        jArr[11] = ((j12 >>> 55) ^ (j13 << 4)) ^ (j14 << 63);
        jArr[12] = (j13 >>> 60) ^ (j14 >>> 1);
        jArr[13] = 0;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m1059while(long[] jArr, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(13);
        m1056this(jArr, jArrM6355throws);
        m1051if(jArr2, jArrM6355throws, jArr2);
    }
}
