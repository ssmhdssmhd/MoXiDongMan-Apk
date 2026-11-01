package org.bouncycastle.crypto.tls;

import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.vl;
import android.support.v4.z0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.tls.a0;

/* loaded from: classes3.dex */
public class n extends a0 {
    public TlsClient n;
    public m o;
    public byte[] p;
    public TlsKeyExchange q;
    public TlsAuthentication r;
    public Cclass s;
    public Ccatch t;

    public n(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        super(inputStream, outputStream, secureRandom);
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
    }

    public n(SecureRandom secureRandom) {
        super(secureRandom);
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
    }

    public void A(ByteArrayInputStream byteArrayInputStream) throws IOException {
        TlsSession tlsSession;
        a aVarF0 = l0.f0(byteArrayInputStream);
        if (aVarF0.m33941goto()) {
            throw new n72((short) 47);
        }
        if (!aVarF0.m33939do(this.f30483new.m33992class())) {
            throw new n72((short) 47);
        }
        if (!aVarF0.m33943this(mo33983while().getClientVersion())) {
            throw new n72((short) 47);
        }
        this.f30483new.m34007throws(aVarF0);
        mo33967import().m34108new(aVarF0);
        this.n.notifyServerVersion(aVarF0);
        this.f30492throw.f4057goto = l0.O(32, byteArrayInputStream);
        byte[] bArrR = l0.R(byteArrayInputStream);
        this.p = bArrR;
        if (bArrR.length > 32) {
            throw new n72((short) 47);
        }
        this.n.notifySessionID(bArrR);
        byte[] bArr = this.p;
        boolean z = false;
        this.f30490switch = bArr.length > 0 && (tlsSession = this.f30476final) != null && q3.m6362case(bArr, tlsSession.getSessionID());
        int iT = l0.T(byteArrayInputStream);
        if (!q3.m6366continue(this.f30481import, iT) || iT == 0 || vl.m8898do(iT) || !l0.y(iT, mo33983while().getServerVersion())) {
            throw new n72((short) 47);
        }
        this.n.notifySelectedCipherSuite(iT);
        short sC0 = l0.c0(byteArrayInputStream);
        if (!q3.m6388strictfp(this.f30482native, sC0)) {
            throw new n72((short) 47);
        }
        this.n.notifySelectedCompressionMethod(sC0);
        this.f30487return = a0.f(byteArrayInputStream);
        this.f30492throw.f4060super = !l0.q(this.o) && v.m34401default(this.f30487return);
        if (!this.f30492throw.m5022final() && (this.f30490switch || this.n.requiresExtendedMasterSecret())) {
            throw new n72((short) 40);
        }
        Hashtable hashtable = this.f30487return;
        if (hashtable != null) {
            Enumeration enumerationKeys = hashtable.keys();
            while (enumerationKeys.hasMoreElements()) {
                Integer num = (Integer) enumerationKeys.nextElement();
                if (!num.equals(a0.f30457continue) && l0.b(this.f30486public, num) == null) {
                    throw new n72(z0.f8388default);
                }
            }
        }
        byte[] bArrB = l0.b(this.f30487return, a0.f30457continue);
        if (bArrB != null) {
            this.f30472default = true;
            if (!q3.m6360abstract(bArrB, a0.m33946catch(l0.f30675do))) {
                throw new n72((short) 40);
            }
        }
        this.n.notifySecureRenegotiation(this.f30472default);
        Hashtable hashtable2 = this.f30486public;
        Hashtable hashtableM34131catch = this.f30487return;
        if (this.f30490switch) {
            if (iT != this.f30489super.m34134for() || sC0 != this.f30489super.m34137new()) {
                throw new n72((short) 47);
            }
            hashtable2 = null;
            hashtableM34131catch = this.f30489super.m34131catch();
        }
        mw1 mw1Var = this.f30492throw;
        mw1Var.f4058if = iT;
        mw1Var.f4056for = sC0;
        if (hashtableM34131catch != null && !hashtableM34131catch.isEmpty()) {
            boolean zM34425throws = v.m34425throws(hashtableM34131catch);
            if (zM34425throws && !l0.p(iT)) {
                throw new n72((short) 47);
            }
            mw1 mw1Var2 = this.f30492throw;
            mw1Var2.f4055final = zM34425throws;
            mw1Var2.f4051class = a(hashtable2, hashtableM34131catch, (short) 47);
            this.f30492throw.f4052const = v.m34404extends(hashtableM34131catch);
            this.f30475extends = !this.f30490switch && l0.k(hashtableM34131catch, v.f30810else, (short) 47);
            if (!this.f30490switch && l0.k(hashtableM34131catch, a0.f30462strictfp, (short) 47)) {
                z = true;
            }
            this.f30477finally = z;
        }
        if (hashtable2 != null) {
            this.n.processServerExtensions(hashtableM34131catch);
        }
        this.f30492throw.f4059new = a0.m33952static(mo33983while(), this.f30492throw.m5025if());
        this.f30492throw.f4062try = 12;
    }

