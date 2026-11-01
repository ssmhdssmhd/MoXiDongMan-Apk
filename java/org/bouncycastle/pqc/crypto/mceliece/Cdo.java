package org.bouncycastle.pqc.crypto.mceliece;

import android.support.v4.re0;
import android.support.v4.u8;
import java.math.BigInteger;
import org.bouncycastle.pqc.math.linearalgebra.Ccatch;

/* renamed from: org.bouncycastle.pqc.crypto.mceliece.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final BigInteger f32203do = BigInteger.valueOf(0);

    /* renamed from: if, reason: not valid java name */
    private static final BigInteger f32204if = BigInteger.valueOf(1);

    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m35621do(int i, int i2, re0 re0Var) {
        if (re0Var.m3003for() != i || re0Var.m6941catch() != i2) {
            throw new IllegalArgumentException("vector has wrong length or hamming weight");
        }
        int[] iArrM6942class = re0Var.m6942class();
        BigInteger bigIntegerM36158do = Ccatch.m36158do(i, i2);
        BigInteger bigIntegerAdd = f32203do;
        int i3 = i;
        for (int i4 = 0; i4 < i; i4++) {
            bigIntegerM36158do = bigIntegerM36158do.multiply(BigInteger.valueOf(i3 - i2)).divide(BigInteger.valueOf(i3));
            i3--;
            if ((iArrM6942class[i4 >> 5] & (1 << (i4 & 31))) != 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigIntegerM36158do);
                i2--;
                bigIntegerM36158do = i3 == i2 ? f32204if : bigIntegerM36158do.multiply(BigInteger.valueOf(i2 + 1)).divide(BigInteger.valueOf(i3 - i2));
            }
        }
        return u8.m8277case(bigIntegerAdd);
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m35622for(int i, int i2, byte[] bArr) {
        if (i < i2) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger bigIntegerM36158do = Ccatch.m36158do(i, i2);
        int iBitLength = bigIntegerM36158do.bitLength() - 1;
        int i3 = iBitLength >> 3;
        int i4 = iBitLength & 7;
        int i5 = 8;
        if (i4 == 0) {
            i3--;
            i4 = 8;
        }
        int i6 = i >> 3;
        int i7 = i & 7;
        if (i7 == 0) {
            i6--;
        } else {
            i5 = i7;
        }
        int i8 = i6 + 1;
        byte[] bArr2 = new byte[i8];
        if (bArr.length < i8) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            for (int length = bArr.length; length < i8; length++) {
                bArr2[length] = 0;
            }
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, i6);
            bArr2[i6] = (byte) (bArr[i6] & ((1 << i5) - 1));
        }
        BigInteger bigIntegerAdd = f32203do;
        int i9 = i;
        for (int i10 = 0; i10 < i; i10++) {
            bigIntegerM36158do = bigIntegerM36158do.multiply(new BigInteger(Integer.toString(i9 - i2))).divide(new BigInteger(Integer.toString(i9)));
            i9--;
            if (((byte) (bArr2[i10 >>> 3] & (1 << (i10 & 7)))) != 0) {
                bigIntegerAdd = bigIntegerAdd.add(bigIntegerM36158do);
                i2--;
                bigIntegerM36158do = i9 == i2 ? f32204if : bigIntegerM36158do.multiply(new BigInteger(Integer.toString(i2 + 1))).divide(new BigInteger(Integer.toString(i9 - i2)));
            }
        }
        int i11 = i3 + 1;
        byte[] bArr3 = new byte[i11];
        byte[] byteArray = bigIntegerAdd.toByteArray();
        if (byteArray.length < i11) {
            System.arraycopy(byteArray, 0, bArr3, 0, byteArray.length);
            for (int length2 = byteArray.length; length2 < i11; length2++) {
                bArr3[length2] = 0;
            }
        } else {
            System.arraycopy(byteArray, 0, bArr3, 0, i3);
            bArr3[i3] = (byte) (((1 << i4) - 1) & byteArray[i3]);
        }
        return bArr3;
    }

    /* renamed from: if, reason: not valid java name */
    public static re0 m35623if(int i, int i2, byte[] bArr) {
        if (i < i2) {
            throw new IllegalArgumentException("n < t");
        }
        BigInteger bigIntegerM36158do = Ccatch.m36158do(i, i2);
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (bigInteger.compareTo(bigIntegerM36158do) >= 0) {
            throw new IllegalArgumentException("Encoded number too large.");
        }
        re0 re0Var = new re0(i);
        int i3 = i;
        for (int i4 = 0; i4 < i; i4++) {
            bigIntegerM36158do = bigIntegerM36158do.multiply(BigInteger.valueOf(i3 - i2)).divide(BigInteger.valueOf(i3));
            i3--;
            if (bigIntegerM36158do.compareTo(bigInteger) <= 0) {
                re0Var.m6943const(i4);
                bigInteger = bigInteger.subtract(bigIntegerM36158do);
                i2--;
                bigIntegerM36158do = i3 == i2 ? f32204if : bigIntegerM36158do.multiply(BigInteger.valueOf(i2 + 1)).divide(BigInteger.valueOf(i3 - i2));
            }
        }
        return re0Var;
    }
}
