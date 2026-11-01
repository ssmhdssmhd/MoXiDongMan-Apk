package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class gw1 {

    /* renamed from: do, reason: not valid java name */
    private static final long f2260do = 576460752303423487L;

    /* renamed from: for, reason: not valid java name */
    private static final long[] f2261for = {3161836309350906777L, -7642453882179322845L, -3821226941089661423L, 7312758566309945096L, -556661012383879292L, 8945041530681231562L, -4750851271514160027L, 6847946401097695794L, 541669439031730457L};

    /* renamed from: if, reason: not valid java name */
    private static final long f2262if = -1190112520884487202L;

    /* renamed from: break, reason: not valid java name */
    public static void m2794break(long[] jArr, long j, long[] jArr2, int i) {
        long[] jArr3 = new long[32];
        jArr3[1] = j;
        for (int i2 = 2; i2 < 32; i2 += 2) {
            jArr3[i2] = jArr3[i2 >>> 1] << 1;
            jArr3[i2 + 1] = jArr3[i2] ^ j;
        }
        long j2 = 0;
        int i3 = 0;
        while (i3 < 9) {
            long j3 = jArr[i3];
            long j4 = j2 ^ jArr3[((int) j3) & 31];
            int i4 = 60;
            long j5 = 0;
            do {
                long j6 = jArr3[((int) (j3 >>> i4)) & 31];
                j4 ^= j6 << i4;
                j5 ^= j6 >>> (-i4);
                i4 -= 5;
            } while (i4 > 0);
            for (int i5 = 0; i5 < 4; i5++) {
                j3 = (j3 & f2262if) >>> 1;
                j5 ^= ((j << i5) >> 63) & j3;
            }
            int i6 = i + i3;
            jArr2[i6] = j4 ^ jArr2[i6];
            i3++;
            j2 = j5;
        }
        int i7 = i + 9;
        jArr2[i7] = jArr2[i7] ^ j2;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2795case(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        for (int i = 1; i < 9; i++) {
            jArr2[i] = jArr[i];
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m2796catch(long[] jArr, long[] jArr2) {
        for (int i = 0; i < 9; i++) {
            ln0.m4715for(jArr[i], jArr2, i << 1);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m2797class(long[] jArr, long[] jArr2) {
        if (p21.m5844goto(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrM5843for = p21.m5843for();
        long[] jArrM5843for2 = p21.m5843for();
        long[] jArrM5843for3 = p21.m5843for();
        m2809return(jArr, jArrM5843for3);
        m2809return(jArrM5843for3, jArrM5843for);
        m2809return(jArrM5843for, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2812switch(jArrM5843for, 2, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2798const(jArrM5843for, jArrM5843for3, jArrM5843for);
        m2812switch(jArrM5843for, 5, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2812switch(jArrM5843for2, 5, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2812switch(jArrM5843for, 15, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for3);
        m2812switch(jArrM5843for3, 30, jArrM5843for);
        m2812switch(jArrM5843for, 30, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2812switch(jArrM5843for, 60, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2812switch(jArrM5843for2, 60, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2812switch(jArrM5843for, 180, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2812switch(jArrM5843for2, 180, jArrM5843for2);
        m2798const(jArrM5843for, jArrM5843for2, jArrM5843for);
        m2798const(jArrM5843for, jArrM5843for3, jArr2);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m2798const(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM5846new = p21.m5846new();
        m2803goto(jArr, jArr2, jArrM5846new);
        m2805import(jArrM5846new, jArr3);
    }

    /* renamed from: do, reason: not valid java name */
    private static void m2799do(long[] jArr, int i, long[] jArr2, int i2, long[] jArr3, int i3) {
        for (int i4 = 0; i4 < 9; i4++) {
            jArr3[i3 + i4] = jArr[i + i4] ^ jArr2[i2 + i4];
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static long[] m2800else(BigInteger bigInteger) {
        long[] jArrM5840case = p21.m5840case(bigInteger);
        m2806native(jArrM5840case, 0);
        return jArrM5840case;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m2801final(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM5846new = p21.m5846new();
        m2803goto(jArr, jArr2, jArrM5846new);
        m2816try(jArr3, jArrM5846new, jArr3);
    }

    /* renamed from: for, reason: not valid java name */
    private static void m2802for(long[] jArr, int i, long[] jArr2, int i2, long[] jArr3, int i3) {
        for (int i4 = 0; i4 < 9; i4++) {
            int i5 = i3 + i4;
            jArr3[i5] = jArr3[i5] ^ (jArr[i + i4] ^ jArr2[i2 + i4]);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m2803goto(long[] jArr, long[] jArr2, long[] jArr3) {
        m2813this(jArr, m2817while(jArr2), jArr3);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2804if(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 0; i < 9; i++) {
            jArr3[i] = jArr[i] ^ jArr2[i];
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m2805import(long[] jArr, long[] jArr2) {
        long j = jArr[9];
        long j2 = jArr[17];
        long j3 = (((j ^ (j2 >>> 59)) ^ (j2 >>> 57)) ^ (j2 >>> 54)) ^ (j2 >>> 49);
        long j4 = (j2 << 15) ^ (((jArr[8] ^ (j2 << 5)) ^ (j2 << 7)) ^ (j2 << 10));
        for (int i = 16; i >= 10; i--) {
            long j5 = jArr[i];
            jArr2[i - 8] = (((j4 ^ (j5 >>> 59)) ^ (j5 >>> 57)) ^ (j5 >>> 54)) ^ (j5 >>> 49);
            j4 = (((jArr[i - 9] ^ (j5 << 5)) ^ (j5 << 7)) ^ (j5 << 10)) ^ (j5 << 15);
        }
        jArr2[1] = (((j4 ^ (j3 >>> 59)) ^ (j3 >>> 57)) ^ (j3 >>> 54)) ^ (j3 >>> 49);
        long j6 = (j3 << 15) ^ (((jArr[0] ^ (j3 << 5)) ^ (j3 << 7)) ^ (j3 << 10));
        long j7 = jArr2[8];
        long j8 = j7 >>> 59;
        jArr2[0] = (((j6 ^ j8) ^ (j8 << 2)) ^ (j8 << 5)) ^ (j8 << 10);
        jArr2[8] = f2260do & j7;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m2806native(long[] jArr, int i) {
        int i2 = i + 8;
        long j = jArr[i2];
        long j2 = j >>> 59;
        jArr[i] = ((j2 << 10) ^ (((j2 << 2) ^ j2) ^ (j2 << 5))) ^ jArr[i];
        jArr[i2] = j & f2260do;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m2807new(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 0; i < 9; i++) {
            jArr3[i] = jArr3[i] ^ (jArr[i] ^ jArr2[i]);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m2808public(long[] jArr, long[] jArr2) {
        long[] jArrM5843for = p21.m5843for();
        long[] jArrM5843for2 = p21.m5843for();
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = i + 1;
            long jM4710break = ln0.m4710break(jArr[i]);
            i = i3 + 1;
            long jM4710break2 = ln0.m4710break(jArr[i3]);
            jArrM5843for[i2] = (4294967295L & jM4710break) | (jM4710break2 << 32);
            jArrM5843for2[i2] = (jM4710break >>> 32) | ((-4294967296L) & jM4710break2);
        }
        long jM4710break3 = ln0.m4710break(jArr[i]);
        jArrM5843for[4] = 4294967295L & jM4710break3;
        jArrM5843for2[4] = jM4710break3 >>> 32;
        m2798const(jArrM5843for2, f2261for, jArr2);
        m2804if(jArr2, jArrM5843for, jArr2);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m2809return(long[] jArr, long[] jArr2) {
        long[] jArrM5846new = p21.m5846new();
        m2796catch(jArr, jArrM5846new);
        m2805import(jArrM5846new, jArr2);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m2810static(long[] jArr, long[] jArr2) {
        long[] jArrM5846new = p21.m5846new();
        m2796catch(jArr, jArrM5846new);
        m2816try(jArr2, jArrM5846new, jArr2);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m2811super(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM5846new = p21.m5846new();
        m2813this(jArr, jArr2, jArrM5846new);
        m2805import(jArrM5846new, jArr3);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m2812switch(long[] jArr, int i, long[] jArr2) {
        long[] jArrM5846new = p21.m5846new();
        m2796catch(jArr, jArrM5846new);
        while (true) {
            m2805import(jArrM5846new, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                m2796catch(jArr2, jArrM5846new);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m2813this(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 56; i >= 0; i -= 8) {
            for (int i2 = 1; i2 < 9; i2 += 2) {
                int i3 = (int) (jArr[i2] >>> i);
                m2802for(jArr2, (i3 & 15) * 9, jArr2, (((i3 >>> 4) & 15) + 16) * 9, jArr3, i2 - 1);
            }
            q21.C(16, jArr3, 0, 8, 0L);
        }
        for (int i4 = 56; i4 >= 0; i4 -= 8) {
            for (int i5 = 0; i5 < 9; i5 += 2) {
                int i6 = (int) (jArr[i5] >>> i4);
                m2802for(jArr2, (i6 & 15) * 9, jArr2, (((i6 >>> 4) & 15) + 16) * 9, jArr3, i5);
            }
            if (i4 > 0) {
                q21.C(18, jArr3, 0, 8, 0L);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m2814throw(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArrM5846new = p21.m5846new();
        m2813this(jArr, jArr2, jArrM5846new);
        m2816try(jArr3, jArrM5846new, jArr3);
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m2815throws(long[] jArr) {
        return ((int) ((jArr[0] ^ (jArr[8] >>> 49)) ^ (jArr[8] >>> 57))) & 1;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m2816try(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int i = 0; i < 18; i++) {
            jArr3[i] = jArr[i] ^ jArr2[i];
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static long[] m2817while(long[] jArr) {
        long[] jArr2 = new long[288];
        int i = 0;
        System.arraycopy(jArr, 0, jArr2, 9, 9);
        int i2 = 7;
        while (i2 > 0) {
            int i3 = i + 18;
            q21.x(9, jArr2, i3 >>> 1, 0L, jArr2, i3);
            m2806native(jArr2, i3);
            m2799do(jArr2, 9, jArr2, i3, jArr2, i3 + 9);
            i2--;
            i = i3;
        }
        q21.D(144, jArr2, 0, 4, 0L, jArr2, 144);
        return jArr2;
    }
}