    public void B(Cvolatile cvolatile) throws IOException {
        a0.Cdo cdo = new a0.Cdo(this, (short) 15);
        cvolatile.m34430do(cdo);
        cdo.m33984do();
    }

    public void C() throws IOException {
        byte[] sessionID;
        h hVar;
        this.f30483new.m34007throws(this.n.getClientHelloRecordLayerVersion());
        a clientVersion = this.n.getClientVersion();
        if (clientVersion.m33941goto()) {
            throw new n72((short) 80);
        }
        mo33967import().m34107if(clientVersion);
        byte[] bArr = l0.f30675do;
        TlsSession tlsSession = this.f30476final;
        if (tlsSession == null || (sessionID = tlsSession.getSessionID()) == null || sessionID.length > 32) {
            sessionID = bArr;
        }
        boolean zIsFallback = this.n.isFallback();
        this.f30481import = this.n.getCipherSuites();
        this.f30482native = this.n.getCompressionMethods();
        if (sessionID.length <= 0 || (hVar = this.f30489super) == null || (hVar.m34129break() && q3.m6366continue(this.f30481import, this.f30489super.m34134for()) && q3.m6388strictfp(this.f30482native, this.f30489super.m34137new()))) {
            bArr = sessionID;
        }
        this.f30486public = v.m34410import(this.n.getClientExtensions());
        if (!clientVersion.m33937catch()) {
            v.m34409if(this.f30486public);
        }
        a0.Cdo cdo = new a0.Cdo(this, (short) 1);
        l0.N0(clientVersion, cdo);
        cdo.write(this.f30492throw.m5023for());
        l0.q0(bArr, cdo);
        boolean z = l0.b(this.f30486public, a0.f30457continue) == null;
        boolean z2 = !q3.m6366continue(this.f30481import, 255);
        if (z && z2) {
            this.f30481import = q3.m6375if(this.f30481import, 255);
        }
        if (zIsFallback && !q3.m6366continue(this.f30481import, vl.d3)) {
            this.f30481import = q3.m6375if(this.f30481import, vl.d3);
        }
        l0.v0(this.f30481import, cdo);
        l0.L0(this.f30482native, cdo);
        a0.t(cdo, this.f30486public);
        cdo.m33984do();
    }

    public void D() throws IOException {
        a0.Cdo cdo = new a0.Cdo(this, (short) 16);
        this.q.generateClientKeyExchange(cdo);
        cdo.m33984do();
    }

