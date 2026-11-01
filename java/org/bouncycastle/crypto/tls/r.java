package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.bv;
import android.support.v4.cc1;
import android.support.v4.xs;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.digests.Cdo;

/* loaded from: classes3.dex */
public abstract class r extends Celse {
    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public Signer createSigner(i iVar, a4 a4Var) {
        return m34276new(iVar, false, true, a4Var);
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public Signer createVerifyer(i iVar, a4 a4Var) {
        return m34276new(iVar, false, false, a4Var);
    }

    /* renamed from: do */
    public abstract DSA mo4281do(short s);

    /* renamed from: for, reason: not valid java name */
    public CipherParameters m34275for(boolean z, CipherParameters cipherParameters) {
        return cipherParameters;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public byte[] generateRawSignature(i iVar, a4 a4Var, byte[] bArr) throws xs {
        int i;
        int length;
        Signer signerM34276new = m34276new(iVar, true, true, new cc1(a4Var, this.f30587do.getSecureRandom()));
        if (iVar == null) {
            i = 16;
            length = 20;
        } else {
            i = 0;
            length = bArr.length;
        }
        signerM34276new.update(bArr, i, length);
        return signerM34276new.generateSignature();
    }

    /* renamed from: if */
    public abstract short mo4282if();

    /* renamed from: new, reason: not valid java name */
    public Signer m34276new(i iVar, boolean z, boolean z2, CipherParameters cipherParameters) {
        if ((iVar != null) != l0.w(this.f30587do)) {
            throw new IllegalStateException();
        }
        if (iVar != null && iVar.m34153for() != mo4282if()) {
            throw new IllegalStateException();
        }
        short sM34154if = iVar == null ? (short) 2 : iVar.m34154if();
        bv bvVar = new bv(mo4281do(sM34154if), z ? new Cdo() : l0.m34214throws(sM34154if));
        bvVar.init(z2, m34275for(z2, cipherParameters));
        return bvVar;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public boolean verifyRawSignature(i iVar, byte[] bArr, a4 a4Var, byte[] bArr2) throws xs {
        Signer signerM34276new = m34276new(iVar, true, false, a4Var);
        if (iVar == null) {
            signerM34276new.update(bArr2, 16, 20);
        } else {
            signerM34276new.update(bArr2, 0, bArr2.length);
        }
        return signerM34276new.verifySignature(bArr);
    }
}
