package org.bouncycastle.crypto.tls;

import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.n90;
import android.support.v4.q3;
import android.support.v4.vl;
import android.support.v4.z0;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.crypto.tls.Cstatic;
import org.bouncycastle.crypto.tls.h;

/* renamed from: org.bouncycastle.crypto.tls.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile extends Cnative {

    /* renamed from: org.bouncycastle.crypto.tls.while$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public TlsClient f30825do = null;

        /* renamed from: if, reason: not valid java name */
        public m f30830if = null;

        /* renamed from: for, reason: not valid java name */
        public TlsSession f30828for = null;

        /* renamed from: new, reason: not valid java name */
        public h f30832new = null;

        /* renamed from: try, reason: not valid java name */
        public h.Cif f30836try = null;

        /* renamed from: case, reason: not valid java name */
        public int[] f30821case = null;

        /* renamed from: else, reason: not valid java name */
        public Hashtable f30826else = null;

        /* renamed from: goto, reason: not valid java name */
        public Hashtable f30829goto = null;

        /* renamed from: this, reason: not valid java name */
        public byte[] f30834this = null;

        /* renamed from: break, reason: not valid java name */
        public boolean f30820break = false;

        /* renamed from: catch, reason: not valid java name */
        public boolean f30822catch = false;

        /* renamed from: class, reason: not valid java name */
        public boolean f30823class = false;

        /* renamed from: const, reason: not valid java name */
        public boolean f30824const = false;

        /* renamed from: final, reason: not valid java name */
        public TlsKeyExchange f30827final = null;

        /* renamed from: super, reason: not valid java name */
        public TlsAuthentication f30833super = null;

        /* renamed from: throw, reason: not valid java name */
        public Cclass f30835throw = null;

        /* renamed from: while, reason: not valid java name */
        public Ccatch f30837while = null;

        /* renamed from: import, reason: not valid java name */
        public TlsCredentials f30831import = null;
    }

    public Cwhile(SecureRandom secureRandom) {
        super(secureRandom);
    }

    /* renamed from: final, reason: not valid java name */
    public static byte[] m34433final(byte[] bArr, byte[] bArr2) throws IOException {
        int iD0 = 35 + l0.d0(bArr, 34);
        int i = iD0 + 1;
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, iD0);
        l0.m34218while(bArr2.length);
        l0.G0(bArr2.length, bArr3, iD0);
        System.arraycopy(bArr2, 0, bArr3, i, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length + i, bArr.length - i);
        return bArr3;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m34434break(Cdo cdo, Cvolatile cvolatile) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        cvolatile.m34430do(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: catch, reason: not valid java name */
    public byte[] m34435catch(Cdo cdo, TlsClient tlsClient) throws IOException {
        byte[] sessionID;
        h hVar;
        a clientVersion = tlsClient.getClientVersion();
        if (!clientVersion.m33941goto()) {
            throw new n72((short) 80);
        }
        m mVar = cdo.f30830if;
        mVar.m34107if(clientVersion);
        mw1 securityParameters = mVar.getSecurityParameters();
        byte[] bArr = l0.f30675do;
        TlsSession tlsSession = cdo.f30828for;
        if (tlsSession == null || (sessionID = tlsSession.getSessionID()) == null || sessionID.length > 32) {
            sessionID = bArr;
        }
        boolean zIsFallback = tlsClient.isFallback();
        cdo.f30821case = tlsClient.getCipherSuites();
        if (sessionID.length > 0 && (hVar = cdo.f30832new) != null && (!hVar.m34129break() || !q3.m6366continue(cdo.f30821case, cdo.f30832new.m34134for()) || cdo.f30832new.m34137new() != 0)) {
            sessionID = bArr;
        }
        Hashtable hashtableM34410import = v.m34410import(tlsClient.getClientExtensions());
        cdo.f30826else = hashtableM34410import;
        v.m34409if(hashtableM34410import);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        l0.N0(clientVersion, byteArrayOutputStream);
        byteArrayOutputStream.write(securityParameters.m5023for());
        l0.q0(sessionID, byteArrayOutputStream);
        l0.q0(bArr, byteArrayOutputStream);
        boolean z = l0.b(cdo.f30826else, a0.f30457continue) == null;
        boolean z2 = !q3.m6366continue(cdo.f30821case, 255);
        if (z && z2) {
            cdo.f30821case = q3.m6375if(cdo.f30821case, 255);
        }
        if (zIsFallback && !q3.m6366continue(cdo.f30821case, vl.d3)) {
            cdo.f30821case = q3.m6375if(cdo.f30821case, vl.d3);
        }
        l0.v0(cdo.f30821case, byteArrayOutputStream);
        l0.L0(new short[]{0}, byteArrayOutputStream);
        a0.t(byteArrayOutputStream, cdo.f30826else);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: class, reason: not valid java name */
    public byte[] m34436class(Cdo cdo) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        cdo.f30827final.generateClientKeyExchange(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: const, reason: not valid java name */
    public void m34437const(Cdo cdo) {
        h hVar = cdo.f30832new;
        if (hVar != null) {
            hVar.m34132do();
            cdo.f30832new = null;
        }
        TlsSession tlsSession = cdo.f30828for;
        if (tlsSession != null) {
            tlsSession.invalidate();
            cdo.f30828for = null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m34438else(Cdo cdo, Creturn creturn, short s) {
        creturn.m34289if(s);
        m34437const(cdo);
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdefault m34439goto(Cdo cdo, Creturn creturn) throws IOException {
        Cstatic.Cif cifM34346class;
        Cbreak cbreakM34441native;
        mw1 securityParameters = cdo.f30830if.getSecurityParameters();
        Cstatic cstatic = new Cstatic(cdo.f30830if, creturn);
        byte[] bArrM34435catch = m34435catch(cdo, cdo.f30825do);
        creturn.m34290super(a.f30450else);
        cstatic.m34351while((short) 1, bArrM34435catch);
        while (true) {
            Cstatic.Cif cifM34346class2 = cstatic.m34346class();
            if (cifM34346class2.m34354for() != 3) {
                if (cifM34346class2.m34354for() != 2) {
                    throw new n72((short) 10);
                }
                a aVarM34282case = creturn.m34282case();
                m34446switch(cdo, aVarM34282case);
                creturn.m34290super(aVarM34282case);
                m34442public(cdo, cifM34346class2.m34353do());
                cstatic.m34348goto();
                Cnative.m34224do(creturn, securityParameters.f4051class);
                if (cdo.f30820break) {
                    securityParameters.f4049case = q3.m6371final(cdo.f30832new.m34139try());
                    creturn.m34288goto(cdo.f30825do.getCipher());
                    m mVar = cdo.f30830if;
                    m34228try(cstatic.m34347const((short) 20), l0.m34212this(mVar, n90.f4151if, a0.m33950native(mVar, cstatic.m34345case(), null)));
                    m mVar2 = cdo.f30830if;
                    cstatic.m34351while((short) 20, l0.m34212this(mVar2, n90.f4147do, a0.m33950native(mVar2, cstatic.m34345case(), null)));
                    cstatic.m34350try();
                    cdo.f30830if.m34106for(cdo.f30828for);
                    cdo.f30825do.notifyHandshakeComplete();
                    return new Cdefault(creturn);
                }
                m34437const(cdo);
                byte[] bArr = cdo.f30834this;
                if (bArr.length > 0) {
                    cdo.f30828for = new j0(bArr, null);
                }
                Cstatic.Cif cifM34346class3 = cstatic.m34346class();
                if (cifM34346class3.m34354for() == 23) {
                    m34444static(cdo, cifM34346class3.m34353do());
                    cifM34346class3 = cstatic.m34346class();
                } else {
                    cdo.f30825do.processServerSupplementalData(null);
                }
                TlsKeyExchange keyExchange = cdo.f30825do.getKeyExchange();
                cdo.f30827final = keyExchange;
                keyExchange.init(cdo.f30830if);
                if (cifM34346class3.m34354for() == 11) {
                    cbreakM34441native = m34441native(cdo, cifM34346class3.m34353do());
                    cifM34346class = cstatic.m34346class();
                } else {
                    cdo.f30827final.skipServerCredentials();
                    cifM34346class = cifM34346class3;
                    cbreakM34441native = null;
                }
                if (cbreakM34441native == null || cbreakM34441native.m34013case()) {
                    cdo.f30823class = false;
                }
                if (cifM34346class.m34354for() == 22) {
                    m34448throw(cdo, cifM34346class.m34353do());
                    cifM34346class = cstatic.m34346class();
                }
                if (cifM34346class.m34354for() == 12) {
                    m34443return(cdo, cifM34346class.m34353do());
                    cifM34346class = cstatic.m34346class();
                } else {
                    cdo.f30827final.skipServerKeyExchange();
                }
                if (cifM34346class.m34354for() == 13) {
                    m34445super(cdo, cifM34346class.m34353do());
                    l0.j0(cstatic.m34345case(), cdo.f30837while.m34033new());
                    cifM34346class = cstatic.m34346class();
                }
                if (cifM34346class.m34354for() != 14) {
                    throw new n72((short) 10);
                }
                if (cifM34346class.m34353do().length != 0) {
                    throw new n72((short) 50);
                }
                cstatic.m34345case().sealHashAlgorithms();
                Vector clientSupplementalData = cdo.f30825do.getClientSupplementalData();
                if (clientSupplementalData != null) {
                    cstatic.m34351while((short) 23, Cnative.m34227new(clientSupplementalData));
                }
                Ccatch ccatch = cdo.f30837while;
                if (ccatch != null) {
                    TlsCredentials clientCredentials = cdo.f30833super.getClientCredentials(ccatch);
                    cdo.f30831import = clientCredentials;
                    Cbreak certificate = clientCredentials != null ? clientCredentials.getCertificate() : null;
                    if (certificate == null) {
                        certificate = Cbreak.f30534if;
                    }
                    cstatic.m34351while((short) 11, Cnative.m34225for(certificate));
                }
                TlsCredentials tlsCredentials = cdo.f30831import;
                if (tlsCredentials != null) {
                    cdo.f30827final.processClientCredentials(tlsCredentials);
                } else {
                    cdo.f30827final.skipClientCredentials();
                }
                cstatic.m34351while((short) 16, m34436class(cdo));
                TlsHandshakeHash tlsHandshakeHashM34344break = cstatic.m34344break();
                securityParameters.f4061this = a0.m33950native(cdo.f30830if, tlsHandshakeHashM34344break, null);
                a0.m33947const(cdo.f30830if, cdo.f30827final);
                creturn.m34288goto(cdo.f30825do.getCipher());
                TlsCredentials tlsCredentials2 = cdo.f30831import;
                if (tlsCredentials2 != null && (tlsCredentials2 instanceof TlsSignerCredentials)) {
                    TlsSignerCredentials tlsSignerCredentials = (TlsSignerCredentials) tlsCredentials2;
                    i iVarI = l0.i(cdo.f30830if, tlsSignerCredentials);
                    cstatic.m34351while((short) 15, m34434break(cdo, new Cvolatile(iVarI, tlsSignerCredentials.generateCertificateSignature(iVarI == null ? securityParameters.m5018class() : tlsHandshakeHashM34344break.getFinalHash(iVarI.m34154if())))));
                }
                m mVar3 = cdo.f30830if;
                cstatic.m34351while((short) 20, l0.m34212this(mVar3, n90.f4147do, a0.m33950native(mVar3, cstatic.m34345case(), null)));
                if (cdo.f30824const) {
                    Cstatic.Cif cifM34346class4 = cstatic.m34346class();
                    if (cifM34346class4.m34354for() != 4) {
                        throw new n72((short) 10);
                    }
                    m34440import(cdo, cifM34346class4.m34353do());
                }
                m mVar4 = cdo.f30830if;
                m34228try(cstatic.m34347const((short) 20), l0.m34212this(mVar4, n90.f4151if, a0.m33950native(mVar4, cstatic.m34345case(), null)));
                cstatic.m34350try();
                if (cdo.f30828for != null) {
                    cdo.f30832new = new h.Cif().m34147if(securityParameters.m5025if()).m34145for(securityParameters.m5026new()).m34148new(securityParameters.m5022final()).m34150try(securityParameters.m5016case()).m34144else(cbreakM34441native).m34142case(securityParameters.m5021else()).m34149this(securityParameters.m5015break()).m34141break(cdo.f30829goto).m34143do();
                    TlsSession tlsSessionN = l0.n(cdo.f30828for.getSessionID(), cdo.f30832new);
                    cdo.f30828for = tlsSessionN;
                    cdo.f30830if.m34106for(tlsSessionN);
                }
                cdo.f30825do.notifyHandshakeComplete();
                return new Cdefault(creturn);
            }
            if (!creturn.m34282case().m33943this(cdo.f30830if.getClientVersion())) {
                throw new n72((short) 47);
            }
            creturn.m34286final(null);
            byte[] bArrM34433final = m34433final(bArrM34435catch, m34449while(cdo, cifM34346class2.m34353do()));
            cstatic.m34349throw();
            cstatic.m34351while((short) 1, bArrM34433final);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m34440import(Cdo cdo, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Ctransient ctransientM34390new = Ctransient.m34390new(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        cdo.f30825do.notifyNewSessionTicket(ctransientM34390new);
    }

    /* renamed from: native, reason: not valid java name */
    public Cbreak m34441native(Cdo cdo, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        Cbreak cbreakM34012else = Cbreak.m34012else(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        cdo.f30827final.processServerCertificate(cbreakM34012else);
        TlsAuthentication authentication = cdo.f30825do.getAuthentication();
        cdo.f30833super = authentication;
        authentication.notifyServerCertificate(cbreakM34012else);
        return cbreakM34012else;
    }

    /* renamed from: public, reason: not valid java name */
    public void m34442public(Cdo cdo, byte[] bArr) throws IOException {
        TlsSession tlsSession;
        mw1 securityParameters = cdo.f30830if.getSecurityParameters();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        m34446switch(cdo, l0.f0(byteArrayInputStream));
        securityParameters.f4057goto = l0.O(32, byteArrayInputStream);
        byte[] bArrR = l0.R(byteArrayInputStream);
        cdo.f30834this = bArrR;
        if (bArrR.length > 32) {
            throw new n72((short) 47);
        }
        cdo.f30825do.notifySessionID(bArrR);
        byte[] bArr2 = cdo.f30834this;
        boolean z = false;
        cdo.f30820break = bArr2.length > 0 && (tlsSession = cdo.f30828for) != null && q3.m6362case(bArr2, tlsSession.getSessionID());
        int iT = l0.T(byteArrayInputStream);
        if (!q3.m6366continue(cdo.f30821case, iT) || iT == 0 || vl.m8898do(iT) || !l0.y(iT, cdo.f30830if.getServerVersion())) {
            throw new n72((short) 47);
        }
        Cnative.m34223case(iT, (short) 47);
        cdo.f30825do.notifySelectedCipherSuite(iT);
        short sC0 = l0.c0(byteArrayInputStream);
        if (sC0 != 0) {
            throw new n72((short) 47);
        }
        cdo.f30825do.notifySelectedCompressionMethod(sC0);
        Hashtable hashtableF = a0.f(byteArrayInputStream);
        cdo.f30829goto = hashtableF;
        securityParameters.f4060super = v.m34401default(hashtableF);
        if (!securityParameters.m5022final() && (cdo.f30820break || cdo.f30825do.requiresExtendedMasterSecret())) {
            throw new n72((short) 40);
        }
        Hashtable hashtable = cdo.f30829goto;
        if (hashtable != null) {
            Enumeration enumerationKeys = hashtable.keys();
            while (enumerationKeys.hasMoreElements()) {
                Integer num = (Integer) enumerationKeys.nextElement();
                if (!num.equals(a0.f30457continue) && l0.b(cdo.f30826else, num) == null) {
                    throw new n72(z0.f8388default);
                }
            }
        }
        byte[] bArrB = l0.b(cdo.f30829goto, a0.f30457continue);
        if (bArrB != null) {
            cdo.f30822catch = true;
            if (!q3.m6360abstract(bArrB, a0.m33946catch(l0.f30675do))) {
                throw new n72((short) 40);
            }
        }
        cdo.f30825do.notifySecureRenegotiation(cdo.f30822catch);
        Hashtable hashtable2 = cdo.f30826else;
        Hashtable hashtableM34131catch = cdo.f30829goto;
        if (cdo.f30820break) {
            if (iT != cdo.f30832new.m34134for() || sC0 != cdo.f30832new.m34137new()) {
                throw new n72((short) 47);
            }
            hashtable2 = null;
            hashtableM34131catch = cdo.f30832new.m34131catch();
        }
        securityParameters.f4058if = iT;
        securityParameters.f4056for = sC0;
        if (hashtableM34131catch != null && !hashtableM34131catch.isEmpty()) {
            boolean zM34425throws = v.m34425throws(hashtableM34131catch);
            if (zM34425throws && !l0.p(securityParameters.m5025if())) {
                throw new n72((short) 47);
            }
            securityParameters.f4055final = zM34425throws;
            securityParameters.f4051class = Cnative.m34226if(cdo.f30820break, hashtable2, hashtableM34131catch, (short) 47);
            securityParameters.f4052const = v.m34404extends(hashtableM34131catch);
            cdo.f30823class = !cdo.f30820break && l0.k(hashtableM34131catch, v.f30810else, (short) 47);
            if (!cdo.f30820break && l0.k(hashtableM34131catch, a0.f30462strictfp, (short) 47)) {
                z = true;
            }
            cdo.f30824const = z;
        }
        if (hashtable2 != null) {
            cdo.f30825do.processServerExtensions(hashtableM34131catch);
        }
        securityParameters.f4059new = a0.m33952static(cdo.f30830if, securityParameters.m5025if());
        securityParameters.f4062try = 12;
    }

    /* renamed from: return, reason: not valid java name */
    public void m34443return(Cdo cdo, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        cdo.f30827final.processServerKeyExchange(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
    }

    /* renamed from: static, reason: not valid java name */
    public void m34444static(Cdo cdo, byte[] bArr) throws IOException {
        cdo.f30825do.processServerSupplementalData(a0.i(new ByteArrayInputStream(bArr)));
    }

    /* renamed from: super, reason: not valid java name */
    public void m34445super(Cdo cdo, byte[] bArr) throws IOException {
        if (cdo.f30833super == null) {
            throw new n72((short) 40);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        cdo.f30837while = Ccatch.m34029try(cdo.f30830if, byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        cdo.f30827final.validateCertificateRequest(cdo.f30837while);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m34446switch(Cdo cdo, a aVar) throws IOException {
        m mVar = cdo.f30830if;
        a serverVersion = mVar.getServerVersion();
        if (serverVersion == null) {
            mVar.m34108new(aVar);
            cdo.f30825do.notifyServerVersion(aVar);
        } else if (!serverVersion.m33939do(aVar)) {
            throw new n72((short) 47);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public Cdefault m34447this(TlsClient tlsClient, DatagramTransport datagramTransport) throws IOException {
        h hVarExportSessionParameters;
        if (tlsClient == null) {
            throw new IllegalArgumentException("'client' cannot be null");
        }
        if (datagramTransport == null) {
            throw new IllegalArgumentException("'transport' cannot be null");
        }
        mw1 mw1Var = new mw1();
        mw1Var.f4053do = 1;
        Cdo cdo = new Cdo();
        cdo.f30825do = tlsClient;
        cdo.f30830if = new m(this.f30690do, mw1Var);
        mw1Var.f4054else = a0.m33945break(tlsClient.shouldUseGMTUnixTime(), cdo.f30830if.getNonceRandomGenerator());
        tlsClient.init(cdo.f30830if);
        Creturn creturn = new Creturn(datagramTransport, cdo.f30830if, tlsClient, (short) 22);
        TlsSession sessionToResume = cdo.f30825do.getSessionToResume();
        if (sessionToResume != null && sessionToResume.isResumable() && (hVarExportSessionParameters = sessionToResume.exportSessionParameters()) != null && hVarExportSessionParameters.m34129break()) {
            cdo.f30828for = sessionToResume;
            cdo.f30832new = hVarExportSessionParameters;
        }
        try {
            try {
                try {
                    return m34439goto(cdo, creturn);
                } catch (IOException e) {
                    m34438else(cdo, creturn, (short) 80);
                    throw e;
                }
            } catch (n72 e2) {
                m34438else(cdo, creturn, e2.getAlertDescription());
                throw e2;
            } catch (RuntimeException e3) {
                m34438else(cdo, creturn, (short) 80);
                throw new n72((short) 80, e3);
            }
        } finally {
            mw1Var.m5020do();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m34448throw(Cdo cdo, byte[] bArr) throws IOException {
        if (!cdo.f30823class) {
            throw new n72((short) 10);
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        cdo.f30835throw = Cclass.m34034case(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
    }

    /* renamed from: while, reason: not valid java name */
    public byte[] m34449while(Cdo cdo, byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        a aVarF0 = l0.f0(byteArrayInputStream);
        byte[] bArrR = l0.R(byteArrayInputStream);
        a0.m33948for(byteArrayInputStream);
        if (!aVarF0.m33943this(cdo.f30830if.getClientVersion())) {
            throw new n72((short) 47);
        }
        if (a.f30452goto.m33943this(aVarF0) || bArrR.length <= 32) {
            return bArrR;
        }
        throw new n72((short) 47);
    }
}
