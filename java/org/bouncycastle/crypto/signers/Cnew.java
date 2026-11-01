package org.bouncycastle.crypto.signers;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.q3;
import android.support.v4.tw;
import android.support.v4.xs;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;

/* renamed from: org.bouncycastle.crypto.signers.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final AsymmetricBlockCipher f30414do;

    /* renamed from: for, reason: not valid java name */
    private boolean f30415for;

    /* renamed from: if, reason: not valid java name */
    private final Digest f30416if;

    public Cnew(AsymmetricBlockCipher asymmetricBlockCipher, Digest digest) {
        this.f30414do = asymmetricBlockCipher;
        this.f30416if = digest;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws tw, xs {
        if (!this.f30415for) {
            throw new IllegalStateException("GenericSigner not initialised for signature generation.");
        }
        int digestSize = this.f30416if.getDigestSize();
        byte[] bArr = new byte[digestSize];
        this.f30416if.doFinal(bArr, 0);
        return this.f30414do.processBlock(bArr, 0, digestSize);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f30415for = z;
        a4 a4Var = cipherParameters instanceof cc1 ? (a4) ((cc1) cipherParameters).m846do() : (a4) cipherParameters;
        if (z && !a4Var.m33do()) {
            throw new IllegalArgumentException("signing requires private key");
        }
        if (!z && a4Var.m33do()) {
            throw new IllegalArgumentException("verification requires public key");
        }
        reset();
        this.f30414do.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30416if.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30416if.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30416if.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        if (this.f30415for) {
            throw new IllegalStateException("GenericSigner not initialised for verification");
        }
        int digestSize = this.f30416if.getDigestSize();
        byte[] bArr2 = new byte[digestSize];
        this.f30416if.doFinal(bArr2, 0);
        try {
            byte[] bArrProcessBlock = this.f30414do.processBlock(bArr, 0, bArr.length);
            if (bArrProcessBlock.length < digestSize) {
                byte[] bArr3 = new byte[digestSize];
                System.arraycopy(bArrProcessBlock, 0, bArr3, digestSize - bArrProcessBlock.length, bArrProcessBlock.length);
                bArrProcessBlock = bArr3;
            }
            return q3.m6360abstract(bArrProcessBlock, bArr2);
        } catch (Exception unused) {
            return false;
        }
    }
}
