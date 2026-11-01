package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry implements TlsPeer {
    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public void notifyAlertRaised(short s, short s2, String str, Throwable th) {
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public void notifyAlertReceived(short s, short s2) {
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public void notifyHandshakeComplete() throws IOException {
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public void notifySecureRenegotiation(boolean z) throws IOException {
        if (!z) {
            throw new n72((short) 40);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public boolean requiresExtendedMasterSecret() {
        return false;
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public boolean shouldUseGMTUnixTime() {
        return false;
    }
}
