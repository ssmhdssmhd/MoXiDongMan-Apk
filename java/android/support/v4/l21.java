package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public abstract class l21 {
    /* renamed from: case, reason: not valid java name */
    public static long[] m4543case(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 320) {
            throw new IllegalArgumentException();
        }
        long[] jArrM4546for = m4546for();
        int i = 0;
        while (bigInteger.signum() != 0) {
            jArrM4546for[i] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
            i++;
        }
        return jArrM4546for;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m4544do(long[] jArr, int i, long[] jArr2, int i2) {
        jArr2[i2 + 0] = jArr[i + 0];
        jArr2[i2 + 1] = jArr[i + 1];
        jArr2[i2 + 2] = jArr[i + 2];
        jArr2[i2 + 3] = jArr[i + 3];
        jArr2[i2 + 4] = jArr[i + 4];
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m4545else(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 5; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static long[] m4546for() {
        return new long[5];
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m4547goto(long[] jArr) {
        for (int i = 0; i < 5; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m4548if(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
    }

    /* renamed from: new, reason: not valid java name */
    public static long[] m4549new() {
        return new long[10];
    }

    /* renamed from: this, reason: not valid java name */
    public static BigInteger m4550this(long[] jArr) {
        byte[] bArr = new byte[40];
        for (int i = 0; i < 5; i++) {
            long j = jArr[i];
            if (j != 0) {
                ib1.m3369static(j, bArr, (4 - i) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m4551try(long[] jArr, long[] jArr2) {
        for (int i = 4; i >= 0; i--) {
            if (jArr[i] != jArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
