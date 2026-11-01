package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public abstract class p21 {
    /* renamed from: case, reason: not valid java name */
    public static long[] m5840case(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 576) {
            throw new IllegalArgumentException();
        }
        long[] jArrM5843for = m5843for();
        int i = 0;
        while (bigInteger.signum() != 0) {
            jArrM5843for[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i++;
        }
        return jArrM5843for;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5841do(long[] jArr, int i, long[] jArr2, int i2) {
        jArr2[i2 + 0] = jArr[i + 0];
        jArr2[i2 + 1] = jArr[i + 1];
        jArr2[i2 + 2] = jArr[i + 2];
        jArr2[i2 + 3] = jArr[i + 3];
        jArr2[i2 + 4] = jArr[i + 4];
        jArr2[i2 + 5] = jArr[i + 5];
        jArr2[i2 + 6] = jArr[i + 6];
        jArr2[i2 + 7] = jArr[i + 7];
        jArr2[i2 + 8] = jArr[i + 8];
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m5842else(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 9; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static long[] m5843for() {
        return new long[9];
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m5844goto(long[] jArr) {
        for (int i = 0; i < 9; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5845if(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
        jArr2[7] = jArr[7];
        jArr2[8] = jArr[8];
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m5846new() {
        return new long[18];
    }

    /* renamed from: this, reason: not valid java name */
    public static BigInteger m5847this(long[] jArr) {
        byte[] bArr = new byte[72];
        for (int i = 0; i < 9; i++) {
            long j = jArr[i];
            if (j != 0) {
                ib1.m3369static(j, bArr, (8 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m5848try(long[] jArr, long[] jArr2) {
        for (int i = 8; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