    @Override // org.bouncycastle.crypto.tls.a0
    /* renamed from: abstract */
    public void mo33955abstract(short s, ByteArrayInputStream byteArrayInputStream) throws IOException {
        TlsCredentials clientCredentials;
        Cbreak certificate;
        if (this.f30490switch) {
            if (s != 20 || this.f30488static != 2) {
                throw new n72((short) 10);
            }
            m33968instanceof(byteArrayInputStream);
            this.f30488static = (short) 15;
            o();
            p();
            this.f30488static = (short) 13;
            m33978this();
            return;
        }
        if (s == 0) {
            a0.m33948for(byteArrayInputStream);
            if (this.f30488static == 16) {
                j();
                return;
            }
            return;
        }
        if (s == 2) {
            if (this.f30488static != 1) {
                throw new n72((short) 10);
            }
            A(byteArrayInputStream);
            this.f30488static = (short) 2;
            this.f30483new.m33996final();
            m33966if();
            if (this.f30490switch) {
                this.f30492throw.f4049case = q3.m6371final(this.f30489super.m34139try());
                this.f30483new.m34000public(mo33977switch().getCompression(), mo33977switch().getCipher());
                return;
            }
            m33958continue();
            byte[] bArr = this.p;
            if (bArr.length > 0) {
                this.f30476final = new j0(bArr, null);
                return;
            }
            return;
        }
        if (s == 4) {
            if (this.f30488static != 13) {
                throw new n72((short) 10);
            }
            if (!this.f30477finally) {
                throw new n72((short) 10);
            }
            m33958continue();
            z(byteArrayInputStream);
            this.f30488static = (short) 14;
            return;
        }
        if (s == 20) {
            short s2 = this.f30488static;
            if (s2 != 13) {
                if (s2 != 14) {
                    throw new n72((short) 10);
                }
            } else if (this.f30477finally) {
                throw new n72((short) 10);
            }
            m33968instanceof(byteArrayInputStream);
            this.f30488static = (short) 15;
            m33978this();
            return;
        }
        if (s == 22) {
            if (this.f30488static != 4) {
                throw new n72((short) 10);
            }
            if (!this.f30475extends) {
                throw new n72((short) 10);
            }
            this.s = Cclass.m34034case(byteArrayInputStream);
            a0.m33948for(byteArrayInputStream);
            this.f30488static = (short) 5;
            return;
        }
        if (s == 23) {
            if (this.f30488static != 2) {
                throw new n72((short) 10);
            }
            y(a0.i(byteArrayInputStream));
            return;
        }
        switch (s) {
            case 11:
                short s3 = this.f30488static;
                if (s3 == 2) {
                    y(null);
                } else if (s3 != 3) {
                    throw new n72((short) 10);
                }
                this.f30495while = Cbreak.m34012else(byteArrayInputStream);
                a0.m33948for(byteArrayInputStream);
                Cbreak cbreak = this.f30495while;
                if (cbreak == null || cbreak.m34013case()) {
                    this.f30475extends = false;
                }
                this.q.processServerCertificate(this.f30495while);
                TlsAuthentication authentication = this.n.getAuthentication();
                this.r = authentication;
                authentication.notifyServerCertificate(this.f30495while);
                this.f30488static = (short) 4;
                return;
            case 12:
                short s4 = this.f30488static;
                if (s4 != 2) {
                    if (s4 != 3) {
                        if (s4 != 4 && s4 != 5) {
                            throw new n72((short) 10);
                        }
                    }
                    this.q.processServerKeyExchange(byteArrayInputStream);
                    a0.m33948for(byteArrayInputStream);
                    this.f30488static = (short) 6;
                    return;
                }
                y(null);
                this.q.skipServerCredentials();
                this.r = null;
                this.q.processServerKeyExchange(byteArrayInputStream);
                a0.m33948for(byteArrayInputStream);
                this.f30488static = (short) 6;
                return;
            case 13:
                short s5 = this.f30488static;
                if (s5 == 4 || s5 == 5) {
                    this.q.skipServerKeyExchange();
                } else if (s5 != 6) {
                    throw new n72((short) 10);
                }
                if (this.r == null) {
                    throw new n72((short) 40);
                }
                this.t = Ccatch.m34029try(mo33983while(), byteArrayInputStream);
                a0.m33948for(byteArrayInputStream);
                this.q.validateCertificateRequest(this.t);
                l0.j0(this.f30483new.m34005this(), this.t.m34033new());
                this.f30488static = (short) 7;
                return;
            case 14:
                switch (this.f30488static) {
                    case 2:
                        y(null);
                    case 3:
                        this.q.skipServerCredentials();
                        this.r = null;
                    case 4:
                    case 5:
                        this.q.skipServerKeyExchange();
                    case 6:
                    case 7:
                        a0.m33948for(byteArrayInputStream);
                        this.f30488static = (short) 8;
                        this.f30483new.m34005this().sealHashAlgorithms();
                        Vector clientSupplementalData = this.n.getClientSupplementalData();
                        if (clientSupplementalData != null) {
                            q(clientSupplementalData);
                        }
                        this.f30488static = (short) 9;
                        Ccatch ccatch = this.t;
                        if (ccatch == null) {
                            this.q.skipClientCredentials();
                            clientCredentials = null;
                        } else {
                            clientCredentials = this.r.getClientCredentials(ccatch);
                            TlsKeyExchange tlsKeyExchange = this.q;
                            if (clientCredentials == null) {
                                tlsKeyExchange.skipClientCredentials();
                                certificate = Cbreak.f30534if;
                            } else {
                                tlsKeyExchange.processClientCredentials(clientCredentials);
                                certificate = clientCredentials.getCertificate();
                            }
                            n(certificate);
                        }
                        this.f30488static = (short) 10;
                        D();
                        this.f30488static = (short) 11;
                        if (l0.q(mo33983while())) {
                            a0.m33947const(mo33983while(), this.q);
                        }
                        TlsHandshakeHash tlsHandshakeHashM34003super = this.f30483new.m34003super();
                        this.f30492throw.f4061this = a0.m33950native(mo33983while(), tlsHandshakeHashM34003super, null);
                        if (!l0.q(mo33983while())) {
                            a0.m33947const(mo33983while(), this.q);
                        }
                        this.f30483new.m34000public(mo33977switch().getCompression(), mo33977switch().getCipher());
                        if (clientCredentials != null && (clientCredentials instanceof TlsSignerCredentials)) {
                            TlsSignerCredentials tlsSignerCredentials = (TlsSignerCredentials) clientCredentials;
                            i iVarI = l0.i(mo33983while(), tlsSignerCredentials);
                            B(new Cvolatile(iVarI, tlsSignerCredentials.generateCertificateSignature(iVarI == null ? this.f30492throw.m5018class() : tlsHandshakeHashM34003super.getFinalHash(iVarI.m34154if()))));
                            this.f30488static = (short) 12;
                        }
                        o();
                        p();
                        this.f30488static = (short) 13;
                        return;
                    default:
                        throw new n72((short) 10);
                }
                break;
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
        this.s = null;
        this.t = null;
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

    public void x(TlsClient tlsClient) throws IOException {
        h hVarExportSessionParameters;
        if (tlsClient == null) {
            throw new IllegalArgumentException("'tlsClient' cannot be null");
        }
        if (this.n != null) {
            throw new IllegalStateException("'connect' can only be called once");
        }
        this.n = tlsClient;
        mw1 mw1Var = new mw1();
        this.f30492throw = mw1Var;
        mw1Var.f4053do = 1;
        this.o = new m(this.f30494try, this.f30492throw);
        this.f30492throw.f4054else = a0.m33945break(tlsClient.shouldUseGMTUnixTime(), this.o.getNonceRandomGenerator());
        this.n.init(this.o);
        this.f30483new.m33993const(this.o);
        TlsSession sessionToResume = tlsClient.getSessionToResume();
        if (sessionToResume != null && sessionToResume.isResumable() && (hVarExportSessionParameters = sessionToResume.exportSessionParameters()) != null && hVarExportSessionParameters.m34129break()) {
            this.f30476final = sessionToResume;
            this.f30489super = hVarExportSessionParameters;
        }
        C();
        this.f30488static = (short) 1;
        m33970new();
    }

    public void y(Vector vector) throws IOException {
        this.n.processServerSupplementalData(vector);
        this.f30488static = (short) 3;
        TlsKeyExchange keyExchange = this.n.getKeyExchange();
        this.q = keyExchange;
        keyExchange.init(mo33983while());
    }

    public void z(ByteArrayInputStream byteArrayInputStream) throws IOException {
        Ctransient ctransientM34390new = Ctransient.m34390new(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        this.n.notifyNewSessionTicket(ctransientM34390new);
    }
}
