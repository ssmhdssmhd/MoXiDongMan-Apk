package android.support.v4;

/* loaded from: classes3.dex */
public class tp1 {
    private tp1() {
    }

    /* renamed from: break, reason: not valid java name */
    private static boolean m8037break(int i) {
        return (i & (i + (-1))) == 0;
    }

    /* renamed from: case, reason: not valid java name */
    private static void m8038case(int[] iArr, int i, int i2, int i3) {
        int i4 = i3 * 32;
        int[] iArr2 = new int[16];
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[i4];
        int[] iArr5 = new int[i4];
        int[][] iArr6 = new int[i2][];
        try {
            System.arraycopy(iArr, i, iArr5, 0, i4);
            for (int i5 = 0; i5 < i2; i5++) {
                iArr6[i5] = q3.m6398while(iArr5);
                m8039do(iArr5, iArr2, iArr3, iArr4, i3);
            }
            int i6 = i2 - 1;
            for (int i7 = 0; i7 < i2; i7++) {
                m8042goto(iArr5, iArr6[iArr5[i4 - 16] & i6], 0, iArr5);
                m8039do(iArr5, iArr2, iArr3, iArr4, i3);
            }
            System.arraycopy(iArr5, 0, iArr, i, i4);
            m8044new(iArr6);
            m8044new(new int[][]{iArr5, iArr2, iArr3, iArr4});
        } catch (Throwable th) {
            m8044new(iArr6);
            m8044new(new int[][]{iArr5, iArr2, iArr3, iArr4});
            throw th;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static void m8039do(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i) {
        System.arraycopy(iArr, iArr.length - 16, iArr2, 0, 16);
        int length = iArr.length >>> 1;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = i * 2; i4 > 0; i4--) {
            m8042goto(iArr2, iArr, i2, iArr3);
            vr1.m8946final(8, iArr3, iArr2);
            System.arraycopy(iArr2, 0, iArr4, i3, 16);
            i3 = (length + i2) - i3;
            i2 += 16;
        }
        System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
    }

    /* renamed from: else, reason: not valid java name */
    private static byte[] m8040else(byte[] bArr, byte[] bArr2, int i) {
        ja1 ja1Var = new ja1(new yp1());
        ja1Var.m4622break(bArr, bArr2, 1);
        return ((gr0) ja1Var.mo2235new(i * 8)).m2770do();
    }

    /* renamed from: for, reason: not valid java name */
    private static void m8041for(int[] iArr) {
        if (iArr != null) {
            q3.g(iArr, 0);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m8042goto(int[] iArr, int[] iArr2, int i, int[] iArr3) {
        for (int length = iArr3.length - 1; length >= 0; length--) {
            iArr3[length] = iArr[length] ^ iArr2[i + length];
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static void m8043if(byte[] bArr) {
        if (bArr != null) {
            q3.c(bArr, (byte) 0);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m8044new(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            m8041for(iArr2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m8045this(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        if (bArr == null) {
            throw new IllegalArgumentException("Passphrase P must be provided.");
        }
        if (bArr2 == null) {
            throw new IllegalArgumentException("Salt S must be provided.");
        }
        if (i <= 1 || !m8037break(i)) {
            throw new IllegalArgumentException("Cost parameter N must be > 1 and a power of 2");
        }
        if (i2 == 1 && i >= 65536) {
            throw new IllegalArgumentException("Cost parameter N must be > 1 and < 65536.");
        }
        if (i2 < 1) {
            throw new IllegalArgumentException("Block size r must be >= 1.");
        }
        int i5 = Integer.MAX_VALUE / ((i2 * 128) * 8);
        if (i3 >= 1 && i3 <= i5) {
            if (i4 >= 1) {
                return m8046try(bArr, bArr2, i, i2, i3, i4);
            }
            throw new IllegalArgumentException("Generated key length dkLen must be >= 1.");
        }
        throw new IllegalArgumentException("Parallelisation parameter p must be >= 1 and <= " + i5 + " (based on block size r of " + i2 + ")");
    }

    /* renamed from: try, reason: not valid java name */
    private static byte[] m8046try(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        int i5 = i2 * 128;
        byte[] bArrM8040else = m8040else(bArr, bArr2, i3 * i5);
        int[] iArr = null;
        try {
            int length = bArrM8040else.length >>> 2;
            iArr = new int[length];
            ib1.m3371super(bArrM8040else, 0, iArr);
            int i6 = i5 >>> 2;
            for (int i7 = 0; i7 < length; i7 += i6) {
                m8038case(iArr, i7, i, i2);
            }
            ib1.m3349catch(iArr, bArrM8040else, 0);
            return m8040else(bArr, bArrM8040else, i4);
        } finally {
            m8043if(bArrM8040else);
            m8041for(iArr);
        }
    }
}
