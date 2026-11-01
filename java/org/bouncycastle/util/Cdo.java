package org.bouncycastle.util;

import java.math.BigInteger;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.util.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo {

    /* renamed from: try, reason: not valid java name */
    private static final int f32648try = 1000;

    /* renamed from: do, reason: not valid java name */
    public static final BigInteger f32644do = BigInteger.valueOf(0);

    /* renamed from: if, reason: not valid java name */
    public static final BigInteger f32646if = BigInteger.valueOf(1);

    /* renamed from: for, reason: not valid java name */
    private static final BigInteger f32645for = BigInteger.valueOf(2);

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f32647new = BigInteger.valueOf(3);

    /* renamed from: case, reason: not valid java name */
    public static BigInteger m36308case(int i, int i2, SecureRandom secureRandom) throws IllegalArgumentException {
        BigInteger bigInteger;
        if (i < 2) {
            throw new IllegalArgumentException("bitLength < 2");
        }
        if (i == 2) {
            return secureRandom.nextInt() < 0 ? f32645for : f32647new;
        }
        do {
            byte[] bArrM36311for = m36311for(i, secureRandom);
            bArrM36311for[0] = (byte) (((byte) (1 << (7 - ((bArrM36311for.length * 8) - i)))) | bArrM36311for[0]);
            int length = bArrM36311for.length - 1;
            bArrM36311for[length] = (byte) (bArrM36311for[length] | 1);
            bigInteger = new BigInteger(1, bArrM36311for);
        } while (!bigInteger.isProbablePrime(i2));
        return bigInteger;
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m36309do(int i, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i) {
            return byteArray;
        }
        int i2 = byteArray[0] == 0 ? 1 : 0;
        int length = byteArray.length - i2;
        if (length > i) {
            throw new IllegalArgumentException("standard length exceeded for value");
        }
        byte[] bArr = new byte[i];
        System.arraycopy(byteArray, i2, bArr, i - length, length);
        return bArr;
    }

    /* renamed from: else, reason: not valid java name */
    public static BigInteger m36310else(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    /* renamed from: for, reason: not valid java name */
    private static byte[] m36311for(int i, SecureRandom secureRandom) throws IllegalArgumentException {
        if (i < 1) {
            throw new IllegalArgumentException("bitLength must be at least 1");
        }
        int i2 = (i + 7) / 8;
        byte[] bArr = new byte[i2];
        secureRandom.nextBytes(bArr);
        bArr[0] = (byte) (bArr[0] & ((byte) (255 >>> ((i2 * 8) - i))));
        return bArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public static BigInteger m36312goto(byte[] bArr, int i, int i2) {
        if (i != 0 || i2 != bArr.length) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            bArr = bArr2;
        }
        return new BigInteger(1, bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m36313if(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    /* renamed from: new, reason: not valid java name */
    public static BigInteger m36314new(int i, SecureRandom secureRandom) {
        return new BigInteger(1, m36311for(i, secureRandom));
    }

    /* renamed from: this, reason: not valid java name */
    public static int m36315this(BigInteger bigInteger) {
        return (bigInteger.bitLength() + 7) / 8;
    }

    /* renamed from: try, reason: not valid java name */
    public static BigInteger m36316try(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger bigIntegerM36314new;
        int iCompareTo = bigInteger.compareTo(bigInteger2);
        if (iCompareTo >= 0) {
            if (iCompareTo <= 0) {
                return bigInteger;
            }
            throw new IllegalArgumentException("'min' may not be greater than 'max'");
        }
        if (bigInteger.bitLength() > bigInteger2.bitLength() / 2) {
            bigIntegerM36314new = m36316try(f32644do, bigInteger2.subtract(bigInteger), secureRandom);
        } else {
            for (int i = 0; i < 1000; i++) {
                BigInteger bigIntegerM36314new2 = m36314new(bigInteger2.bitLength(), secureRandom);
                if (bigIntegerM36314new2.compareTo(bigInteger) >= 0 && bigIntegerM36314new2.compareTo(bigInteger2) <= 0) {
                    return bigIntegerM36314new2;
                }
            }
            bigIntegerM36314new = m36314new(bigInteger2.subtract(bigInteger).bitLength() - 1, secureRandom);
        }
        return bigIntegerM36314new.add(bigInteger);
    }
}
