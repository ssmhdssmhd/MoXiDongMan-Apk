package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes3.dex */
public interface TlsServer extends TlsPeer {
    Ccatch getCertificateRequest() throws IOException;

    Cclass getCertificateStatus() throws IOException;

    TlsCredentials getCredentials() throws IOException;

    TlsKeyExchange getKeyExchange() throws IOException;

    Ctransient getNewSessionTicket() throws IOException;

    int getSelectedCipherSuite() throws IOException;

    short getSelectedCompressionMethod() throws IOException;

    Hashtable getServerExtensions() throws IOException;

    Vector getServerSupplementalData() throws IOException;

    a getServerVersion() throws IOException;

    void init(TlsServerContext tlsServerContext);

    void notifyClientCertificate(Cbreak cbreak) throws IOException;

    void notifyClientVersion(a aVar) throws IOException;

    void notifyFallback(boolean z) throws IOException;

    void notifyOfferedCipherSuites(int[] iArr) throws IOException;

    void notifyOfferedCompressionMethods(short[] sArr) throws IOException;

    void processClientExtensions(Hashtable hashtable) throws IOException;

    void processClientSupplementalData(Vector vector) throws IOException;
}
