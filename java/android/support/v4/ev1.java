package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class ev1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f1591do = 7;

    /* renamed from: for, reason: not valid java name */
    private static final long[] f1592for = {2791191049453778211L, 2791191049453778402L, 6};

    /* renamed from: if, reason: not valid java name */
    private static final long f1593if = 17592186044415L;

    /* renamed from: break, reason: not valid java name */
    public static void m2026break(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM3212const = i21.m3212const();
        m2027case(jArr, jArr2, jArrM3212const);
        m2029class(jArrM3212const, jArr3);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2027case(long[] jArr, long[] jArr2, long[] jArr3) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = ((jArr[2] << 40) ^ (j2 >>> 24)) & f1593if;
        long j4 = ((j2 << 20) ^ (j >>> 44)) & f1593if;
        long j5 = j & f1593if;
        long j6 = jArr2[0];
        long j7 = jArr2[1];
        long j8 = ((j7 >>> 24) ^ (jArr2[2] << 40)) & f1593if;
        long j9 = ((j6 >>> 44) ^ (j7 << 20)) & f1593if;
        long j10 = j6 & f1593if;
        long[] jArr4 = new long[10];
        m2032else(j5, j10, jArr4, 0);
        m2032else(j3, j8, jArr4, 2);
        long j11 = (j5 ^ j4) ^ j3;
        long j12 = (j10 ^ j9) ^ j8;
        m2032else(j11, j12, jArr4, 4);
        long j13 = (j4 << 1) ^ (j3 << 2);
        long j14 = (j9 << 1) ^ (j8 << 2);
        m2032else(j5 ^ j13, j10 ^ j14, jArr4, 6);
        m2032else(j11 ^ j13, j12 ^ j14, jArr4, 8);
        long j15 = jArr4[6] ^ jArr4[8];
        long j16 = jArr4[7] ^ jArr4[9];
        long j17 = (j15 << 1) ^ jArr4[6];
        long j18 = (j15 ^ (j16 << 1)) ^ jArr4[7];
        long j19 = jArr4[0];
        long j20 = (jArr4[1] ^ jArr4[0]) ^ jArr4[4];
        long j21 = jArr4[1] ^ jArr4[5];
        long j22 = ((j17 ^ j19) ^ (jArr4[2] << 4)) ^ (jArr4[2] << 1);
        long j23 = (((j20 ^ j18) ^ (jArr4[3] << 4)) ^ (jArr4[3] << 1)) ^ (j22 >>> 44);
        long j24 = j22 & f1593if;
        long j25 = (j21 ^ j16) ^ (j23 >>> 44);
        long j26 = j23 & f1593if;
        long j27 = (j24 >>> 1) ^ ((j26 & 1) << 43);
        long j28 = j27 ^ (j27 << 1);
        long j29 = j28 ^ (j28 << 2);
        long j30 = j29 ^ (j29 << 4);
        long j31 = j30 ^ (j30 << 8);
        long j32 = j31 ^ (j31 << 16);
        long j33 = (j32 ^ (j32 << 32)) & f1593if;
        long j34 = ((j26 >>> 1) ^ ((j25 & 1) << 43)) ^ (j33 >>> 43);
        long j35 = j34 ^ (j34 << 1);
        long j36 = j35 ^ (j35 << 2);
        long j37 = j36 ^ (j36 << 4);
        long j38 = j37 ^ (j37 << 8);
        long j39 = j38 ^ (j38 << 16);
        long j40 = (j39 ^ (j39 << 32)) & f1593if;
        long j41 = (j40 >>> 43) ^ (j25 >>> 1);
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
        m2042try(jArr3);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m2028catch(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM3212const = i21.m3212const();
        m2027case(jArr, jArr2, jArrM3212const);
        m2036if(jArr3, jArrM3212const, jArr3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m2029class(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = j4 ^ (j5 >>> 59);
        long j7 = j ^ ((j6 << 61) ^ (j6 << 63));
        long j8 = (j2 ^ ((j5 << 61) ^ (j5 << 63))) ^ ((((j6 >>> 3) ^ (j6 >>> 1)) ^ j6) ^ (j6 << 5));
        long j9 = (j3 ^ ((((j5 >>> 3) ^ (j5 >>> 1)) ^ j5) ^ (j5 << 5))) ^ (j6 >>> 59);
        long j10 = j9 >>> 3;
        jArr2[0] = (((j7 ^ j10) ^ (j10 << 2)) ^ (j10 << 3)) ^ (j10 << 8);
        jArr2[1] = (j10 >>> 56) ^ j8;
        jArr2[2] = f1591do & j9;
    }

    /* renamed from: const, reason: not valid java name */
    public static void m2030const(long[] jArr, int i) {
        int i2 = i + 2;
        long j = jArr[i2];
        long j2 = j >>> 3;
        jArr[i] = jArr[i] ^ ((((j2 << 2) ^ j2) ^ (j2 << 3)) ^ (j2 << 8));
        int i3 = i + 1;
        jArr[i3] = (j2 >>> 56) ^ jArr[i3];
        jArr[i2] = j & f1591do;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m2031do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr2[2] ^ jArr[2];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m2032else(long j, long j2, long[] jArr, int i) {
        long[] jArr2 = new long[8];
        jArr2[1] = j2;
        jArr2[2] = jArr2[1] << 1;
        jArr2[3] = jArr2[2] ^ j2;
        jArr2[4] = jArr2[2] << 1;
        jArr2[5] = jArr2[4] ^ j2;
        jArr2[6] = jArr2[3] << 1;
        jArr2[7] = jArr2[6] ^ j2;
        int i2 = (int) j;
        long j3 = (jArr2[(i2 >>> 6) & 7] << 6) ^ (jArr2[i2 & 7] ^ (jArr2[(i2 >>> 3) & 7] << 3));
        long j4 = 0;
        int i3 = 33;
        do {
            int i4 = (int) (j >>> i3);
            long j5 = (jArr2[(i4 >>> 9) & 7] << 9) ^ ((jArr2[i4 & 7] ^ (jArr2[(i4 >>> 3) & 7] << 3)) ^ (jArr2[(i4 >>> 6) & 7] << 6));
            j3 ^= j5 << i3;
            j4 ^= j5 >>> (-i3);
            i3 -= 12;
        } while (i3 > 0);
        jArr[i] = f1593if & j3;
        jArr[i + 1] = (j3 >>> 44) ^ (j4 << 20);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m2033final(long[] jArr, long[] jArr2) {
        long[] jArrM3210catch = i21.m3210catch();
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (jM4710break & 4294967295L) | (jM4710break2 << 32);
        jArrM3210catch[0] = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        long jM4710break3 = ln0.m4710break(jArr[2]);
        jArrM3210catch[1] = jM4710break3 >>> 32;
        m2026break(jArrM3210catch, f1592for, jArr2);
        jArr2[0] = jArr2[0] ^ j;
        jArr2[1] = jArr2[1] ^ (jM4710break3 & 4294967295L);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m2034for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m2035goto(long[] jArr, long[] jArr2) {
        ln0.m4715for(jArr[0], jArr2, 0);
        ln0.m4715for(jArr[1], jArr2, 2);
        jArr2[4] = ln0.m4720try((int) jArr[2]) & 4294967295L;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2036if(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr[3] ^ jArr2[3];
        jArr3[4] = jArr2[4] ^ jArr[4];
    }

    /* renamed from: import, reason: not valid java name */
    public static int m2037import(long[] jArr) {
        return ((int) ((jArr[0] ^ (jArr[1] >>> 59)) ^ (jArr[2] >>> 1))) & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m2038new(BigInteger bigInteger) {
        long[] jArrM3224import = i21.m3224import(bigInteger);
        m2030const(jArrM3224import, 0);
        return jArrM3224import;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m2039super(long[] jArr, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(5);
        m2035goto(jArr, jArrM6355throws);
        m2029class(jArrM6355throws, jArr2);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m2040this(long[] jArr, long[] jArr2) {
        if (i21.m3214default(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM3210catch = i21.m3210catch();
        long[] jArrM3210catch2 = i21.m3210catch();
        m2039super(jArr, jArrM3210catch);
        m2026break(jArrM3210catch, jArr, jArrM3210catch);
        m2043while(jArrM3210catch, 2, jArrM3210catch2);
        m2026break(jArrM3210catch2, jArrM3210catch, jArrM3210catch2);
        m2043while(jArrM3210catch2, 4, jArrM3210catch);
        m2026break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m2043while(jArrM3210catch, 8, jArrM3210catch2);
        m2026break(jArrM3210catch2, jArrM3210catch, jArrM3210catch2);
        m2043while(jArrM3210catch2, 16, jArrM3210catch);
        m2026break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m2043while(jArrM3210catch, 32, jArrM3210catch2);
        m2026break(jArrM3210catch2, jArrM3210catch, jArrM3210catch2);
        m2039super(jArrM3210catch2, jArrM3210catch2);
        m2026break(jArrM3210catch2, jArr, jArrM3210catch2);
        m2043while(jArrM3210catch2, 65, jArrM3210catch);
        m2026break(jArrM3210catch, jArrM3210catch2, jArrM3210catch);
        m2039super(jArrM3210catch, jArr2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m2041throw(long[] jArr, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(5);
        m2035goto(jArr, jArrM6355throws);
        m2036if(jArr2, jArrM6355throws, jArr2);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2042try(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        jArr[0] = j ^ (j2 << 44);
        jArr[1] = (j2 >>> 20) ^ (j3 << 24);
        jArr[2] = ((j3 >>> 40) ^ (j4 << 4)) ^ (j5 << 48);
        jArr[3] = ((j4 >>> 60) ^ (j6 << 28)) ^ (j5 >>> 16);
        jArr[4] = j6 >>> 36;
        jArr[5] = 0;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m2043while(long[] jArr, int i, long[] jArr2) {
        long[] jArrM6355throws = q21.m6355throws(5);
        m2035goto(jArr, jArrM6355throws);
        while (true) {
            m2029class(jArrM6355throws, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m2035goto(jArr2, jArrM6355throws);
            }
        }
    }
}
