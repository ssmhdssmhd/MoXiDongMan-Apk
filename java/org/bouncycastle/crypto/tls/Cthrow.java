package org.bouncycastle.crypto.tls;

import android.support.v4.mr1;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.tls.throw, reason: invalid class name */
/* loaded from: classes3.dex */
class Cthrow implements TlsHandshakeHash {

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30776do;

    /* renamed from: for, reason: not valid java name */
    public Digest f30777for;

    /* renamed from: if, reason: not valid java name */
    public Digest f30778if;

    public Cthrow() {
        this.f30778if = l0.m34214throws((short) 1);
        this.f30777for = l0.m34214throws((short) 2);
    }

    public Cthrow(Cthrow cthrow) {
        this.f30776do = cthrow.f30776do;
        this.f30778if = l0.m34205public((short) 1, cthrow.f30778if);
        this.f30777for = l0.m34205public((short) 2, cthrow.f30777for);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34372do(Digest digest, byte[] bArr, byte[] bArr2, int i) {
        byte[] bArr3 = this.f30776do.getSecurityParameters().f4049case;
        digest.update(bArr3, 0, bArr3.length);
        digest.update(bArr, 0, i);
        int digestSize = digest.getDigestSize();
        byte[] bArr4 = new byte[digestSize];
        digest.doFinal(bArr4, 0);
        digest.update(bArr3, 0, bArr3.length);
        digest.update(bArr2, 0, i);
        digest.update(bArr4, 0, digestSize);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        TlsContext tlsContext = this.f30776do;
        if (tlsContext != null && l0.q(tlsContext)) {
            Digest digest = this.f30778if;
            byte[] bArr2 = mr1.f4013case;
            byte[] bArr3 = mr1.f4014else;
            m34372do(digest, bArr2, bArr3, 48);
            m34372do(this.f30777for, bArr2, bArr3, 40);
        }
        int iDoFinal = this.f30778if.doFinal(bArr, i);
        return iDoFinal + this.f30777for.doFinal(bArr, i + iDoFinal);
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public Digest forkPRFHash() {
        return new Cthrow(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.f30778if.getAlgorithmName() + " and " + this.f30777for.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f30778if.getDigestSize() + this.f30777for.getDigestSize();
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public byte[] getFinalHash(short s) {
        throw new IllegalStateException("CombinedHash doesn't support multiple hashes");
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public void init(TlsContext tlsContext) {
        this.f30776do = tlsContext;
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public TlsHandshakeHash notifyPRFDetermined() {
        return this;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f30778if.reset();
        this.f30777for.reset();
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public void sealHashAlgorithms() {
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public TlsHandshakeHash stopTracking() {
        return new Cthrow(this);
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public void trackHashAlgorithm(short s) {
        throw new IllegalStateException("CombinedHash only supports calculating the legacy PRF for handshake hash");
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        this.f30778if.update(b);
        this.f30777for.update(b);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        this.f30778if.update(bArr, i, i2);
        this.f30777for.update(bArr, i, i2);
    }
}
