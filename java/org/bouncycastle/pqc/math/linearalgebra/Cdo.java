package org.bouncycastle.pqc.math.linearalgebra;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {
    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    public static long m36189break(byte[] bArr, int i) {
        long j = (bArr[i] & 255) << 56;
        long j2 = j | ((bArr[r0] & 255) << 48);
        long j3 = j2 | ((bArr[r8] & 255) << 40);
        long j4 = j3 | ((bArr[r0] & 255) << 32);
        long j5 = j4 | ((255 & bArr[r8]) << 24);
        long j6 = j5 | ((bArr[r0] & 255) << 16);
        int i2 = i + 1 + 1 + 1 + 1 + 1 + 1 + 1;
        return (bArr[i2] & 255) | j6 | ((bArr[r8] & 255) << 8);
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m36190case(long j) {
        return new byte[]{(byte) (j >>> 56), (byte) (j >>> 48), (byte) (j >>> 40), (byte) (j >>> 32), (byte) (j >>> 24), (byte) (j >>> 16), (byte) (j >>> 8), (byte) j};
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[] m36191catch(int[] iArr) {
        byte[] bArr = new byte[iArr.length << 2];
        for (int i = 0; i < iArr.length; i++) {
            m36194do(iArr[i], bArr, i << 2);
        }
        return bArr;
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m36192class(int[] iArr, int i) {
        int length = iArr.length;
        byte[] bArr = new byte[i];
        int i2 = 0;
        int i3 = 0;
        while (i2 <= length - 2) {
            m36194do(iArr[i2], bArr, i3);
            i2++;
            i3 += 4;
        }
        m36198if(iArr[length - 1], bArr, i3, i - i3);
        return bArr;
    }

    /* renamed from: const, reason: not valid java name */
    public static int[] m36193const(byte[] bArr) {
        int length = (bArr.length + 3) / 4;
        int length2 = bArr.length & 3;
        int[] iArr = new int[length];
        int i = 0;
        int i2 = 0;
        while (i <= length - 2) {
            iArr[i] = m36197goto(bArr, i2);
            i++;
            i2 += 4;
        }
        int i3 = length - 1;
        if (length2 != 0) {
            iArr[i3] = m36200this(bArr, i2, length2);
        } else {
            iArr[i3] = m36197goto(bArr, i2);
        }
        return iArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m36194do(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        bArr[i4] = (byte) (i >>> 8);
        bArr[i4 + 1] = (byte) i;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m36195else(byte[] bArr) {
        if (bArr.length > 4) {
            throw new ArithmeticException("invalid input length");
        }
        if (bArr.length == 0) {
            return 0;
        }
        int length = 0;
        for (int i = 0; i < bArr.length; i++) {
            length |= (bArr[i] & 255) << (((bArr.length - 1) - i) * 8);
        }
        return length;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36196for(long j, byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = (byte) (j >>> 56);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j >>> 48);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j >>> 40);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j >>> 32);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j >>> 24);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j >>> 16);
        bArr[i7] = (byte) (j >>> 8);
        bArr[i7 + 1] = (byte) j;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m36197goto(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = ((bArr[i] & 255) << 24) | ((bArr[i2] & 255) << 16);
        int i5 = i3 + 1;
        return (bArr[i5] & 255) | i4 | ((bArr[i3] & 255) << 8);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36198if(int i, byte[] bArr, int i2, int i3) {
        int i4 = i3 - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            bArr[i2 + i5] = (byte) (i >>> ((i4 - i5) * 8));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static byte[] m36199new(int i) {
        return new byte[]{(byte) (i >>> 24), (byte) (i >>> 16), (byte) (i >>> 8), (byte) i};
    }

    /* renamed from: this, reason: not valid java name */
    public static int m36200this(byte[] bArr, int i, int i2) {
        if (bArr.length == 0 || bArr.length < (i + i2) - 1) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 |= (bArr[i + i4] & 255) << (((i2 - i4) - 1) * 8);
        }
        return i3;
    }

    /* renamed from: try, reason: not valid java name */
    public static byte[] m36201try(int i, int i2) throws ArithmeticException {
        if (i < 0) {
            return null;
        }
        int iM36186try = Ccatch.m36186try(i);
        if (iM36186try > i2) {
            throw new ArithmeticException("Cannot encode given integer into specified number of octets.");
        }
        byte[] bArr = new byte[i2];
        int i3 = i2 - 1;
        for (int i4 = i3; i4 >= i2 - iM36186try; i4--) {
            bArr[i4] = (byte) (i >>> ((i3 - i4) * 8));
        }
        return bArr;
    }
}
