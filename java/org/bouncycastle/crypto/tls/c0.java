package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.xs;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.digests.Cdo;
import org.bouncycastle.crypto.encodings.Cfor;
import org.bouncycastle.crypto.engines.Creturn;
import org.bouncycastle.crypto.signers.Cgoto;
import org.bouncycastle.crypto.signers.Cnew;

/* loaded from: classes3.dex */
public class c0 extends Celse {
    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public Signer createSigner(i iVar, a4 a4Var) {
        return m34022if(iVar, false, true, new cc1(a4Var, this.f30587do.getSecureRandom()));
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public Signer createVerifyer(i iVar, a4 a4Var) {
        return m34022if(iVar, false, false, a4Var);
    }

    /* renamed from: do, reason: not valid java name */
    public AsymmetricBlockCipher m34021do() {
        return new Cfor(new Creturn());
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public byte[] generateRawSignature(i iVar, a4 a4Var, byte[] bArr) throws xs {
        Signer signerM34022if = m34022if(iVar, true, true, new cc1(a4Var, this.f30587do.getSecureRandom()));
        signerM34022if.update(bArr, 0, bArr.length);
        return signerM34022if.generateSignature();
    }

    /* renamed from: if, reason: not valid java name */
    public Signer m34022if(i iVar, boolean z, boolean z2, CipherParameters cipherParameters) {
        if ((iVar != null) != l0.w(this.f30587do)) {
            throw new IllegalStateException();
        }
        if (iVar != null && iVar.m34153for() != 1) {
            throw new IllegalStateException();
        }
        Digest cdo = z ? new Cdo() : iVar == null ? new Cthrow() : l0.m34214throws(iVar.m34154if());
        Signer cgoto = iVar != null ? new Cgoto(cdo, l0.g(iVar.m34154if())) : new Cnew(m34021do(), cdo);
        cgoto.init(z2, cipherParameters);
        return cgoto;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public boolean isValidPublicKey(a4 a4Var) {
        return (a4Var instanceof ck1) && !a4Var.m33do();
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public boolean verifyRawSignature(i iVar, byte[] bArr, a4 a4Var, byte[] bArr2) throws xs {
        Signer signerM34022if = m34022if(iVar, true, false, a4Var);
        signerM34022if.update(bArr2, 0, bArr2.length);
        return signerM34022if.verifySignature(bArr);
    }
}
