package org.bouncycastle.crypto.tls;

import android.support.v4.mw1;
import java.security.SecureRandom;
import org.bouncycastle.crypto.prng.RandomGenerator;

/* loaded from: classes3.dex */
public interface TlsContext {
    byte[] exportKeyingMaterial(String str, byte[] bArr, int i);

    a getClientVersion();

    RandomGenerator getNonceRandomGenerator();

    TlsSession getResumableSession();

    SecureRandom getSecureRandom();

    mw1 getSecurityParameters();

    a getServerVersion();

    Object getUserObject();

    boolean isServer();

    void setUserObject(Object obj);
}
