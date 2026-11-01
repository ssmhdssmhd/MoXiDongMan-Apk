package org.bouncycastle.crypto.signers;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.tw;
import android.support.v4.xj1;
import android.support.v4.xs;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Cfor;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;

/* renamed from: org.bouncycastle.crypto.signers.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse implements Signer {

    /* renamed from: final, reason: not valid java name */
    public static final byte f30385final = -68;

    /* renamed from: break, reason: not valid java name */
    private byte[] f30386break;

    /* renamed from: case, reason: not valid java name */
    private int f30387case;

    /* renamed from: catch, reason: not valid java name */
    private byte[] f30388catch;

    /* renamed from: class, reason: not valid java name */
    private byte[] f30389class;

    /* renamed from: const, reason: not valid java name */
    private byte f30390const;

    /* renamed from: do, reason: not valid java name */
    private Digest f30391do;

    /* renamed from: else, reason: not valid java name */
    private boolean f30392else;

    /* renamed from: for, reason: not valid java name */
    private AsymmetricBlockCipher f30393for;

    /* renamed from: goto, reason: not valid java name */
    private int f30394goto;

    /* renamed from: if, reason: not valid java name */
    private Digest f30395if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f30396new;

    /* renamed from: this, reason: not valid java name */
    private int f30397this;

    /* renamed from: try, reason: not valid java name */
    private int f30398try;

    public Celse(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i) {
        this(asymmetricBlockCipher, digest, i, f30385final);
    }

    public Celse(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, int i, byte b) {
        this(asymmetricBlockCipher, digest, digest, i, b);
    }

    public Celse(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i) {
        this(asymmetricBlockCipher, digest, digest2, i, f30385final);
    }

    public Celse(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, int i, byte b) {
        this.f30393for = asymmetricBlockCipher;
        this.f30391do = digest;
        this.f30395if = digest2;
        this.f30398try = digest.getDigestSize();
        this.f30387case = digest2.getDigestSize();
        this.f30392else = false;
        this.f30394goto = i;
        this.f30386break = new byte[i];
        this.f30388catch = new byte[i + 8 + this.f30398try];
        this.f30390const = b;
    }

    public Celse(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest2, bArr, f30385final);
    }

    public Celse(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, Digest digest2, byte[] bArr, byte b) {
        this.f30393for = asymmetricBlockCipher;
        this.f30391do = digest;
        this.f30395if = digest2;
        this.f30398try = digest.getDigestSize();
        this.f30387case = digest2.getDigestSize();
        this.f30392else = true;
        int length = bArr.length;
        this.f30394goto = length;
        this.f30386break = bArr;
        this.f30388catch = new byte[length + 8 + this.f30398try];
        this.f30390const = b;
    }

    public Celse(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest, byte[] bArr) {
        this(asymmetricBlockCipher, digest, digest, bArr, f30385final);
    }

    /* renamed from: do, reason: not valid java name */
    private void m33912do(int i, byte[] bArr) {
        bArr[0] = (byte) (i >>> 24);
        bArr[1] = (byte) (i >>> 16);
        bArr[2] = (byte) (i >>> 8);
        bArr[3] = (byte) (i >>> 0);
    }

    /* renamed from: for, reason: not valid java name */
    private byte[] m33913for(byte[] bArr, int i, int i2, int i3) {
        int i4;
        byte[] bArr2 = new byte[i3];
        byte[] bArr3 = new byte[this.f30387case];
        byte[] bArr4 = new byte[4];
        this.f30395if.reset();
        int i5 = 0;
        while (true) {
            i4 = this.f30387case;
            if (i5 >= i3 / i4) {
                break;
            }
            m33912do(i5, bArr4);
            this.f30395if.update(bArr, i, i2);
            this.f30395if.update(bArr4, 0, 4);
            this.f30395if.doFinal(bArr3, 0);
            int i6 = this.f30387case;
            System.arraycopy(bArr3, 0, bArr2, i5 * i6, i6);
            i5++;
        }
        if (i4 * i5 < i3) {
            m33912do(i5, bArr4);
            this.f30395if.update(bArr, i, i2);
            this.f30395if.update(bArr4, 0, 4);
            this.f30395if.doFinal(bArr3, 0);
            int i7 = this.f30387case;
            System.arraycopy(bArr3, 0, bArr2, i5 * i7, i3 - (i5 * i7));
        }
        return bArr2;
    }

    /* renamed from: if, reason: not valid java name */
    private void m33914if(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws tw, xs {
        Digest digest = this.f30391do;
        byte[] bArr = this.f30388catch;
        digest.doFinal(bArr, (bArr.length - this.f30398try) - this.f30394goto);
        if (this.f30394goto != 0) {
            if (!this.f30392else) {
                this.f30396new.nextBytes(this.f30386break);
            }
            byte[] bArr2 = this.f30386break;
            byte[] bArr3 = this.f30388catch;
            int length = bArr3.length;
            int i = this.f30394goto;
            System.arraycopy(bArr2, 0, bArr3, length - i, i);
        }
        int i2 = this.f30398try;
        byte[] bArr4 = new byte[i2];
        Digest digest2 = this.f30391do;
        byte[] bArr5 = this.f30388catch;
        digest2.update(bArr5, 0, bArr5.length);
        this.f30391do.doFinal(bArr4, 0);
        byte[] bArr6 = this.f30389class;
        int length2 = bArr6.length;
        int i3 = this.f30394goto;
        int i4 = this.f30398try;
        bArr6[(((length2 - i3) - 1) - i4) - 1] = 1;
        System.arraycopy(this.f30386break, 0, bArr6, ((bArr6.length - i3) - i4) - 1, i3);
        byte[] bArrM33913for = m33913for(bArr4, 0, i2, (this.f30389class.length - this.f30398try) - 1);
        for (int i5 = 0; i5 != bArrM33913for.length; i5++) {
            byte[] bArr7 = this.f30389class;
            bArr7[i5] = (byte) (bArr7[i5] ^ bArrM33913for[i5]);
        }
        byte[] bArr8 = this.f30389class;
        bArr8[0] = (byte) (bArr8[0] & (255 >> ((bArr8.length * 8) - this.f30397this)));
        int length3 = bArr8.length;
        int i6 = this.f30398try;
        System.arraycopy(bArr4, 0, bArr8, (length3 - i6) - 1, i6);
        byte[] bArr9 = this.f30389class;
        bArr9[bArr9.length - 1] = this.f30390const;
        byte[] bArrProcessBlock = this.f30393for.processBlock(bArr9, 0, bArr9.length);
        m33914if(this.f30389class);
        return bArrProcessBlock;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters cipherParametersM846do;
        ck1 ck1VarM9523if;
        if (cipherParameters instanceof cc1) {
            cc1 cc1Var = (cc1) cipherParameters;
            cipherParametersM846do = cc1Var.m846do();
            this.f30396new = cc1Var.m847if();
        } else {
            if (z) {
                this.f30396new = Cfor.m33599case();
            }
            cipherParametersM846do = cipherParameters;
        }
        if (cipherParametersM846do instanceof xj1) {
            ck1VarM9523if = ((xj1) cipherParametersM846do).m9523if();
            this.f30393for.init(z, cipherParameters);
        } else {
            ck1VarM9523if = (ck1) cipherParametersM846do;
            this.f30393for.init(z, cipherParametersM846do);
        }
        int iBitLength = ck1VarM9523if.m954for().bitLength() - 1;
        this.f30397this = iBitLength;
        if (iBitLength < (this.f30398try * 8) + (this.f30394goto * 8) + 9) {
            throw new IllegalArgumentException("key too small for specified hash and salt lengths");
        }
        this.f30389class = new byte[(iBitLength + 7) / 8];
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30391do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30391do.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30391do.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        Digest digest = this.f30391do;
        byte[] bArr2 = this.f30388catch;
        digest.doFinal(bArr2, (bArr2.length - this.f30398try) - this.f30394goto);
        try {
            byte[] bArrProcessBlock = this.f30393for.processBlock(bArr, 0, bArr.length);
            byte[] bArr3 = this.f30389class;
            System.arraycopy(bArrProcessBlock, 0, bArr3, bArr3.length - bArrProcessBlock.length, bArrProcessBlock.length);
            byte[] bArr4 = this.f30389class;
            if (bArr4[bArr4.length - 1] != this.f30390const) {
                m33914if(bArr4);
                return false;
            }
            int length = bArr4.length;
            int i = this.f30398try;
            byte[] bArrM33913for = m33913for(bArr4, (length - i) - 1, i, (bArr4.length - i) - 1);
            for (int i2 = 0; i2 != bArrM33913for.length; i2++) {
                byte[] bArr5 = this.f30389class;
                bArr5[i2] = (byte) (bArr5[i2] ^ bArrM33913for[i2]);
            }
            byte[] bArr6 = this.f30389class;
            bArr6[0] = (byte) (bArr6[0] & (255 >> ((bArr6.length * 8) - this.f30397this)));
            int i3 = 0;
            while (true) {
                byte[] bArr7 = this.f30389class;
                int length2 = bArr7.length;
                int i4 = this.f30398try;
                int i5 = this.f30394goto;
                if (i3 != ((length2 - i4) - i5) - 2) {
                    if (bArr7[i3] != 0) {
                        m33914if(bArr7);
                        return false;
                    }
                    i3++;
                } else {
                    if (bArr7[((bArr7.length - i4) - i5) - 2] != 1) {
                        m33914if(bArr7);
                        return false;
                    }
                    if (this.f30392else) {
                        byte[] bArr8 = this.f30386break;
                        byte[] bArr9 = this.f30388catch;
                        System.arraycopy(bArr8, 0, bArr9, bArr9.length - i5, i5);
                    } else {
                        int length3 = ((bArr7.length - i5) - i4) - 1;
                        byte[] bArr10 = this.f30388catch;
                        System.arraycopy(bArr7, length3, bArr10, bArr10.length - i5, i5);
                    }
                    Digest digest2 = this.f30391do;
                    byte[] bArr11 = this.f30388catch;
                    digest2.update(bArr11, 0, bArr11.length);
                    Digest digest3 = this.f30391do;
                    byte[] bArr12 = this.f30388catch;
                    digest3.doFinal(bArr12, bArr12.length - this.f30398try);
                    int length4 = this.f30389class.length;
                    int i6 = this.f30398try;
                    int i7 = (length4 - i6) - 1;
                    int length5 = this.f30388catch.length - i6;
                    while (true) {
                        byte[] bArr13 = this.f30388catch;
                        if (length5 == bArr13.length) {
                            m33914if(bArr13);
                            m33914if(this.f30389class);
                            return true;
                        }
                        if ((this.f30389class[i7] ^ bArr13[length5]) != 0) {
                            m33914if(bArr13);
                            m33914if(this.f30389class);
                            return false;
                        }
                        i7++;
                        length5++;
                    }
                }
            }
        } catch (Exception unused) {
            return false;
        }
    }
}
