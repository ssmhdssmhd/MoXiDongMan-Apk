package android.support.v4;

import org.bouncycastle.crypto.tls.TlsSignerCredentials;

/* loaded from: classes3.dex */
public abstract class j extends h implements TlsSignerCredentials {
    @Override // org.bouncycastle.crypto.tls.TlsSignerCredentials
    public org.bouncycastle.crypto.tls.i getSignatureAndHashAlgorithm() {
        throw new IllegalStateException("TlsSignerCredentials implementation does not support (D)TLS 1.2+");
    }
}
