package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class iv1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f2903do = 34359738367L;

    /* renamed from: for, reason: not valid java name */
    private static final long[] f2904for = {-5270498306774157648L, 5270498306774195053L, 19634136210L};

    /* renamed from: if, reason: not valid java name */
    private static final long f2905if = 36028797018963967L;

    /* renamed from: break, reason: not valid java name */
    public static void m3604break(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM3212const = i21.m3212const();
        m3605case(jArr, jArr2, jArrM3212const);
        m3607class(jArrM3212const, jArr3);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m3605case(long[] jArr, long[] jArr2, long[] jArr3) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = (jArr[2] << 18) ^ (j2 >>> 46);
        long j4 = ((j2 << 9) ^ (j >>> 55)) & f2905if;
        long j5 = j & f2905if;
        long j6 = jArr2[0];
        long j7 = jArr2[1];
        long j8 = (j7 >>> 46) ^ (jArr2[2] << 18);
        long j9 = ((j6 >>> 55) ^ (j7 << 9)) & f2905if;
        long j10 = j6 & f2905if;
        long[] jArr4 = new long[10];
        m3610else(j5, j10, jArr4, 0);
        m3610else(j3, j8, jArr4, 2);
        long j11 = (j5 ^ j4) ^ j3;
        long j12 = (j10 ^ j9) ^ j8;
        m3610else(j11, j12, jArr4, 4);
        long j13 = (j4 << 1) ^ (j3 << 2);
        long j14 = (j9 << 1) ^ (j8 << 2);
        m3610else(j5 ^ j13, j10 ^ j14, jArr4, 6);
        m3610else(j11 ^ j13, j12 ^ j14, jArr4, 8);
        long j15 = jArr4[6] ^ jArr4[8];
        long j16 = jArr4[7] ^ jArr4[9];
        long j17 = (j15 << 1) ^ jArr4[6];
        long j18 = (j15 ^ (j16 << 1)) ^ jArr4[7];
        long j19 = jArr4[0];
        long j20 = (jArr4[1] ^ jArr4[0]) ^ jArr4[4];
        long j21 = jArr4[1] ^ jArr4[5];
        long j22 = ((j17 ^ j19) ^ (jArr4[2] << 4)) ^ (jArr4[2] << 1);
        long j23 = (((j20 ^ j18) ^ (jArr4[3] << 4)) ^ (jArr4[3] << 1)) ^ (j22 >>> 55);
        long j24 = j22 & f2905if;
        long j25 = (j21 ^ j16) ^ (j23 >>> 55);
        long j26 = j23 & f2905if;
        long j27 = (j24 >>> 1) ^ ((j26 & 1) << 54);
        long j28 = j27 ^ (j27 << 1);
        long j29 = j28 ^ (j28 << 2);
        long j30 = j29 ^ (j29 << 4);
        long j31 = j30 ^ (j30 << 8);
        long j32 = j31 ^ (j31 << 16);
        long j33 = (j32 ^ (j32 << 32)) & f2905if;
        long j34 = ((j26 >>> 1) ^ ((j25 & 1) << 54)) ^ (j33 >>> 54);
        long j35 = j34 ^ (j34 << 1);
        long j36 = j35 ^ (j35 << 2);
        long j37 = j36 ^ (j36 << 4);
        long j38 = j37 ^ (j37 << 8);
        long j39 = j38 ^ (j38 << 16);
        long j40 = (j39 ^ (j39 << 32)) & f2905if;
        long j41 = (j25 >>> 1) ^ (j40 >>> 54);
        long j42 = j41 ^ (j41 << 1);
        long j43 = j42 ^ (j42 << 2);
        long j44 = j43 ^ (j43 << 4);
        long j45 = j44 ^ (j44 << 8);
        long j46 = j45 ^ (j45 << 16);
        long j47 = j46 ^ (j46 << 32);
        jArr3[0] = j19;
        jArr3[1] = (j20 ^ j33) ^ jArr4[2];
        jArr3[2] = ((j21 ^ j40) ^ j33) ^ jArr4[3];
        jArr3[3] = j47 ^ j40;
        jArr3[4] = jArr4[2] ^ j47;
        jArr3[5] = jArr4[3];
        m3620try(jArr3);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m3606catch(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM3212const = i21.m3212const();
        m3605case(jArr, jArr2, jArrM3212const);
        m3614if(jArr3, jArrM3212const, jArr3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m3607class(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        long j7 = j4 ^ ((((j6 >>> 35) ^ (j6 >>> 32)) ^ (j6 >>> 29)) ^ (j6 >>> 28));
        long j8 = (j3 ^ ((((j6 << 29) ^ (j6 << 32)) ^ (j6 << 35)) ^ (j6 << 36))) ^ ((j5 >>> 28) ^ (((j5 >>> 35) ^ (j5 >>> 32)) ^ (j5 >>> 29)));
        long j9 = j ^ ((((j7 << 29) ^ (j7 << 32)) ^ (j7 << 35)) ^ (j7 << 36));
        long j10 = (j2 ^ ((((j5 << 29) ^ (j5 << 32)) ^ (j5 << 35)) ^ (j5 << 36))) ^ ((j7 >>> 28) ^ (((j7 >>> 35) ^ (j7 >>> 32)) ^ (j7 >>> 29)));
        long j11 = j8 >>> 35;
        jArr2[0] = (((j9 ^ j11) ^ (j11 << 3)) ^ (j11 << 6)) ^ (j11 << 7);
        jArr2[1] = j10;
        jArr2[2] = f2903do & j8;
    }

    /* renamed from: const, reason: not valid java name */
    public static void m3608const(long[] jArr, int i) {
        int i2 = i + 2;
        long j = jArr[i2];
        long j2 = j >>> 35;
        jArr[i] = ((j2 << 7) ^ (((j2 << 3) ^ j2) ^ (j2 << 6))) ^ jArr[i];
        jArr[i2] = j & f2903do;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3609do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr2[2] ^ jArr[2];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m3610else(long j, long j2, long[] jArr, int i) {
        long[] jArr2 = new long[8];
        jArr2[1] = j2;
        jArr2[2] = jArr2[1] << 1;
        jArr2[3] = jArr2[2] ^ j2;
        jArr2[4] = jArr2[2] << 1;
        jArr2[5] = jArr2[4] ^ j2;
        jArr2[6] = jArr2[3] << 1;
        jArr2[7] = jArr2[6] ^ j2;
        long j3 = jArr2[((int) j) & 3];
        long j4 = 0;
        int i2 = 47;
        do {
            int i3 = (int) (j >>> i2);
            long j5 = (jArr2[(i3 >>> 6) & 7] << 6) ^ (jArr2[i3 & 7] ^ (jArr2[(i3 >>> 3) & 7] << 3));
            j3 ^= j5 << i2;
            j4 ^= j5 >>> (-i2);
            i2 -= 9;
        } while (i2 > 0);
        jArr[i] = f2905if & j3;
        jArr[i + 1] = (j3 >>> 55) ^ (j4 << 9);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m3611final(long[] jArr, long[] jArr2) {
        long[] jArrM3210catch = i21.m3210catch();
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (jM4710break & 4294967295L) | (jM4710break2 << 32);
        jArrM3210catch[0] = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        long jM4710break3 = ln0.m4710break(jArr[2]);
        jArrM3210catch[1] = jM4710break3 >>> 32;
        m3604break(jArrM3210catch, f2904for, jArr2);
        jArr2[0] = jArr2[0] ^ j;
        jArr2[1] = jArr2[1] ^ (jM4710break3 & 4294967295L);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m3612for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m3613goto(long[] jArr, long[] jArr2) {
        ln0.m4715for(jArr[0], jArr2, 0);
        ln0.m4715for(jArr[1], jArr2, 2);
        jArr2[4] = ln0.m4717if((int) jArr[2]);
        jArr2[5] = ln0.m4720try((int) (r0 >>> 32)) & 4294967295L;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m3614if(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr[4] ^ jArr2[4];
        jArr3[5] = jArr2[5] ^ jArr[5];
    }

    /* renamed from: import, reason: not valid java name */
    public static int m3615import(long[] jArr) {
        return ((int) (jArr[0] ^ (jArr[2] >>> 29))) & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m3616new(BigInteger bigInteger) {
        long[] jArrM3224import = i21.m3224import(bigInteger);
        m3608const(jArrM3224import, 0);
        return jArrM3224import;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m3617super(long[] jArr, long[] jArr2) {
        long[] jArrM3212const = i21.m3212const();
        m3613goto(jArr, jArrM3212const);
        m3607class(jArrM3212const, jArr2);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m3618this(long[] jArr, long[] jArr2) {
        if (i21.m3214default(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM3210catch = i21.m3210catch();
        long[] jArrM3210catch2 = i21.m3210catch();
        m3617super(jArr, jArrM3210catch);
        m3621while(jArrM3210catch, 1, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch2, 1, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch, 3, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch2, 3, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch, 9, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch2, 9, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch, 27, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch2, 27, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m3621while(jArrM3210catch, 81, jArrM3210catch2);
        m3604break(jArrM3210catch, jArrM3210catch2, jArr2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m3619throw(long[] jArr, long[] jArr2) {
        long[] jArrM3212const = i21.m3212const();
        m3613goto(jArr, jArrM3212const);
        m3614if(jArr2, jArrM3212const, jArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3620try(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        jArr[0] = j ^ (j2 << 55);
        jArr[1] = (j2 >>> 9) ^ (j3 << 46);
        jArr[2] = (j3 >>> 18) ^ (j4 << 37);
        jArr[3] = (j4 >>> 27) ^ (j5 << 28);
        jArr[4] = (j5 >>> 36) ^ (j6 << 19);
        jArr[5] = j6 >>> 45;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m3621while(long[] jArr, int i, long[] jArr2) {
        long[] jArrM3212const = i21.m3212const();
        m3613goto(jArr, jArrM3212const);
        while (true) {
            m3607class(jArrM3212const, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m3613goto(jArr2, jArrM3212const);
            }
        }
    }
}
