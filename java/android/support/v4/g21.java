package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public abstract class g21 {

    /* renamed from: do, reason: not valid java name */
    private static final long f2040do = 4294967295L;

    public static int a(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        return (int) (j4 >> 32);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m2513abstract(int i, int i2, int[] iArr, int i3) {
        long j = i & 4294967295L;
        long j2 = i2 & 4294967295L;
        long j3 = (j * j2) + (iArr[r4] & 4294967295L) + 0;
        iArr[i3 + 0] = (int) j3;
        long j4 = (j3 >>> 32) + j2 + (iArr[r7] & 4294967295L);
        iArr[i3 + 1] = (int) j4;
        long j5 = j4 >>> 32;
        long j6 = j5 + (4294967295L & iArr[r0]);
        iArr[i3 + 2] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return q21.m6337implements(4, iArr, i3, 3);
    }

    public static int b(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((iArr3[0] & 4294967295L) - (iArr[0] & 4294967295L)) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + (((iArr3[1] & 4294967295L) - (iArr[1] & 4294967295L)) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + (((iArr3[2] & 4294967295L) - (iArr[2] & 4294967295L)) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + (((iArr3[3] & 4294967295L) - (iArr[3] & 4294967295L)) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        return (int) (j4 >> 32);
    }

    /* renamed from: break, reason: not valid java name */
    public static int[] m2514break() {
        return new int[4];
    }

    public static int c(int[] iArr, int i, int[] iArr2, int i2) {
        long j = ((iArr2[r0] & 4294967295L) - (iArr[i + 0] & 4294967295L)) + 0;
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 1] & 4294967295L));
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 2] & 4294967295L));
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[r13] & 4294967295L) - (iArr[i + 3] & 4294967295L));
        iArr2[i2 + 3] = (int) j4;
        return (int) (j4 >> 32);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2515case(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2 + 0] = iArr[i + 0];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
    }

    /* renamed from: catch, reason: not valid java name */
    public static long[] m2516catch() {
        return new long[2];
    }

    /* renamed from: class, reason: not valid java name */
    public static int[] m2517class() {
        return new int[8];
    }

    /* renamed from: const, reason: not valid java name */
    public static long[] m2518const() {
        return new long[4];
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m2519continue(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = 4294967295L;
        long j2 = iArr2[i2 + 0] & 4294967295L;
        long j3 = iArr2[i2 + 1] & 4294967295L;
        long j4 = iArr2[i2 + 2] & 4294967295L;
        long j5 = iArr2[i2 + 3] & 4294967295L;
        int i4 = i3;
        int i5 = 0;
        long j6 = 0;
        while (i5 < 4) {
            long j7 = iArr[i + i5] & j;
            long j8 = (j7 * j2) + (iArr3[r18] & j) + 0;
            iArr3[i4 + 0] = (int) j8;
            int i6 = i4 + 1;
            long j9 = j3;
            long j10 = (j8 >>> 32) + (j7 * j3) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j10;
            long j11 = (j10 >>> 32) + (j7 * j4) + (iArr3[r16] & 4294967295L);
            iArr3[i4 + 2] = (int) j11;
            long j12 = (j11 >>> 32) + (j7 * j5) + (iArr3[r4] & 4294967295L);
            iArr3[i4 + 3] = (int) j12;
            long j13 = (j12 >>> 32) + j6 + (iArr3[r12] & 4294967295L);
            iArr3[i4 + 4] = (int) j13;
            j6 = j13 >>> 32;
            i5++;
            i4 = i6;
            j2 = j2;
            j = 4294967295L;
            j3 = j9;
            j4 = j4;
        }
        return (int) j6;
    }

    public static int d(int[] iArr, int[] iArr2) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[3] & 4294967295L) - (4294967295L & iArr[3]));
        iArr2[3] = (int) j4;
        return (int) (j4 >> 32);
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m2520default(long[] jArr) {
        for (int i = 0; i < 2; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m2521do(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j4;
        return (int) (j4 >>> 32);
    }

    public static BigInteger e(int[] iArr) {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 4; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                ib1.m3348case(i2, bArr, (3 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m2522else(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m2523extends(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr[i + 0] & 4294967295L;
        long j6 = (j5 * j) + 0;
        iArr3[i3 + 0] = (int) j6;
        long j7 = (j6 >>> 32) + (j5 * j2);
        iArr3[i3 + 1] = (int) j7;
        long j8 = (j7 >>> 32) + (j5 * j3);
        iArr3[i3 + 2] = (int) j8;
        long j9 = (j8 >>> 32) + (j5 * j4);
        iArr3[i3 + 3] = (int) j9;
        iArr3[i3 + 4] = (int) (j9 >>> 32);
        int i4 = 1;
        int i5 = i3;
        int i6 = 1;
        while (i6 < 4) {
            i5 += i4;
            long j10 = iArr[i + i6] & 4294967295L;
            long j11 = j;
            long j12 = (j10 * j) + (iArr3[r13] & 4294967295L) + 0;
            iArr3[i5 + 0] = (int) j12;
            long j13 = (j12 >>> 32) + (j10 * j2) + (iArr3[r17] & 4294967295L);
            iArr3[i5 + 1] = (int) j13;
            long j14 = j2;
            long j15 = (j13 >>> 32) + (j10 * j3) + (iArr3[r15] & 4294967295L);
            iArr3[i5 + 2] = (int) j15;
            long j16 = (j15 >>> 32) + (j10 * j4) + (iArr3[r4] & 4294967295L);
            iArr3[i5 + 3] = (int) j16;
            iArr3[i5 + 4] = (int) (j16 >>> 32);
            i6++;
            j2 = j14;
            j = j11;
            i4 = 1;
        }
    }

    public static BigInteger f(long[] jArr) {
        byte[] bArr = new byte[16];
        for (int i = 0; i < 2; i++) {
            long j = jArr[i];
            if (j != 0) {
                ib1.m3369static(j, bArr, (1 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m2524final(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean zM2538public = m2538public(iArr, i, iArr2, i2);
        if (zM2538public) {
            m2544synchronized(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            m2544synchronized(iArr2, i2, iArr, i, iArr3, i3);
        }
        return zM2538public;
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m2525finally(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        int i = 1;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr[0] & 4294967295L;
        long j6 = (j5 * j) + 0;
        iArr3[0] = (int) j6;
        long j7 = (j6 >>> 32) + (j5 * j2);
        iArr3[1] = (int) j7;
        long j8 = (j7 >>> 32) + (j5 * j3);
        iArr3[2] = (int) j8;
        long j9 = (j8 >>> 32) + (j5 * j4);
        iArr3[3] = (int) j9;
        int i2 = (int) (j9 >>> 32);
        iArr3[4] = i2;
        for (int i3 = 4; i < i3; i3 = 4) {
            long j10 = iArr[i] & 4294967295L;
            long j11 = (j10 * j) + (iArr3[r4] & 4294967295L) + 0;
            iArr3[i + 0] = (int) j11;
            int i4 = i + 1;
            long j12 = (j11 >>> 32) + (j10 * j2) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j12;
            long j13 = (j12 >>> 32) + (j10 * j3) + (iArr3[r3] & 4294967295L);
            iArr3[i + 2] = (int) j13;
            long j14 = (j13 >>> 32) + (j10 * j4) + (iArr3[r3] & 4294967295L);
            iArr3[i + 3] = (int) j14;
            iArr3[i + 4] = (int) (j14 >>> 32);
            i = i4;
            j = j;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m2526for(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = (i3 & 4294967295L) + (iArr[i + 0] & 4294967295L) + (iArr2[r13] & 4294967295L);
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (4294967295L & iArr2[r12]);
        iArr2[i2 + 3] = (int) j4;
        return (int) (j4 >>> 32);
    }

    public static void g(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m2527goto(long[] jArr, int i, long[] jArr2, int i2) {
        jArr2[i2 + 0] = jArr[i + 0];
        jArr2[i2 + 1] = jArr[i + 1];
    }

    /* renamed from: if, reason: not valid java name */
    public static int m2528if(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L);
        iArr3[3] = (int) j4;
        return (int) (j4 >>> 32);
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m2529implements(int[] iArr, int i, int[] iArr2, int i2) {
        long j = iArr[i + 0] & 4294967295L;
        int i3 = 0;
        int i4 = 8;
        int i5 = 3;
        while (true) {
            int i6 = i5 - 1;
            long j2 = iArr[i + i5] & 4294967295L;
            long j3 = j2 * j2;
            int i7 = i4 - 1;
            iArr2[i2 + i7] = (i3 << 31) | ((int) (j3 >>> 33));
            i4 = i7 - 1;
            iArr2[i2 + i4] = (int) (j3 >>> 1);
            i3 = (int) j3;
            if (i6 <= 0) {
                long j4 = j * j;
                iArr2[i2 + 0] = (int) j4;
                long j5 = iArr[i + 1] & 4294967295L;
                long j6 = (((i3 << 31) & 4294967295L) | (j4 >>> 33)) + (j5 * j);
                int i8 = (int) j6;
                iArr2[i2 + 1] = (i8 << 1) | (((int) (j4 >>> 32)) & 1);
                int i9 = i8 >>> 31;
                long j7 = (iArr2[r9] & 4294967295L) + (j6 >>> 32);
                long j8 = iArr[i + 2] & 4294967295L;
                long j9 = j7 + (j8 * j);
                int i10 = (int) j9;
                iArr2[i2 + 2] = (i10 << 1) | i9;
                int i11 = i10 >>> 31;
                long j10 = (iArr2[r15] & 4294967295L) + (j9 >>> 32) + (j8 * j5);
                long j11 = (iArr2[r7] & 4294967295L) + (j10 >>> 32);
                long j12 = iArr[i + 3] & 4294967295L;
                long j13 = (iArr2[r6] & 4294967295L) + (j11 >>> 32);
                long j14 = (iArr2[r22] & 4294967295L) + (j13 >>> 32);
                long j15 = 4294967295L & j13;
                long j16 = (j10 & 4294967295L) + (j * j12);
                int i12 = (int) j16;
                iArr2[i2 + 3] = (i12 << 1) | i11;
                long j17 = (j11 & 4294967295L) + (j16 >>> 32) + (j12 * j5);
                long j18 = j15 + (j17 >>> 32) + (j12 * j8);
                long j19 = j14 + (j18 >>> 32);
                int i13 = (int) j17;
                iArr2[i2 + 4] = (i12 >>> 31) | (i13 << 1);
                int i14 = i13 >>> 31;
                int i15 = (int) j18;
                iArr2[i2 + 5] = i14 | (i15 << 1);
                int i16 = i15 >>> 31;
                int i17 = (int) j19;
                iArr2[i2 + 6] = i16 | (i17 << 1);
                int i18 = i17 >>> 31;
                int i19 = i2 + 7;
                iArr2[i19] = i18 | ((iArr2[i19] + ((int) (j19 >>> 32))) << 1);
                return;
            }
            i5 = i6;
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static long[] m2530import(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            throw new IllegalArgumentException();
        }
        long[] jArrM2516catch = m2516catch();
        int i = 0;
        while (bigInteger.signum() != 0) {
            jArrM2516catch[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i++;
        }
        return jArrM2516catch;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m2531instanceof(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 8;
        int i2 = 3;
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            long j2 = iArr[i2] & 4294967295L;
            long j3 = j2 * j2;
            int i5 = i - 1;
            iArr2[i5] = (i3 << 31) | ((int) (j3 >>> 33));
            i = i5 - 1;
            iArr2[i] = (int) (j3 >>> 1);
            int i6 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                iArr2[0] = (int) j4;
                long j5 = iArr[1] & 4294967295L;
                long j6 = (((i6 << 31) & 4294967295L) | (j4 >>> 33)) + (j5 * j);
                int i7 = (int) j6;
                iArr2[1] = (i7 << 1) | (((int) (j4 >>> 32)) & 1);
                int i8 = i7 >>> 31;
                long j7 = (iArr2[2] & 4294967295L) + (j6 >>> 32);
                long j8 = iArr[2] & 4294967295L;
                long j9 = j7 + (j8 * j);
                int i9 = (int) j9;
                iArr2[2] = (i9 << 1) | i8;
                long j10 = (iArr2[3] & 4294967295L) + (j9 >>> 32) + (j8 * j5);
                long j11 = (iArr2[4] & 4294967295L) + (j10 >>> 32);
                long j12 = iArr[3] & 4294967295L;
                long j13 = (iArr2[5] & 4294967295L) + (j11 >>> 32);
                long j14 = (iArr2[6] & 4294967295L) + (j13 >>> 32);
                long j15 = (j10 & 4294967295L) + (j * j12);
                int i10 = (int) j15;
                iArr2[3] = (i10 << 1) | (i9 >>> 31);
                long j16 = (j11 & 4294967295L) + (j15 >>> 32) + (j5 * j12);
                long j17 = (j13 & 4294967295L) + (j16 >>> 32) + (j12 * j8);
                long j18 = j14 + (j17 >>> 32);
                int i11 = (int) j16;
                iArr2[4] = (i10 >>> 31) | (i11 << 1);
                int i12 = i11 >>> 31;
                int i13 = (int) (4294967295L & j17);
                iArr2[5] = i12 | (i13 << 1);
                int i14 = i13 >>> 31;
                int i15 = (int) j18;
                iArr2[6] = i14 | (i15 << 1);
                iArr2[7] = ((iArr2[7] + ((int) (j18 >>> 32))) << 1) | (i15 >>> 31);
                return;
            }
            i2 = i4;
            i3 = i6;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m2532interface(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = i & 4294967295L;
        long j2 = ((iArr[i2 + 0] & 4294967295L) * j) + (iArr2[r11] & 4294967295L) + 0;
        iArr2[i3 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + ((iArr[i2 + 1] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 1] = (int) j3;
        long j4 = (j3 >>> 32) + ((iArr[i2 + 2] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 2] = (int) j4;
        long j5 = (j4 >>> 32) + (j * (iArr[i2 + 3] & 4294967295L)) + (iArr2[r15] & 4294967295L);
        iArr2[i3 + 3] = (int) j5;
        return (int) (j5 >>> 32);
    }

    /* renamed from: native, reason: not valid java name */
    public static int m2533native(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            int i3 = i >> 5;
            if (i3 < 0 || i3 >= 4) {
                return 0;
            }
            i2 = iArr[i3] >>> (i & 31);
        }
        return i2 & 1;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m2534new(int[] iArr, int[] iArr2) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (4294967295L & iArr2[3]);
        iArr2[3] = (int) j4;
        return (int) (j4 >>> 32);
    }

    /* renamed from: package, reason: not valid java name */
    public static long m2535package(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = i & 4294967295L;
        long j2 = iArr[i2 + 0] & 4294967295L;
        long j3 = (j * j2) + (iArr2[i3 + 0] & 4294967295L) + 0;
        iArr3[i4 + 0] = (int) j3;
        long j4 = iArr[i2 + 1] & 4294967295L;
        long j5 = (j3 >>> 32) + (j * j4) + j2 + (iArr2[i3 + 1] & 4294967295L);
        iArr3[i4 + 1] = (int) j5;
        long j6 = j5 >>> 32;
        long j7 = iArr[i2 + 2] & 4294967295L;
        long j8 = j6 + (j * j7) + j4 + (iArr2[i3 + 2] & 4294967295L);
        iArr3[i4 + 2] = (int) j8;
        long j9 = iArr[i2 + 3] & 4294967295L;
        long j10 = (j8 >>> 32) + (j * j9) + j7 + (4294967295L & iArr2[i3 + 3]);
        iArr3[i4 + 3] = (int) j10;
        return (j10 >>> 32) + j9;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m2536private(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = j & 4294967295L;
        long j4 = (j2 * j3) + (iArr[r10] & 4294967295L) + 0;
        iArr[i2 + 0] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j2 * j5) + j3;
        long j7 = (j4 >>> 32) + j6 + (iArr[r4] & 4294967295L);
        iArr[i2 + 1] = (int) j7;
        long j8 = (j7 >>> 32) + j5 + (iArr[r4] & 4294967295L);
        iArr[i2 + 2] = (int) j8;
        long j9 = (j8 >>> 32) + (iArr[r14] & 4294967295L);
        iArr[i2 + 3] = (int) j9;
        return (int) (j9 >>> 32);
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m2537protected(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = ((j & 4294967295L) * j2) + (iArr[r10] & 4294967295L) + 0;
        iArr[i2 + 0] = (int) j3;
        long j4 = j2 * (j >>> 32);
        long j5 = (j3 >>> 32) + j4 + (iArr[r11] & 4294967295L);
        iArr[i2 + 1] = (int) j5;
        long j6 = (j5 >>> 32) + (4294967295L & iArr[r0]);
        iArr[i2 + 2] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return q21.m6337implements(4, iArr, i2, 3);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m2538public(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 3; i3 >= 0; i3--) {
            int i4 = iArr[i + i3] ^ Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE ^ iArr2[i2 + i3];
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m2539return(int[] iArr, int[] iArr2) {
        for (int i = 3; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = Integer.MIN_VALUE ^ iArr2[i];
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m2540static(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m2541strictfp(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = 0;
        long j = 4294967295L;
        long j2 = iArr2[0] & 4294967295L;
        long j3 = iArr2[1] & 4294967295L;
        long j4 = iArr2[2] & 4294967295L;
        long j5 = iArr2[3] & 4294967295L;
        long j6 = 0;
        while (i < 4) {
            long j7 = iArr[i] & j;
            long j8 = (j7 * j2) + (iArr3[r15] & j) + 0;
            iArr3[i + 0] = (int) j8;
            int i2 = i + 1;
            long j9 = (j8 >>> 32) + (j7 * j3) + (iArr3[i2] & 4294967295L);
            iArr3[i2] = (int) j9;
            long j10 = (j9 >>> 32) + (j7 * j4) + (iArr3[r17] & 4294967295L);
            iArr3[i + 2] = (int) j10;
            long j11 = (j10 >>> 32) + (j7 * j5) + (iArr3[r4] & 4294967295L);
            iArr3[i + 3] = (int) j11;
            long j12 = (j11 >>> 32) + j6 + (iArr3[r0] & 4294967295L);
            iArr3[i + 4] = (int) j12;
            j6 = j12 >>> 32;
            i = i2;
            j = 4294967295L;
            j2 = j2;
            j3 = j3;
        }
        return (int) j6;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m2542super(int[] iArr, int[] iArr2) {
        for (int i = 3; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m2543switch(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 2; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static int m2544synchronized(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((iArr[i + 0] & 4294967295L) - (iArr2[i2 + 0] & 4294967295L)) + 0;
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((iArr[i + 1] & 4294967295L) - (iArr2[i2 + 1] & 4294967295L));
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[i + 2] & 4294967295L) - (iArr2[i2 + 2] & 4294967295L));
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[i + 3] & 4294967295L) - (iArr2[i2 + 3] & 4294967295L));
        iArr3[i3 + 3] = (int) j4;
        return (int) (j4 >> 32);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m2545this(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m2546throw(long[] jArr, long[] jArr2) {
        for (int i = 1; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m2547throws(int[] iArr) {
        for (int i = 0; i < 4; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m2548transient(int i, int i2, int[] iArr, int i3) {
        long j = ((i2 & 4294967295L) * (i & 4294967295L)) + (iArr[r0] & 4294967295L) + 0;
        iArr[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (4294967295L & iArr[r1]);
        iArr[i3 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return q21.m6337implements(4, iArr, i3, 2);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m2549try(int[] iArr, int i, int[] iArr2, int i2) {
        long j = (iArr[r0] & 4294967295L) + (iArr2[r5] & 4294967295L) + 0;
        int i3 = (int) j;
        iArr[i + 0] = i3;
        iArr2[i2 + 0] = i3;
        long j2 = (j >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i4 = (int) j2;
        iArr[i + 1] = i4;
        iArr2[i2 + 1] = i4;
        long j3 = (j2 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i5 = (int) j3;
        iArr[i + 2] = i5;
        iArr2[i2 + 2] = i5;
        long j4 = (j3 >>> 32) + (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]);
        int i6 = (int) j4;
        iArr[i + 3] = i6;
        iArr2[i2 + 3] = i6;
        return (int) (j4 >>> 32);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int m2550volatile(int i, int[] iArr, int[] iArr2, int i2) {
        long j = i & 4294967295L;
        long j2 = 0;
        int i3 = 0;
        do {
            long j3 = j2 + ((iArr[i3] & 4294967295L) * j);
            iArr2[i2 + i3] = (int) j3;
            j2 = j3 >>> 32;
            i3++;
        } while (i3 < 4);
        return (int) j2;
    }

    /* renamed from: while, reason: not valid java name */
    public static int[] m2551while(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            throw new IllegalArgumentException();
        }
        int[] iArrM2514break = m2514break();
        int i = 0;
        while (bigInteger.signum() != 0) {
            iArrM2514break[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i++;
        }
        return iArrM2514break;
    }
}
