package android.support.v4;

/* loaded from: classes3.dex */
public class nq0 {

    /* renamed from: do, reason: not valid java name */
    public static final int f4316do = 2;

    /* renamed from: break, reason: not valid java name */
    public static void m5345break(long[] jArr) {
        jArr[0] = 0;
        jArr[1] = 0;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m5346case(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = j2 >>> 56;
        jArr2[0] = (j3 << 7) ^ ((((j << 8) ^ j3) ^ (j3 << 1)) ^ (j3 << 2));
        jArr2[1] = (j >>> 56) | (j2 << 8);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5347do(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }

    /* renamed from: else, reason: not valid java name */
    public static void m5348else(long[] jArr) {
        jArr[0] = 1;
        jArr[1] = 0;
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m5349for(long[] jArr, long[] jArr2) {
        return ((jArr2[1] ^ jArr[1]) | ((jArr[0] ^ jArr2[0]) | 0)) == 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m5350goto(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[4];
        ln0.m4715for(jArr[0], jArr3, 0);
        ln0.m4715for(jArr[1], jArr3, 2);
        long j = jArr3[0];
        long j2 = jArr3[1];
        long j3 = jArr3[2];
        long j4 = jArr3[3];
        long j5 = j3 ^ ((j4 >>> 57) ^ ((j4 >>> 63) ^ (j4 >>> 62)));
        jArr2[0] = j ^ ((((j5 << 1) ^ j5) ^ (j5 << 2)) ^ (j5 << 7));
        jArr2[1] = (j2 ^ ((((j4 << 1) ^ j4) ^ (j4 << 2)) ^ (j4 << 7))) ^ ((j5 >>> 57) ^ ((j5 >>> 63) ^ (j5 >>> 62)));
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5351if(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    /* renamed from: new, reason: not valid java name */
    public static void m5352new(long[] jArr, long[] jArr2, long[] jArr3) {
        int i = 0;
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr2[0];
        long j4 = jArr2[1];
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        while (i < 64) {
            long j8 = j6;
            long j9 = -(j & 1);
            j >>>= 1;
            j5 ^= j3 & j9;
            long j10 = (j9 & j4) ^ j7;
            long j11 = -(j2 & 1);
            j2 >>>= 1;
            long j12 = j10 ^ (j3 & j11);
            long j13 = j8 ^ (j11 & j4);
            long j14 = j4 >> 63;
            j4 = (j4 << 1) | (j3 >>> 63);
            j3 = (j3 << 1) ^ (j14 & 135);
            i++;
            j6 = j13;
            j7 = j12;
        }
        long j15 = j6;
        jArr3[0] = (((j15 ^ (j15 << 1)) ^ (j15 << 2)) ^ (j15 << 7)) ^ j5;
        jArr3[1] = (((j15 >>> 63) ^ (j15 >>> 62)) ^ (j15 >>> 57)) ^ j7;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m5353this(long[] jArr) {
        jArr[0] = 2;
        jArr[1] = 0;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m5354try(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        jArr2[0] = ((j2 >> 63) & 135) ^ (j << 1);
        jArr2[1] = (j >>> 63) | (j2 << 1);
    }
}
