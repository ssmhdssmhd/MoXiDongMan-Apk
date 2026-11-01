package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public abstract class k21 {

    /* renamed from: do, reason: not valid java name */
    private static final long f3254do = 4294967295L;

    public static void a(int[] iArr, int i, int[] iArr2, int i2) {
        long j = iArr[i + 0] & 4294967295L;
        int i3 = 0;
        int i4 = 16;
        int i5 = 7;
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
                long j14 = (iArr2[r24] & 4294967295L) + (j13 >>> 32);
                long j15 = (j10 & 4294967295L) + (j12 * j);
                int i12 = (int) j15;
                iArr2[i2 + 3] = (i12 << 1) | i11;
                long j16 = (j11 & 4294967295L) + (j15 >>> 32) + (j12 * j5);
                long j17 = (j13 & 4294967295L) + (j16 >>> 32) + (j12 * j8);
                long j18 = j14 + (j17 >>> 32);
                long j19 = j17 & 4294967295L;
                long j20 = iArr[i + 4] & 4294967295L;
                long j21 = (iArr2[r3] & 4294967295L) + (j18 >>> 32);
                long j22 = j18 & 4294967295L;
                long j23 = (iArr2[r22] & 4294967295L) + (j21 >>> 32);
                long j24 = (j16 & 4294967295L) + (j20 * j);
                int i13 = (int) j24;
                iArr2[i2 + 4] = (i12 >>> 31) | (i13 << 1);
                int i14 = i13 >>> 31;
                long j25 = j19 + (j24 >>> 32) + (j20 * j5);
                long j26 = j22 + (j25 >>> 32) + (j20 * j8);
                long j27 = (j21 & 4294967295L) + (j26 >>> 32) + (j20 * j12);
                long j28 = j23 + (j27 >>> 32);
                long j29 = j27 & 4294967295L;
                long j30 = iArr[i + 5] & 4294967295L;
                long j31 = (iArr2[r3] & 4294967295L) + (j28 >>> 32);
                long j32 = j28 & 4294967295L;
                long j33 = (iArr2[r25] & 4294967295L) + (j31 >>> 32);
                long j34 = (j25 & 4294967295L) + (j30 * j);
                int i15 = (int) j34;
                iArr2[i2 + 5] = i14 | (i15 << 1);
                int i16 = i15 >>> 31;
                long j35 = (j26 & 4294967295L) + (j34 >>> 32) + (j30 * j5);
                long j36 = j29 + (j35 >>> 32) + (j30 * j8);
                long j37 = j32 + (j36 >>> 32) + (j30 * j12);
                long j38 = (j31 & 4294967295L) + (j37 >>> 32) + (j30 * j20);
                long j39 = j37 & 4294967295L;
                long j40 = j33 + (j38 >>> 32);
                long j41 = j38 & 4294967295L;
                long j42 = iArr[i + 6] & 4294967295L;
                long j43 = (iArr2[r3] & 4294967295L) + (j40 >>> 32);
                long j44 = j40 & 4294967295L;
                long j45 = (iArr2[r26] & 4294967295L) + (j43 >>> 32);
                long j46 = (j35 & 4294967295L) + (j42 * j);
                int i17 = (int) j46;
                iArr2[i2 + 6] = i16 | (i17 << 1);
                int i18 = i17 >>> 31;
                long j47 = (j36 & 4294967295L) + (j46 >>> 32) + (j42 * j5);
                long j48 = j39 + (j47 >>> 32) + (j42 * j8);
                long j49 = j41 + (j48 >>> 32) + (j42 * j12);
                long j50 = j48 & 4294967295L;
                long j51 = j44 + (j49 >>> 32) + (j42 * j20);
                long j52 = (j43 & 4294967295L) + (j51 >>> 32) + (j42 * j30);
                long j53 = j45 + (j52 >>> 32);
                long j54 = j52 & 4294967295L;
                long j55 = iArr[i + 7] & 4294967295L;
                long j56 = (iArr2[r3] & 4294967295L) + (j53 >>> 32);
                long j57 = j53 & 4294967295L;
                long j58 = (iArr2[r42] & 4294967295L) + (j56 >>> 32);
                long j59 = (j47 & 4294967295L) + (j * j55);
                int i19 = (int) j59;
                iArr2[i2 + 7] = (i19 << 1) | i18;
                long j60 = j50 + (j59 >>> 32) + (j55 * j5);
                long j61 = (j49 & 4294967295L) + (j60 >>> 32) + (j55 * j8);
                long j62 = (j51 & 4294967295L) + (j61 >>> 32) + (j55 * j12);
                long j63 = j54 + (j62 >>> 32) + (j55 * j20);
                long j64 = j57 + (j63 >>> 32) + (j55 * j30);
                long j65 = (j56 & 4294967295L) + (j64 >>> 32) + (j55 * j42);
                long j66 = j58 + (j65 >>> 32);
                int i20 = (int) j60;
                iArr2[i2 + 8] = (i19 >>> 31) | (i20 << 1);
                int i21 = (int) j61;
                iArr2[i2 + 9] = (i20 >>> 31) | (i21 << 1);
                int i22 = i21 >>> 31;
                int i23 = (int) j62;
                iArr2[i2 + 10] = i22 | (i23 << 1);
                int i24 = (int) j63;
                iArr2[i2 + 11] = (i23 >>> 31) | (i24 << 1);
                int i25 = (int) j64;
                iArr2[i2 + 12] = (i24 >>> 31) | (i25 << 1);
                int i26 = i25 >>> 31;
                int i27 = (int) j65;
                iArr2[i2 + 13] = i26 | (i27 << 1);
                int i28 = i27 >>> 31;
                int i29 = (int) j66;
                iArr2[i2 + 14] = i28 | (i29 << 1);
                int i30 = i29 >>> 31;
                int i31 = i2 + 15;
                iArr2[i31] = i30 | ((iArr2[i31] + ((int) (j66 >>> 32))) << 1);
                return;
            }
            i5 = i6;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static long m4176abstract(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
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
        long j10 = (j8 >>> 32) + (j * j9) + j7 + (iArr2[i3 + 3] & 4294967295L);
        iArr3[i4 + 3] = (int) j10;
        long j11 = iArr[i2 + 4] & 4294967295L;
        long j12 = (j10 >>> 32) + (j * j11) + j9 + (iArr2[i3 + 4] & 4294967295L);
        iArr3[i4 + 4] = (int) j12;
        long j13 = iArr[i2 + 5] & 4294967295L;
        long j14 = (j12 >>> 32) + (j * j13) + j11 + (iArr2[i3 + 5] & 4294967295L);
        iArr3[i4 + 5] = (int) j14;
        long j15 = iArr[i2 + 6] & 4294967295L;
        long j16 = (j14 >>> 32) + (j * j15) + j13 + (iArr2[i3 + 6] & 4294967295L);
        iArr3[i4 + 6] = (int) j16;
        long j17 = iArr[i2 + 7] & 4294967295L;
        long j18 = (j16 >>> 32) + (j * j17) + j15 + (4294967295L & iArr2[i3 + 7]);
        iArr3[i4 + 7] = (int) j18;
        return (j18 >>> 32) + j17;
    }

    public static void b(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 16;
        int i2 = 7;
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
                long j14 = j11 & 4294967295L;
                long j15 = (iArr2[6] & 4294967295L) + (j13 >>> 32);
                long j16 = (j10 & 4294967295L) + (j12 * j);
                int i10 = (int) j16;
                iArr2[3] = (i10 << 1) | (i9 >>> 31);
                int i11 = i10 >>> 31;
                long j17 = j14 + (j16 >>> 32) + (j12 * j5);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j12 * j8);
                long j19 = j15 + (j18 >>> 32);
                long j20 = iArr[4] & 4294967295L;
                long j21 = (iArr2[7] & 4294967295L) + (j19 >>> 32);
                long j22 = j19 & 4294967295L;
                long j23 = (iArr2[8] & 4294967295L) + (j21 >>> 32);
                long j24 = (j17 & 4294967295L) + (j20 * j);
                int i12 = (int) j24;
                iArr2[4] = (i12 << 1) | i11;
                long j25 = (j18 & 4294967295L) + (j24 >>> 32) + (j20 * j5);
                long j26 = j22 + (j25 >>> 32) + (j20 * j8);
                long j27 = (j21 & 4294967295L) + (j26 >>> 32) + (j20 * j12);
                long j28 = j23 + (j27 >>> 32);
                long j29 = j27 & 4294967295L;
                long j30 = iArr[5] & 4294967295L;
                long j31 = (iArr2[9] & 4294967295L) + (j28 >>> 32);
                long j32 = j28 & 4294967295L;
                long j33 = (iArr2[10] & 4294967295L) + (j31 >>> 32);
                long j34 = (j25 & 4294967295L) + (j30 * j);
                int i13 = (int) j34;
                iArr2[5] = (i13 << 1) | (i12 >>> 31);
                long j35 = (j26 & 4294967295L) + (j34 >>> 32) + (j30 * j5);
                long j36 = j29 + (j35 >>> 32) + (j30 * j8);
                long j37 = j32 + (j36 >>> 32) + (j30 * j12);
                long j38 = (j31 & 4294967295L) + (j37 >>> 32) + (j30 * j20);
                long j39 = j33 + (j38 >>> 32);
                long j40 = j38 & 4294967295L;
                long j41 = iArr[6] & 4294967295L;
                long j42 = (iArr2[11] & 4294967295L) + (j39 >>> 32);
                long j43 = j39 & 4294967295L;
                long j44 = (iArr2[12] & 4294967295L) + (j42 >>> 32);
                long j45 = (j35 & 4294967295L) + (j41 * j);
                int i14 = (int) j45;
                iArr2[6] = (i14 << 1) | (i13 >>> 31);
                long j46 = (j36 & 4294967295L) + (j45 >>> 32) + (j41 * j5);
                long j47 = (j37 & 4294967295L) + (j46 >>> 32) + (j41 * j8);
                long j48 = j46 & 4294967295L;
                long j49 = j40 + (j47 >>> 32) + (j41 * j12);
                long j50 = j43 + (j49 >>> 32) + (j41 * j20);
                long j51 = (j42 & 4294967295L) + (j50 >>> 32) + (j41 * j30);
                long j52 = j44 + (j51 >>> 32);
                long j53 = j51 & 4294967295L;
                long j54 = iArr[7] & 4294967295L;
                long j55 = (iArr2[13] & 4294967295L) + (j52 >>> 32);
                long j56 = j52 & 4294967295L;
                long j57 = (iArr2[14] & 4294967295L) + (j55 >>> 32);
                long j58 = 4294967295L & j55;
                long j59 = j48 + (j * j54);
                int i15 = (int) j59;
                iArr2[7] = (i14 >>> 31) | (i15 << 1);
                int i16 = i15 >>> 31;
                long j60 = (j47 & 4294967295L) + (j59 >>> 32) + (j54 * j5);
                long j61 = (j49 & 4294967295L) + (j60 >>> 32) + (j54 * j8);
                long j62 = (j50 & 4294967295L) + (j61 >>> 32) + (j54 * j12);
                long j63 = j53 + (j62 >>> 32) + (j54 * j20);
                long j64 = j56 + (j63 >>> 32) + (j54 * j30);
                long j65 = j58 + (j64 >>> 32) + (j54 * j41);
                long j66 = j57 + (j65 >>> 32);
                int i17 = (int) j60;
                iArr2[8] = i16 | (i17 << 1);
                int i18 = (int) j61;
                iArr2[9] = (i17 >>> 31) | (i18 << 1);
                int i19 = i18 >>> 31;
                int i20 = (int) j62;
                iArr2[10] = i19 | (i20 << 1);
                int i21 = (int) j63;
                iArr2[11] = (i20 >>> 31) | (i21 << 1);
                int i22 = (int) j64;
                iArr2[12] = (i21 >>> 31) | (i22 << 1);
                int i23 = i22 >>> 31;
                int i24 = (int) j65;
                iArr2[13] = i23 | (i24 << 1);
                int i25 = i24 >>> 31;
                int i26 = (int) j66;
                iArr2[14] = i25 | (i26 << 1);
                iArr2[15] = (i26 >>> 31) | ((iArr2[15] + ((int) (j66 >>> 32))) << 1);
                return;
            }
            i2 = i4;
            i3 = i6;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m4177break(long[] jArr, int i, long[] jArr2, int i2) {
        jArr2[i2 + 0] = jArr[i + 0];
        jArr2[i2 + 1] = jArr[i + 1];
        jArr2[i2 + 2] = jArr[i + 2];
        jArr2[i2 + 3] = jArr[i + 3];
    }

    public static int c(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((iArr[i + 0] & 4294967295L) - (iArr2[i2 + 0] & 4294967295L)) + 0;
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((iArr[i + 1] & 4294967295L) - (iArr2[i2 + 1] & 4294967295L));
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[i + 2] & 4294967295L) - (iArr2[i2 + 2] & 4294967295L));
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[i + 3] & 4294967295L) - (iArr2[i2 + 3] & 4294967295L));
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr[i + 4] & 4294967295L) - (iArr2[i2 + 4] & 4294967295L));
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr[i + 5] & 4294967295L) - (iArr2[i2 + 5] & 4294967295L));
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr[i + 6] & 4294967295L) - (iArr2[i2 + 6] & 4294967295L));
        iArr3[i3 + 6] = (int) j7;
        long j8 = (j7 >> 32) + ((iArr[i + 7] & 4294967295L) - (iArr2[i2 + 7] & 4294967295L));
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >> 32);
    }

    /* renamed from: case, reason: not valid java name */
    public static int m4178case(int[] iArr, int[] iArr2) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr2[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr2[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr2[6] = (int) j7;
        long j8 = (j7 >>> 32) + (iArr[7] & 4294967295L) + (4294967295L & iArr2[7]);
        iArr2[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m4179catch(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    /* renamed from: class, reason: not valid java name */
    public static int[] m4180class() {
        return new int[8];
    }

    /* renamed from: const, reason: not valid java name */
    public static long[] m4181const() {
        return new long[4];
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m4182continue(int i, long j, int[] iArr, int i2) {
        long j2 = i & 4294967295L;
        long j3 = j & 4294967295L;
        long j4 = (j2 * j3) + (iArr[r1] & 4294967295L) + 0;
        iArr[i2 + 0] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j2 * j5) + j3;
        long j7 = (j4 >>> 32) + j6 + (iArr[r7] & 4294967295L);
        iArr[i2 + 1] = (int) j7;
        long j8 = (j7 >>> 32) + j5 + (iArr[r7] & 4294967295L);
        iArr[i2 + 2] = (int) j8;
        long j9 = (j8 >>> 32) + (4294967295L & iArr[r7]);
        iArr[i2 + 3] = (int) j9;
        if ((j9 >>> 32) == 0) {
            return 0;
        }
        return q21.m6337implements(8, iArr, i2, 4);
    }

    public static int d(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((iArr[0] & 4294967295L) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((iArr[1] & 4294967295L) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr[2] & 4294967295L) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr[3] & 4294967295L) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr[4] & 4294967295L) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr[5] & 4294967295L) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr[6] & 4294967295L) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j7;
        long j8 = (j7 >> 32) + ((iArr[7] & 4294967295L) - (iArr2[7] & 4294967295L));
        iArr3[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m4183default(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m4184do(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (iArr[i + 0] & 4294967295L) + (iArr2[i2 + 0] & 4294967295L) + 0;
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[i2 + 1] & 4294967295L);
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[i2 + 2] & 4294967295L);
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[i2 + 3] & 4294967295L);
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (iArr2[i2 + 4] & 4294967295L);
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[i + 5] & 4294967295L) + (iArr2[i2 + 5] & 4294967295L);
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[i + 6] & 4294967295L) + (iArr2[i2 + 6] & 4294967295L);
        iArr3[i3 + 6] = (int) j7;
        long j8 = (j7 >>> 32) + (iArr[i + 7] & 4294967295L) + (iArr2[i2 + 7] & 4294967295L);
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int e(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (((iArr3[0] & 4294967295L) - (iArr[0] & 4294967295L)) - (iArr2[0] & 4294967295L)) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + (((iArr3[1] & 4294967295L) - (iArr[1] & 4294967295L)) - (iArr2[1] & 4294967295L));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + (((iArr3[2] & 4294967295L) - (iArr[2] & 4294967295L)) - (iArr2[2] & 4294967295L));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + (((iArr3[3] & 4294967295L) - (iArr[3] & 4294967295L)) - (iArr2[3] & 4294967295L));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + (((iArr3[4] & 4294967295L) - (iArr[4] & 4294967295L)) - (iArr2[4] & 4294967295L));
        iArr3[4] = (int) j5;
        long j6 = (j5 >> 32) + (((iArr3[5] & 4294967295L) - (iArr[5] & 4294967295L)) - (iArr2[5] & 4294967295L));
        iArr3[5] = (int) j6;
        long j7 = (j6 >> 32) + (((iArr3[6] & 4294967295L) - (iArr[6] & 4294967295L)) - (iArr2[6] & 4294967295L));
        iArr3[6] = (int) j7;
        long j8 = (j7 >> 32) + (((iArr3[7] & 4294967295L) - (iArr[7] & 4294967295L)) - (iArr2[7] & 4294967295L));
        iArr3[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    /* renamed from: else, reason: not valid java name */
    public static int m4185else(int[] iArr, int i, int[] iArr2, int i2) {
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
        long j4 = (j3 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i6 = (int) j4;
        iArr[i + 3] = i6;
        iArr2[i2 + 3] = i6;
        long j5 = (j4 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i7 = (int) j5;
        iArr[i + 4] = i7;
        iArr2[i2 + 4] = i7;
        long j6 = (j5 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i8 = (int) j6;
        iArr[i + 5] = i8;
        iArr2[i2 + 5] = i8;
        long j7 = (j6 >>> 32) + (iArr[r5] & 4294967295L) + (iArr2[r8] & 4294967295L);
        int i9 = (int) j7;
        iArr[i + 6] = i9;
        iArr2[i2 + 6] = i9;
        long j8 = (j7 >>> 32) + (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]);
        int i10 = (int) j8;
        iArr[i + 7] = i10;
        iArr2[i2 + 7] = i10;
        return (int) (j8 >>> 32);
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m4186extends(int[] iArr) {
        for (int i = 0; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static int f(int[] iArr, int i, int[] iArr2, int i2) {
        long j = ((iArr2[r0] & 4294967295L) - (iArr[i + 0] & 4294967295L)) + 0;
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 1] & 4294967295L));
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 2] & 4294967295L));
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 3] & 4294967295L));
        iArr2[i2 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 4] & 4294967295L));
        iArr2[i2 + 4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 5] & 4294967295L));
        iArr2[i2 + 5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 6] & 4294967295L));
        iArr2[i2 + 6] = (int) j7;
        long j8 = (j7 >> 32) + ((iArr2[r13] & 4294967295L) - (iArr[i + 7] & 4294967295L));
        iArr2[i2 + 7] = (int) j8;
        return (int) (j8 >> 32);
    }

    /* renamed from: final, reason: not valid java name */
    public static int[] m4187final() {
        return new int[16];
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m4188finally(long[] jArr) {
        for (int i = 0; i < 4; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m4189for(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = (iArr[i + 0] & 4294967295L) + (iArr2[i2 + 0] & 4294967295L) + (iArr3[r4] & 4294967295L) + 0;
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[i2 + 1] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[i2 + 2] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[i2 + 3] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (iArr2[i2 + 4] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i3 + 4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[i + 5] & 4294967295L) + (iArr2[i2 + 5] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i3 + 5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[i + 6] & 4294967295L) + (iArr2[i2 + 6] & 4294967295L) + (iArr3[r7] & 4294967295L);
        iArr3[i3 + 6] = (int) j7;
        long j8 = (j7 >>> 32) + (iArr[i + 7] & 4294967295L) + (iArr2[i2 + 7] & 4294967295L) + (iArr3[r15] & 4294967295L);
        iArr3[i3 + 7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    public static int g(int[] iArr, int[] iArr2) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr2[4] & 4294967295L) - (iArr[4] & 4294967295L));
        iArr2[4] = (int) j5;
        long j6 = (j5 >> 32) + ((iArr2[5] & 4294967295L) - (iArr[5] & 4294967295L));
        iArr2[5] = (int) j6;
        long j7 = (j6 >> 32) + ((iArr2[6] & 4294967295L) - (iArr[6] & 4294967295L));
        iArr2[6] = (int) j7;
        long j8 = (j7 >> 32) + ((iArr2[7] & 4294967295L) - (4294967295L & iArr[7]));
        iArr2[7] = (int) j8;
        return (int) (j8 >> 32);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m4190goto(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2 + 0] = iArr[i + 0];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
        iArr2[i2 + 4] = iArr[i + 4];
        iArr2[i2 + 5] = iArr[i + 5];
        iArr2[i2 + 6] = iArr[i + 6];
        iArr2[i2 + 7] = iArr[i + 7];
    }

    public static BigInteger h(int[] iArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 8; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                ib1.m3348case(i2, bArr, (7 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger i(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int i = 0; i < 4; i++) {
            long j = jArr[i];
            if (j != 0) {
                ib1.m3369static(j, bArr, (3 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m4191if(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L);
        iArr3[6] = (int) j7;
        long j8 = (j7 >>> 32) + (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m4192implements(int i, int[] iArr, int[] iArr2, int i2) {
        long j = i & 4294967295L;
        long j2 = 0;
        int i3 = 0;
        do {
            long j3 = j2 + ((iArr[i3] & 4294967295L) * j);
            iArr2[i2 + i3] = (int) j3;
            j2 = j3 >>> 32;
            i3++;
        } while (i3 < 8);
        return (int) j2;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m4193import(long[] jArr, long[] jArr2) {
        for (int i = 3; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static int m4194instanceof(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = i & 4294967295L;
        long j2 = ((iArr[i2 + 0] & 4294967295L) * j) + (iArr2[r11] & 4294967295L) + 0;
        iArr2[i3 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + ((iArr[i2 + 1] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 1] = (int) j3;
        long j4 = (j3 >>> 32) + ((iArr[i2 + 2] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 2] = (int) j4;
        long j5 = (j4 >>> 32) + ((iArr[i2 + 3] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 3] = (int) j5;
        long j6 = (j5 >>> 32) + ((iArr[i2 + 4] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 4] = (int) j6;
        long j7 = (j6 >>> 32) + ((iArr[i2 + 5] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 5] = (int) j7;
        long j8 = (j7 >>> 32) + ((iArr[i2 + 6] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 6] = (int) j8;
        long j9 = (j8 >>> 32) + (j * (iArr[i2 + 7] & 4294967295L)) + (iArr2[r15] & 4294967295L);
        iArr2[i3 + 7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m4195interface(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 4294967295L;
        long j2 = iArr2[0] & 4294967295L;
        long j3 = iArr2[1] & 4294967295L;
        long j4 = iArr2[2] & 4294967295L;
        long j5 = iArr2[3] & 4294967295L;
        long j6 = iArr2[4] & 4294967295L;
        long j7 = iArr2[5] & 4294967295L;
        long j8 = iArr2[6] & 4294967295L;
        long j9 = iArr2[7] & 4294967295L;
        long j10 = 0;
        int i = 0;
        while (i < 8) {
            long j11 = j9;
            long j12 = iArr[i] & j;
            long j13 = j7;
            long j14 = (j12 * j2) + (iArr3[r27] & j) + 0;
            iArr3[i + 0] = (int) j14;
            int i2 = i + 1;
            long j15 = j3;
            long j16 = (j14 >>> 32) + (j12 * j3) + (iArr3[i2] & j);
            iArr3[i2] = (int) j16;
            long j17 = (j16 >>> 32) + (j12 * j4) + (iArr3[r6] & j);
            iArr3[i + 2] = (int) j17;
            long j18 = (j17 >>> 32) + (j12 * j5) + (iArr3[r6] & j);
            iArr3[i + 3] = (int) j18;
            long j19 = (j18 >>> 32) + (j12 * j6) + (iArr3[r6] & j);
            iArr3[i + 4] = (int) j19;
            long j20 = (j19 >>> 32) + (j12 * j13) + (iArr3[r6] & j);
            iArr3[i + 5] = (int) j20;
            long j21 = (j20 >>> 32) + (j12 * j8) + (iArr3[r6] & j);
            iArr3[i + 6] = (int) j21;
            long j22 = (j21 >>> 32) + (j12 * j11) + (iArr3[r6] & j);
            iArr3[i + 7] = (int) j22;
            long j23 = (j22 >>> 32) + j10 + (iArr3[r2] & j);
            iArr3[i + 8] = (int) j23;
            j10 = j23 >>> 32;
            i = i2;
            j9 = j11;
            j7 = j13;
            j3 = j15;
            j = 4294967295L;
        }
        return (int) j10;
    }

    public static void j(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
        iArr[5] = 0;
        iArr[6] = 0;
        iArr[7] = 0;
    }

    /* renamed from: native, reason: not valid java name */
    public static int[] m4196native(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] iArrM4180class = m4180class();
        int i = 0;
        while (bigInteger.signum() != 0) {
            iArrM4180class[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i++;
        }
        return iArrM4180class;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m4197new(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + (iArr3[0] & 4294967295L) + 0;
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L) + (iArr3[1] & 4294967295L);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L) + (iArr3[2] & 4294967295L);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L) + (iArr3[3] & 4294967295L);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (iArr2[4] & 4294967295L) + (iArr3[4] & 4294967295L);
        iArr3[4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[5] & 4294967295L) + (iArr2[5] & 4294967295L) + (iArr3[5] & 4294967295L);
        iArr3[5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[6] & 4294967295L) + (iArr2[6] & 4294967295L) + (iArr3[6] & 4294967295L);
        iArr3[6] = (int) j7;
        long j8 = (j7 >>> 32) + (iArr[7] & 4294967295L) + (iArr2[7] & 4294967295L) + (iArr3[7] & 4294967295L);
        iArr3[7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    /* renamed from: package, reason: not valid java name */
    public static void m4198package(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr2[i2 + 4] & 4294967295L;
        long j6 = iArr2[i2 + 5] & 4294967295L;
        long j7 = iArr2[i2 + 6] & 4294967295L;
        long j8 = iArr[i + 0] & 4294967295L;
        long j9 = (j8 * j) + 0;
        iArr3[i3 + 0] = (int) j9;
        long j10 = (j9 >>> 32) + (j8 * j2);
        iArr3[i3 + 1] = (int) j10;
        long j11 = (j10 >>> 32) + (j8 * j3);
        iArr3[i3 + 2] = (int) j11;
        long j12 = (j11 >>> 32) + (j8 * j4);
        iArr3[i3 + 3] = (int) j12;
        long j13 = (j12 >>> 32) + (j8 * j5);
        iArr3[i3 + 4] = (int) j13;
        long j14 = (j13 >>> 32) + (j8 * j6);
        iArr3[i3 + 5] = (int) j14;
        long j15 = (j14 >>> 32) + (j8 * j7);
        iArr3[i3 + 6] = (int) j15;
        long j16 = iArr2[i2 + 7] & 4294967295L;
        long j17 = (j15 >>> 32) + (j8 * j16);
        iArr3[i3 + 7] = (int) j17;
        iArr3[i3 + 8] = (int) (j17 >>> 32);
        int i4 = 1;
        int i5 = i3;
        int i6 = 1;
        while (i6 < 8) {
            i5 += i4;
            long j18 = iArr[i + i6] & 4294967295L;
            long j19 = (j18 * j) + (iArr3[r16] & 4294967295L) + 0;
            iArr3[i5 + 0] = (int) j19;
            long j20 = j16;
            long j21 = (j19 >>> 32) + (j18 * j2) + (iArr3[r16] & 4294967295L);
            iArr3[i5 + 1] = (int) j21;
            long j22 = j3;
            long j23 = (j21 >>> 32) + (j18 * j3) + (iArr3[r16] & 4294967295L);
            iArr3[i5 + 2] = (int) j23;
            long j24 = (j23 >>> 32) + (j18 * j4) + (iArr3[r6] & 4294967295L);
            iArr3[i5 + 3] = (int) j24;
            long j25 = (j24 >>> 32) + (j18 * j5) + (iArr3[r6] & 4294967295L);
            iArr3[i5 + 4] = (int) j25;
            long j26 = (j25 >>> 32) + (j18 * j6) + (iArr3[r6] & 4294967295L);
            iArr3[i5 + 5] = (int) j26;
            long j27 = (j26 >>> 32) + (j18 * j7) + (iArr3[r6] & 4294967295L);
            iArr3[i5 + 6] = (int) j27;
            long j28 = (j27 >>> 32) + (j18 * j20) + (iArr3[r4] & 4294967295L);
            iArr3[i5 + 7] = (int) j28;
            iArr3[i5 + 8] = (int) (j28 >>> 32);
            i6++;
            j3 = j22;
            j16 = j20;
            j4 = j4;
            i4 = 1;
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static void m4199private(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr2[5] & 4294967295L;
        long j7 = iArr2[6] & 4294967295L;
        long j8 = iArr2[7] & 4294967295L;
        long j9 = iArr[0] & 4294967295L;
        long j10 = (j9 * j) + 0;
        iArr3[0] = (int) j10;
        long j11 = (j10 >>> 32) + (j9 * j2);
        iArr3[1] = (int) j11;
        long j12 = (j11 >>> 32) + (j9 * j3);
        iArr3[2] = (int) j12;
        long j13 = (j12 >>> 32) + (j9 * j4);
        iArr3[3] = (int) j13;
        long j14 = (j13 >>> 32) + (j9 * j5);
        iArr3[4] = (int) j14;
        long j15 = (j14 >>> 32) + (j9 * j6);
        iArr3[5] = (int) j15;
        long j16 = (j15 >>> 32) + (j9 * j7);
        iArr3[6] = (int) j16;
        long j17 = (j16 >>> 32) + (j9 * j8);
        iArr3[7] = (int) j17;
        int i = (int) (j17 >>> 32);
        iArr3[8] = i;
        int i2 = 1;
        for (int i3 = 8; i2 < i3; i3 = 8) {
            long j18 = iArr[i2] & 4294967295L;
            long j19 = (j18 * j) + (iArr3[r4] & 4294967295L) + 0;
            iArr3[i2 + 0] = (int) j19;
            int i4 = i2 + 1;
            long j20 = j2;
            long j21 = (j19 >>> 32) + (j18 * j2) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j21;
            long j22 = j6;
            long j23 = (j21 >>> 32) + (j18 * j3) + (iArr3[r6] & 4294967295L);
            iArr3[i2 + 2] = (int) j23;
            long j24 = (j23 >>> 32) + (j18 * j4) + (iArr3[r6] & 4294967295L);
            iArr3[i2 + 3] = (int) j24;
            long j25 = (j24 >>> 32) + (j18 * j5) + (iArr3[r6] & 4294967295L);
            iArr3[i2 + 4] = (int) j25;
            long j26 = (j25 >>> 32) + (j18 * j22) + (iArr3[r3] & 4294967295L);
            iArr3[i2 + 5] = (int) j26;
            long j27 = (j26 >>> 32) + (j18 * j7) + (iArr3[r6] & 4294967295L);
            iArr3[i2 + 6] = (int) j27;
            long j28 = (j27 >>> 32) + (j18 * j8) + (iArr3[r3] & 4294967295L);
            iArr3[i2 + 7] = (int) j28;
            iArr3[i2 + 8] = (int) (j28 >>> 32);
            i2 = i4;
            j = j;
            j2 = j20;
            j6 = j22;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m4200protected(int i, int[] iArr) {
        long j = i & 4294967295L;
        long j2 = ((iArr[0] & 4294967295L) * j) + 0;
        iArr[0] = (int) j2;
        long j3 = (j2 >>> 32) + ((iArr[1] & 4294967295L) * j);
        iArr[1] = (int) j3;
        long j4 = (j3 >>> 32) + ((iArr[2] & 4294967295L) * j);
        iArr[2] = (int) j4;
        long j5 = (j4 >>> 32) + ((iArr[3] & 4294967295L) * j);
        iArr[3] = (int) j5;
        long j6 = (j5 >>> 32) + ((iArr[4] & 4294967295L) * j);
        iArr[4] = (int) j6;
        long j7 = (j6 >>> 32) + ((iArr[5] & 4294967295L) * j);
        iArr[5] = (int) j7;
        long j8 = (j7 >>> 32) + ((iArr[6] & 4294967295L) * j);
        iArr[6] = (int) j8;
        long j9 = (j8 >>> 32) + (j * (4294967295L & iArr[7]));
        iArr[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    /* renamed from: public, reason: not valid java name */
    public static long[] m4201public(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        long[] jArrM4181const = m4181const();
        int i = 0;
        while (bigInteger.signum() != 0) {
            jArrM4181const[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i++;
        }
        return jArrM4181const;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m4202return(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            if ((i & 255) != i) {
                return 0;
            }
            i2 = iArr[i >>> 5] >>> (i & 31);
        }
        return i2 & 1;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m4203static(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 7; i3 >= 0; i3--) {
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

    /* renamed from: strictfp, reason: not valid java name */
    public static int m4204strictfp(int i, int i2, int[] iArr, int i3) {
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
        return q21.m6337implements(8, iArr, i3, 3);
    }

    /* renamed from: super, reason: not valid java name */
    public static long[] m4205super() {
        return new long[8];
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m4206switch(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
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

    /* renamed from: synchronized, reason: not valid java name */
    public static int m4207synchronized(int i, long j, int[] iArr, int i2) {
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
        return q21.m6337implements(8, iArr, i2, 3);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m4208this(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
        iArr2[5] = iArr[5];
        iArr2[6] = iArr[6];
        iArr2[7] = iArr[7];
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m4209throw(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean zM4203static = m4203static(iArr, i, iArr2, i2);
        if (zM4203static) {
            c(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            c(iArr2, i2, iArr, i, iArr3, i3);
        }
        return zM4203static;
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m4210throws(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 8; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m4211transient(int i, int[] iArr, int[] iArr2) {
        long j = i & 4294967295L;
        long j2 = ((iArr2[0] & 4294967295L) * j) + (iArr[0] & 4294967295L) + 0;
        iArr2[0] = (int) j2;
        long j3 = (j2 >>> 32) + ((iArr2[1] & 4294967295L) * j) + (iArr[1] & 4294967295L);
        iArr2[1] = (int) j3;
        long j4 = (j3 >>> 32) + ((iArr2[2] & 4294967295L) * j) + (iArr[2] & 4294967295L);
        iArr2[2] = (int) j4;
        long j5 = (j4 >>> 32) + ((iArr2[3] & 4294967295L) * j) + (iArr[3] & 4294967295L);
        iArr2[3] = (int) j5;
        long j6 = (j5 >>> 32) + ((iArr2[4] & 4294967295L) * j) + (iArr[4] & 4294967295L);
        iArr2[4] = (int) j6;
        long j7 = (j6 >>> 32) + ((iArr2[5] & 4294967295L) * j) + (iArr[5] & 4294967295L);
        iArr2[5] = (int) j7;
        long j8 = (j7 >>> 32) + ((iArr2[6] & 4294967295L) * j) + (iArr[6] & 4294967295L);
        iArr2[6] = (int) j8;
        long j9 = (j8 >>> 32) + (j * (iArr2[7] & 4294967295L)) + (4294967295L & iArr[7]);
        iArr2[7] = (int) j9;
        return (int) (j9 >>> 32);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m4212try(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = (i3 & 4294967295L) + (iArr[i + 0] & 4294967295L) + (iArr2[r13] & 4294967295L);
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 4] = (int) j5;
        long j6 = (j5 >>> 32) + (iArr[i + 5] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 5] = (int) j6;
        long j7 = (j6 >>> 32) + (iArr[i + 6] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 6] = (int) j7;
        long j8 = (j7 >>> 32) + (iArr[i + 7] & 4294967295L) + (4294967295L & iArr2[r12]);
        iArr2[i2 + 7] = (int) j8;
        return (int) (j8 >>> 32);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int m4213volatile(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr2[i2 + 4] & 4294967295L;
        long j6 = iArr2[i2 + 5] & 4294967295L;
        long j7 = iArr2[i2 + 6] & 4294967295L;
        long j8 = iArr2[i2 + 7] & 4294967295L;
        int i4 = i3;
        long j9 = 0;
        int i5 = 0;
        while (i5 < 8) {
            int i6 = i5;
            long j10 = iArr[i + i5] & 4294967295L;
            long j11 = j;
            long j12 = (j10 * j) + (iArr3[r28] & 4294967295L) + 0;
            long j13 = j8;
            iArr3[i4 + 0] = (int) j12;
            int i7 = i4 + 1;
            long j14 = (j12 >>> 32) + (j10 * j2) + (iArr3[i7] & 4294967295L);
            iArr3[i7] = (int) j14;
            long j15 = (j14 >>> 32) + (j10 * j3) + (iArr3[r5] & 4294967295L);
            iArr3[i4 + 2] = (int) j15;
            long j16 = (j15 >>> 32) + (j10 * j4) + (iArr3[r5] & 4294967295L);
            iArr3[i4 + 3] = (int) j16;
            long j17 = (j16 >>> 32) + (j10 * j5) + (iArr3[r5] & 4294967295L);
            iArr3[i4 + 4] = (int) j17;
            long j18 = (j17 >>> 32) + (j10 * j6) + (iArr3[r5] & 4294967295L);
            iArr3[i4 + 5] = (int) j18;
            long j19 = (j18 >>> 32) + (j10 * j7) + (iArr3[r5] & 4294967295L);
            iArr3[i4 + 6] = (int) j19;
            long j20 = (j19 >>> 32) + (j10 * j13) + (iArr3[r5] & 4294967295L);
            iArr3[i4 + 7] = (int) j20;
            long j21 = (j20 >>> 32) + j9 + (iArr3[r16] & 4294967295L);
            iArr3[i4 + 8] = (int) j21;
            j9 = j21 >>> 32;
            i5 = i6 + 1;
            i4 = i7;
            j8 = j13;
            j = j11;
            j3 = j3;
            j2 = j2;
        }
        return (int) j9;
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m4214while(int[] iArr, int[] iArr2) {
        for (int i = 7; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
