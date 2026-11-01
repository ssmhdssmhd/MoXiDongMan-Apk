package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public final class u8 {
    private u8() {
    }

    /* renamed from: case, reason: not valid java name */
    public static byte[] m8277case(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == 1 || (bigInteger.bitLength() & 7) != 0) {
            return byteArray;
        }
        int iBitLength = bigInteger.bitLength() >> 3;
        byte[] bArr = new byte[iBitLength];
        System.arraycopy(byteArray, 1, bArr, 0, iBitLength);
        return bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m8278do(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        if (bigIntegerArr.length != bigIntegerArr2.length) {
            return false;
        }
        int iCompareTo = 0;
        for (int i = 0; i < bigIntegerArr.length; i++) {
            iCompareTo |= bigIntegerArr[i].compareTo(bigIntegerArr2[i]);
        }
        return iCompareTo == 0;
    }

    /* renamed from: for, reason: not valid java name */
    public static BigInteger[] m8279for(BigInteger[] bigIntegerArr, int i, int i2) {
        int i3 = i2 - i;
        BigInteger[] bigIntegerArr2 = new BigInteger[i3];
        System.arraycopy(bigIntegerArr, i, bigIntegerArr2, 0, i3);
        return bigIntegerArr2;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8280if(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        for (int length = bigIntegerArr.length - 1; length >= 0; length--) {
            bigIntegerArr[length] = bigInteger;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static int[] m8281new(BigInteger[] bigIntegerArr) {
        int[] iArr = new int[bigIntegerArr.length];
        for (int i = 0; i < bigIntegerArr.length; i++) {
            iArr[i] = bigIntegerArr[i].intValue();
        }
        return iArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static int[] m8282try(int i, BigInteger[] bigIntegerArr) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(i);
        int[] iArr = new int[bigIntegerArr.length];
        for (int i2 = 0; i2 < bigIntegerArr.length; i2++) {
            iArr[i2] = bigIntegerArr[i2].mod(bigIntegerValueOf).intValue();
        }
        return iArr;
    }
}
