package org.bouncycastle.crypto.tls;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

/* loaded from: classes3.dex */
public interface TlsClient extends TlsPeer {
    TlsAuthentication getAuthentication() throws IOException;

    int[] getCipherSuites();

    Hashtable getClientExtensions() throws IOException;

    a getClientHelloRecordLayerVersion();

    Vector getClientSupplementalData() throws IOException;

    a getClientVersion();

    short[] getCompressionMethods();

    TlsKeyExchange getKeyExchange() throws IOException;

    TlsSession getSessionToResume();

    void init(TlsClientContext tlsClientContext);

    boolean isFallback();

    void notifyNewSessionTicket(Ctransient ctransient) throws IOException;

    void notifySelectedCipherSuite(int i);

    void notifySelectedCompressionMethod(short s);

    void notifyServerVersion(a aVar) throws IOException;

    void notifySessionID(byte[] bArr);

    void processServerExtensions(Hashtable hashtable) throws IOException;

    void processServerSupplementalData(Vector vector) throws IOException;
}
