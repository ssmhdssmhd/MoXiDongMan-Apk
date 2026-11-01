package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public abstract class q21 {

    /* renamed from: do, reason: not valid java name */
    private static final long f5240do = 4294967295L;

    public static int A(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        int i6 = 0;
        while (i6 < i) {
            int i7 = iArr[i2 + i6];
            iArr2[i5 + i6] = (i4 >>> (-i3)) | (i7 << i3);
            i6++;
            i4 = i7;
        }
        return i4 >>> (-i3);
    }

    public static int B(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = iArr[i4];
            iArr2[i4] = (i3 >>> (-i2)) | (i5 << i2);
            i4++;
            i3 = i5;
        }
        return i3 >>> (-i2);
    }

    public static long C(int i, long[] jArr, int i2, int i3, long j) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = i2 + i4;
            long j2 = jArr[i5];
            jArr[i5] = (j >>> (-i3)) | (j2 << i3);
            i4++;
            j = j2;
        }
        return j >>> (-i3);
    }

    public static long D(int i, long[] jArr, int i2, int i3, long j, long[] jArr2, int i4) {
        int i5 = 0;
        while (i5 < i) {
            long j2 = jArr[i2 + i5];
            jArr2[i4 + i5] = (j >>> (-i3)) | (j2 << i3);
            i5++;
            j = j2;
        }
        return j >>> (-i3);
    }

    public static void E(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        int i4;
        int i5 = i << 1;
        int i6 = 0;
        int i7 = i;
        int i8 = i5;
        do {
            i7--;
            long j = iArr[i2 + i7] & 4294967295L;
            long j2 = j * j;
            int i9 = i8 - 1;
            iArr2[i3 + i9] = (i6 << 31) | ((int) (j2 >>> 33));
            i8 = i9 - 1;
            iArr2[i3 + i8] = (int) (j2 >>> 1);
            i6 = (int) j2;
        } while (i7 > 0);
        for (i4 = 1; i4 < i; i4++) {
            m6350super(i5, G(iArr, i2, i4, iArr2, i3), iArr2, i3, i4 << 1);
        }
        u(i5, iArr2, i3, iArr[i2] << 31);
    }

    public static void F(int i, int[] iArr, int[] iArr2) {
        int i2;
        int i3 = i << 1;
        int i4 = 0;
        int i5 = i;
        int i6 = i3;
        while (true) {
            i5--;
            long j = iArr[i5] & 4294967295L;
            long j2 = j * j;
            int i7 = i6 - 1;
            iArr2[i7] = (i4 << 31) | ((int) (j2 >>> 33));
            i6 = i7 - 1;
            iArr2[i6] = (int) (j2 >>> 1);
            int i8 = (int) j2;
            if (i5 <= 0) {
                break;
            } else {
                i4 = i8;
            }
        }
        for (i2 = 1; i2 < i; i2++) {
            m6332final(i3, H(iArr, i2, iArr2), iArr2, i2 << 1);
        }
        t(i3, iArr2, iArr[0] << 31);
    }

    public static int G(int[] iArr, int i, int i2, int[] iArr2, int i3) {
        long j = iArr[i + i2] & 4294967295L;
        long j2 = 0;
        int i4 = 0;
        int i5 = i3;
        do {
            long j3 = j2 + ((iArr[i + i4] & 4294967295L) * j) + (iArr2[r11] & 4294967295L);
            iArr2[i2 + i5] = (int) j3;
            j2 = j3 >>> 32;
            i5++;
            i4++;
        } while (i4 < i2);
        return (int) j2;
    }

    public static int H(int[] iArr, int i, int[] iArr2) {
        long j = iArr[i] & 4294967295L;
        long j2 = 0;
        int i2 = 0;
        do {
            long j3 = j2 + ((iArr[i2] & 4294967295L) * j) + (iArr2[r9] & 4294967295L);
            iArr2[i + i2] = (int) j3;
            j2 = j3 >>> 32;
            i2++;
        } while (i2 < i);
        return (int) j2;
    }

    public static int I(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            long j2 = j + ((iArr[i2 + i5] & 4294967295L) - (4294967295L & iArr2[i3 + i5]));
            iArr3[i4 + i5] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int J(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + ((iArr[i2] & 4294967295L) - (4294967295L & iArr2[i2]));
            iArr3[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int K(int i, int i2, int[] iArr, int i3) {
        long j = (iArr[r0] & 4294967295L) - (i2 & 4294967295L);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((4294967295L & iArr[r2]) - 1);
        iArr[i3 + 1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return m6343package(i, iArr, i3 + 2);
    }

    public static int L(int i, int i2, int[] iArr, int i3, int i4) {
        int i5 = i3 + i4;
        long j = (iArr[i5] & 4294967295L) - (i2 & 4294967295L);
        iArr[i5] = (int) j;
        long j2 = (j >> 32) + ((4294967295L & iArr[r0]) - 1);
        iArr[i5 + 1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return m6344private(i, iArr, i3, i4 + 2);
    }

    public static int M(int i, int i2, int[] iArr) {
        long j = (iArr[0] & 4294967295L) - (i2 & 4294967295L);
        iArr[0] = (int) j;
        long j2 = (j >> 32) + ((4294967295L & iArr[1]) - 1);
        iArr[1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return m6343package(i, iArr, 2);
    }

    public static int N(int i, int i2, int[] iArr, int i3) {
        long j = (iArr[r0] & 4294967295L) - (i2 & 4294967295L);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((4294967295L & iArr[r2]) - 1);
        iArr[i3 + 1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return m6344private(i, iArr, i3, 2);
    }

    public static int O(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            long j2 = j + (((iArr3[r4] & 4294967295L) - (iArr[i2 + i5] & 4294967295L)) - (4294967295L & iArr2[i3 + i5]));
            iArr3[i4 + i5] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int P(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (((iArr3[i2] & 4294967295L) - (iArr[i2] & 4294967295L)) - (4294967295L & iArr2[i2]));
            iArr3[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int Q(int i, long j, int[] iArr, int i2) {
        long j2 = (iArr[r0] & 4294967295L) - (j & 4294967295L);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[r5]) - (j >>> 32));
        iArr[i2 + 1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return m6343package(i, iArr, i2 + 2);
    }

    public static int R(int i, long j, int[] iArr, int i2, int i3) {
        int i4 = i2 + i3;
        long j2 = (iArr[i4] & 4294967295L) - (j & 4294967295L);
        iArr[i4] = (int) j2;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[r0]) - (j >>> 32));
        iArr[i4 + 1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return m6344private(i, iArr, i2, i3 + 2);
    }

    public static int S(int i, long j, int[] iArr) {
        long j2 = (iArr[0] & 4294967295L) - (j & 4294967295L);
        iArr[0] = (int) j2;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[1]) - (j >>> 32));
        iArr[1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return m6343package(i, iArr, 2);
    }

    public static int T(int i, long j, int[] iArr, int i2) {
        long j2 = (iArr[r0] & 4294967295L) - (j & 4294967295L);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >> 32) + ((4294967295L & iArr[r5]) - (j >>> 32));
        iArr[i2 + 1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return m6344private(i, iArr, i2, 2);
    }

    public static int U(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            long j2 = j + ((iArr2[r3] & 4294967295L) - (4294967295L & iArr[i2 + i4]));
            iArr2[i3 + i4] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int V(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + ((iArr2[i2] & 4294967295L) - (4294967295L & iArr[i2]));
            iArr2[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int W(int i, int i2, int[] iArr, int i3) {
        long j = (iArr[i3] & 4294967295L) - (4294967295L & i2);
        iArr[i3] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return m6343package(i, iArr, i3 + 1);
    }

    public static int X(int i, int i2, int[] iArr, int i3, int i4) {
        long j = (iArr[r0] & 4294967295L) - (4294967295L & i2);
        iArr[i3 + i4] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return m6344private(i, iArr, i3, i4 + 1);
    }

    public static int Y(int i, int i2, int[] iArr) {
        long j = (iArr[0] & 4294967295L) - (4294967295L & i2);
        iArr[0] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return m6343package(i, iArr, 1);
    }

    public static int Z(int i, int i2, int[] iArr, int i3) {
        long j = (iArr[r0] & 4294967295L) - (4294967295L & i2);
        iArr[i3 + 0] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return m6344private(i, iArr, i3, 1);
    }

    public static void a(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        iArr3[i4 + i] = g(i, iArr[i2], iArr2, i3, iArr3, i4);
        for (int i5 = 1; i5 < i; i5++) {
            int i6 = i4 + i5;
            iArr3[i6 + i] = i(i, iArr[i2 + i5], iArr2, i3, iArr3, i6);
        }
    }

    public static BigInteger a0(int i, int[] iArr) {
        byte[] bArr = new byte[i << 2];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                ib1.m3348case(i3, bArr, ((i - 1) - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m6321abstract(int i, int[] iArr, int[] iArr2) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static void b(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        iArr3[i] = h(i, iArr[0], iArr2, iArr3);
        for (int i2 = 1; i2 < i; i2++) {
            iArr3[i2 + i] = i(i, iArr[i2], iArr2, 0, iArr3, i2);
        }
    }

    public static void b0(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = 0;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static int m6322break(int i, long j, int[] iArr) {
        long j2 = (iArr[0] & 4294967295L) + (j & 4294967295L);
        iArr[0] = (int) j2;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[1]) + (j >>> 32);
        iArr[1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return m6356transient(i, iArr, 2);
    }

    public static void c(int[] iArr, int i, int i2, int[] iArr2, int i3, int i4, int[] iArr3, int i5) {
        iArr3[i5 + i4] = g(i4, iArr[i], iArr2, i3, iArr3, i5);
        for (int i6 = 1; i6 < i2; i6++) {
            int i7 = i5 + i6;
            iArr3[i7 + i4] = i(i4, iArr[i + i6], iArr2, i3, iArr3, i7);
        }
    }

    public static void c0(int i, long[] jArr) {
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = 0;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int m6323case(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            long j2 = j + (iArr[i2 + i5] & 4294967295L) + (iArr2[i3 + i5] & 4294967295L) + (4294967295L & iArr3[r8]);
            iArr3[i4 + i5] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m6324catch(int i, long j, int[] iArr, int i2) {
        long j2 = (iArr[r0] & 4294967295L) + (j & 4294967295L);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[r5]) + (j >>> 32);
        iArr[i2 + 1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return m6337implements(i, iArr, i2, 2);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m6325class(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            long j2 = j + (iArr[i2 + i4] & 4294967295L) + (4294967295L & iArr2[r7]);
            iArr2[i3 + i4] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    /* renamed from: const, reason: not valid java name */
    public static int m6326const(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (iArr[i2] & 4294967295L) + (4294967295L & iArr2[i2]);
            iArr2[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    /* renamed from: continue, reason: not valid java name */
    public static int[] m6327continue(int i, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i) {
            throw new IllegalArgumentException();
        }
        int[] iArrM6351switch = m6351switch((i + 31) >> 5);
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            iArrM6351switch[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2++;
        }
        return iArrM6351switch;
    }

    public static int d(int i, int i2, int[] iArr, int i3, int[] iArr2, int[] iArr3, int i4) {
        long j = i2 & 4294967295L;
        long j2 = i3 & 4294967295L;
        long j3 = 0;
        int i5 = 0;
        do {
            long j4 = j3 + ((iArr[i5] & 4294967295L) * j) + ((iArr2[i5] & 4294967295L) * j2) + (iArr3[r11] & 4294967295L);
            iArr3[i4 + i5] = (int) j4;
            j3 = j4 >>> 32;
            i5++;
        } while (i5 < i);
        return (int) j3;
    }

    /* renamed from: default, reason: not valid java name */
    public static int m6328default(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (-(i2 & 1)) & 4294967295L;
        long j2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            long j3 = j2 + ((iArr[i3] & 4294967295L) - (iArr2[i3] & j));
            iArr3[i3] = (int) j3;
            j2 = j3 >> 32;
        }
        return (int) j2;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m6329do(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (iArr[i2] & 4294967295L) + (4294967295L & iArr2[i2]);
            iArr3[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int e(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        int i5 = i4;
        long j = 0;
        for (int i6 = 0; i6 < i; i6++) {
            long jI = (i(i, iArr[i2 + i6], iArr2, i3, iArr3, i5) & 4294967295L) + j + (4294967295L & iArr3[r4]);
            iArr3[i5 + i] = (int) jI;
            j = jI >>> 32;
            i5++;
        }
        return (int) j;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m6330else(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (iArr[i2] & 4294967295L) + (iArr2[i2] & 4294967295L) + (4294967295L & iArr3[i2]);
            iArr3[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    /* renamed from: extends, reason: not valid java name */
    public static int m6331extends(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
        }
        return -1;
    }

    public static int f(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long jI = (i(i, iArr[i2], iArr2, 0, iArr3, i2) & 4294967295L) + j + (4294967295L & iArr3[r6]);
            iArr3[i2 + i] = (int) jI;
            j = jI >>> 32;
        }
        return (int) j;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m6332final(int i, int i2, int[] iArr, int i3) {
        long j = (i2 & 4294967295L) + (4294967295L & iArr[i3]);
        iArr[i3] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return m6356transient(i, iArr, i3 + 1);
    }

    /* renamed from: finally, reason: not valid java name */
    public static int m6333finally(int i, int[] iArr, int[] iArr2) {
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr[i2] - 1;
            iArr2[i2] = i3;
            i2++;
            if (i3 != -1) {
                while (i2 < i) {
                    iArr2[i2] = iArr[i2];
                    i2++;
                }
                return 0;
            }
        }
        return -1;
    }

    /* renamed from: for, reason: not valid java name */
    public static int m6334for(int i, int i2, int[] iArr, int i3, int i4) {
        int i5 = i3 + i4;
        long j = (iArr[i5] & 4294967295L) + (i2 & 4294967295L);
        iArr[i5] = (int) j;
        long j2 = (j >>> 32) + (4294967295L & iArr[r0]) + 1;
        iArr[i5 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return m6337implements(i, iArr, i3, i4 + 2);
    }

    public static int g(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        long j = i2 & 4294967295L;
        long j2 = 0;
        int i5 = 0;
        do {
            long j3 = j2 + ((iArr[i3 + i5] & 4294967295L) * j);
            iArr2[i4 + i5] = (int) j3;
            j2 = j3 >>> 32;
            i5++;
        } while (i5 < i);
        return (int) j2;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m6335goto(int i, long j, int[] iArr, int i2) {
        long j2 = (iArr[r0] & 4294967295L) + (j & 4294967295L);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[r5]) + (j >>> 32);
        iArr[i2 + 1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return m6356transient(i, iArr, i2 + 2);
    }

    public static int h(int i, int i2, int[] iArr, int[] iArr2) {
        long j = i2 & 4294967295L;
        long j2 = 0;
        int i3 = 0;
        do {
            long j3 = j2 + ((iArr[i3] & 4294967295L) * j);
            iArr2[i3] = (int) j3;
            j2 = j3 >>> 32;
            i3++;
        } while (i3 < i);
        return (int) j2;
    }

    public static int i(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        long j = i2 & 4294967295L;
        long j2 = 0;
        int i5 = 0;
        do {
            long j3 = j2 + ((iArr[i3 + i5] & 4294967295L) * j) + (iArr2[r9] & 4294967295L);
            iArr2[i4 + i5] = (int) j3;
            j2 = j3 >>> 32;
            i5++;
        } while (i5 < i);
        return (int) j2;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m6336if(int i, int i2, int[] iArr, int i3) {
        long j = (iArr[r0] & 4294967295L) + (i2 & 4294967295L);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (4294967295L & iArr[r2]) + 1;
        iArr[i3 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return m6356transient(i, iArr, i3 + 2);
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m6337implements(int i, int[] iArr, int i2, int i3) {
        while (i3 < i) {
            int i4 = i2 + i3;
            int i5 = iArr[i4] + 1;
            iArr[i4] = i5;
            if (i5 != 0) {
                return 0;
            }
            i3++;
        }
        return 1;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m6338import(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = (-(i2 & 1)) & 4294967295L;
        long j2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            long j3 = j2 + (iArr[i3] & 4294967295L) + (iArr2[i3] & j);
            iArr3[i3] = (int) j3;
            j2 = j3 >>> 32;
        }
        return (int) j2;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static boolean m6339instanceof(int i, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m6340interface(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
        }
        return 1;
    }

    public static int j(int i, int i2, long j, int[] iArr, int i3) {
        long j2 = i2 & 4294967295L;
        long j3 = ((j & 4294967295L) * j2) + (iArr[r11] & 4294967295L) + 0;
        iArr[i3 + 0] = (int) j3;
        long j4 = j2 * (j >>> 32);
        long j5 = (j3 >>> 32) + j4 + (iArr[r12] & 4294967295L);
        iArr[i3 + 1] = (int) j5;
        long j6 = (j5 >>> 32) + (4294967295L & iArr[r0]);
        iArr[i3 + 2] = (int) j6;
        if ((j6 >>> 32) == 0) {
            return 0;
        }
        return m6356transient(i, iArr, i3 + 3);
    }

    public static int k(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2 << 31;
            }
            int i3 = iArr[i];
            iArr[i] = (i2 << 31) | (i3 >>> 1);
            i2 = i3;
        }
    }

    public static int l(int i, int[] iArr, int i2, int i3) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << 31;
            }
            int i4 = i2 + i;
            int i5 = iArr[i4];
            iArr[i4] = (i3 << 31) | (i5 >>> 1);
            i3 = i5;
        }
    }

    public static int m(int i, int[] iArr, int i2, int i3, int[] iArr2, int i4) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << 31;
            }
            int i5 = iArr[i2 + i];
            iArr2[i4 + i] = (i3 << 31) | (i5 >>> 1);
            i3 = i5;
        }
    }

    public static int n(int i, int[] iArr, int i2, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2 << 31;
            }
            int i3 = iArr[i];
            iArr2[i] = (i2 << 31) | (i3 >>> 1);
            i2 = i3;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m6341native(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        int i5 = -(i2 & 1);
        for (int i6 = 0; i6 < i; i6++) {
            int i7 = i4 + i6;
            int i8 = iArr2[i7];
            iArr2[i7] = i8 ^ ((iArr[i3 + i6] ^ i8) & i5);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int m6342new(int i, int i2, int[] iArr) {
        long j = (iArr[0] & 4294967295L) + (i2 & 4294967295L);
        iArr[0] = (int) j;
        long j2 = (j >>> 32) + (4294967295L & iArr[1]) + 1;
        iArr[1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return m6356transient(i, iArr, 2);
    }

    public static int o(int i, int[] iArr, int i2, int i3) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << (-i2);
            }
            int i4 = iArr[i];
            iArr[i] = (i3 << (-i2)) | (i4 >>> i2);
            i3 = i4;
        }
    }

    public static int p(int i, int[] iArr, int i2, int i3, int i4) {
        while (true) {
            i--;
            if (i < 0) {
                return i4 << (-i3);
            }
            int i5 = i2 + i;
            int i6 = iArr[i5];
            iArr[i5] = (i4 << (-i3)) | (i6 >>> i3);
            i4 = i6;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static int m6343package(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
            i2++;
        }
        return -1;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m6344private(int i, int[] iArr, int i2, int i3) {
        while (i3 < i) {
            int i4 = i2 + i3;
            int i5 = iArr[i4] - 1;
            iArr[i4] = i5;
            if (i5 != -1) {
                return 0;
            }
            i3++;
        }
        return -1;
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m6345protected(int i, int[] iArr, int[] iArr2) {
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr[i2] + 1;
            iArr2[i2] = i3;
            i2++;
            if (i3 != 0) {
                while (i2 < i) {
                    iArr2[i2] = iArr[i2];
                    i2++;
                }
                return 0;
            }
        }
        return 1;
    }

    /* renamed from: public, reason: not valid java name */
    public static void m6346public(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        System.arraycopy(iArr, i2, iArr2, i3, i);
    }

    public static int q(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        while (true) {
            i--;
            if (i < 0) {
                return i4 << (-i3);
            }
            int i6 = iArr[i2 + i];
            iArr2[i5 + i] = (i4 << (-i3)) | (i6 >>> i3);
            i4 = i6;
        }
    }

    public static int r(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << (-i2);
            }
            int i4 = iArr[i];
            iArr2[i] = (i3 << (-i2)) | (i4 >>> i2);
            i3 = i4;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m6347return(int i, int[] iArr, int[] iArr2) {
        System.arraycopy(iArr, 0, iArr2, 0, i);
    }

    public static int s(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2;
            }
            int i3 = iArr[i];
            iArr[i] = i2;
            i2 = i3;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static int[] m6348static(int i, int[] iArr) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static int m6349strictfp(int[] iArr, int i) {
        int i2;
        if (i == 0) {
            i2 = iArr[0];
        } else {
            int i3 = i >> 5;
            if (i3 < 0 || i3 >= iArr.length) {
                return 0;
            }
            i2 = iArr[i3] >>> (i & 31);
        }
        return i2 & 1;
    }

    /* renamed from: super, reason: not valid java name */
    public static int m6350super(int i, int i2, int[] iArr, int i3, int i4) {
        long j = i2 & 4294967295L;
        long j2 = j + (4294967295L & iArr[r7]);
        iArr[i3 + i4] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return m6337implements(i, iArr, i3, i4 + 1);
    }

    /* renamed from: switch, reason: not valid java name */
    public static int[] m6351switch(int i) {
        return new int[i];
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean m6352synchronized(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static int t(int i, int[] iArr, int i2) {
        int i3 = 0;
        while (i3 < i) {
            int i4 = iArr[i3];
            iArr[i3] = (i2 >>> 31) | (i4 << 1);
            i3++;
            i2 = i4;
        }
        return i2 >>> 31;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m6353this(int i, long j, int[] iArr, int i2, int i3) {
        int i4 = i2 + i3;
        long j2 = (iArr[i4] & 4294967295L) + (j & 4294967295L);
        iArr[i4] = (int) j2;
        long j3 = (j2 >>> 32) + (4294967295L & iArr[r0]) + (j >>> 32);
        iArr[i4 + 1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return m6337implements(i, iArr, i2, i3 + 2);
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m6354throw(int i, int i2, int[] iArr) {
        long j = (i2 & 4294967295L) + (4294967295L & iArr[0]);
        iArr[0] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return m6356transient(i, iArr, 1);
    }

    /* renamed from: throws, reason: not valid java name */
    public static long[] m6355throws(int i) {
        return new long[i];
    }

    /* renamed from: transient, reason: not valid java name */
    public static int m6356transient(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
            i2++;
        }
        return 1;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m6357try(int i, int i2, int[] iArr, int i3) {
        long j = (iArr[r0] & 4294967295L) + (i2 & 4294967295L);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (4294967295L & iArr[r2]) + 1;
        iArr[i3 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return m6337implements(i, iArr, i3, 2);
    }

    public static int u(int i, int[] iArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = i2 + i4;
            int i6 = iArr[i5];
            iArr[i5] = (i3 >>> 31) | (i6 << 1);
            i4++;
            i3 = i6;
        }
        return i3 >>> 31;
    }

    public static int v(int i, int[] iArr, int i2, int i3, int[] iArr2, int i4) {
        int i5 = 0;
        while (i5 < i) {
            int i6 = iArr[i2 + i5];
            iArr2[i4 + i5] = (i3 >>> 31) | (i6 << 1);
            i5++;
            i3 = i6;
        }
        return i3 >>> 31;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static boolean m6358volatile(int i, int[] iArr, int[] iArr2) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            int i3 = iArr[i2] ^ Integer.MIN_VALUE;
            int i4 = Integer.MIN_VALUE ^ iArr2[i2];
            if (i3 < i4) {
                return false;
            }
            if (i3 > i4) {
                return true;
            }
        }
        return true;
    }

    public static int w(int i, int[] iArr, int i2, int[] iArr2) {
        int i3 = 0;
        while (i3 < i) {
            int i4 = iArr[i3];
            iArr2[i3] = (i2 >>> 31) | (i4 << 1);
            i3++;
            i2 = i4;
        }
        return i2 >>> 31;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m6359while(int i, int i2, int[] iArr, int i3) {
        long j = (i2 & 4294967295L) + (4294967295L & iArr[i3]);
        iArr[i3] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return m6337implements(i, iArr, i3, 1);
    }

    public static long x(int i, long[] jArr, int i2, long j, long[] jArr2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            long j2 = jArr[i2 + i4];
            jArr2[i3 + i4] = (j >>> 63) | (j2 << 1);
            i4++;
            j = j2;
        }
        return j >>> 63;
    }

    public static int y(int i, int[] iArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = iArr[i4];
            iArr[i4] = (i3 >>> (-i2)) | (i5 << i2);
            i4++;
            i3 = i5;
        }
        return i3 >>> (-i2);
    }

    public static int z(int i, int[] iArr, int i2, int i3, int i4) {
        int i5 = 0;
        while (i5 < i) {
            int i6 = i2 + i5;
            int i7 = iArr[i6];
            iArr[i6] = (i4 >>> (-i3)) | (i7 << i3);
            i5++;
            i4 = i7;
        }
        return i4 >>> (-i3);
    }
}
