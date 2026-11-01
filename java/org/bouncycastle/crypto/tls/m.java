package org.bouncycastle.crypto.tls;

import android.support.v4.mw1;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
class m extends Cfor implements TlsClientContext {
    public m(SecureRandom secureRandom, mw1 mw1Var) {
        super(secureRandom, mw1Var);
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public boolean isServer() {
        return false;
    }
}
