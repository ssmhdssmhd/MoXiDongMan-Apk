package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.xs;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes3.dex */
public interface TlsSigner {
    Signer createSigner(a4 a4Var);

    Signer createSigner(i iVar, a4 a4Var);

    Signer createVerifyer(a4 a4Var);

    Signer createVerifyer(i iVar, a4 a4Var);

    byte[] generateRawSignature(a4 a4Var, byte[] bArr) throws xs;

    byte[] generateRawSignature(i iVar, a4 a4Var, byte[] bArr) throws xs;

    void init(TlsContext tlsContext);

    boolean isValidPublicKey(a4 a4Var);

    boolean verifyRawSignature(i iVar, byte[] bArr, a4 a4Var, byte[] bArr2) throws xs;

    boolean verifyRawSignature(byte[] bArr, a4 a4Var, byte[] bArr2) throws xs;
}
