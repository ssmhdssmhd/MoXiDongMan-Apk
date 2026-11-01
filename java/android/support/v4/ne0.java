package android.support.v4;

/* loaded from: classes3.dex */
public abstract class ne0 {

    /* renamed from: do, reason: not valid java name */
    private static final int f4196do = -520093696;

    /* renamed from: if, reason: not valid java name */
    private static final long f4197if = -2233785415175766016L;

    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m5155abstract(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[4];
        ln0.m4718new(jArr[0], jArr3, 0);
        ln0.m4718new(jArr[1], jArr3, 2);
        long j = jArr3[0];
        long j2 = jArr3[1];
        long j3 = jArr3[2];
        long j4 = jArr3[3];
        long j5 = j3 ^ ((j4 << 57) ^ ((j4 << 63) ^ (j4 << 62)));
        jArr2[0] = j ^ ((((j5 >>> 1) ^ j5) ^ (j5 >>> 2)) ^ (j5 >>> 7));
        jArr2[1] = (j2 ^ ((((j4 >>> 1) ^ j4) ^ (j4 >>> 2)) ^ (j4 >>> 7))) ^ ((j5 << 57) ^ ((j5 << 63) ^ (j5 << 62)));
    }

    /* renamed from: break, reason: not valid java name */
    public static void m5156break(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    /* renamed from: case, reason: not valid java name */
    public static int[] m5157case(byte[] bArr) {
        int[] iArr = new int[4];
        ib1.m3361if(bArr, 0, iArr);
        return iArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m5158catch(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = j >> 63;
        jArr2[0] = ((j ^ (f4197if & j3)) << 1) | (j2 >>> 63);
        jArr2[1] = (j2 << 1) | (-j3);
    }

    /* renamed from: class, reason: not valid java name */
    public static void m5159class(byte[] bArr, byte[] bArr2) {
        long[] jArrM5169goto = m5169goto(bArr);
        m5166final(jArrM5169goto, m5169goto(bArr2));
        m5170if(jArrM5169goto, bArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static void m5160const(int[] iArr, int[] iArr2) {
        int i = iArr2[0];
        int i2 = iArr2[1];
        int i3 = iArr2[2];
        int i4 = iArr2[3];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < 4; i9++) {
            int i10 = iArr[i9];
            for (int i11 = 0; i11 < 32; i11++) {
                int i12 = i10 >> 31;
                i10 <<= 1;
                i5 ^= i & i12;
                i6 ^= i2 & i12;
                i7 ^= i3 & i12;
                i8 ^= i12 & i4;
                int i13 = (i4 << 31) >> 8;
                i4 = (i4 >>> 1) | (i3 << 31);
                i3 = (i3 >>> 1) | (i2 << 31);
                i2 = (i2 >>> 1) | (i << 31);
                i = (i >>> 1) ^ (i13 & f4196do);
            }
        }
        iArr[0] = i5;
        iArr[1] = i6;
        iArr[2] = i7;
        iArr[3] = i8;
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m5161continue(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        while (true) {
            i3--;
            if (i3 < 0) {
                return;
            }
            int i4 = i + i3;
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i2 + i3]);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static void m5162default(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = j2 << 56;
        jArr2[0] = (j3 >>> 7) ^ ((((j >>> 8) ^ j3) ^ (j3 >>> 1)) ^ (j3 >>> 2));
        jArr2[1] = (j << 56) | (j2 >>> 8);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5163do(int[] iArr, byte[] bArr) {
        ib1.m3355else(iArr, bArr, 0);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m5164else(byte[] bArr, long[] jArr) {
        ib1.m3364new(bArr, 0, jArr);
    }

    /* renamed from: extends, reason: not valid java name */
    public static byte[] m5165extends() {
        byte[] bArr = new byte[16];
        bArr[0] = Byte.MIN_VALUE;
        return bArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m5166final(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr2[0];
        long j4 = jArr2[1];
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        for (int i = 0; i < 64; i++) {
            long j8 = j >> 63;
            j <<= 1;
            j5 ^= j3 & j8;
            long j9 = j7 ^ (j4 & j8);
            long j10 = j2 >> 63;
            j2 <<= 1;
            j7 = j9 ^ (j3 & j10);
            j6 ^= j4 & j10;
            long j11 = (j4 << 63) >> 8;
            j4 = (j4 >>> 1) | (j3 << 63);
            j3 = (j3 >>> 1) ^ (j11 & f4197if);
        }
        jArr[0] = ((((j6 >>> 1) ^ j6) ^ (j6 >>> 2)) ^ (j6 >>> 7)) ^ j5;
        jArr[1] = (((j6 << 63) ^ (j6 << 62)) ^ (j6 << 57)) ^ j7;
    }

    /* renamed from: finally, reason: not valid java name */
    public static int[] m5167finally() {
        int[] iArr = new int[4];
        iArr[0] = Integer.MIN_VALUE;
        return iArr;
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m5168for(int[] iArr) {
        byte[] bArr = new byte[16];
        ib1.m3355else(iArr, bArr, 0);
        return bArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public static long[] m5169goto(byte[] bArr) {
        long[] jArr = new long[2];
        ib1.m3364new(bArr, 0, jArr);
        return jArr;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5170if(long[] jArr, byte[] bArr) {
        ib1.m3372switch(jArr, bArr, 0);
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m5171implements(int[] iArr, int[] iArr2) {
        iArr[0] = iArr[0] ^ iArr2[0];
        iArr[1] = iArr[1] ^ iArr2[1];
        iArr[2] = iArr[2] ^ iArr2[2];
        iArr[3] = iArr2[3] ^ iArr[3];
    }

    /* renamed from: import, reason: not valid java name */
    public static void m5172import(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        jArr2[0] = (((j2 << 63) >> 63) & f4197if) ^ (j >>> 1);
        jArr2[1] = (j << 63) | (j2 >>> 1);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m5173instanceof(int[] iArr, int[] iArr2, int[] iArr3) {
        iArr3[0] = iArr[0] ^ iArr2[0];
        iArr3[1] = iArr[1] ^ iArr2[1];
        iArr3[2] = iArr[2] ^ iArr2[2];
        iArr3[3] = iArr[3] ^ iArr2[3];
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m5174interface(byte[] bArr, byte[] bArr2, int i) {
        int i2 = 0;
        do {
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i + i2]);
            int i3 = i2 + 1;
            bArr[i3] = (byte) (bArr[i3] ^ bArr2[i + i3]);
            int i4 = i3 + 1;
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i + i4]);
            int i5 = i4 + 1;
            bArr[i5] = (byte) (bArr[i5] ^ bArr2[i + i5]);
            i2 = i5 + 1;
        } while (i2 < 16);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m5175native(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = j2 << 61;
        jArr2[0] = (j3 >>> 7) ^ ((((j >>> 3) ^ j3) ^ (j3 >>> 1)) ^ (j3 >>> 2));
        jArr2[1] = (j << 61) | (j2 >>> 3);
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m5176new(long[] jArr) {
        byte[] bArr = new byte[16];
        ib1.m3372switch(jArr, bArr, 0);
        return bArr;
    }

    /* renamed from: package, reason: not valid java name */
    public static long[] m5177package() {
        return new long[]{Long.MIN_VALUE, 0};
    }

    /* renamed from: private, reason: not valid java name */
    public static long[] m5178private() {
        return new long[]{4611686018427387904L, 0};
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m5179protected(byte[] bArr, byte[] bArr2, int i, int i2) {
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            } else {
                bArr[i2] = (byte) (bArr[i2] ^ bArr2[i + i2]);
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m5180public(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = j2 << 60;
        jArr2[0] = (j3 >>> 7) ^ ((((j >>> 4) ^ j3) ^ (j3 >>> 1)) ^ (j3 >>> 2));
        jArr2[1] = (j << 60) | (j2 >>> 4);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m5181return(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = j2 << 57;
        jArr2[0] = (j3 >>> 7) ^ ((((j >>> 7) ^ j3) ^ (j3 >>> 1)) ^ (j3 >>> 2));
        jArr2[1] = (j << 57) | (j2 >>> 7);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m5182static(int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = i4 << 24;
        iArr[0] = (i5 >>> 7) ^ ((((i >>> 8) ^ i5) ^ (i5 >>> 1)) ^ (i5 >>> 2));
        iArr[1] = (i2 >>> 8) | (i << 24);
        iArr[2] = (i3 >>> 8) | (i2 << 24);
        iArr[3] = (i4 >>> 8) | (i3 << 24);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m5183strictfp(byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        int i4 = 0;
        do {
            bArr3[i3 + i4] = (byte) (bArr[i + i4] ^ bArr2[i2 + i4]);
            int i5 = i4 + 1;
            bArr3[i3 + i5] = (byte) (bArr[i + i5] ^ bArr2[i2 + i5]);
            int i6 = i5 + 1;
            bArr3[i3 + i6] = (byte) (bArr[i + i6] ^ bArr2[i2 + i6]);
            int i7 = i6 + 1;
            bArr3[i3 + i7] = (byte) (bArr[i + i7] ^ bArr2[i2 + i7]);
            i4 = i7 + 1;
        } while (i4 < 16);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m5184super(int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        iArr[0] = (((i4 << 31) >> 31) & f4196do) ^ (i >>> 1);
        iArr[1] = (i2 >>> 1) | (i << 31);
        iArr[2] = (i3 >>> 1) | (i2 << 31);
        iArr[3] = (i4 >>> 1) | (i3 << 31);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m5185switch(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = i4 << 24;
        iArr2[0] = (i5 >>> 7) ^ ((((i >>> 8) ^ i5) ^ (i5 >>> 1)) ^ (i5 >>> 2));
        iArr2[1] = (i2 >>> 8) | (i << 24);
        iArr2[2] = (i3 >>> 8) | (i2 << 24);
        iArr2[3] = (i4 >>> 8) | (i3 << 24);
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m5186synchronized(long[] jArr, long[] jArr2) {
        jArr[0] = jArr[0] ^ jArr2[0];
        jArr[1] = jArr[1] ^ jArr2[1];
    }

    /* renamed from: this, reason: not valid java name */
    public static void m5187this(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m5188throw(int[] iArr, int[] iArr2) {
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        iArr2[0] = (((i4 << 31) >> 31) & f4196do) ^ (i >>> 1);
        iArr2[1] = (i2 >>> 1) | (i << 31);
        iArr2[2] = (i3 >>> 1) | (i2 << 31);
        iArr2[3] = (i4 >>> 1) | (i3 << 31);
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m5189throws(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = j2 << 56;
        jArr[0] = (j3 >>> 7) ^ ((((j >>> 8) ^ j3) ^ (j3 >>> 1)) ^ (j3 >>> 2));
        jArr[1] = (j << 56) | (j2 >>> 8);
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m5190transient(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i = 0;
        do {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
            int i2 = i + 1;
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
            int i3 = i2 + 1;
            bArr3[i3] = (byte) (bArr[i3] ^ bArr2[i3]);
            int i4 = i3 + 1;
            bArr3[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
            i = i4 + 1;
        } while (i < 16);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m5191try(byte[] bArr, int[] iArr) {
        ib1.m3361if(bArr, 0, iArr);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m5192volatile(byte[] bArr, byte[] bArr2) {
        int i = 0;
        do {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
            int i2 = i + 1;
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
            int i3 = i2 + 1;
            bArr[i3] = (byte) (bArr[i3] ^ bArr2[i3]);
            int i4 = i3 + 1;
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
            i = i4 + 1;
        } while (i < 16);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m5193while(long[] jArr) {
        long j = jArr[0];
        long j2 = jArr[1];
        jArr[0] = (((j2 << 63) >> 63) & f4197if) ^ (j >>> 1);
        jArr[1] = (j << 63) | (j2 >>> 1);
    }
}
