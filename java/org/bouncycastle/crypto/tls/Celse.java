package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.xs;
import org.bouncycastle.crypto.Signer;

/* renamed from: org.bouncycastle.crypto.tls.else, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Celse implements TlsSigner {

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30587do;

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public Signer createSigner(a4 a4Var) {
        return createSigner(null, a4Var);
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public Signer createVerifyer(a4 a4Var) {
        return createVerifyer(null, a4Var);
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public byte[] generateRawSignature(a4 a4Var, byte[] bArr) throws xs {
        return generateRawSignature(null, a4Var, bArr);
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public void init(TlsContext tlsContext) {
        this.f30587do = tlsContext;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSigner
    public boolean verifyRawSignature(byte[] bArr, a4 a4Var, byte[] bArr2) throws xs {
        return verifyRawSignature(null, bArr, a4Var, bArr2);
    }
}
