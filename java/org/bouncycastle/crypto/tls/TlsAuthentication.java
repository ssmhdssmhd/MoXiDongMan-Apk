package org.bouncycastle.crypto.tls;

import java.io.IOException;

/* loaded from: classes3.dex */
public interface TlsAuthentication {
    TlsCredentials getClientCredentials(Ccatch ccatch) throws IOException;

    void notifyServerCertificate(Cbreak cbreak) throws IOException;
}
