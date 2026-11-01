package org.bouncycastle.crypto.encodings;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.tn0;
import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.encodings.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements AsymmetricBlockCipher {

    /* renamed from: case, reason: not valid java name */
    private static final BigInteger f29462case = BigInteger.valueOf(16);

    /* renamed from: else, reason: not valid java name */
    private static final BigInteger f29463else = BigInteger.valueOf(6);

    /* renamed from: goto, reason: not valid java name */
    private static byte[] f29464goto = {14, 3, 5, 8, 9, 4, 2, 15, 0, 13, 11, 6, 7, 10, 12, 1};

    /* renamed from: this, reason: not valid java name */
    private static byte[] f29465this = {8, 15, 6, 1, 5, 2, 11, 12, 3, 4, 13, 10, 14, 9, 0, 7};

    /* renamed from: do, reason: not valid java name */
    private AsymmetricBlockCipher f29466do;

    /* renamed from: for, reason: not valid java name */
    private int f29467for;

    /* renamed from: if, reason: not valid java name */
    private boolean f29468if;

    /* renamed from: new, reason: not valid java name */
    private int f29469new = 0;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f29470try;

    public Cdo(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f29466do = asymmetricBlockCipher;
    }

    /* renamed from: do, reason: not valid java name */
    private static byte[] m33372do(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m33373for(byte[] bArr, int i, int i2) throws tn0 {
        int i3 = this.f29467for;
        int i4 = (i3 + 7) / 8;
        byte[] bArr2 = new byte[i4];
        int i5 = 1;
        int i6 = this.f29469new + 1;
        int i7 = (i3 + 13) / 16;
        int i8 = 0;
        while (i8 < i7) {
            if (i8 > i7 - i2) {
                int i9 = i7 - i8;
                System.arraycopy(bArr, (i + i2) - i9, bArr2, i4 - i7, i9);
            } else {
                System.arraycopy(bArr, i, bArr2, i4 - (i8 + i2), i2);
            }
            i8 += i2;
        }
        for (int i10 = i4 - (i7 * 2); i10 != i4; i10 += 2) {
            byte b = bArr2[(i4 - i7) + (i10 / 2)];
            byte[] bArr3 = f29464goto;
            bArr2[i10] = (byte) (bArr3[b & 15] | (bArr3[(b & 255) >>> 4] << 4));
            bArr2[i10 + 1] = b;
        }
        int i11 = i4 - (i2 * 2);
        bArr2[i11] = (byte) (bArr2[i11] ^ i6);
        int i12 = i4 - 1;
        bArr2[i12] = (byte) ((bArr2[i12] << 4) | 6);
        int i13 = 8 - ((this.f29467for - 1) % 8);
        if (i13 != 8) {
            bArr2[0] = (byte) (bArr2[0] & (255 >>> i13));
            bArr2[0] = (byte) ((128 >>> i13) | bArr2[0]);
            i5 = 0;
        } else {
            bArr2[0] = 0;
            bArr2[1] = (byte) (bArr2[1] | 128);
        }
        return this.f29466do.processBlock(bArr2, i5, i4 - i5);
    }

    /* renamed from: if, reason: not valid java name */
    private byte[] m33374if(byte[] bArr, int i, int i2) throws tn0 {
        byte[] bArrProcessBlock = this.f29466do.processBlock(bArr, i, i2);
        int i3 = (this.f29467for + 13) / 16;
        BigInteger bigInteger = new BigInteger(1, bArrProcessBlock);
        BigInteger bigInteger2 = f29462case;
        BigInteger bigIntegerMod = bigInteger.mod(bigInteger2);
        BigInteger bigInteger3 = f29463else;
        if (!bigIntegerMod.equals(bigInteger3)) {
            if (!this.f29470try.subtract(bigInteger).mod(bigInteger2).equals(bigInteger3)) {
                throw new tn0("resulting integer iS or (modulus - iS) is not congruent to 6 mod 16");
            }
            bigInteger = this.f29470try.subtract(bigInteger);
        }
        byte[] bArrM33372do = m33372do(bigInteger);
        if ((bArrM33372do[bArrM33372do.length - 1] & 15) != 6) {
            throw new tn0("invalid forcing byte in block");
        }
        bArrM33372do[bArrM33372do.length - 1] = (byte) (((bArrM33372do[bArrM33372do.length - 1] & 255) >>> 4) | (f29465this[(bArrM33372do[bArrM33372do.length - 2] & 255) >> 4] << 4));
        byte[] bArr2 = f29464goto;
        bArrM33372do[0] = (byte) (bArr2[bArrM33372do[1] & 15] | (bArr2[(bArrM33372do[1] & 255) >>> 4] << 4));
        int i4 = 0;
        boolean z = false;
        int i5 = 1;
        for (int length = bArrM33372do.length - 1; length >= bArrM33372do.length - (i3 * 2); length -= 2) {
            byte[] bArr3 = f29464goto;
            int i6 = bArr3[bArrM33372do[length] & 15] | (bArr3[(bArrM33372do[length] & 255) >>> 4] << 4);
            int i7 = length - 1;
            if (((bArrM33372do[i7] ^ i6) & 255) != 0) {
                if (z) {
                    throw new tn0("invalid tsums in block");
                }
                i5 = (bArrM33372do[i7] ^ i6) & 255;
                i4 = i7;
                z = true;
            }
        }
        bArrM33372do[i4] = 0;
        int length2 = (bArrM33372do.length - i4) / 2;
        byte[] bArr4 = new byte[length2];
        for (int i8 = 0; i8 < length2; i8++) {
            bArr4[i8] = bArrM33372do[(i8 * 2) + i4 + 1];
        }
        this.f29469new = i5 - 1;
        return bArr4;
    }

    /* renamed from: case, reason: not valid java name */
    public void m33375case(int i) {
        if (i > 7) {
            throw new IllegalArgumentException("padBits > 7");
        }
        this.f29469new = i;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        int inputBlockSize = this.f29466do.getInputBlockSize();
        return this.f29468if ? (inputBlockSize + 1) / 2 : inputBlockSize;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        int outputBlockSize = this.f29466do.getOutputBlockSize();
        return this.f29468if ? outputBlockSize : (outputBlockSize + 1) / 2;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        ck1 ck1Var = cipherParameters instanceof cc1 ? (ck1) ((cc1) cipherParameters).m846do() : (ck1) cipherParameters;
        this.f29466do.init(z, cipherParameters);
        BigInteger bigIntegerM954for = ck1Var.m954for();
        this.f29470try = bigIntegerM954for;
        this.f29467for = bigIntegerM954for.bitLength();
        this.f29468if = z;
    }

    /* renamed from: new, reason: not valid java name */
    public int m33376new() {
        return this.f29469new;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) throws tn0 {
        return this.f29468if ? m33373for(bArr, i, i2) : m33374if(bArr, i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public AsymmetricBlockCipher m33377try() {
        return this.f29466do;
    }
}
