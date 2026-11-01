package android.support.v4;

/* loaded from: classes3.dex */
public class ln0 {

    /* renamed from: do, reason: not valid java name */
    private static final long f3719do = 1431655765;

    /* renamed from: for, reason: not valid java name */
    private static final long f3720for = -6148914691236517206L;

    /* renamed from: if, reason: not valid java name */
    private static final long f3721if = 6148914691236517205L;

    /* renamed from: break, reason: not valid java name */
    public static long m4710break(long j) {
        long j2 = ((j >>> 1) ^ j) & 2459565876494606882L;
        long j3 = j ^ (j2 ^ (j2 << 1));
        long j4 = ((j3 >>> 2) ^ j3) & 868082074056920076L;
        long j5 = j3 ^ (j4 ^ (j4 << 2));
        long j6 = ((j5 >>> 4) ^ j5) & 67555025218437360L;
        long j7 = j5 ^ (j6 ^ (j6 << 4));
        long j8 = ((j7 >>> 8) ^ j7) & 280375465148160L;
        long j9 = j7 ^ (j8 ^ (j8 << 8));
        long j10 = ((j9 >>> 16) ^ j9) & 4294901760L;
        return j9 ^ (j10 ^ (j10 << 16));
    }

    /* renamed from: case, reason: not valid java name */
    public static int m4711case(int i) {
        int i2 = ((i >>> 8) ^ i) & 65280;
        int i3 = i ^ (i2 ^ (i2 << 8));
        int i4 = ((i3 >>> 4) ^ i3) & 15728880;
        int i5 = i3 ^ (i4 ^ (i4 << 4));
        int i6 = ((i5 >>> 2) ^ i5) & 202116108;
        int i7 = i5 ^ (i6 ^ (i6 << 2));
        int i8 = ((i7 >>> 1) ^ i7) & 572662306;
        return i7 ^ (i8 ^ (i8 << 1));
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m4712catch(int i) {
        int i2 = ((i >>> 8) ^ i) & 65280;
        int i3 = i ^ (i2 ^ (i2 << 8));
        int i4 = ((i3 >>> 4) ^ i3) & 15728880;
        int i5 = i3 ^ (i4 ^ (i4 << 4));
        int i6 = ((i5 >>> 14) ^ i5) & 52428;
        int i7 = i5 ^ (i6 ^ (i6 << 14));
        int i8 = ((i7 >>> 7) ^ i7) & 11141290;
        return i7 ^ (i8 ^ (i8 << 7));
    }

    /* renamed from: do, reason: not valid java name */
    public static int m4713do(int i) {
        int i2 = i & 65535;
        int i3 = (i2 | (i2 << 8)) & 16711935;
        int i4 = (i3 | (i3 << 4)) & 252645135;
        int i5 = (i4 | (i4 << 2)) & 858993459;
        return (i5 | (i5 << 1)) & 1431655765;
    }

    /* renamed from: else, reason: not valid java name */
    public static long m4714else(long j) {
        long j2 = ((j >>> 16) ^ j) & 4294901760L;
        long j3 = j ^ (j2 ^ (j2 << 16));
        long j4 = ((j3 >>> 8) ^ j3) & 280375465148160L;
        long j5 = j3 ^ (j4 ^ (j4 << 8));
        long j6 = ((j5 >>> 4) ^ j5) & 67555025218437360L;
        long j7 = j5 ^ (j6 ^ (j6 << 4));
        long j8 = ((j7 >>> 2) ^ j7) & 868082074056920076L;
        long j9 = j7 ^ (j8 ^ (j8 << 2));
        long j10 = ((j9 >>> 1) ^ j9) & 2459565876494606882L;
        return j9 ^ (j10 ^ (j10 << 1));
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4715for(long j, long[] jArr, int i) {
        long j2 = ((j >>> 16) ^ j) & 4294901760L;
        long j3 = j ^ (j2 ^ (j2 << 16));
        long j4 = ((j3 >>> 8) ^ j3) & 280375465148160L;
        long j5 = j3 ^ (j4 ^ (j4 << 8));
        long j6 = ((j5 >>> 4) ^ j5) & 67555025218437360L;
        long j7 = j5 ^ (j6 ^ (j6 << 4));
        long j8 = ((j7 >>> 2) ^ j7) & 868082074056920076L;
        long j9 = j7 ^ (j8 ^ (j8 << 2));
        long j10 = ((j9 >>> 1) ^ j9) & 2459565876494606882L;
        long j11 = j9 ^ (j10 ^ (j10 << 1));
        jArr[i] = j11 & f3721if;
        jArr[i + 1] = (j11 >>> 1) & f3721if;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m4716goto(int i) {
        int i2 = ((i >>> 7) ^ i) & 11141290;
        int i3 = i ^ (i2 ^ (i2 << 7));
        int i4 = ((i3 >>> 14) ^ i3) & 52428;
        int i5 = i3 ^ (i4 ^ (i4 << 14));
        int i6 = ((i5 >>> 4) ^ i5) & 15728880;
        int i7 = i5 ^ (i6 ^ (i6 << 4));
        int i8 = ((i7 >>> 8) ^ i7) & 65280;
        return i7 ^ (i8 ^ (i8 << 8));
    }

    /* renamed from: if, reason: not valid java name */
    public static long m4717if(int i) {
        int i2 = ((i >>> 8) ^ i) & 65280;
        int i3 = i ^ (i2 ^ (i2 << 8));
        int i4 = ((i3 >>> 4) ^ i3) & 15728880;
        int i5 = i3 ^ (i4 ^ (i4 << 4));
        int i6 = ((i5 >>> 2) ^ i5) & 202116108;
        int i7 = i5 ^ (i6 ^ (i6 << 2));
        int i8 = ((i7 >>> 1) ^ i7) & 572662306;
        return (((r6 >>> 1) & f3719do) << 32) | (f3719do & (i7 ^ (i8 ^ (i8 << 1))));
    }

    /* renamed from: new, reason: not valid java name */
    public static void m4718new(long j, long[] jArr, int i) {
        long j2 = ((j >>> 16) ^ j) & 4294901760L;
        long j3 = j ^ (j2 ^ (j2 << 16));
        long j4 = ((j3 >>> 8) ^ j3) & 280375465148160L;
        long j5 = j3 ^ (j4 ^ (j4 << 8));
        long j6 = ((j5 >>> 4) ^ j5) & 67555025218437360L;
        long j7 = j5 ^ (j6 ^ (j6 << 4));
        long j8 = ((j7 >>> 2) ^ j7) & 868082074056920076L;
        long j9 = j7 ^ (j8 ^ (j8 << 2));
        long j10 = ((j9 >>> 1) ^ j9) & 2459565876494606882L;
        long j11 = j9 ^ (j10 ^ (j10 << 1));
        jArr[i] = j11 & f3720for;
        jArr[i + 1] = (j11 << 1) & f3720for;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m4719this(int i) {
        int i2 = ((i >>> 1) ^ i) & 572662306;
        int i3 = i ^ (i2 ^ (i2 << 1));
        int i4 = ((i3 >>> 2) ^ i3) & 202116108;
        int i5 = i3 ^ (i4 ^ (i4 << 2));
        int i6 = ((i5 >>> 4) ^ i5) & 15728880;
        int i7 = i5 ^ (i6 ^ (i6 << 4));
        int i8 = ((i7 >>> 8) ^ i7) & 65280;
        return i7 ^ (i8 ^ (i8 << 8));
    }

    /* renamed from: try, reason: not valid java name */
    public static int m4720try(int i) {
        int i2 = i & 255;
        int i3 = (i2 | (i2 << 4)) & 3855;
        int i4 = (i3 | (i3 << 2)) & 13107;
        return (i4 | (i4 << 1)) & 21845;
    }
}
