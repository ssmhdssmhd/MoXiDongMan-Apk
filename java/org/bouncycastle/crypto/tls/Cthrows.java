package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.n90;
import android.support.v4.q3;
import android.support.v4.vl;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.tls.Cstatic;
import org.bouncycastle.crypto.tls.h;
import org.bouncycastle.crypto.util.Cconst;

/* renamed from: org.bouncycastle.crypto.tls.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrows extends Cnative {

    /* renamed from: if, reason: not valid java name */
    public boolean f30779if;

    /* renamed from: org.bouncycastle.crypto.tls.throws$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public TlsServer f30785do = null;

        /* renamed from: if, reason: not valid java name */
        public h0 f30790if = null;

        /* renamed from: for, reason: not valid java name */
        public TlsSession f30788for = null;

        /* renamed from: new, reason: not valid java name */
        public h f30792new = null;

        /* renamed from: try, reason: not valid java name */
        public h.Cif f30796try = null;

        /* renamed from: case, reason: not valid java name */
        public int[] f30781case = null;

        /* renamed from: else, reason: not valid java name */
        public short[] f30786else = null;

        /* renamed from: goto, reason: not valid java name */
        public Hashtable f30789goto = null;

        /* renamed from: this, reason: not valid java name */
        public Hashtable f30794this = null;

        /* renamed from: break, reason: not valid java name */
        public boolean f30780break = false;

        /* renamed from: catch, reason: not valid java name */
        public boolean f30782catch = false;

        /* renamed from: class, reason: not valid java name */
        public boolean f30783class = false;

        /* renamed from: const, reason: not valid java name */
        public boolean f30784const = false;

        /* renamed from: final, reason: not valid java name */
        public TlsKeyExchange f30787final = null;

        /* renamed from: super, reason: not valid java name */
        public TlsCredentials f30793super = null;

        /* renamed from: throw, reason: not valid java name */
        public Ccatch f30795throw = null;

        /* renamed from: while, reason: not valid java name */
        public short f30797while = -1;

        /* renamed from: import, reason: not valid java name */
        public Cbreak f30791import = null;
    }

    public Cthrows(SecureRandom secureRandom) {
        super(secureRandom);
        this.f30779if = true;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m34373break(Cdo cdo, Ccatch ccatch) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ccatch.m34030do(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: catch, reason: not valid java name */
    public byte[] m34374catch(Cdo cdo, Cclass cclass) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        cclass.m34036do(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: class, reason: not valid java name */
    public byte[] m34375class(Cdo cdo, Ctransient ctransient) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ctransient.m34391do(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m34376const(Cdo cdo) throws IOException {
        mw1 securityParameters = cdo.f30790if.getSecurityParameters();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a serverVersion = cdo.f30785do.getServerVersion();
        if (!serverVersion.m33943this(cdo.f30790if.getClientVersion())) {
            throw new n72((short) 80);
        }
        cdo.f30790if.m34108new(serverVersion);
        l0.N0(cdo.f30790if.getServerVersion(), byteArrayOutputStream);
        byteArrayOutputStream.write(securityParameters.m5017catch());
        byte[] bArr = l0.f30675do;
        l0.q0(bArr, byteArrayOutputStream);
        int selectedCipherSuite = cdo.f30785do.getSelectedCipherSuite();
        if (!q3.m6366continue(cdo.f30781case, selectedCipherSuite) || selectedCipherSuite == 0 || vl.m8898do(selectedCipherSuite) || !l0.y(selectedCipherSuite, cdo.f30790if.getServerVersion())) {
            throw new n72((short) 80);
        }
        Cnative.m34223case(selectedCipherSuite, (short) 80);
        securityParameters.f4058if = selectedCipherSuite;
        short selectedCompressionMethod = cdo.f30785do.getSelectedCompressionMethod();
        if (!q3.m6388strictfp(cdo.f30786else, selectedCompressionMethod)) {
            throw new n72((short) 80);
        }
        securityParameters.f4056for = selectedCompressionMethod;
        l0.r0(selectedCipherSuite, byteArrayOutputStream);
        l0.H0(selectedCompressionMethod, byteArrayOutputStream);
        Hashtable hashtableM34410import = v.m34410import(cdo.f30785do.getServerExtensions());
        cdo.f30794this = hashtableM34410import;
        if (cdo.f30782catch) {
            Integer num = a0.f30457continue;
            if (l0.b(hashtableM34410import, num) == null) {
                cdo.f30794this.put(num, a0.m33946catch(bArr));
            }
        }
        if (securityParameters.m5022final()) {
            v.m34409if(cdo.f30794this);
        }
        if (!cdo.f30794this.isEmpty()) {
            securityParameters.f4055final = v.m34425throws(cdo.f30794this);
            securityParameters.f4051class = Cnative.m34226if(cdo.f30780break, cdo.f30789goto, cdo.f30794this, (short) 80);
            securityParameters.f4052const = v.m34404extends(cdo.f30794this);
            cdo.f30783class = !cdo.f30780break && l0.k(cdo.f30794this, v.f30810else, (short) 80);
            cdo.f30784const = !cdo.f30780break && l0.k(cdo.f30794this, a0.f30462strictfp, (short) 80);
            a0.t(byteArrayOutputStream, cdo.f30794this);
        }
        securityParameters.f4059new = a0.m33952static(cdo.f30790if, securityParameters.m5025if());
        securityParameters.f4062try = 12;
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: else, reason: not valid java name */
    public void m34377else(Cdo cdo, Creturn creturn, short s) {
        creturn.m34289if(s);
        m34385super(cdo);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m34378final() {
        return this.f30779if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdefault m34379goto(TlsServer tlsServer, DatagramTransport datagramTransport) throws IOException {
        if (tlsServer == null) {
            throw new IllegalArgumentException("'server' cannot be null");
        }
        if (datagramTransport == null) {
            throw new IllegalArgumentException("'transport' cannot be null");
        }
        mw1 mw1Var = new mw1();
        mw1Var.f4053do = 0;
        Cdo cdo = new Cdo();
        cdo.f30785do = tlsServer;
        cdo.f30790if = new h0(this.f30690do, mw1Var);
        mw1Var.f4057goto = a0.m33945break(tlsServer.shouldUseGMTUnixTime(), cdo.f30790if.getNonceRandomGenerator());
        tlsServer.init(cdo.f30790if);
        Creturn creturn = new Creturn(datagramTransport, cdo.f30790if, tlsServer, (short) 22);
        try {
            try {
                try {
                    return m34384static(cdo, creturn);
                } catch (n72 e) {
                    m34377else(cdo, creturn, e.getAlertDescription());
                    throw e;
                }
            } catch (IOException e2) {
                m34377else(cdo, creturn, (short) 80);
                throw e2;
            } catch (RuntimeException e3) {
                m34377else(cdo, creturn, (short) 80);
                throw new n72((short) 80, e3);
            }
        } finally {
            mw1Var.m5020do();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m34380import(Cdo cdo, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Cbreak cbreakM34012else = Cbreak.m34012else(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        m34388throw(cdo, cbreakM34012else);
    }

    /* renamed from: native, reason: not valid java name */
    public void m34381native(Cdo cdo, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        a aVarF0 = l0.f0(byteArrayInputStream);
        if (!aVarF0.m33941goto()) {
            throw new n72((short) 47);
        }
        byte[] bArrO = l0.O(32, byteArrayInputStream);
        if (l0.R(byteArrayInputStream).length > 32) {
            throw new n72((short) 47);
        }
        l0.R(byteArrayInputStream);
        int iT = l0.T(byteArrayInputStream);
        if (iT < 2 || (iT & 1) != 0) {
            throw new n72((short) 50);
        }
        cdo.f30781case = l0.V(iT / 2, byteArrayInputStream);
        short sC0 = l0.c0(byteArrayInputStream);
        if (sC0 < 1) {
            throw new n72((short) 47);
        }
        cdo.f30786else = l0.e0(sC0, byteArrayInputStream);
        cdo.f30789goto = a0.f(byteArrayInputStream);
        h0 h0Var = cdo.f30790if;
        mw1 securityParameters = h0Var.getSecurityParameters();
        securityParameters.f4060super = v.m34401default(cdo.f30789goto);
        if (!securityParameters.m5022final() && cdo.f30785do.requiresExtendedMasterSecret()) {
            throw new n72((short) 40);
        }
        h0Var.m34107if(aVarF0);
        cdo.f30785do.notifyClientVersion(aVarF0);
        cdo.f30785do.notifyFallback(q3.m6366continue(cdo.f30781case, vl.d3));
        securityParameters.f4054else = bArrO;
        cdo.f30785do.notifyOfferedCipherSuites(cdo.f30781case);
        cdo.f30785do.notifyOfferedCompressionMethods(cdo.f30786else);
        if (q3.m6366continue(cdo.f30781case, 255)) {
            cdo.f30782catch = true;
        }
        byte[] bArrB = l0.b(cdo.f30789goto, a0.f30457continue);
        if (bArrB != null) {
            cdo.f30782catch = true;
            if (!q3.m6360abstract(bArrB, a0.m33946catch(l0.f30675do))) {
                throw new n72((short) 40);
            }
        }
        cdo.f30785do.notifySecureRenegotiation(cdo.f30782catch);
        Hashtable hashtable = cdo.f30789goto;
        if (hashtable != null) {
            v.m34418return(hashtable);
            cdo.f30785do.processClientExtensions(cdo.f30789goto);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m34382public(Cdo cdo, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        cdo.f30787final.processClientKeyExchange(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
    }

    /* renamed from: return, reason: not valid java name */
    public void m34383return(Cdo cdo, byte[] bArr) throws IOException {
        cdo.f30785do.processClientSupplementalData(a0.i(new ByteArrayInputStream(bArr)));
    }

    /* renamed from: static, reason: not valid java name */
    public Cdefault m34384static(Cdo cdo, Creturn creturn) throws IOException {
        Cbreak certificate;
        Cclass certificateStatus;
        mw1 securityParameters = cdo.f30790if.getSecurityParameters();
        Cstatic cstatic = new Cstatic(cdo.f30790if, creturn);
        Cstatic.Cif cifM34346class = cstatic.m34346class();
        if (cifM34346class.m34354for() != 1) {
            throw new n72((short) 10);
        }
        m34381native(cdo, cifM34346class.m34353do());
        byte[] bArrM34376const = m34376const(cdo);
        Cnative.m34224do(creturn, securityParameters.f4051class);
        a serverVersion = cdo.f30790if.getServerVersion();
        creturn.m34286final(serverVersion);
        creturn.m34290super(serverVersion);
        cstatic.m34351while((short) 2, bArrM34376const);
        cstatic.m34348goto();
        Vector serverSupplementalData = cdo.f30785do.getServerSupplementalData();
        if (serverSupplementalData != null) {
            cstatic.m34351while((short) 23, Cnative.m34227new(serverSupplementalData));
        }
        TlsKeyExchange keyExchange = cdo.f30785do.getKeyExchange();
        cdo.f30787final = keyExchange;
        keyExchange.init(cdo.f30790if);
        TlsCredentials credentials = cdo.f30785do.getCredentials();
        cdo.f30793super = credentials;
        if (credentials == null) {
            cdo.f30787final.skipServerCredentials();
            certificate = null;
        } else {
            cdo.f30787final.processServerCredentials(credentials);
            certificate = cdo.f30793super.getCertificate();
            cstatic.m34351while((short) 11, Cnative.m34225for(certificate));
        }
        if (certificate == null || certificate.m34013case()) {
            cdo.f30783class = false;
        }
        if (cdo.f30783class && (certificateStatus = cdo.f30785do.getCertificateStatus()) != null) {
            cstatic.m34351while((short) 22, m34374catch(cdo, certificateStatus));
        }
        byte[] bArrGenerateServerKeyExchange = cdo.f30787final.generateServerKeyExchange();
        if (bArrGenerateServerKeyExchange != null) {
            cstatic.m34351while((short) 12, bArrGenerateServerKeyExchange);
        }
        if (cdo.f30793super != null) {
            Ccatch certificateRequest = cdo.f30785do.getCertificateRequest();
            cdo.f30795throw = certificateRequest;
            if (certificateRequest != null) {
                if (l0.w(cdo.f30790if) != (cdo.f30795throw.m34033new() != null)) {
                    throw new n72((short) 80);
                }
                cdo.f30787final.validateCertificateRequest(cdo.f30795throw);
                cstatic.m34351while((short) 13, m34373break(cdo, cdo.f30795throw));
                l0.j0(cstatic.m34345case(), cdo.f30795throw.m34033new());
            }
        }
        cstatic.m34351while((short) 14, l0.f30675do);
        cstatic.m34345case().sealHashAlgorithms();
        Cstatic.Cif cifM34346class2 = cstatic.m34346class();
        if (cifM34346class2.m34354for() == 23) {
            m34383return(cdo, cifM34346class2.m34353do());
            cifM34346class2 = cstatic.m34346class();
        } else {
            cdo.f30785do.processClientSupplementalData(null);
        }
        if (cdo.f30795throw == null) {
            cdo.f30787final.skipClientCredentials();
        } else if (cifM34346class2.m34354for() == 11) {
            m34380import(cdo, cifM34346class2.m34353do());
            cifM34346class2 = cstatic.m34346class();
        } else {
            if (l0.w(cdo.f30790if)) {
                throw new n72((short) 10);
            }
            m34388throw(cdo, Cbreak.f30534if);
        }
        if (cifM34346class2.m34354for() != 16) {
            throw new n72((short) 10);
        }
        m34382public(cdo, cifM34346class2.m34353do());
        TlsHandshakeHash tlsHandshakeHashM34344break = cstatic.m34344break();
        securityParameters.f4061this = a0.m33950native(cdo.f30790if, tlsHandshakeHashM34344break, null);
        a0.m33947const(cdo.f30790if, cdo.f30787final);
        creturn.m34288goto(cdo.f30785do.getCipher());
        if (m34387this(cdo)) {
            m34389while(cdo, cstatic.m34347const((short) 15), tlsHandshakeHashM34344break);
        }
        h0 h0Var = cdo.f30790if;
        m34228try(cstatic.m34347const((short) 20), l0.m34212this(h0Var, n90.f4147do, a0.m33950native(h0Var, cstatic.m34345case(), null)));
        if (cdo.f30784const) {
            cstatic.m34351while((short) 4, m34375class(cdo, cdo.f30785do.getNewSessionTicket()));
        }
        h0 h0Var2 = cdo.f30790if;
        cstatic.m34351while((short) 20, l0.m34212this(h0Var2, n90.f4151if, a0.m33950native(h0Var2, cstatic.m34345case(), null)));
        cstatic.m34350try();
        cdo.f30785do.notifyHandshakeComplete();
        return new Cdefault(creturn);
    }

    /* renamed from: super, reason: not valid java name */
    public void m34385super(Cdo cdo) {
        h hVar = cdo.f30792new;
        if (hVar != null) {
            hVar.m34132do();
            cdo.f30792new = null;
        }
        TlsSession tlsSession = cdo.f30788for;
        if (tlsSession != null) {
            tlsSession.invalidate();
            cdo.f30788for = null;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m34386switch(boolean z) {
        this.f30779if = z;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m34387this(Cdo cdo) {
        short s = cdo.f30797while;
        return s >= 0 && l0.l(s);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m34388throw(Cdo cdo, Cbreak cbreak) throws IOException {
        if (cdo.f30795throw == null) {
            throw new IllegalStateException();
        }
        if (cdo.f30791import != null) {
            throw new n72((short) 10);
        }
        cdo.f30791import = cbreak;
        if (cbreak.m34013case()) {
            cdo.f30787final.skipClientCredentials();
        } else {
            cdo.f30797while = l0.m34204protected(cbreak, cdo.f30793super.getCertificate());
            cdo.f30787final.processClientCertificate(cbreak);
        }
        cdo.f30785do.notifyClientCertificate(cbreak);
    }

    /* renamed from: while, reason: not valid java name */
    public void m34389while(Cdo cdo, byte[] bArr, TlsHandshakeHash tlsHandshakeHash) throws IOException {
        byte[] bArrM5018class;
        if (cdo.f30795throw == null) {
            throw new IllegalStateException();
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        h0 h0Var = cdo.f30790if;
        Cvolatile cvolatileM34429new = Cvolatile.m34429new(h0Var, byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        try {
            i iVarM34432if = cvolatileM34429new.m34432if();
            if (l0.w(h0Var)) {
                l0.m0(cdo.f30795throw.m34033new(), iVarM34432if);
                bArrM5018class = tlsHandshakeHash.getFinalHash(iVarM34432if.m34154if());
            } else {
                bArrM5018class = h0Var.getSecurityParameters().m5018class();
            }
            a4 a4VarM34475for = Cconst.m34475for(cdo.f30791import.m34015for(0).m6960const());
            TlsSigner tlsSignerM34192finally = l0.m34192finally(cdo.f30797while);
            tlsSignerM34192finally.init(h0Var);
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
}
