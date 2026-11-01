package org.bouncycastle.crypto.signers;

import android.support.v4.ck1;
import android.support.v4.kl0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.xs;
import com.google.common.primitives.Cfinal;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.SignerWithRecovery;

/* renamed from: org.bouncycastle.crypto.signers.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements SignerWithRecovery {

    /* renamed from: class, reason: not valid java name */
    public static final int f30347class = 188;

    /* renamed from: const, reason: not valid java name */
    public static final int f30348const = 12748;

    /* renamed from: final, reason: not valid java name */
    public static final int f30349final = 13004;

    /* renamed from: import, reason: not valid java name */
    public static final int f30350import = 14028;

    /* renamed from: native, reason: not valid java name */
    public static final int f30351native = 14284;

    /* renamed from: super, reason: not valid java name */
    public static final int f30352super = 13260;

    /* renamed from: throw, reason: not valid java name */
    public static final int f30353throw = 13516;

    /* renamed from: while, reason: not valid java name */
    public static final int f30354while = 13772;

    /* renamed from: break, reason: not valid java name */
    private byte[] f30355break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f30356case;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f30357catch;

    /* renamed from: do, reason: not valid java name */
    private Digest f30358do;

    /* renamed from: else, reason: not valid java name */
    private int f30359else;

    /* renamed from: for, reason: not valid java name */
    private int f30360for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f30361goto;

    /* renamed from: if, reason: not valid java name */
    private AsymmetricBlockCipher f30362if;

    /* renamed from: new, reason: not valid java name */
    private int f30363new;

    /* renamed from: this, reason: not valid java name */
    private byte[] f30364this;

    /* renamed from: try, reason: not valid java name */
    private byte[] f30365try;

    public Ccase(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this(asymmetricBlockCipher, digest, false);
    }

    public Ccase(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, boolean z) {
        int iIntValue;
        this.f30362if = asymmetricBlockCipher;
        this.f30358do = digest;
        if (z) {
            iIntValue = 188;
        } else {
            Integer numM4434do = kl0.m4434do(digest);
            if (numM4434do == null) {
                throw new IllegalArgumentException("no valid trailer for digest: " + digest.getAlgorithmName());
            }
            iIntValue = numM4434do.intValue();
        }
        this.f30360for = iIntValue;
    }

    /* renamed from: do, reason: not valid java name */
    private void m33905do(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m33906for(byte[] bArr) {
        this.f30359else = 0;
        m33905do(this.f30356case);
        m33905do(bArr);
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m33907if(byte[] bArr, byte[] bArr2) {
        boolean z;
        int i = this.f30359else;
        byte[] bArr3 = this.f30356case;
        if (i > bArr3.length) {
            z = bArr3.length <= bArr2.length;
            for (int i2 = 0; i2 != this.f30356case.length; i2++) {
                if (bArr[i2] != bArr2[i2]) {
                    z = false;
                }
            }
        } else {
            z = i == bArr2.length;
            for (int i3 = 0; i3 != bArr2.length; i3++) {
                if (bArr[i3] != bArr2[i3]) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws xs {
        int i;
        int length;
        byte b;
        int i2;
        int digestSize = this.f30358do.getDigestSize();
        if (this.f30360for == 188) {
            byte[] bArr = this.f30365try;
            length = (bArr.length - digestSize) - 1;
            this.f30358do.doFinal(bArr, length);
            byte[] bArr2 = this.f30365try;
            bArr2[bArr2.length - 1] = Celse.f30385final;
            i = 8;
        } else {
            i = 16;
            byte[] bArr3 = this.f30365try;
            int length2 = (bArr3.length - digestSize) - 2;
            this.f30358do.doFinal(bArr3, length2);
            byte[] bArr4 = this.f30365try;
            int length3 = bArr4.length - 2;
            int i3 = this.f30360for;
            bArr4[length3] = (byte) (i3 >>> 8);
            bArr4[bArr4.length - 1] = (byte) i3;
            length = length2;
        }
        int i4 = this.f30359else;
        int i5 = ((((digestSize + i4) * 8) + i) + 4) - this.f30363new;
        if (i5 > 0) {
            int i6 = i4 - ((i5 + 7) / 8);
            b = 96;
            i2 = length - i6;
            System.arraycopy(this.f30356case, 0, this.f30365try, i2, i6);
            this.f30364this = new byte[i6];
        } else {
            b = Cfinal.f15506do;
            i2 = length - i4;
            System.arraycopy(this.f30356case, 0, this.f30365try, i2, i4);
            this.f30364this = new byte[this.f30359else];
        }
        int i7 = i2 - 1;
        if (i7 > 0) {
            for (int i8 = i7; i8 != 0; i8--) {
                this.f30365try[i8] = -69;
            }
            byte[] bArr5 = this.f30365try;
            bArr5[i7] = (byte) (bArr5[i7] ^ 1);
            bArr5[0] = 11;
            bArr5[0] = (byte) (bArr5[0] | b);
        } else {
            byte[] bArr6 = this.f30365try;
            bArr6[0] = 10;
            bArr6[0] = (byte) (bArr6[0] | b);
        }
        AsymmetricBlockCipher asymmetricBlockCipher = this.f30362if;
        byte[] bArr7 = this.f30365try;
        byte[] bArrProcessBlock = asymmetricBlockCipher.processBlock(bArr7, 0, bArr7.length);
        this.f30361goto = (b & 32) == 0;
        byte[] bArr8 = this.f30356case;
        byte[] bArr9 = this.f30364this;
        System.arraycopy(bArr8, 0, bArr9, 0, bArr9.length);
        this.f30359else = 0;
        m33905do(this.f30356case);
        m33905do(this.f30365try);
        return bArrProcessBlock;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public byte[] getRecoveredMessage() {
        return this.f30364this;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public boolean hasFullMessage() {
        return this.f30361goto;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        ck1 ck1Var = (ck1) cipherParameters;
        this.f30362if.init(z, ck1Var);
        int iBitLength = ck1Var.m954for().bitLength();
        this.f30363new = iBitLength;
        byte[] bArr = new byte[(iBitLength + 7) / 8];
        this.f30365try = bArr;
        int i = this.f30360for;
        int length = bArr.length;
        if (i == 188) {
            this.f30356case = new byte[(length - this.f30358do.getDigestSize()) - 2];
        } else {
            this.f30356case = new byte[(length - this.f30358do.getDigestSize()) - 3];
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30358do.reset();
        this.f30359else = 0;
        m33905do(this.f30356case);
        byte[] bArr = this.f30364this;
        if (bArr != null) {
            m33905do(bArr);
        }
        this.f30364this = null;
        this.f30361goto = false;
        if (this.f30355break != null) {
            this.f30355break = null;
            m33905do(this.f30357catch);
            this.f30357catch = null;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30358do.update(b);
        int i = this.f30359else;
        byte[] bArr = this.f30356case;
        if (i < bArr.length) {
            bArr[i] = b;
        }
        this.f30359else = i + 1;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        while (i2 > 0 && this.f30359else < this.f30356case.length) {
            update(bArr[i]);
            i++;
            i2--;
        }
        this.f30358do.update(bArr, i, i2);
        this.f30359else += i2;
    }

    @Override // org.bouncycastle.crypto.SignerWithRecovery
    public void updateWithRecoveredMessage(byte[] bArr) throws tn0 {
        byte[] bArrProcessBlock = this.f30362if.processBlock(bArr, 0, bArr.length);
        if (((bArrProcessBlock[0] & 192) ^ 64) != 0) {
            throw new tn0("malformed signature");
        }
        if (((bArrProcessBlock[bArrProcessBlock.length - 1] & 15) ^ 12) != 0) {
            throw new tn0("malformed signature");
        }
        int i = 2;
        if (((bArrProcessBlock[bArrProcessBlock.length - 1] & 255) ^ 188) == 0) {
            i = 1;
        } else {
            int i2 = ((bArrProcessBlock[bArrProcessBlock.length - 2] & 255) << 8) | (bArrProcessBlock[bArrProcessBlock.length - 1] & 255);
            Integer numM4434do = kl0.m4434do(this.f30358do);
            if (numM4434do == null) {
                throw new IllegalArgumentException("unrecognised hash in signature");
            }
            int iIntValue = numM4434do.intValue();
            if (i2 != iIntValue && (iIntValue != 15052 || i2 != 16588)) {
                throw new IllegalStateException("signer initialised with wrong digest for trailer " + i2);
            }
        }
        int i3 = 0;
        while (i3 != bArrProcessBlock.length && ((bArrProcessBlock[i3] & 15) ^ 10) != 0) {
            i3++;
        }
        int i4 = i3 + 1;
        int length = ((bArrProcessBlock.length - i) - this.f30358do.getDigestSize()) - i4;
        if (length <= 0) {
            throw new tn0("malformed block");
        }
        if ((bArrProcessBlock[0] & 32) == 0) {
            this.f30361goto = true;
            byte[] bArr2 = new byte[length];
            this.f30364this = bArr2;
            System.arraycopy(bArrProcessBlock, i4, bArr2, 0, bArr2.length);
        } else {
            this.f30361goto = false;
            byte[] bArr3 = new byte[length];
            this.f30364this = bArr3;
            System.arraycopy(bArrProcessBlock, i4, bArr3, 0, bArr3.length);
        }
        this.f30355break = bArr;
        this.f30357catch = bArrProcessBlock;
        Digest digest = this.f30358do;
        byte[] bArr4 = this.f30364this;
        digest.update(bArr4, 0, bArr4.length);
        byte[] bArr5 = this.f30364this;
        this.f30359else = bArr5.length;
        System.arraycopy(bArr5, 0, this.f30356case, 0, bArr5.length);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArrProcessBlock;
        byte[] bArr2 = this.f30355break;
        if (bArr2 == null) {
            try {
                bArrProcessBlock = this.f30362if.processBlock(bArr, 0, bArr.length);
            } catch (Exception unused) {
                return false;
            }
        } else {
            if (!q3.m6362case(bArr2, bArr)) {
                throw new IllegalStateException("updateWithRecoveredMessage called on different signature");
            }
            bArrProcessBlock = this.f30357catch;
            this.f30355break = null;
            this.f30357catch = null;
        }
        if (((bArrProcessBlock[0] & 192) ^ 64) == 0 && ((bArrProcessBlock[bArrProcessBlock.length - 1] & 15) ^ 12) == 0) {
            int i = 2;
            if (((bArrProcessBlock[bArrProcessBlock.length - 1] & 255) ^ 188) == 0) {
                i = 1;
            } else {
                int i2 = ((bArrProcessBlock[bArrProcessBlock.length - 2] & 255) << 8) | (bArrProcessBlock[bArrProcessBlock.length - 1] & 255);
                Integer numM4434do = kl0.m4434do(this.f30358do);
                if (numM4434do == null) {
                    throw new IllegalArgumentException("unrecognised hash in signature");
                }
                int iIntValue = numM4434do.intValue();
                if (i2 != iIntValue && (iIntValue != 15052 || i2 != 16588)) {
                    throw new IllegalStateException("signer initialised with wrong digest for trailer " + i2);
                }
            }
            int i3 = 0;
            while (i3 != bArrProcessBlock.length && ((bArrProcessBlock[i3] & 15) ^ 10) != 0) {
                i3++;
            }
            int i4 = i3 + 1;
            int digestSize = this.f30358do.getDigestSize();
            byte[] bArr3 = new byte[digestSize];
            int length = (bArrProcessBlock.length - i) - digestSize;
            int i5 = length - i4;
            if (i5 <= 0) {
                return m33906for(bArrProcessBlock);
            }
            if ((bArrProcessBlock[0] & 32) == 0) {
                this.f30361goto = true;
                if (this.f30359else > i5) {
                    return m33906for(bArrProcessBlock);
                }
                this.f30358do.reset();
                this.f30358do.update(bArrProcessBlock, i4, i5);
                this.f30358do.doFinal(bArr3, 0);
                boolean z = true;
                for (int i6 = 0; i6 != digestSize; i6++) {
                    int i7 = length + i6;
                    bArrProcessBlock[i7] = (byte) (bArrProcessBlock[i7] ^ bArr3[i6]);
                    if (bArrProcessBlock[i7] != 0) {
                        z = false;
                    }
                }
                if (!z) {
                    return m33906for(bArrProcessBlock);
                }
                byte[] bArr4 = new byte[i5];
                this.f30364this = bArr4;
                System.arraycopy(bArrProcessBlock, i4, bArr4, 0, bArr4.length);
            } else {
                this.f30361goto = false;
                this.f30358do.doFinal(bArr3, 0);
                boolean z2 = true;
                for (int i8 = 0; i8 != digestSize; i8++) {
                    int i9 = length + i8;
                    bArrProcessBlock[i9] = (byte) (bArrProcessBlock[i9] ^ bArr3[i8]);
                    if (bArrProcessBlock[i9] != 0) {
                        z2 = false;
                    }
                }
                if (!z2) {
                    return m33906for(bArrProcessBlock);
                }
                byte[] bArr5 = new byte[i5];
                this.f30364this = bArr5;
                System.arraycopy(bArrProcessBlock, i4, bArr5, 0, bArr5.length);
            }
            if (this.f30359else != 0 && !m33907if(this.f30356case, this.f30364this)) {
                return m33906for(bArrProcessBlock);
            }
            m33905do(this.f30356case);
            m33905do(bArrProcessBlock);
            this.f30359else = 0;
            return true;
        }
        return m33906for(bArrProcessBlock);
    }
}
