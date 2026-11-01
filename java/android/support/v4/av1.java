package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class av1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f250do = 562949953421311L;

    /* renamed from: if, reason: not valid java name */
    private static final long f251if = 144115188075855871L;

    /* renamed from: break, reason: not valid java name */
    public static void m343break(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM2518const = g21.m2518const();
        m358try(jArr, jArr2, jArrM2518const);
        m353if(jArr3, jArrM2518const, jArr3);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m344case(long j, long j2, long[] jArr, int i) {
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
        jArr[i] = f251if & j3;
        jArr[i + 1] = (((((j & 72198606942111744L) & ((j2 << 7) >> 63)) >>> 8) ^ j4) << 7) ^ (j3 >>> 57);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m345catch(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = j3 ^ ((j4 >>> 40) ^ (j4 >>> 49));
        long j6 = j ^ ((j5 << 15) ^ (j5 << 24));
        long j7 = (j2 ^ ((j4 << 15) ^ (j4 << 24))) ^ ((j5 >>> 40) ^ (j5 >>> 49));
        long j8 = j7 >>> 49;
        jArr2[0] = (j6 ^ j8) ^ (j8 << 9);
        jArr2[1] = f250do & j7;
    }

    /* renamed from: class, reason: not valid java name */
    public static void m346class(long[] jArr, int i) {
        int i2 = i + 1;
        long j = jArr[i2];
        long j2 = j >>> 49;
        jArr[i] = (j2 ^ (j2 << 9)) ^ jArr[i];
        jArr[i2] = j & f250do;
    }

    /* renamed from: const, reason: not valid java name */
    public static void m347const(long[] jArr, long[] jArr2) {
        long jM4710break = ln0.m4710break(jArr[0]);
        long jM4710break2 = ln0.m4710break(jArr[1]);
        long j = (4294967295L & jM4710break) | (jM4710break2 << 32);
        long j2 = (jM4710break >>> 32) | (jM4710break2 & (-4294967296L));
        jArr2[0] = ((j2 << 57) ^ j) ^ (j2 << 5);
        jArr2[1] = (j2 >>> 59) ^ (j2 >>> 7);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m348do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m349else(long[] jArr, long[] jArr2) {
        ln0.m4715for(jArr[0], jArr2, 0);
        ln0.m4715for(jArr[1], jArr2, 2);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m350final(long[] jArr, long[] jArr2) {
        long[] jArrM2518const = g21.m2518const();
        m349else(jArr, jArrM2518const);
        m345catch(jArrM2518const, jArr2);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m351for(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m352goto(long[] jArr, long[] jArr2) {
        if (g21.m2520default(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM2516catch = g21.m2516catch();
        long[] jArrM2516catch2 = g21.m2516catch();
        m350final(jArr, jArrM2516catch);
        m356this(jArrM2516catch, jArr, jArrM2516catch);
        m350final(jArrM2516catch, jArrM2516catch);
        m356this(jArrM2516catch, jArr, jArrM2516catch);
        m357throw(jArrM2516catch, 3, jArrM2516catch2);
        m356this(jArrM2516catch2, jArrM2516catch, jArrM2516catch2);
        m350final(jArrM2516catch2, jArrM2516catch2);
        m356this(jArrM2516catch2, jArr, jArrM2516catch2);
        m357throw(jArrM2516catch2, 7, jArrM2516catch);
        m356this(jArrM2516catch, jArrM2516catch2, jArrM2516catch);
        m357throw(jArrM2516catch, 14, jArrM2516catch2);
        m356this(jArrM2516catch2, jArrM2516catch, jArrM2516catch2);
        m357throw(jArrM2516catch2, 28, jArrM2516catch);
        m356this(jArrM2516catch, jArrM2516catch2, jArrM2516catch);
        m357throw(jArrM2516catch, 56, jArrM2516catch2);
        m356this(jArrM2516catch2, jArrM2516catch, jArrM2516catch2);
        m350final(jArrM2516catch2, jArr2);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m353if(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m354new(BigInteger bigInteger) {
        long[] jArrM2530import = g21.m2530import(bigInteger);
        m346class(jArrM2530import, 0);
        return jArrM2530import;
    }

    /* renamed from: super, reason: not valid java name */
    public static void m355super(long[] jArr, long[] jArr2) {
        long[] jArrM2518const = g21.m2518const();
        m349else(jArr, jArrM2518const);
        m353if(jArr2, jArrM2518const, jArr2);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m356this(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM2518const = g21.m2518const();
        m358try(jArr, jArr2, jArrM2518const);
        m345catch(jArrM2518const, jArr3);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m357throw(long[] jArr, int i, long[] jArr2) {
        long[] jArrM2518const = g21.m2518const();
        m349else(jArr, jArrM2518const);
        while (true) {
            m345catch(jArrM2518const, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m349else(jArr2, jArrM2518const);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m358try(long[] jArr, long[] jArr2, long[] jArr3) {
        long j = jArr[0];
        long j2 = ((jArr[1] << 7) ^ (j >>> 57)) & f251if;
        long j3 = j & f251if;
        long j4 = jArr2[0];
        long j5 = ((jArr2[1] << 7) ^ (j4 >>> 57)) & f251if;
        long j6 = f251if & j4;
        long[] jArr4 = new long[6];
        m344case(j3, j6, jArr4, 0);
        m344case(j2, j5, jArr4, 2);
        m344case(j3 ^ j2, j6 ^ j5, jArr4, 4);
        long j7 = jArr4[1] ^ jArr4[2];
        long j8 = jArr4[0];
        long j9 = jArr4[3];
        long j10 = (jArr4[4] ^ j8) ^ j7;
        long j11 = j7 ^ (jArr4[5] ^ j9);
        jArr3[0] = j8 ^ (j10 << 57);
        jArr3[1] = (j10 >>> 7) ^ (j11 << 50);
        jArr3[2] = (j11 >>> 14) ^ (j9 << 43);
        jArr3[3] = j9 >>> 21;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m359while(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }
}
