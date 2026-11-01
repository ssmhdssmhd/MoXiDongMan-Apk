package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public abstract class h21 {

    /* renamed from: do, reason: not valid java name */
    private static final long f2305do = 4294967295L;

    /* renamed from: abstract, reason: not valid java name */
    public static void m2882abstract(int[] iArr, int[] iArr2) {
        long j = iArr[0] & 4294967295L;
        int i = 10;
        int i2 = 4;
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
                long j7 = (iArr2[2] & 4294967295L) + (j6 >>> 32);
                long j8 = iArr[2] & 4294967295L;
                long j9 = j7 + (j8 * j);
                int i8 = (int) j9;
                iArr2[2] = (i8 << 1) | (i7 >>> 31);
                long j10 = (iArr2[3] & 4294967295L) + (j9 >>> 32) + (j8 * j5);
                long j11 = (iArr2[4] & 4294967295L) + (j10 >>> 32);
                long j12 = iArr[3] & 4294967295L;
                long j13 = (iArr2[5] & 4294967295L) + (j11 >>> 32);
                long j14 = j11 & 4294967295L;
                long j15 = (iArr2[6] & 4294967295L) + (j13 >>> 32);
                long j16 = (j10 & 4294967295L) + (j12 * j);
                int i9 = (int) j16;
                iArr2[3] = (i9 << 1) | (i8 >>> 31);
                int i10 = i9 >>> 31;
                long j17 = j14 + (j16 >>> 32) + (j12 * j5);
                long j18 = (j13 & 4294967295L) + (j17 >>> 32) + (j12 * j8);
                long j19 = j15 + (j18 >>> 32);
                long j20 = iArr[4] & 4294967295L;
                long j21 = (iArr2[7] & 4294967295L) + (j19 >>> 32);
                long j22 = j19 & 4294967295L;
                long j23 = (iArr2[8] & 4294967295L) + (j21 >>> 32);
                long j24 = 4294967295L & j21;
                long j25 = (j17 & 4294967295L) + (j20 * j);
                int i11 = (int) j25;
                iArr2[4] = i10 | (i11 << 1);
                long j26 = (j18 & 4294967295L) + (j25 >>> 32) + (j5 * j20);
                long j27 = j22 + (j26 >>> 32) + (j20 * j8);
                long j28 = j24 + (j27 >>> 32) + (j20 * j12);
                long j29 = j23 + (j28 >>> 32);
                int i12 = (int) j26;
                iArr2[5] = (i11 >>> 31) | (i12 << 1);
                int i13 = (int) j27;
                iArr2[6] = (i13 << 1) | (i12 >>> 31);
                int i14 = i13 >>> 31;
                int i15 = (int) j28;
                iArr2[7] = i14 | (i15 << 1);
                int i16 = i15 >>> 31;
                int i17 = (int) j29;
                iArr2[8] = i16 | (i17 << 1);
                iArr2[9] = (i17 >>> 31) | ((iArr2[9] + ((int) (j29 >>> 32))) << 1);
                return;
            }
            i2 = i4;
            i3 = i6;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m2883break(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean zM2893final = m2893final(iArr, i, iArr2, i2);
        if (zM2893final) {
            m2888continue(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            m2888continue(iArr2, i2, iArr, i, iArr3, i3);
        }
        return zM2893final;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m2884case(int[] iArr, int i, int[] iArr2, int i2) {
        iArr2[i2 + 0] = iArr[i + 0];
        iArr2[i2 + 1] = iArr[i + 1];
        iArr2[i2 + 2] = iArr[i + 2];
        iArr2[i2 + 3] = iArr[i + 3];
        iArr2[i2 + 4] = iArr[i + 4];
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m2885catch(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    public static int[] m2886class(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] iArrM2896goto = m2896goto();
        int i = 0;
        while (bigInteger.signum() != 0) {
            iArrM2896goto[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i++;
        }
        return iArrM2896goto;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m2887const(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            int i3 = i >> 5;
            if (i3 < 0 || i3 >= 5) {
                return 0;
            }
            i2 = iArr[i3] >>> (i & 31);
        }
        return i2 & 1;
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m2888continue(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
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
        return (int) (j5 >> 32);
    }

    /* renamed from: default, reason: not valid java name */
    public static int m2889default(int i, int[] iArr, int[] iArr2, int i2) {
        long j = i & 4294967295L;
        long j2 = 0;
        int i3 = 0;
        do {
            long j3 = j2 + ((iArr[i3] & 4294967295L) * j);
            iArr2[i2 + i3] = (int) j3;
            j2 = j3 >>> 32;
            i3++;
        } while (i3 < 5);
        return (int) j2;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m2890do(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j5 >>> 32);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m2891else(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m2892extends(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = i & 4294967295L;
        long j2 = ((iArr[i2 + 0] & 4294967295L) * j) + (iArr2[r11] & 4294967295L) + 0;
        iArr2[i3 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + ((iArr[i2 + 1] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 1] = (int) j3;
        long j4 = (j3 >>> 32) + ((iArr[i2 + 2] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 2] = (int) j4;
        long j5 = (j4 >>> 32) + ((iArr[i2 + 3] & 4294967295L) * j) + (iArr2[r8] & 4294967295L);
        iArr2[i3 + 3] = (int) j5;
        long j6 = (j5 >>> 32) + (j * (iArr[i2 + 4] & 4294967295L)) + (iArr2[r15] & 4294967295L);
        iArr2[i3 + 4] = (int) j6;
        return (int) (j6 >>> 32);
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m2893final(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 4; i3 >= 0; i3--) {
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

    /* renamed from: finally, reason: not valid java name */
    public static int m2894finally(int i, long j, int[] iArr, int i2) {
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
        return q21.m6337implements(5, iArr, i2, 3);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m2895for(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = (i3 & 4294967295L) + (iArr[i + 0] & 4294967295L) + (iArr2[r13] & 4294967295L);
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >>> 32) + (iArr[i + 1] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[i + 2] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[i + 3] & 4294967295L) + (iArr2[r6] & 4294967295L);
        iArr2[i2 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[i + 4] & 4294967295L) + (4294967295L & iArr2[r12]);
        iArr2[i2 + 4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    /* renamed from: goto, reason: not valid java name */
    public static int[] m2896goto() {
        return new int[5];
    }

    /* renamed from: if, reason: not valid java name */
    public static int m2897if(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j5 >>> 32);
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m2898implements(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
    }

    /* renamed from: import, reason: not valid java name */
    public static void m2899import(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = iArr2[i2 + 0] & 4294967295L;
        long j2 = iArr2[i2 + 1] & 4294967295L;
        long j3 = iArr2[i2 + 2] & 4294967295L;
        long j4 = iArr2[i2 + 3] & 4294967295L;
        long j5 = iArr2[i2 + 4] & 4294967295L;
        long j6 = iArr[i + 0] & 4294967295L;
        long j7 = (j6 * j) + 0;
        iArr3[i3 + 0] = (int) j7;
        long j8 = (j7 >>> 32) + (j6 * j2);
        iArr3[i3 + 1] = (int) j8;
        long j9 = (j8 >>> 32) + (j6 * j3);
        iArr3[i3 + 2] = (int) j9;
        long j10 = (j9 >>> 32) + (j6 * j4);
        iArr3[i3 + 3] = (int) j10;
        long j11 = (j10 >>> 32) + (j6 * j5);
        iArr3[i3 + 4] = (int) j11;
        iArr3[i3 + 5] = (int) (j11 >>> 32);
        int i4 = 1;
        int i5 = i3;
        int i6 = 1;
        while (i6 < 5) {
            i5 += i4;
            long j12 = iArr[i + i6] & 4294967295L;
            long j13 = (j12 * j) + (iArr3[r20] & 4294967295L) + 0;
            iArr3[i5 + 0] = (int) j13;
            long j14 = (j13 >>> 32) + (j12 * j2) + (iArr3[r15] & 4294967295L);
            iArr3[i5 + 1] = (int) j14;
            long j15 = (j14 >>> 32) + (j12 * j3) + (iArr3[r3] & 4294967295L);
            iArr3[i5 + 2] = (int) j15;
            long j16 = (j15 >>> 32) + (j12 * j4) + (iArr3[r3] & 4294967295L);
            iArr3[i5 + 3] = (int) j16;
            long j17 = (j16 >>> 32) + (j12 * j5) + (iArr3[r3] & 4294967295L);
            iArr3[i5 + 4] = (int) j17;
            iArr3[i5 + 5] = (int) (j17 >>> 32);
            i6++;
            j3 = j3;
            j = j;
            i4 = 1;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m2900interface(int[] iArr, int i, int[] iArr2, int i2) {
        long j = ((iArr2[r0] & 4294967295L) - (iArr[i + 0] & 4294967295L)) + 0;
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 1] & 4294967295L));
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 2] & 4294967295L));
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[r5] & 4294967295L) - (iArr[i + 3] & 4294967295L));
        iArr2[i2 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr2[r13] & 4294967295L) - (iArr[i + 4] & 4294967295L));
        iArr2[i2 + 4] = (int) j5;
        return (int) (j5 >> 32);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m2901native(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = iArr2[0] & 4294967295L;
        int i = 1;
        long j2 = iArr2[1] & 4294967295L;
        long j3 = iArr2[2] & 4294967295L;
        long j4 = iArr2[3] & 4294967295L;
        long j5 = iArr2[4] & 4294967295L;
        long j6 = iArr[0] & 4294967295L;
        long j7 = (j6 * j) + 0;
        iArr3[0] = (int) j7;
        long j8 = (j7 >>> 32) + (j6 * j2);
        iArr3[1] = (int) j8;
        long j9 = (j8 >>> 32) + (j6 * j3);
        iArr3[2] = (int) j9;
        long j10 = (j9 >>> 32) + (j6 * j4);
        iArr3[3] = (int) j10;
        long j11 = (j10 >>> 32) + (j6 * j5);
        iArr3[4] = (int) j11;
        int i2 = (int) (j11 >>> 32);
        iArr3[5] = i2;
        for (int i3 = 5; i < i3; i3 = 5) {
            long j12 = iArr[i] & 4294967295L;
            long j13 = (j12 * j) + (iArr3[r4] & 4294967295L) + 0;
            iArr3[i + 0] = (int) j13;
            int i4 = i + 1;
            long j14 = j2;
            long j15 = (j13 >>> 32) + (j12 * j2) + (iArr3[i4] & 4294967295L);
            iArr3[i4] = (int) j15;
            long j16 = j5;
            long j17 = (j15 >>> 32) + (j12 * j3) + (iArr3[r6] & 4294967295L);
            iArr3[i + 2] = (int) j17;
            long j18 = (j17 >>> 32) + (j12 * j4) + (iArr3[r6] & 4294967295L);
            iArr3[i + 3] = (int) j18;
            long j19 = (j18 >>> 32) + (j12 * j16) + (iArr3[r3] & 4294967295L);
            iArr3[i + 4] = (int) j19;
            iArr3[i + 5] = (int) (j19 >>> 32);
            i = i4;
            j5 = j16;
            j = j;
            j2 = j14;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int m2902new(int[] iArr, int[] iArr2) {
        long j = (iArr[0] & 4294967295L) + (iArr2[0] & 4294967295L) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (iArr[1] & 4294967295L) + (iArr2[1] & 4294967295L);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (iArr[2] & 4294967295L) + (iArr2[2] & 4294967295L);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (iArr[3] & 4294967295L) + (iArr2[3] & 4294967295L);
        iArr2[3] = (int) j4;
        long j5 = (j4 >>> 32) + (iArr[4] & 4294967295L) + (4294967295L & iArr2[4]);
        iArr2[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    /* renamed from: package, reason: not valid java name */
    public static int m2903package(int i, int i2, int[] iArr, int i3) {
        long j = ((i2 & 4294967295L) * (i & 4294967295L)) + (iArr[r0] & 4294967295L) + 0;
        iArr[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (4294967295L & iArr[r1]);
        iArr[i3 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return q21.m6337implements(5, iArr, i3, 2);
    }

    /* renamed from: private, reason: not valid java name */
    public static void m2904private(int[] iArr, int i, int[] iArr2, int i2) {
        long j = iArr[i + 0] & 4294967295L;
        int i3 = 0;
        int i4 = 10;
        int i5 = 4;
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
                long j23 = (iArr2[r27] & 4294967295L) + (j21 >>> 32);
                long j24 = (j16 & 4294967295L) + (j * j20);
                int i13 = (int) j24;
                iArr2[i2 + 4] = (i13 << 1) | (i12 >>> 31);
                long j25 = j19 + (j24 >>> 32) + (j20 * j5);
                long j26 = j22 + (j25 >>> 32) + (j20 * j8);
                long j27 = (j21 & 4294967295L) + (j26 >>> 32) + (j20 * j12);
                long j28 = j23 + (j27 >>> 32);
                int i14 = (int) j25;
                iArr2[i2 + 5] = (i13 >>> 31) | (i14 << 1);
                int i15 = (int) j26;
                iArr2[i2 + 6] = (i14 >>> 31) | (i15 << 1);
                int i16 = (int) j27;
                iArr2[i2 + 7] = (i15 >>> 31) | (i16 << 1);
                int i17 = i16 >>> 31;
                int i18 = (int) j28;
                iArr2[i2 + 8] = i17 | (i18 << 1);
                int i19 = i18 >>> 31;
                int i20 = i2 + 9;
                iArr2[i20] = i19 | ((iArr2[i20] + ((int) (j28 >>> 32))) << 1);
                return;
            }
            i5 = i6;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m2905protected(int[] iArr, int[] iArr2) {
        long j = ((iArr2[0] & 4294967295L) - (iArr[0] & 4294967295L)) + 0;
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((iArr2[1] & 4294967295L) - (iArr[1] & 4294967295L));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((iArr2[2] & 4294967295L) - (iArr[2] & 4294967295L));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((iArr2[3] & 4294967295L) - (iArr[3] & 4294967295L));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((iArr2[4] & 4294967295L) - (4294967295L & iArr[4]));
        iArr2[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    /* renamed from: public, reason: not valid java name */
    public static long m2906public(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
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
        long j12 = (j10 >>> 32) + (j * j11) + j9 + (4294967295L & iArr2[i3 + 4]);
        iArr3[i4 + 4] = (int) j12;
        return (j12 >>> 32) + j11;
    }

    /* renamed from: return, reason: not valid java name */
    public static int m2907return(int i, long j, int[] iArr, int i2) {
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
        return q21.m6337implements(5, iArr, i2, 4);
    }

    /* renamed from: static, reason: not valid java name */
    public static int m2908static(int i, int i2, int[] iArr, int i3) {
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
        return q21.m6337implements(5, iArr, i3, 3);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m2909strictfp(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j5 >> 32);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m2910super(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
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

    /* renamed from: switch, reason: not valid java name */
    public static int m2911switch(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = 4294967295L;
        long j2 = iArr2[i2 + 0] & 4294967295L;
        long j3 = iArr2[i2 + 1] & 4294967295L;
        long j4 = iArr2[i2 + 2] & 4294967295L;
        long j5 = iArr2[i2 + 3] & 4294967295L;
        long j6 = iArr2[i2 + 4] & 4294967295L;
        int i4 = i3;
        int i5 = 0;
        long j7 = 0;
        while (i5 < 5) {
            long j8 = iArr[i + i5] & j;
            long j9 = (j8 * j2) + (iArr3[r20] & j) + 0;
            iArr3[i4 + 0] = (int) j9;
            int i6 = i4 + 1;
            long j10 = j3;
            long j11 = (j9 >>> 32) + (j8 * j3) + (iArr3[i6] & 4294967295L);
            iArr3[i6] = (int) j11;
            long j12 = j4;
            long j13 = (j11 >>> 32) + (j8 * j4) + (iArr3[r18] & 4294967295L);
            iArr3[i4 + 2] = (int) j13;
            long j14 = (j13 >>> 32) + (j8 * j5) + (iArr3[r6] & 4294967295L);
            iArr3[i4 + 3] = (int) j14;
            long j15 = (j14 >>> 32) + (j8 * j6) + (iArr3[r4] & 4294967295L);
            iArr3[i4 + 4] = (int) j15;
            long j16 = (j15 >>> 32) + j7 + (iArr3[r14] & 4294967295L);
            iArr3[i4 + 5] = (int) j16;
            j7 = j16 >>> 32;
            i5++;
            i4 = i6;
            j2 = j2;
            j = 4294967295L;
            j3 = j10;
            j4 = j12;
        }
        return (int) j7;
    }

    /* renamed from: this, reason: not valid java name */
    public static int[] m2912this() {
        return new int[10];
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m2913throw(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: throws, reason: not valid java name */
    public static int m2914throws(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = 0;
        long j = 4294967295L;
        long j2 = iArr2[0] & 4294967295L;
        long j3 = iArr2[1] & 4294967295L;
        long j4 = iArr2[2] & 4294967295L;
        long j5 = iArr2[3] & 4294967295L;
        long j6 = iArr2[4] & 4294967295L;
        long j7 = 0;
        while (i < 5) {
            long j8 = iArr[i] & j;
            long j9 = (j8 * j2) + (iArr3[r21] & j) + 0;
            iArr3[i + 0] = (int) j9;
            int i2 = i + 1;
            long j10 = j3;
            long j11 = (j9 >>> 32) + (j8 * j3) + (iArr3[i2] & 4294967295L);
            iArr3[i2] = (int) j11;
            long j12 = j4;
            long j13 = (j11 >>> 32) + (j8 * j4) + (iArr3[r21] & 4294967295L);
            iArr3[i + 2] = (int) j13;
            long j14 = (j13 >>> 32) + (j8 * j5) + (iArr3[r7] & 4294967295L);
            iArr3[i + 3] = (int) j14;
            long j15 = (j14 >>> 32) + (j8 * j6) + (iArr3[r5] & 4294967295L);
            iArr3[i + 4] = (int) j15;
            long j16 = (j15 >>> 32) + j7 + (iArr3[r0] & 4294967295L);
            iArr3[i + 5] = (int) j16;
            j7 = j16 >>> 32;
            i = i2;
            j = 4294967295L;
            j2 = j2;
            j4 = j12;
            j3 = j10;
        }
        return (int) j7;
    }

    /* renamed from: transient, reason: not valid java name */
    public static BigInteger m2915transient(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i = 0; i < 5; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                ib1.m3348case(i2, bArr, (4 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m2916try(int[] iArr, int i, int[] iArr2, int i2) {
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
        long j5 = (j4 >>> 32) + (iArr[r12] & 4294967295L) + (4294967295L & iArr2[r14]);
        int i7 = (int) j5;
        iArr[i + 4] = i7;
        iArr2[i2 + 4] = i7;
        return (int) (j5 >>> 32);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int m2917volatile(int[] iArr, int[] iArr2, int[] iArr3) {
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
        return (int) (j5 >> 32);
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m2918while(int[] iArr) {
        for (int i = 0; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }
}
