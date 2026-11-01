package org.bouncycastle.crypto.engines;

import android.support.v4.cc1;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import android.support.v4.w11;
import android.support.v4.x11;
import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;

/* renamed from: org.bouncycastle.crypto.engines.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper implements AsymmetricBlockCipher {

    /* renamed from: do, reason: not valid java name */
    private boolean f29757do;

    /* renamed from: if, reason: not valid java name */
    private w11 f29759if;

    /* renamed from: try, reason: not valid java name */
    private static BigInteger f29756try = BigInteger.valueOf(0);

    /* renamed from: case, reason: not valid java name */
    private static BigInteger f29755case = BigInteger.valueOf(1);

    /* renamed from: for, reason: not valid java name */
    private Vector[] f29758for = null;

    /* renamed from: new, reason: not valid java name */
    private boolean f29760new = false;

    /* renamed from: if, reason: not valid java name */
    private static BigInteger m33565if(Vector vector, Vector vector2) {
        BigInteger bigIntegerAdd = f29756try;
        BigInteger bigIntegerMultiply = f29755case;
        for (int i = 0; i < vector2.size(); i++) {
            bigIntegerMultiply = bigIntegerMultiply.multiply((BigInteger) vector2.elementAt(i));
        }
        for (int i2 = 0; i2 < vector2.size(); i2++) {
            BigInteger bigInteger = (BigInteger) vector2.elementAt(i2);
            BigInteger bigIntegerDivide = bigIntegerMultiply.divide(bigInteger);
            bigIntegerAdd = bigIntegerAdd.add(bigIntegerDivide.multiply(bigIntegerDivide.modInverse(bigInteger)).multiply((BigInteger) vector.elementAt(i2)));
        }
        return bigIntegerAdd.mod(bigIntegerMultiply);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m33566do(byte[] bArr, byte[] bArr2) throws tn0 {
        if (this.f29757do) {
            if (bArr.length > getOutputBlockSize() || bArr2.length > getOutputBlockSize()) {
                throw new tn0("BlockLength too large for simple addition.\n");
            }
        } else if (bArr.length > getInputBlockSize() || bArr2.length > getInputBlockSize()) {
            throw new tn0("BlockLength too large for simple addition.\n");
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        BigInteger bigIntegerMod = bigInteger.multiply(bigInteger2).mod(this.f29759if.m9016new());
        if (this.f29760new) {
            System.out.println("c(m1) as BigInteger:....... " + bigInteger);
            System.out.println("c(m2) as BigInteger:....... " + bigInteger2);
            System.out.println("c(m1)*c(m2)%n = c(m1+m2)%n: " + bigIntegerMod);
        }
        byte[] byteArray = this.f29759if.m9016new().toByteArray();
        q3.c(byteArray, (byte) 0);
        System.arraycopy(bigIntegerMod.toByteArray(), 0, byteArray, byteArray.length - bigIntegerMod.toByteArray().length, bigIntegerMod.toByteArray().length);
        return byteArray;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m33567for(BigInteger bigInteger) {
        byte[] byteArray = this.f29759if.m9016new().toByteArray();
        q3.c(byteArray, (byte) 0);
        byte[] byteArray2 = this.f29759if.m9015if().modPow(bigInteger, this.f29759if.m9016new()).toByteArray();
        System.arraycopy(byteArray2, 0, byteArray, byteArray.length - byteArray2.length, byteArray2.length);
        if (this.f29760new) {
            System.out.println("Encrypted value is:  " + new BigInteger(byteArray));
        }
        return byteArray;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getInputBlockSize() {
        return this.f29757do ? ((this.f29759if.m9014for() + 7) / 8) - 1 : this.f29759if.m9016new().toByteArray().length;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public int getOutputBlockSize() {
        return this.f29757do ? this.f29759if.m9016new().toByteArray().length : ((this.f29759if.m9014for() + 7) / 8) - 1;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f29757do = z;
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        this.f29759if = (w11) cipherParameters;
        if (this.f29757do) {
            return;
        }
        if (this.f29760new) {
            System.out.println("Constructing lookup Array");
        }
        x11 x11Var = (x11) this.f29759if;
        Vector vectorM9363case = x11Var.m9363case();
        this.f29758for = new Vector[vectorM9363case.size()];
        for (int i = 0; i < vectorM9363case.size(); i++) {
            BigInteger bigInteger = (BigInteger) vectorM9363case.elementAt(i);
            int iIntValue = bigInteger.intValue();
            this.f29758for[i] = new Vector();
            this.f29758for[i].addElement(f29755case);
            if (this.f29760new) {
                System.out.println("Constructing lookup ArrayList for " + iIntValue);
            }
            BigInteger bigIntegerAdd = f29756try;
            for (int i2 = 1; i2 < iIntValue; i2++) {
                bigIntegerAdd = bigIntegerAdd.add(x11Var.m9364try());
                this.f29758for[i].addElement(x11Var.m9015if().modPow(bigIntegerAdd.divide(bigInteger), x11Var.m9016new()));
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m33568new(byte[] bArr) throws tn0 {
        byte[] bArrProcessBlock;
        if (this.f29760new) {
            System.out.println();
        }
        if (bArr.length <= getInputBlockSize()) {
            if (this.f29760new) {
                System.out.println("data size is less then input block size, processing directly");
            }
            return processBlock(bArr, 0, bArr.length);
        }
        int inputBlockSize = getInputBlockSize();
        int outputBlockSize = getOutputBlockSize();
        if (this.f29760new) {
            System.out.println("Input blocksize is:  " + inputBlockSize + " bytes");
            System.out.println("Output blocksize is: " + outputBlockSize + " bytes");
            System.out.println("Data has length:.... " + bArr.length + " bytes");
        }
        byte[] bArr2 = new byte[((bArr.length / inputBlockSize) + 1) * outputBlockSize];
        int length = 0;
        int length2 = 0;
        while (length < bArr.length) {
            int i = length + inputBlockSize;
            if (i < bArr.length) {
                bArrProcessBlock = processBlock(bArr, length, inputBlockSize);
                length = i;
            } else {
                bArrProcessBlock = processBlock(bArr, length, bArr.length - length);
                length += bArr.length - length;
            }
            if (this.f29760new) {
                System.out.println("new datapos is " + length);
            }
            if (bArrProcessBlock == null) {
                if (this.f29760new) {
                    System.out.println("cipher returned null");
                }
                throw new tn0("cipher returned null");
            }
            System.arraycopy(bArrProcessBlock, 0, bArr2, length2, bArrProcessBlock.length);
            length2 += bArrProcessBlock.length;
        }
        byte[] bArr3 = new byte[length2];
        System.arraycopy(bArr2, 0, bArr3, 0, length2);
        if (this.f29760new) {
            System.out.println("returning " + length2 + " bytes");
        }
        return bArr3;
    }

    @Override // org.bouncycastle.crypto.AsymmetricBlockCipher
    public byte[] processBlock(byte[] bArr, int i, int i2) throws tn0 {
        if (this.f29759if == null) {
            throw new IllegalStateException("NaccacheStern engine not initialised");
        }
        if (i2 > getInputBlockSize() + 1) {
            throw new tw("input too large for Naccache-Stern cipher.\n");
        }
        if (!this.f29757do && i2 < getInputBlockSize()) {
            throw new tn0("BlockLength does not match modulus for Naccache-Stern cipher.\n");
        }
        if (i != 0 || i2 != bArr.length) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            bArr = bArr2;
        }
        BigInteger bigInteger = new BigInteger(1, bArr);
        if (this.f29760new) {
            System.out.println("input as BigInteger: " + bigInteger);
        }
        if (this.f29757do) {
            return m33567for(bigInteger);
        }
        Vector vector = new Vector();
        x11 x11Var = (x11) this.f29759if;
        Vector vectorM9363case = x11Var.m9363case();
        for (int i3 = 0; i3 < vectorM9363case.size(); i3++) {
            BigInteger bigIntegerModPow = bigInteger.modPow(x11Var.m9364try().divide((BigInteger) vectorM9363case.elementAt(i3)), x11Var.m9016new());
            Vector[] vectorArr = this.f29758for;
            Vector vector2 = vectorArr[i3];
            if (vectorArr[i3].size() != ((BigInteger) vectorM9363case.elementAt(i3)).intValue()) {
                if (this.f29760new) {
                    System.out.println("Prime is " + vectorM9363case.elementAt(i3) + ", lookup table has size " + vector2.size());
                }
                throw new tn0("Error in lookup Array for " + ((BigInteger) vectorM9363case.elementAt(i3)).intValue() + ": Size mismatch. Expected ArrayList with length " + ((BigInteger) vectorM9363case.elementAt(i3)).intValue() + " but found ArrayList of length " + this.f29758for[i3].size());
            }
            int iIndexOf = vector2.indexOf(bigIntegerModPow);
            if (iIndexOf == -1) {
                if (this.f29760new) {
                    System.out.println("Actual prime is " + vectorM9363case.elementAt(i3));
                    System.out.println("Decrypted value is " + bigIntegerModPow);
                    System.out.println("LookupList for " + vectorM9363case.elementAt(i3) + " with size " + this.f29758for[i3].size() + " is: ");
                    for (int i4 = 0; i4 < this.f29758for[i3].size(); i4++) {
                        System.out.println(this.f29758for[i3].elementAt(i4));
                    }
                }
                throw new tn0("Lookup failed");
            }
            vector.addElement(BigInteger.valueOf(iIndexOf));
        }
        return m33565if(vector, vectorM9363case).toByteArray();
    }

    /* renamed from: try, reason: not valid java name */
    public void m33569try(boolean z) {
        this.f29760new = z;
    }
}
