package org.bouncycastle.crypto.tls;

import android.support.v4.q3;

/* loaded from: classes3.dex */
class j0 implements TlsSession {

    /* renamed from: do, reason: not valid java name */
    public final byte[] f30647do;

    /* renamed from: for, reason: not valid java name */
    public boolean f30648for;

    /* renamed from: if, reason: not valid java name */
    public final h f30649if;

    public j0(byte[] bArr, h hVar) {
        if (bArr == null) {
            throw new IllegalArgumentException("'sessionID' cannot be null");
        }
        if (bArr.length > 32) {
            throw new IllegalArgumentException("'sessionID' cannot be longer than 32 bytes");
        }
        this.f30647do = q3.m6371final(bArr);
        this.f30649if = hVar;
        this.f30648for = bArr.length > 0 && hVar != null && hVar.m34129break();
    }

    @Override // org.bouncycastle.crypto.tls.TlsSession
    public synchronized h exportSessionParameters() {
        h hVar;
        hVar = this.f30649if;
        return hVar == null ? null : hVar.m34136if();
    }

    @Override // org.bouncycastle.crypto.tls.TlsSession
    public synchronized byte[] getSessionID() {
        return this.f30647do;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSession
    public synchronized void invalidate() {
        this.f30648for = false;
    }

    @Override // org.bouncycastle.crypto.tls.TlsSession
    public synchronized boolean isResumable() {
        return this.f30648for;
    }
}
