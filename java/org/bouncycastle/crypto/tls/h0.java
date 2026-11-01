package org.bouncycastle.crypto.tls;

import android.support.v4.mw1;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
class h0 extends Cfor implements TlsServerContext {
    public h0(SecureRandom secureRandom, mw1 mw1Var) {
        super(secureRandom, mw1Var);
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public boolean isServer() {
        return true;
    }
}
