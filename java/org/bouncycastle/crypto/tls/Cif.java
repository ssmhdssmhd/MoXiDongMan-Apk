package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.r72;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

/* renamed from: org.bouncycastle.crypto.tls.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif extends Ctry implements TlsClient {

    /* renamed from: case, reason: not valid java name */
    public short[] f30630case;

    /* renamed from: do, reason: not valid java name */
    public TlsCipherFactory f30631do;

    /* renamed from: else, reason: not valid java name */
    public int f30632else;

    /* renamed from: for, reason: not valid java name */
    public Vector f30633for;

    /* renamed from: goto, reason: not valid java name */
    public short f30634goto;

    /* renamed from: if, reason: not valid java name */
    public TlsClientContext f30635if;

    /* renamed from: new, reason: not valid java name */
    public int[] f30636new;

    /* renamed from: try, reason: not valid java name */
    public short[] f30637try;

    public Cif() {
        this(new Cextends());
    }

    public Cif(TlsCipherFactory tlsCipherFactory) {
        this.f30631do = tlsCipherFactory;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m34155do(Integer num, byte[] bArr) throws IOException {
        int iIntValue = num.intValue();
        if (iIntValue == 10) {
            s.m34305finally(bArr);
            return true;
        }
        if (iIntValue != 11) {
            return false;
        }
        s.m34315package(bArr);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public a m34156for() {
        return a.f30453new;
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public TlsCipher getCipher() throws IOException {
        return this.f30631do.createCipher(this.f30635if, l0.a(this.f30632else), l0.e(this.f30632else));
    }

    public Hashtable getClientExtensions() throws IOException {
        Hashtable hashtableM34410import = null;
        if (l0.r(this.f30635if.getClientVersion())) {
            this.f30633for = l0.m34211synchronized();
            hashtableM34410import = v.m34410import(null);
            l0.m34201new(hashtableM34410import, this.f30633for);
        }
        if (!s.m34295case(getCipherSuites())) {
            return hashtableM34410import;
        }
        this.f30636new = new int[]{23, 24};
        this.f30637try = new short[]{0, 1, 2};
        Hashtable hashtableM34410import2 = v.m34410import(hashtableM34410import);
        s.m34301do(hashtableM34410import2, this.f30636new);
        s.m34308if(hashtableM34410import2, this.f30637try);
        return hashtableM34410import2;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public a getClientHelloRecordLayerVersion() {
        return getClientVersion();
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public Vector getClientSupplementalData() throws IOException {
        return null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public a getClientVersion() {
        return a.f30449case;
    }

    @Override // org.bouncycastle.crypto.tls.TlsPeer
    public TlsCompression getCompression() throws IOException {
        if (this.f30634goto == 0) {
            return new r72();
        }
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public short[] getCompressionMethods() {
        return new short[]{0};
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsSession getSessionToResume() {
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public void m34157if(Hashtable hashtable, Integer num) throws IOException {
        byte[] bArrB = l0.b(hashtable, num);
        if (bArrB != null && !m34155do(num, bArrB)) {
            throw new n72((short) 47);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void init(TlsClientContext tlsClientContext) {
        this.f30635if = tlsClientContext;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public boolean isFallback() {
        return false;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifyNewSessionTicket(Ctransient ctransient) throws IOException {
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifySelectedCipherSuite(int i) {
        this.f30632else = i;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifySelectedCompressionMethod(short s) {
        this.f30634goto = s;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifyServerVersion(a aVar) throws IOException {
        if (!m34156for().m33943this(aVar)) {
            throw new n72((short) 70);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void notifySessionID(byte[] bArr) {
    }

    public void processServerExtensions(Hashtable hashtable) throws IOException {
        if (hashtable != null) {
            m34157if(hashtable, l0.f30681try);
            m34157if(hashtable, s.f30746do);
            if (s.m34319return(this.f30632else)) {
                this.f30630case = s.m34310import(hashtable);
            } else {
                m34157if(hashtable, s.f30748if);
            }
            m34157if(hashtable, v.f30815try);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public void processServerSupplementalData(Vector vector) throws IOException {
        if (vector != null) {
            throw new n72((short) 10);
        }
    }
}
