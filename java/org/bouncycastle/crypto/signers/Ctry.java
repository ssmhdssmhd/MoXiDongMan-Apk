package org.bouncycastle.crypto.signers;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.ec1;
import android.support.v4.kl0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.xs;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.SignerWithRecovery;

/* renamed from: org.bouncycastle.crypto.signers.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements SignerWithRecovery {

    /* renamed from: default, reason: not valid java name */
    public static final int f30424default = 14284;

    /* renamed from: import, reason: not valid java name */
    public static final int f30425import = 188;

    /* renamed from: native, reason: not valid java name */
    public static final int f30426native = 12748;

    /* renamed from: public, reason: not valid java name */
    public static final int f30427public = 13004;

    /* renamed from: return, reason: not valid java name */
    public static final int f30428return = 13260;

    /* renamed from: static, reason: not valid java name */
    public static final int f30429static = 13516;

    /* renamed from: switch, reason: not valid java name */
    public static final int f30430switch = 13772;

    /* renamed from: throws, reason: not valid java name */
    public static final int f30431throws = 14028;

    /* renamed from: break, reason: not valid java name */
    private int f30432break;

    /* renamed from: case, reason: not valid java name */
    private int f30433case;

    /* renamed from: catch, reason: not valid java name */
    private int f30434catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f30435class;

    /* renamed from: const, reason: not valid java name */
    private byte[] f30436const;

    /* renamed from: do, reason: not valid java name */
    private Digest f30437do;

    /* renamed from: else, reason: not valid java name */
    private int f30438else;

    /* renamed from: final, reason: not valid java name */
    private byte[] f30439final;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f30440for;

    /* renamed from: goto, reason: not valid java name */
    private byte[] f30441goto;

    /* renamed from: if, reason: not valid java name */
    private AsymmetricBlockCipher f30442if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f30443new;

    /* renamed from: super, reason: not valid java name */
    private byte[] f30444super;

    /* renamed from: this, reason: not valid java name */
    private byte[] f30445this;

    /* renamed from: throw, reason: not valid java name */
    private int f30446throw;

    /* renamed from: try, reason: not valid java name */
    private int f30447try;

    /* renamed from: while, reason: not valid java name */
    private int f30448while;

    public Ctry(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i) {
        this(asymmetricBlockCipher, digest, i, false);
    }

    public Ctry(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i, boolean z) {
        int iIntValue;
        this.f30442if = asymmetricBlockCipher;
        this.f30437do = digest;
        this.f30447try = digest.getDigestSize();
        this.f30434catch = i;
        if (z) {
            iIntValue = 188;
        } else {
            Integer numM4434do = kl0.m4434do(digest);
            if (numM4434do == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
            }
            iIntValue = numM4434do.intValue();
        }
        this.f30433case = iIntValue;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33928do(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    /* renamed from: for, reason: not valid java name */
    private void m33929for(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m33930if(long j, byte[] bArr) {
        bArr[0] = (byte) (j >>> 56);
        bArr[1] = (byte) (j >>> 48);
        bArr[2] = (byte) (j >>> 40);
        bArr[3] = (byte) (j >>> 32);
        bArr[4] = (byte) (j >>> 24);
        bArr[5] = (byte) (j >>> 16);
        bArr[6] = (byte) (j >>> 8);
        bArr[7] = (byte) (j >>> 0);
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m33931new(byte[] bArr, byte[] bArr2) {
        boolean z = this.f30432break == bArr2.length;
        for (int i = 0; i != bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    private byte[] m33932try(byte[] bArr, int i, int i2, int i3) {
        int i4;
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[this.f30447try];
        byte[] bArr4 = new byte[4];
        this.f30437do.reset();
        int i5 = 0;
        while (true) {
            i4 = this.f30447try;
            if (i5 >= i3 / i4) {
                break;
            }
            m33928do(i5, bArr4);
            this.f30437do.update(bArr, i, i2);
            this.f30437do.update(bArr4, 0, 4);
            this.f30437do.doFinal(bArr3, 0);
            int i6 = this.f30447try;
            System.arraycopy(bArr3, 0, bArr2, i5 * i6, i6);
            i5++;
        }
        if (i4 * i5 < i3) {
            m33928do(i5, bArr4);
            this.f30437do.update(bArr, i, i2);
            this.f30437do.update(bArr4, 0, 4);
            this.f30437do.doFinal(bArr3, 0);
            int i7 = this.f30447try;
            System.arraycopy(bArr3, 0, bArr2, i5 * i7, i3 - (i5 * i7));
        }
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws xs {
        int digestSize = this.f30437do.getDigestSize();
        byte[] bArr = new byte[digestSize];
        this.f30437do.doFinal(bArr, 0);
        byte[] bArr2 = new byte[8];
        m33930if(this.f30432break * 8, bArr2);
        this.f30437do.update(bArr2, 0, 8);
        this.f30437do.update(this.f30445this, 0, this.f30432break);
        this.f30437do.update(bArr, 0, digestSize);
        byte[] bArr3 = this.f30443new;
        if (bArr3 == null) {
            bArr3 = new byte[this.f30434catch];
            this.f30440for.nextBytes(bArr3);
        }
        this.f30437do.update(bArr3, 0, bArr3.length);
        int digestSize2 = this.f30437do.getDigestSize();
        byte[] bArr4 = new byte[digestSize2];
        this.f30437do.doFinal(bArr4, 0);
        int i = this.f30433case == 188 ? 1 : 2;
        byte[] bArr5 = this.f30441goto;
        int length = bArr5.length;
        int i2 = this.f30432break;
        int length2 = ((((length - i2) - bArr3.length) - this.f30447try) - i) - 1;
        bArr5[length2] = 1;
        int i3 = length2 + 1;
        System.arraycopy(this.f30445this, 0, bArr5, i3, i2);
        System.arraycopy(bArr3, 0, this.f30441goto, i3 + this.f30432break, bArr3.length);
        byte[] bArrM33932try = m33932try(bArr4, 0, digestSize2, (this.f30441goto.length - this.f30447try) - i);
        for (int i4 = 0; i4 != bArrM33932try.length; i4++) {
            byte[] bArr6 = this.f30441goto;
            bArr6[i4] = (byte) (bArr6[i4] ^ bArrM33932try[i4]);
        }
        byte[] bArr7 = this.f30441goto;
        int length3 = bArr7.length;
        int i5 = this.f30447try;
        System.arraycopy(bArr4, 0, bArr7, (length3 - i5) - i, i5);
        int i6 = this.f30433case;
        if (i6 == 188) {
            byte[] bArr8 = this.f30441goto;
            bArr8[bArr8.length - 1] = Celse.f30385final;
        } else {
            byte[] bArr9 = this.f30441goto;
            bArr9[bArr9.length - 2] = (byte) (i6 >>> 8);
            bArr9[bArr9.length - 1] = (byte) i6;
        }
        byte[] bArr10 = this.f30441goto;
        bArr10[0] = (byte) (bArr10[0] & Byte.MAX_VALUE);
        byte[] bArrProcessBlock = this.f30442if.processBlock(bArr10, 0, bArr10.length);
        int i7 = this.f30432break;
        byte[] bArr11 = new byte[i7];
        this.f30436const = bArr11;
        byte[] bArr12 = this.f30445this;
        this.f30435class = i7 <= bArr12.length;
        System.arraycopy(bArr12, 0, bArr11, 0, bArr11.length);
        m33929for(this.f30445this);
        m33929for(this.f30441goto);
        this.f30432break = 0;
        return bArrProcessBlock;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public byte[] getRecoveredMessage() {
        return this.f30436const;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public boolean hasFullMessage() {
        return this.f30435class;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        ck1 ck1Var;
        SecureRandom secureRandomM33599case;
        int length = this.f30434catch;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            ck1Var = (ck1) cc1Var.m846do();
            if (z) {
                secureRandomM33599case = cc1Var.m847if();
                this.f30440for = secureRandomM33599case;
            }
        } else if (cipherParameters instanceof ec1) {
            ec1 ec1Var = (ec1) cipherParameters;
            ck1Var = (ck1) ec1Var.m1786do();
            byte[] bArrM1787if = ec1Var.m1787if();
            this.f30443new = bArrM1787if;
            length = bArrM1787if.length;
            if (bArrM1787if.length != this.f30434catch) {
                throw new IllegalArgumentException("Fixed salt is of wrong length");
            }
        } else {
            ck1Var = (ck1) cipherParameters;
            if (z) {
                secureRandomM33599case = Cfor.m33599case();
                this.f30440for = secureRandomM33599case;
            }
        }
        this.f30442if.init(z, ck1Var);
        int iBitLength = ck1Var.m954for().bitLength();
        this.f30438else = iBitLength;
        byte[] bArr = new byte[(iBitLength + 7) / 8];
        this.f30441goto = bArr;
        int i = this.f30433case;
        int length2 = bArr.length;
        if (i == 188) {
            this.f30445this = new byte[(((length2 - this.f30437do.getDigestSize()) - length) - 1) - 1];
        } else {
            this.f30445this = new byte[(((length2 - this.f30437do.getDigestSize()) - length) - 1) - 2];
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30437do.reset();
        this.f30432break = 0;
        byte[] bArr = this.f30445this;
        if (bArr != null) {
            m33929for(bArr);
        }
        byte[] bArr2 = this.f30436const;
        if (bArr2 != null) {
            m33929for(bArr2);
            this.f30436const = null;
        }
        this.f30435class = false;
        if (this.f30439final != null) {
            this.f30439final = null;
            m33929for(this.f30444super);
            this.f30444super = null;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        if (this.f30439final == null) {
            int i = this.f30432break;
            byte[] bArr = this.f30445this;
            if (i < bArr.length) {
                this.f30432break = i + 1;
                bArr[i] = b;
                return;
            }
        }
        this.f30437do.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        if (this.f30439final == null) {
            while (i2 > 0 && this.f30432break < this.f30445this.length) {
                update(bArr[i]);
                i++;
                i2--;
            }
        }
        if (i2 > 0) {
            this.f30437do.update(bArr, i, i2);
        }
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) throws tn0 {
        byte[] bArrProcessBlock = this.f30442if.processBlock(bArr, 0, bArr.length);
        int length = bArrProcessBlock.length;
        int i = this.f30438else;
        if (length < (i + 7) / 8) {
            int i2 = (i + 7) / 8;
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArrProcessBlock, 0, bArr2, i2 - bArrProcessBlock.length, bArrProcessBlock.length);
            m33929for(bArrProcessBlock);
            bArrProcessBlock = bArr2;
        }
        int i3 = 2;
        if (((bArrProcessBlock[bArrProcessBlock.length - 1] & 255) ^ 188) == 0) {
            i3 = 1;
        } else {
            int i4 = ((bArrProcessBlock[bArrProcessBlock.length - 2] & 255) << 8) | (bArrProcessBlock[bArrProcessBlock.length - 1] & 255);
            Integer numM4434do = kl0.m4434do(this.f30437do);
            if (numM4434do == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            }
            int iIntValue = numM4434do.intValue();
            if (i4 != iIntValue && (iIntValue != 15052 || i4 != 16588)) {
                throw new IllegalStateException("signer initialised with wrong digest for trailer " + i4);
            }
        }
        this.f30437do.doFinal(new byte[this.f30447try], 0);
        int length2 = bArrProcessBlock.length;
        int i5 = this.f30447try;
        byte[] bArrM33932try = m33932try(bArrProcessBlock, (length2 - i5) - i3, i5, (bArrProcessBlock.length - i5) - i3);
        for (int i6 = 0; i6 != bArrM33932try.length; i6++) {
            bArrProcessBlock[i6] = (byte) (bArrProcessBlock[i6] ^ bArrM33932try[i6]);
        }
        bArrProcessBlock[0] = (byte) (bArrProcessBlock[0] & Byte.MAX_VALUE);
        int i7 = 0;
        while (i7 != bArrProcessBlock.length && bArrProcessBlock[i7] != 1) {
            i7++;
        }
        int i8 = i7 + 1;
        if (i8 >= bArrProcessBlock.length) {
            m33929for(bArrProcessBlock);
        }
        this.f30435class = i8 > 1;
        byte[] bArr3 = new byte[(bArrM33932try.length - i8) - this.f30434catch];
        this.f30436const = bArr3;
        System.arraycopy(bArrProcessBlock, i8, bArr3, 0, bArr3.length);
        byte[] bArr4 = this.f30436const;
        System.arraycopy(bArr4, 0, this.f30445this, 0, bArr4.length);
        this.f30439final = bArr;
        this.f30444super = bArrProcessBlock;
        this.f30446throw = i8;
        this.f30448while = i3;
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        int i = this.f30447try;
        byte[] bArr2 = new byte[i];
        this.f30437do.doFinal(bArr2, 0);
        byte[] bArr3 = this.f30439final;
        if (bArr3 == null) {
            try {
                updateWithRecoveredMessage(bArr);
            } catch (Exception unused) {
                return false;
            }
        } else if (!q3.m6362case(bArr3, bArr)) {
            throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
        }
        byte[] bArr4 = this.f30444super;
        int i2 = this.f30446throw;
        int i3 = this.f30448while;
        this.f30439final = null;
        this.f30444super = null;
        byte[] bArr5 = new byte[8];
        m33930if(this.f30436const.length * 8, bArr5);
        this.f30437do.update(bArr5, 0, 8);
        byte[] bArr6 = this.f30436const;
        if (bArr6.length != 0) {
            this.f30437do.update(bArr6, 0, bArr6.length);
        }
        this.f30437do.update(bArr2, 0, i);
        byte[] bArr7 = this.f30443new;
        if (bArr7 != null) {
            this.f30437do.update(bArr7, 0, bArr7.length);
        } else {
            this.f30437do.update(bArr4, i2 + this.f30436const.length, this.f30434catch);
        }
        int digestSize = this.f30437do.getDigestSize();
        byte[] bArr8 = new byte[digestSize];
        this.f30437do.doFinal(bArr8, 0);
        int length = (bArr4.length - i3) - digestSize;
        boolean z = true;
        for (int i4 = 0; i4 != digestSize; i4++) {
            if (bArr8[i4] != bArr4[length + i4]) {
                z = false;
            }
        }
        m33929for(bArr4);
        m33929for(bArr8);
        if (!z) {
            this.f30435class = false;
            this.f30432break = 0;
            m33929for(this.f30436const);
            return false;
        }
        if (this.f30432break == 0 || m33931new(this.f30445this, this.f30436const)) {
            this.f30432break = 0;
            m33929for(this.f30445this);
            return true;
        }
        this.f30432break = 0;
        m33929for(this.f30445this);
        return false;
    }
}
