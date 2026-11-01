package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.vl;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.tls.a0;
import org.bouncycastle.crypto.util.Cconst;

/* loaded from: classes3.dex */
public class i0 extends a0 {
    public TlsServer n;
    public h0 o;
    public TlsKeyExchange p;
    public TlsCredentials q;
    public Ccatch r;
    public short s;
    public TlsHandshakeHash t;

    public i0(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        super(inputStream, outputStream, secureRandom);
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = (short) -1;
        this.t = null;
    }

    public i0(SecureRandom secureRandom) {
        super(secureRandom);
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = (short) -1;
        this.t = null;
    }

    public void A(ByteArrayInputStream byteArrayInputStream) throws IOException {
        Cbreak cbreakM34012else = Cbreak.m34012else(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        z(cbreakM34012else);
    }

    public void B(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] bArrM5018class;
        if (this.r == null) {
            throw new IllegalStateException();
        }
        Cvolatile cvolatileM34429new = Cvolatile.m34429new(mo33983while(), byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        try {
            i iVarM34432if = cvolatileM34429new.m34432if();
            if (l0.w(mo33983while())) {
                l0.m0(this.r.m34033new(), iVarM34432if);
                bArrM5018class = this.t.getFinalHash(iVarM34432if.m34154if());
            } else {
                bArrM5018class = this.f30492throw.m5018class();
            }
            a4 a4VarM34475for = Cconst.m34475for(this.f30495while.m34015for(0).m6960const());
            TlsSigner tlsSignerM34192finally = l0.m34192finally(this.s);
            tlsSignerM34192finally.init(mo33983while());
            if (tlsSignerM34192finally.verifyRawSignature(iVarM34432if, cvolatileM34429new.m34431for(), a4VarM34475for, bArrM5018class)) {
            } else {
                throw new n72((short) 51);
            }
        } catch (n72 e) {
            throw e;
        } catch (Exception e2) {
            throw new n72((short) 51, e2);
        }
    }

    public void C(ByteArrayInputStream byteArrayInputStream) throws IOException {
        a aVarF0 = l0.f0(byteArrayInputStream);
        this.f30483new.m34007throws(aVarF0);
        if (aVarF0.m33941goto()) {
            throw new n72((short) 47);
        }
        byte[] bArrO = l0.O(32, byteArrayInputStream);
        if (l0.R(byteArrayInputStream).length > 32) {
            throw new n72((short) 47);
        }
        int iT = l0.T(byteArrayInputStream);
        if (iT < 2 || (iT & 1) != 0) {
            throw new n72((short) 50);
        }
        this.f30481import = l0.V(iT / 2, byteArrayInputStream);
        short sC0 = l0.c0(byteArrayInputStream);
        if (sC0 < 1) {
            throw new n72((short) 47);
        }
        this.f30482native = l0.e0(sC0, byteArrayInputStream);
        Hashtable hashtableF = a0.f(byteArrayInputStream);
        this.f30486public = hashtableF;
        this.f30492throw.f4060super = v.m34401default(hashtableF);
        if (!this.f30492throw.m5022final() && this.n.requiresExtendedMasterSecret()) {
            throw new n72((short) 40);
        }
        mo33967import().m34107if(aVarF0);
        this.n.notifyClientVersion(aVarF0);
        this.n.notifyFallback(q3.m6366continue(this.f30481import, vl.d3));
        this.f30492throw.f4054else = bArrO;
        this.n.notifyOfferedCipherSuites(this.f30481import);
        this.n.notifyOfferedCompressionMethods(this.f30482native);
        if (q3.m6366continue(this.f30481import, 255)) {
            this.f30472default = true;
        }
        byte[] bArrB = l0.b(this.f30486public, a0.f30457continue);
        if (bArrB != null) {
            this.f30472default = true;
            if (!q3.m6360abstract(bArrB, a0.m33946catch(l0.f30675do))) {
                throw new n72((short) 40);
            }
        }
        this.n.notifySecureRenegotiation(this.f30472default);
        Hashtable hashtable = this.f30486public;
        if (hashtable != null) {
            v.m34418return(hashtable);
            this.n.processClientExtensions(this.f30486public);
        }
    }

    public void D(ByteArrayInputStream byteArrayInputStream) throws IOException {
        this.p.processClientKeyExchange(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        if (l0.q(mo33983while())) {
            a0.m33947const(mo33983while(), this.p);
        }
        this.t = this.f30483new.m34003super();
        this.f30492throw.f4061this = a0.m33950native(mo33983while(), this.t, null);
        if (!l0.q(mo33983while())) {
            a0.m33947const(mo33983while(), this.p);
        }
        this.f30483new.m34000public(mo33977switch().getCompression(), mo33977switch().getCipher());
    }

    public void E(Ccatch ccatch) throws IOException {
        a0.Cdo cdo = new a0.Cdo(this, (short) 13);
        ccatch.m34030do(cdo);
        cdo.m33984do();
    }

    public void F(Cclass cclass) throws IOException {
        a0.Cdo cdo = new a0.Cdo(this, (short) 22);
        cclass.m34036do(cdo);
        cdo.m33984do();
    }

    public void G(Ctransient ctransient) throws IOException {
        if (ctransient == null) {
            throw new n72((short) 80);
        }
        a0.Cdo cdo = new a0.Cdo(this, (short) 4);
        ctransient.m34391do(cdo);
        cdo.m33984do();
    }

    public void H() throws IOException {
        byte[] bArr = new byte[4];
        l0.I0((short) 14, bArr, 0);
        l0.y0(0, bArr, 1);
        u(bArr, 0, 4);
    }

    public void I() throws IOException {
        a0.Cdo cdo = new a0.Cdo(this, (short) 2);
        a serverVersion = this.n.getServerVersion();
        if (!serverVersion.m33943this(mo33983while().getClientVersion())) {
            throw new n72((short) 80);
        }
        this.f30483new.m34002static(serverVersion);
        this.f30483new.m34007throws(serverVersion);
        this.f30483new.m34004switch(true);
        mo33967import().m34108new(serverVersion);
        l0.N0(serverVersion, cdo);
        cdo.write(this.f30492throw.f4057goto);
        byte[] bArr = l0.f30675do;
        l0.q0(bArr, cdo);
        int selectedCipherSuite = this.n.getSelectedCipherSuite();
        if (!q3.m6366continue(this.f30481import, selectedCipherSuite) || selectedCipherSuite == 0 || vl.m8898do(selectedCipherSuite) || !l0.y(selectedCipherSuite, mo33983while().getServerVersion())) {
            throw new n72((short) 80);
        }
        this.f30492throw.f4058if = selectedCipherSuite;
        short selectedCompressionMethod = this.n.getSelectedCompressionMethod();
        if (!q3.m6388strictfp(this.f30482native, selectedCompressionMethod)) {
            throw new n72((short) 80);
        }
        this.f30492throw.f4056for = selectedCompressionMethod;
        l0.r0(selectedCipherSuite, cdo);
        l0.H0(selectedCompressionMethod, cdo);
        Hashtable hashtableM34410import = v.m34410import(this.n.getServerExtensions());
        this.f30487return = hashtableM34410import;
        if (this.f30472default) {
            Integer num = a0.f30457continue;
            if (l0.b(hashtableM34410import, num) == null) {
                this.f30487return.put(num, a0.m33946catch(bArr));
            }
        }
        if (l0.q(this.o)) {
            this.f30492throw.f4060super = false;
        } else if (this.f30492throw.m5022final()) {
            v.m34409if(this.f30487return);
        }
        if (!this.f30487return.isEmpty()) {
            this.f30492throw.f4055final = v.m34425throws(this.f30487return);
            this.f30492throw.f4051class = a(this.f30486public, this.f30487return, (short) 80);
            this.f30492throw.f4052const = v.m34404extends(this.f30487return);
            this.f30475extends = !this.f30490switch && l0.k(this.f30487return, v.f30810else, (short) 80);
            this.f30477finally = !this.f30490switch && l0.k(this.f30487return, a0.f30462strictfp, (short) 80);
            a0.t(cdo, this.f30487return);
        }
        this.f30492throw.f4059new = a0.m33952static(mo33983while(), this.f30492throw.m5025if());
        this.f30492throw.f4062try = 12;
        m33966if();
        cdo.m33984do();
    }

    public void J(byte[] bArr) throws IOException {
        a0.Cdo cdo = new a0.Cdo((short) 12, bArr.length);
        cdo.write(bArr);
        cdo.m33984do();
    }

    @Override // org.bouncycastle.crypto.tls.a0
    /* renamed from: abstract */
    public void mo33955abstract(short s, ByteArrayInputStream byteArrayInputStream) throws IOException {
        Cclass certificateStatus;
        Cbreak certificate = null;
        if (s == 1) {
            short s2 = this.f30488static;
            if (s2 != 0) {
                if (s2 != 16) {
                    throw new n72((short) 10);
                }
                j();
                return;
            }
            C(byteArrayInputStream);
            this.f30488static = (short) 1;
            I();
            this.f30488static = (short) 2;
            this.f30483new.m33996final();
            Vector serverSupplementalData = this.n.getServerSupplementalData();
            if (serverSupplementalData != null) {
                q(serverSupplementalData);
            }
            this.f30488static = (short) 3;
            TlsKeyExchange keyExchange = this.n.getKeyExchange();
            this.p = keyExchange;
            keyExchange.init(mo33983while());
            TlsCredentials credentials = this.n.getCredentials();
            this.q = credentials;
            if (credentials == null) {
                this.p.skipServerCredentials();
            } else {
                this.p.processServerCredentials(credentials);
                certificate = this.q.getCertificate();
                n(certificate);
            }
            this.f30488static = (short) 4;
            if (certificate == null || certificate.m34013case()) {
                this.f30475extends = false;
            }
            if (this.f30475extends && (certificateStatus = this.n.getCertificateStatus()) != null) {
                F(certificateStatus);
            }
            this.f30488static = (short) 5;
            byte[] bArrGenerateServerKeyExchange = this.p.generateServerKeyExchange();
            if (bArrGenerateServerKeyExchange != null) {
                J(bArrGenerateServerKeyExchange);
            }
            this.f30488static = (short) 6;
            if (this.q != null) {
                Ccatch certificateRequest = this.n.getCertificateRequest();
                this.r = certificateRequest;
                if (certificateRequest != null) {
                    if (l0.w(mo33983while()) != (this.r.m34033new() != null)) {
                        throw new n72((short) 80);
                    }
                    this.p.validateCertificateRequest(this.r);
                    E(this.r);
                    l0.j0(this.f30483new.m34005this(), this.r.m34033new());
                }
            }
            this.f30488static = (short) 7;
            H();
            this.f30488static = (short) 8;
            this.f30483new.m34005this().sealHashAlgorithms();
            return;
        }
        if (s == 11) {
            short s3 = this.f30488static;
            if (s3 == 8) {
                this.n.processClientSupplementalData(null);
            } else if (s3 != 9) {
                throw new n72((short) 10);
            }
            if (this.r == null) {
                throw new n72((short) 10);
            }
            A(byteArrayInputStream);
            this.f30488static = (short) 10;
            return;
        }
        if (s == 20) {
            short s4 = this.f30488static;
            if (s4 != 11) {
                if (s4 != 12) {
                    throw new n72((short) 10);
                }
            } else if (y()) {
                throw new n72((short) 10);
            }
            m33968instanceof(byteArrayInputStream);
            this.f30488static = (short) 13;
            if (this.f30477finally) {
                G(this.n.getNewSessionTicket());
            }
            this.f30488static = (short) 14;
            o();
            p();
            this.f30488static = (short) 15;
            m33978this();
            return;
        }
        if (s == 23) {
            if (this.f30488static != 8) {
                throw new n72((short) 10);
            }
            this.n.processClientSupplementalData(a0.i(byteArrayInputStream));
            this.f30488static = (short) 9;
            return;
        }
        if (s == 15) {
            if (this.f30488static != 11) {
                throw new n72((short) 10);
            }
            if (!y()) {
                throw new n72((short) 10);
            }
            B(byteArrayInputStream);
            this.f30488static = (short) 12;
            return;
        }
        if (s != 16) {
            throw new n72((short) 10);
        }
        switch (this.f30488static) {
            case 8:
                this.n.processClientSupplementalData(null);
            case 9:
                if (this.r == null) {
                    this.p.skipClientCredentials();
                } else {
                    if (l0.w(mo33983while())) {
                        throw new n72((short) 10);
                    }
                    if (!l0.q(mo33983while())) {
                        z(Cbreak.f30534if);
                    } else if (this.f30495while == null) {
                        throw new n72((short) 10);
                    }
                }
            case 10:
                D(byteArrayInputStream);
                this.f30488static = (short) 11;
                return;
            default:
                throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.a0
    /* renamed from: case */
    public void mo33956case() {
        super.mo33956case();
        this.p = null;
        this.q = null;
        this.r = null;
        this.t = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if (r3 == 9) goto L15;
     */
    @Override // org.bouncycastle.crypto.tls.a0
    /* renamed from: default */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo33959default(short s) throws IOException {
        super.mo33959default(s);
        if (s != 41) {
            return;
        }
        if (l0.q(mo33983while()) && this.r != null) {
            short s2 = this.f30488static;
            if (s2 == 8) {
                this.n.processClientSupplementalData(null);
            }
            z(Cbreak.f30534if);
            this.f30488static = (short) 10;
            return;
        }
        throw new n72((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.a0
    /* renamed from: import */
    public Cfor mo33967import() {
        return this.o;
    }

    @Override // org.bouncycastle.crypto.tls.a0
    /* renamed from: switch */
    public TlsPeer mo33977switch() {
        return this.n;
    }

    @Override // org.bouncycastle.crypto.tls.a0
    /* renamed from: while */
    public TlsContext mo33983while() {
        return this.o;
    }

    public void x(TlsServer tlsServer) throws IOException {
        if (tlsServer == null) {
            throw new IllegalArgumentException("'tlsServer' cannot be null");
        }
        if (this.n != null) {
            throw new IllegalStateException("'accept' can only be called once");
        }
        this.n = tlsServer;
        mw1 mw1Var = new mw1();
        this.f30492throw = mw1Var;
        mw1Var.f4053do = 0;
        this.o = new h0(this.f30494try, this.f30492throw);
        this.f30492throw.f4057goto = a0.m33945break(tlsServer.shouldUseGMTUnixTime(), this.o.getNonceRandomGenerator());
        this.n.init(this.o);
        this.f30483new.m33993const(this.o);
        this.f30483new.m34004switch(false);
        m33970new();
    }

    public boolean y() {
        short s = this.s;
        return s >= 0 && l0.l(s);
    }

    public void z(Cbreak cbreak) throws IOException {
        if (this.r == null) {
            throw new IllegalStateException();
        }
        if (this.f30495while != null) {
            throw new n72((short) 10);
        }
        this.f30495while = cbreak;
        if (cbreak.m34013case()) {
            this.p.skipClientCredentials();
        } else {
            this.s = l0.m34204protected(cbreak, this.q.getCertificate());
            this.p.processClientCertificate(cbreak);
        }
        this.n.notifyClientCertificate(cbreak);
    }
}
