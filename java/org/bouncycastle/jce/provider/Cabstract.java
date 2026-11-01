package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.b21;
import android.support.v4.do0;
import android.support.v4.fe1;
import android.support.v4.j6;
import android.support.v4.oj1;
import android.support.v4.p90;
import android.support.v4.q10;
import android.support.v4.q3;
import android.support.v4.r10;
import android.support.v4.r7;
import android.support.v4.tg0;
import android.support.v4.tg2;
import android.support.v4.ug0;
import android.support.v4.wg0;
import android.support.v4.ya1;
import android.support.v4.ye;
import android.support.v4.za1;
import com.google.android.material.datepicker.Cbreak;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.Cdo;
import org.bouncycastle.jcajce.Cfor;
import org.bouncycastle.jcajce.Cif;
import org.bouncycastle.jcajce.Cnew;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jce.provider.abstract, reason: invalid class name */
/* loaded from: classes3.dex */
class Cabstract {

    /* renamed from: import, reason: not valid java name */
    public static final int f31576import = 6;

    /* renamed from: throw, reason: not valid java name */
    public static final String f31581throw = "2.5.29.32.0";

    /* renamed from: while, reason: not valid java name */
    public static final int f31583while = 5;

    /* renamed from: do, reason: not valid java name */
    private static final Cdefault f31570do = new Cdefault();

    /* renamed from: if, reason: not valid java name */
    public static final String f31575if = Cif.f29328public.m32795super();

    /* renamed from: for, reason: not valid java name */
    public static final String f31573for = Cif.f29329return.m32795super();

    /* renamed from: new, reason: not valid java name */
    public static final String f31578new = Cif.f29317extends.m32795super();

    /* renamed from: try, reason: not valid java name */
    public static final String f31582try = Cif.f29335throw.m32795super();

    /* renamed from: case, reason: not valid java name */
    public static final String f31566case = Cif.f29315default.m32795super();

    /* renamed from: else, reason: not valid java name */
    public static final String f31571else = Cif.f29332super.m32795super();

    /* renamed from: goto, reason: not valid java name */
    public static final String f31574goto = Cif.f29333switch.m32795super();

    /* renamed from: this, reason: not valid java name */
    public static final String f31580this = Cif.f29309break.m32795super();

    /* renamed from: break, reason: not valid java name */
    public static final String f31565break = Cif.f29323native.m32795super();

    /* renamed from: catch, reason: not valid java name */
    public static final String f31567catch = Cif.f29320goto.m32795super();

    /* renamed from: class, reason: not valid java name */
    public static final String f31568class = Cif.f29321import.m32795super();

    /* renamed from: const, reason: not valid java name */
    public static final String f31569const = Cif.f29330static.m32795super();

    /* renamed from: final, reason: not valid java name */
    public static final String f31572final = Cif.f29310case.m32795super();

    /* renamed from: super, reason: not valid java name */
    public static final String f31579super = Cif.f29311catch.m32795super();

    /* renamed from: native, reason: not valid java name */
    public static final String[] f31577native = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    /* renamed from: abstract, reason: not valid java name */
    public static za1 m34961abstract(CertPath certPath, int i, Set set, za1 za1Var, List[] listArr, int i2) throws CertPathValidatorException {
        String strM32795super;
        int i3;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i4 = size - i;
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(Ctry.m35130const(x509Certificate, f31575if));
            if (csuperM33129catch == null || za1Var == null) {
                return null;
            }
            Enumeration enumerationMo33076super = csuperM33129catch.mo33076super();
            HashSet hashSet = new HashSet();
            while (enumerationMo33076super.hasMoreElements()) {
                fe1 fe1VarM2258new = fe1.m2258new(enumerationMo33076super.nextElement());
                Ccatch ccatchM2260try = fe1VarM2258new.m2260try();
                hashSet.add(ccatchM2260try.m32795super());
                if (!"2.5.29.32.0".equals(ccatchM2260try.m32795super())) {
                    try {
                        Set setM35151throw = Ctry.m35151throw(fe1VarM2258new.m2259case());
                        if (!Ctry.m35134extends(i4, listArr, ccatchM2260try, setM35151throw)) {
                            Ctry.m35136finally(i4, listArr, ccatchM2260try, setM35151throw);
                        }
                    } catch (CertPathValidatorException e) {
                        throw new p90("Policy qualifier info set could not be build.", e, certPath, i);
                    }
                }
            }
            if (set.isEmpty() || set.contains("2.5.29.32.0")) {
                set.clear();
                set.addAll(hashSet);
            } else {
                HashSet hashSet2 = new HashSet();
                for (Object obj : set) {
                    if (hashSet.contains(obj)) {
                        hashSet2.add(obj);
                    }
                }
                set.clear();
                set.addAll(hashSet2);
            }
            if (i2 > 0 || (i4 < size && Ctry.m35149switch(x509Certificate))) {
                Enumeration enumerationMo33076super2 = csuperM33129catch.mo33076super();
                while (true) {
                    if (!enumerationMo33076super2.hasMoreElements()) {
                        break;
                    }
                    fe1 fe1VarM2258new2 = fe1.m2258new(enumerationMo33076super2.nextElement());
                    if ("2.5.29.32.0".equals(fe1VarM2258new2.m2260try().m32795super())) {
                        Set setM35151throw2 = Ctry.m35151throw(fe1VarM2258new2.m2259case());
                        List list = listArr[i4 - 1];
                        for (int i5 = 0; i5 < list.size(); i5++) {
                            za1 za1Var2 = (za1) list.get(i5);
                            for (Object obj2 : za1Var2.getExpectedPolicies()) {
                                if (obj2 instanceof String) {
                                    strM32795super = (String) obj2;
                                } else if (obj2 instanceof Ccatch) {
                                    strM32795super = ((Ccatch) obj2).m32795super();
                                }
                                String str = strM32795super;
                                Iterator children = za1Var2.getChildren();
                                boolean z = false;
                                while (children.hasNext()) {
                                    if (str.equals(((za1) children.next()).getValidPolicy())) {
                                        z = true;
                                    }
                                }
                                if (!z) {
                                    HashSet hashSet3 = new HashSet();
                                    hashSet3.add(str);
                                    za1 za1Var3 = new za1(new ArrayList(), i4, hashSet3, za1Var2, setM35151throw2, str, false);
                                    za1Var2.m10143do(za1Var3);
                                    listArr[i4].add(za1Var3);
                                }
                            }
                        }
                    }
                }
            }
            za1 za1VarM35143package = za1Var;
            for (int i6 = i4 - 1; i6 >= 0; i6--) {
                List list2 = listArr[i6];
                while (i3 < list2.size()) {
                    za1 za1Var4 = (za1) list2.get(i3);
                    i3 = (za1Var4.m10145for() || (za1VarM35143package = Ctry.m35143package(za1VarM35143package, listArr, za1Var4)) != null) ? i3 + 1 : 0;
                }
            }
            Set<String> criticalExtensionOIDs = x509Certificate.getCriticalExtensionOIDs();
            if (criticalExtensionOIDs != null) {
                boolean zContains = criticalExtensionOIDs.contains(f31575if);
                List list3 = listArr[i4];
                for (int i7 = 0; i7 < list3.size(); i7++) {
                    ((za1) list3.get(i7)).m10149try(zContains);
                }
            }
            return za1VarM35143package;
        } catch (a2 e2) {
            throw new p90("Could not read certificate policies extension from certificate.", e2, certPath, i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
    
        r4 = org.bouncycastle.asn1.Cgoto.m33041class(r1, false).m33044final().intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003c, code lost:
    
        if (r4 >= r6) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
    
        return r4;
     */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m34962break(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31574goto));
            if (csuperM33129catch != null) {
                Enumeration enumerationMo33076super = csuperM33129catch.mo33076super();
                while (true) {
                    if (!enumerationMo33076super.hasMoreElements()) {
                        break;
                    }
                    try {
                        Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
                        if (cimportM33063catch.getTagNo() == 1) {
                            break;
                        }
                    } catch (IllegalArgumentException e) {
                        throw new p90("Policy constraints extension contents cannot be decoded.", e, certPath, i);
                    }
                }
            }
            return i2;
        } catch (Exception e2) {
            throw new p90("Policy constraints extension cannot be decoded.", e2, certPath, i);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int m34963case(CertPath certPath, int i, int i2) {
        return (Ctry.m35149switch((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m34964catch(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        int iIntValue;
        try {
            Cgoto cgotoM33040catch = Cgoto.m33040catch(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31578new));
            return (cgotoM33040catch == null || (iIntValue = cgotoM33040catch.m33044final().intValue()) >= i2) ? i2 : iIntValue;
        } catch (Exception e) {
            throw new p90("Inhibit any-policy extension cannot be decoded.", e, certPath, i);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m34965class(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            r7 r7VarM6795try = r7.m6795try(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31580this));
            if (r7VarM6795try == null) {
                throw new CertPathValidatorException("Intermediate certificate lacks BasicConstraints");
            }
            if (!r7VarM6795try.m6797goto()) {
                throw new CertPathValidatorException("Not a CA certificate");
            }
        } catch (Exception e) {
            throw new p90("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static int m34966const(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        if (Ctry.m35149switch((X509Certificate) certPath.getCertificates().get(i))) {
            return i2;
        }
        if (i2 > 0) {
            return i2 - 1;
        }
        throw new p90("Max path length not greater than zero", null, certPath, i);
    }

    /* renamed from: continue, reason: not valid java name */
    public static za1 m34967continue(CertPath certPath, int i, za1 za1Var) throws CertPathValidatorException {
        try {
            if (Csuper.m33129catch(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31575if)) == null) {
                return null;
            }
            return za1Var;
        } catch (a2 e) {
            throw new p90("Could not read certificate policies extension from certificate.", e, certPath, i);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static X509CRL m34968default(Set set, PublicKey publicKey) throws a2, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException, NoSuchProviderException {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            X509CRL x509crl = (X509CRL) it.next();
            try {
                x509crl.verify(publicKey);
                return x509crl;
            } catch (Exception e2) {
                e = e2;
            }
        }
        if (e == null) {
            return null;
        }
        throw new a2("Cannot verify delta CRL.", e);
    }

    /* renamed from: do, reason: not valid java name */
    private static void m34969do(q10 q10Var, Cnew cnew, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, Ccase ccase, Cstrictfp cstrictfp, List list, JcaJceHelper jcaJceHelper) throws a2 {
        Cstrictfp cstrictfp2;
        Date date2;
        Iterator it;
        X509CRL x509crlM34968default;
        Set<String> criticalExtensionOIDs;
        Cstrictfp cstrictfp3 = cstrictfp;
        Date date3 = new Date(System.currentTimeMillis());
        if (date.getTime() > date3.getTime()) {
            throw new a2("Validation time is in future.");
        }
        Iterator it2 = Ctry.m35128catch(q10Var, x509Certificate, date3, cnew).iterator();
        a2 e = null;
        boolean z = false;
        while (it2.hasNext() && ccase.m35000do() == 11 && !cstrictfp.m35114try()) {
            try {
                X509CRL x509crl = (X509CRL) it2.next();
                Cstrictfp cstrictfpM34986static = m34986static(x509crl, q10Var);
                if (cstrictfpM34986static.m35111for(cstrictfp3)) {
                    date2 = date3;
                    it = it2;
                    a2 a2Var = e;
                    try {
                        x509crlM34968default = cnew.m34603finally() ? m34968default(Ctry.m35129class(cnew.m34602final() != null ? cnew.m34602final() : date2, x509crl, cnew.m34598class(), cnew.m34596break()), m34992throws(x509crl, m34989switch(x509crl, x509Certificate, x509Certificate2, publicKey, cnew, list, jcaJceHelper))) : null;
                        if (cnew.m34608static() != 1 && x509Certificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                            throw new a2("No valid CRL for current time found.");
                        }
                        m34979native(q10Var, x509Certificate, x509crl);
                        m34984public(q10Var, x509Certificate, x509crl);
                        m34985return(x509crlM34968default, x509crl, cnew);
                        m34971extends(date, x509crlM34968default, x509Certificate, ccase, cnew);
                        m34973finally(date, x509crl, x509Certificate, ccase);
                        if (ccase.m35000do() == 8) {
                            ccase.m35001for(11);
                        }
                        cstrictfp2 = cstrictfp;
                    } catch (a2 e2) {
                        e = e2;
                        cstrictfp2 = cstrictfp;
                        cstrictfp3 = cstrictfp2;
                        date3 = date2;
                        it2 = it;
                    }
                    try {
                        cstrictfp2.m35110do(cstrictfpM34986static);
                        Set<String> criticalExtensionOIDs2 = x509crl.getCriticalExtensionOIDs();
                        if (criticalExtensionOIDs2 != null) {
                            HashSet hashSet = new HashSet(criticalExtensionOIDs2);
                            hashSet.remove(Cif.f29335throw.m32795super());
                            hashSet.remove(Cif.f29332super.m32795super());
                            if (!hashSet.isEmpty()) {
                                throw new a2("CRL contains unsupported critical extensions.");
                            }
                        }
                        if (x509crlM34968default != null && (criticalExtensionOIDs = x509crlM34968default.getCriticalExtensionOIDs()) != null) {
                            HashSet hashSet2 = new HashSet(criticalExtensionOIDs);
                            hashSet2.remove(Cif.f29335throw.m32795super());
                            hashSet2.remove(Cif.f29332super.m32795super());
                            if (!hashSet2.isEmpty()) {
                                throw new a2("Delta CRL contains unsupported critical extension.");
                            }
                        }
                        cstrictfp3 = cstrictfp2;
                        date3 = date2;
                        it2 = it;
                        e = a2Var;
                        z = true;
                    } catch (a2 e3) {
                        e = e3;
                        cstrictfp3 = cstrictfp2;
                        date3 = date2;
                        it2 = it;
                    }
                } else {
                    continue;
                }
            } catch (a2 e4) {
                e = e4;
                cstrictfp2 = cstrictfp3;
                date2 = date3;
                it = it2;
            }
        }
        a2 a2Var2 = e;
        if (!z) {
            throw a2Var2;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static int m34970else(CertPath certPath, int i, int i2) {
        return (Ctry.m35149switch((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m34971extends(Date date, X509CRL x509crl, Object obj, Ccase ccase, Cnew cnew) throws a2 {
        if (!cnew.m34603finally() || x509crl == null) {
            return;
        }
        Ctry.m35126break(date, x509crl, obj, ccase);
    }

    /* renamed from: final, reason: not valid java name */
    public static int m34972final(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        BigInteger bigIntegerM6796else;
        int iIntValue;
        try {
            r7 r7VarM6795try = r7.m6795try(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31580this));
            return (r7VarM6795try == null || (bigIntegerM6796else = r7VarM6795try.m6796else()) == null || (iIntValue = bigIntegerM6796else.intValue()) >= i2) ? i2 : iIntValue;
        } catch (Exception e) {
            throw new p90("Basic constraints extension cannot be decoded.", e, certPath, i);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m34973finally(Date date, X509CRL x509crl, Object obj, Ccase ccase) throws a2 {
        if (ccase.m35000do() == 11) {
            Ctry.m35126break(date, x509crl, obj, ccase);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00cb, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d4, code lost:
    
        r7 = ((org.bouncycastle.asn1.Csuper) org.bouncycastle.jce.provider.Ctry.m35130const(r4, org.bouncycastle.jce.provider.Cabstract.f31575if)).mo33076super();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00dc, code lost:
    
        if (r7.hasMoreElements() == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00de, code lost:
    
        r9 = android.support.v4.fe1.m2258new(r7.nextElement());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f2, code lost:
    
        if ("2.5.29.32.0".equals(r9.m2260try().m32795super()) == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f4, code lost:
    
        r5 = org.bouncycastle.jce.provider.Ctry.m35151throw(r9.m2259case());
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00fd, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0105, code lost:
    
        throw new android.support.v4.p90("Policy qualifier info set could not be decoded.", r0, r19, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0106, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010e, code lost:
    
        throw new java.security.cert.CertPathValidatorException("Policy information could not be decoded.", r0, r19, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x010f, code lost:
    
        r10 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0114, code lost:
    
        if (r4.getCriticalExtensionOIDs() == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0116, code lost:
    
        r12 = r4.getCriticalExtensionOIDs().contains(org.bouncycastle.jce.provider.Cabstract.f31575if);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0122, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0123, code lost:
    
        r9 = (android.support.v4.za1) r6.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0132, code lost:
    
        if ("2.5.29.32.0".equals(r9.getValidPolicy()) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0134, code lost:
    
        r8 = new android.support.v4.za1(new java.util.ArrayList(), r3, (java.util.Set) r13.get(r11), r9, r10, r11, r12);
        r9.m10143do(r8);
        r21[r3].add(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0158, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0160, code lost:
    
        throw new android.support.v4.p90("Certificate policies extension could not be decoded.", r0, r19, r20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01b5, code lost:
    
        continue;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static za1 m34974for(CertPath certPath, int i, List[] listArr, za1 za1Var, int i2) throws CertPathValidatorException {
        int i3;
        boolean z;
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size() - i;
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(Ctry.m35130const(x509Certificate, f31573for));
            if (csuperM33129catch == null) {
                return za1Var;
            }
            HashMap map = new HashMap();
            HashSet<String> hashSet = new HashSet();
            for (int i4 = 0; i4 < csuperM33129catch.size(); i4++) {
                Csuper csuper = (Csuper) csuperM33129catch.mo33075final(i4);
                String strM32795super = ((Ccatch) csuper.mo33075final(0)).m32795super();
                String strM32795super2 = ((Ccatch) csuper.mo33075final(1)).m32795super();
                if (map.containsKey(strM32795super)) {
                    ((Set) map.get(strM32795super)).add(strM32795super2);
                } else {
                    HashSet hashSet2 = new HashSet();
                    hashSet2.add(strM32795super2);
                    map.put(strM32795super, hashSet2);
                    hashSet.add(strM32795super);
                }
            }
            za1 za1Var2 = za1Var;
            for (String str : hashSet) {
                if (i2 > 0) {
                    Iterator it = listArr[size].iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        }
                        za1 za1Var3 = (za1) it.next();
                        if (za1Var3.getValidPolicy().equals(str)) {
                            za1Var3.f8499for = (Set) map.get(str);
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        Iterator it2 = listArr[size].iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                za1 za1Var4 = (za1) it2.next();
                                if ("2.5.29.32.0".equals(za1Var4.getValidPolicy())) {
                                    break;
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                } else if (i2 <= 0) {
                    Iterator it3 = listArr[size].iterator();
                    while (it3.hasNext()) {
                        za1 za1Var5 = (za1) it3.next();
                        if (za1Var5.getValidPolicy().equals(str)) {
                            ((za1) za1Var5.getParent()).m10148new(za1Var5);
                            it3.remove();
                            for (int i5 = size - 1; i5 >= 0; i5--) {
                                List list = listArr[i5];
                                za1 za1VarM35143package = za1Var2;
                                while (i3 < list.size()) {
                                    za1 za1Var6 = (za1) list.get(i3);
                                    i3 = (za1Var6.m10145for() || (za1VarM35143package = Ctry.m35143package(za1VarM35143package, listArr, za1Var6)) != null) ? i3 + 1 : 0;
                                }
                                za1Var2 = za1VarM35143package;
                            }
                        }
                    }
                }
            }
            return za1Var2;
        } catch (a2 e) {
            throw new p90("Policy mappings extension could not be decoded.", e, certPath, i);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m34975goto(CertPath certPath, int i, int i2) {
        return (Ctry.m35149switch((X509Certificate) certPath.getCertificates().get(i)) || i2 == 0) ? i2 : i2 - 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m34976if(Cnew cnew, X509Certificate x509Certificate, Date date, X509Certificate x509Certificate2, PublicKey publicKey, List list, JcaJceHelper jcaJceHelper) throws a2 {
        a2 e;
        boolean z;
        int i;
        int i2;
        q10[] q10VarArr;
        try {
            ye yeVarM9822case = ye.m9822case(Ctry.m35130const(x509Certificate, f31565break));
            Cnew.Cif cif = new Cnew.Cif(cnew);
            try {
                Iterator<PKIXCRLStore> it = Ctry.m35133else(yeVarM9822case, cnew.m34611throw()).iterator();
                while (it.hasNext()) {
                    cif.m34625class(it.next());
                }
                Ccase ccase = new Ccase();
                Cstrictfp cstrictfp = new Cstrictfp();
                Cnew cnewM34634throw = cif.m34634throw();
                boolean z2 = true;
                if (yeVarM9822case != null) {
                    try {
                        q10[] q10VarArrM9825try = yeVarM9822case.m9825try();
                        if (q10VarArrM9825try != null) {
                            e = null;
                            int i3 = 0;
                            z = false;
                            for (int i4 = 11; i3 < q10VarArrM9825try.length && ccase.m35000do() == i4 && !cstrictfp.m35114try(); i4 = 11) {
                                try {
                                    i2 = i3;
                                    q10VarArr = q10VarArrM9825try;
                                    try {
                                        m34969do(q10VarArrM9825try[i3], cnewM34634throw, x509Certificate, date, x509Certificate2, publicKey, ccase, cstrictfp, list, jcaJceHelper);
                                        z = true;
                                    } catch (a2 e2) {
                                        e = e2;
                                    }
                                } catch (a2 e3) {
                                    e = e3;
                                    i2 = i3;
                                    q10VarArr = q10VarArrM9825try;
                                }
                                i3 = i2 + 1;
                                q10VarArrM9825try = q10VarArr;
                            }
                            i = 11;
                        } else {
                            i = 11;
                            e = null;
                            z = false;
                        }
                    } catch (Exception e4) {
                        throw new a2("Distribution points could not be read.", e4);
                    }
                }
                if (ccase.m35000do() != i || cstrictfp.m35114try()) {
                    z2 = z;
                } else {
                    try {
                        try {
                            m34969do(new q10(new r10(0, new ug0(new tg0(4, new Celse(Cprivate.m35099if(x509Certificate).getEncoded()).m33002break()))), null, null), (Cnew) cnew.clone(), x509Certificate, date, x509Certificate2, publicKey, ccase, cstrictfp, list, jcaJceHelper);
                        } catch (Exception e5) {
                            throw new a2("Issuer from certificate for CRL could not be reencoded.", e5);
                        }
                    } catch (a2 e6) {
                        e = e6;
                    }
                }
                if (!z2) {
                    if (!(e instanceof a2)) {
                        throw new a2("No valid CRL found.", e);
                    }
                    throw e;
                }
                if (ccase.m35000do() == i) {
                    if (!cstrictfp.m35114try() && ccase.m35000do() == i) {
                        ccase.m35001for(12);
                    }
                    if (ccase.m35000do() == 12) {
                        throw new a2("Certificate status could not be determined.");
                    }
                    return;
                }
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss Z");
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone(Cbreak.f11820do));
                throw new a2(("Certificate revocation after " + simpleDateFormat.format(ccase.m35002if())) + ", reason: " + f31577native[ccase.m35000do()]);
            } catch (a2 e7) {
                throw new a2("No additional CRL locations could be decoded from CRL distribution point extension.", e7);
            }
        } catch (Exception e8) {
            throw new a2("CRL distribution point extension could not be read.", e8);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static Set[] m34977import(Date date, Cnew cnew, X509Certificate x509Certificate, X509CRL x509crl) throws a2, IOException {
        HashSet hashSet = new HashSet();
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        x509CRLSelector.setCertificateChecking(x509Certificate);
        try {
            x509CRLSelector.addIssuerName(Cprivate.m35098for(x509crl).getEncoded());
            Cdo<? extends CRL> cdoM34566else = new Cdo.Cif(x509CRLSelector).m34567goto(true).m34566else();
            if (cnew.m34602final() != null) {
                date = cnew.m34602final();
            }
            Set setM35020if = f31570do.m35020if(cdoM34566else, date, cnew.m34598class(), cnew.m34596break());
            if (cnew.m34603finally()) {
                try {
                    hashSet.addAll(Ctry.m35129class(date, x509crl, cnew.m34598class(), cnew.m34596break()));
                } catch (a2 e) {
                    throw new a2("Exception obtaining delta CRLs.", e);
                }
            }
            return new Set[]{setM35020if, hashSet};
        } catch (IOException e2) {
            throw new a2("Cannot extract issuer from CRL." + e2, e2);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m34978interface(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31574goto));
            if (csuperM33129catch != null) {
                Enumeration enumerationMo33076super = csuperM33129catch.mo33076super();
                while (enumerationMo33076super.hasMoreElements()) {
                    Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
                    if (cimport.getTagNo() == 0) {
                        try {
                            if (Cgoto.m33041class(cimport, false).m33044final().intValue() == 0) {
                                return 0;
                            }
                        } catch (Exception e) {
                            throw new p90("Policy constraints requireExplicitPolicy field could not be decoded.", e, certPath, i);
                        }
                    }
                }
            }
            return i2;
        } catch (a2 e2) {
            throw new p90("Policy constraints could not be decoded.", e2, certPath, i);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static void m34979native(q10 q10Var, Object obj, X509CRL x509crl) throws a2 {
        Cfinal cfinalM35130const = Ctry.m35130const(x509crl, f31582try);
        int i = 0;
        boolean z = cfinalM35130const != null && do0.m1460else(cfinalM35130const).m1464break();
        try {
            byte[] encoded = Cprivate.m35098for(x509crl).getEncoded();
            if (q10Var.m6310try() != null) {
                tg0[] tg0VarArrM8440goto = q10Var.m6310try().m8440goto();
                int i2 = 0;
                while (i < tg0VarArrM8440goto.length) {
                    if (tg0VarArrM8440goto[i].getTagNo() == 4) {
                        try {
                            if (q3.m6362case(tg0VarArrM8440goto[i].m7878else().toASN1Primitive().getEncoded(), encoded)) {
                                i2 = 1;
                            }
                        } catch (IOException e) {
                            throw new a2("CRL issuer information from distribution point cannot be decoded.", e);
                        }
                    }
                    i++;
                }
                if (i2 != 0 && !z) {
                    throw new a2("Distribution point contains cRLIssuer field but CRL is not indirect.");
                }
                if (i2 == 0) {
                    throw new a2("CRL issuer of CRL does not match CRL issuer of distribution point.");
                }
                i = i2;
            } else if (Cprivate.m35098for(x509crl).equals(Cprivate.m35099if(obj))) {
                i = 1;
            }
            if (i == 0) {
                throw new a2("Cannot find matching CRL issuer for certificate.");
            }
        } catch (IOException e2) {
            throw new a2("Exception encoding CRL issuer: " + e2.getMessage(), e2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m34980new(CertPath certPath, int i) throws CertPathValidatorException {
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31573for));
            if (csuperM33129catch != null) {
                for (int i2 = 0; i2 < csuperM33129catch.size(); i2++) {
                    try {
                        Csuper csuperM33129catch2 = Csuper.m33129catch(csuperM33129catch.mo33075final(i2));
                        Ccatch ccatchM32790throw = Ccatch.m32790throw(csuperM33129catch2.mo33075final(0));
                        Ccatch ccatchM32790throw2 = Ccatch.m32790throw(csuperM33129catch2.mo33075final(1));
                        if ("2.5.29.32.0".equals(ccatchM32790throw.m32795super())) {
                            throw new CertPathValidatorException("IssuerDomainPolicy is anyPolicy", null, certPath, i);
                        }
                        if ("2.5.29.32.0".equals(ccatchM32790throw2.m32795super())) {
                            throw new CertPathValidatorException("SubjectDomainPolicy is anyPolicy,", null, certPath, i);
                        }
                    } catch (Exception e) {
                        throw new p90("Policy mappings extension contents could not be decoded.", e, certPath, i);
                    }
                }
            }
        } catch (a2 e2) {
            throw new p90("Policy mappings extension could not be decoded.", e2, certPath, i);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static void m34981package(CertPath certPath, Cnew cnew, int i, PublicKey publicKey, boolean z, tg2 tg2Var, X509Certificate x509Certificate, JcaJceHelper jcaJceHelper) throws p90, CertificateNotYetValidException, CertificateExpiredException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(i);
        if (!z) {
            try {
                Ctry.m35125abstract(x509Certificate2, publicKey, cnew.m34605native());
            } catch (GeneralSecurityException e) {
                throw new p90("Could not validate certificate signature.", e, certPath, i);
            }
        }
        try {
            x509Certificate2.checkValidity(Ctry.m35140import(cnew, certPath, i));
            if (cnew.m34601extends()) {
                try {
                    m34976if(cnew, x509Certificate2, Ctry.m35140import(cnew, certPath, i), x509Certificate, publicKey, certificates, jcaJceHelper);
                } catch (a2 e2) {
                    throw new p90(e2.getMessage(), e2.getCause() != null ? e2.getCause() : e2, certPath, i);
                }
            }
            if (Cprivate.m35099if(x509Certificate2).equals(tg2Var)) {
                return;
            }
            throw new p90("IssuerName(" + Cprivate.m35099if(x509Certificate2) + ") does not match SubjectName(" + tg2Var + ") of signing certificate.", null, certPath, i);
        } catch (a2 e3) {
            throw new p90("Could not validate time of certificate.", e3, certPath, i);
        } catch (CertificateExpiredException e4) {
            throw new p90("Could not validate certificate: " + e4.getMessage(), e4, certPath, i);
        } catch (CertificateNotYetValidException e5) {
            throw new p90("Could not validate certificate: " + e5.getMessage(), e5, certPath, i);
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static void m34982private(CertPath certPath, int i, Cpackage cpackage) throws CertPathValidatorException {
        List<? extends Certificate> certificates = certPath.getCertificates();
        X509Certificate x509Certificate = (X509Certificate) certificates.get(i);
        int size = certificates.size();
        int i2 = size - i;
        if (!Ctry.m35149switch(x509Certificate) || i2 >= size) {
            try {
                Csuper csuperM33129catch = Csuper.m33129catch(Cprivate.m35101try(x509Certificate).getEncoded());
                try {
                    cpackage.m35089catch(csuperM33129catch);
                    cpackage.m35093new(csuperM33129catch);
                    try {
                        ug0 ug0VarM8436case = ug0.m8436case(Ctry.m35130const(x509Certificate, f31567catch));
                        oj1[] oj1VarArrM7889catch = tg2.m7884else(csuperM33129catch).m7889catch(j6.f3010volatile);
                        for (int i3 = 0; i3 != oj1VarArrM7889catch.length; i3++) {
                            tg0 tg0Var = new tg0(1, ((ASN1String) oj1VarArrM7889catch[i3].m5674new().m8231case()).getString());
                            try {
                                cpackage.m35096this(tg0Var);
                                cpackage.m35092if(tg0Var);
                            } catch (ya1 e) {
                                throw new CertPathValidatorException("Subtree check for certificate subject alternative email failed.", e, certPath, i);
                            }
                        }
                        if (ug0VarM8436case != null) {
                            try {
                                tg0[] tg0VarArrM8440goto = ug0VarM8436case.m8440goto();
                                for (int i4 = 0; i4 < tg0VarArrM8440goto.length; i4++) {
                                    try {
                                        cpackage.m35096this(tg0VarArrM8440goto[i4]);
                                        cpackage.m35092if(tg0VarArrM8440goto[i4]);
                                    } catch (ya1 e2) {
                                        throw new CertPathValidatorException("Subtree check for certificate subject alternative name failed.", e2, certPath, i);
                                    }
                                }
                            } catch (Exception e3) {
                                throw new CertPathValidatorException("Subject alternative name contents could not be decoded.", e3, certPath, i);
                            }
                        }
                    } catch (Exception e4) {
                        throw new CertPathValidatorException("Subject alternative name extension could not be decoded.", e4, certPath, i);
                    }
                } catch (ya1 e5) {
                    throw new CertPathValidatorException("Subtree check for certificate subject failed.", e5, certPath, i);
                }
            } catch (Exception e6) {
                throw new CertPathValidatorException("Exception extracting subject name when checking subtrees.", e6, certPath, i);
            }
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m34983protected(CertPath certPath, int i, List list, Set set) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new p90(e.getMessage(), e, certPath, i);
            } catch (Exception e2) {
                throw new CertPathValidatorException("Additional certificate path checker failed.", e2, certPath, i);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new p90("Certificate has unsupported critical extension: " + set, null, certPath, i);
    }

    /* renamed from: public, reason: not valid java name */
    public static void m34984public(q10 q10Var, Object obj, X509CRL x509crl) throws a2 {
        tg0[] tg0VarArrM8440goto;
        try {
            do0 do0VarM1460else = do0.m1460else(Ctry.m35130const(x509crl, f31582try));
            if (do0VarM1460else != null) {
                if (do0VarM1460else.m1465case() != null) {
                    r10 r10VarM1465case = do0.m1460else(do0VarM1460else).m1465case();
                    ArrayList arrayList = new ArrayList();
                    boolean z = false;
                    if (r10VarM1465case.m6731goto() == 0) {
                        for (tg0 tg0Var : ug0.m8436case(r10VarM1465case.m6730else()).m8440goto()) {
                            arrayList.add(tg0Var);
                        }
                    }
                    if (r10VarM1465case.m6731goto() == 1) {
                        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
                        try {
                            Enumeration enumerationMo33076super = Csuper.m33129catch(Cprivate.m35098for(x509crl)).mo33076super();
                            while (enumerationMo33076super.hasMoreElements()) {
                                cimport.m3516do((ASN1Encodable) enumerationMo33076super.nextElement());
                            }
                            cimport.m3516do(r10VarM1465case.m6730else());
                            arrayList.add(new tg0(tg2.m7884else(new n(cimport))));
                        } catch (Exception e) {
                            throw new a2("Could not read CRL issuer.", e);
                        }
                    }
                    if (q10Var.m6308case() != null) {
                        r10 r10VarM6308case = q10Var.m6308case();
                        tg0[] tg0VarArrM8440goto2 = r10VarM6308case.m6731goto() == 0 ? ug0.m8436case(r10VarM6308case.m6730else()).m8440goto() : null;
                        if (r10VarM6308case.m6731goto() == 1) {
                            if (q10Var.m6310try() != null) {
                                tg0VarArrM8440goto = q10Var.m6310try().m8440goto();
                            } else {
                                tg0VarArrM8440goto = new tg0[1];
                                try {
                                    tg0VarArrM8440goto[0] = new tg0(tg2.m7884else(Cprivate.m35099if(obj).getEncoded()));
                                } catch (Exception e2) {
                                    throw new a2("Could not read certificate issuer.", e2);
                                }
                            }
                            tg0VarArrM8440goto2 = tg0VarArrM8440goto;
                            for (int i = 0; i < tg0VarArrM8440goto2.length; i++) {
                                Enumeration enumerationMo33076super2 = Csuper.m33129catch(tg0VarArrM8440goto2[i].m7878else().toASN1Primitive()).mo33076super();
                                android.support.v4.Cimport cimport2 = new android.support.v4.Cimport();
                                while (enumerationMo33076super2.hasMoreElements()) {
                                    cimport2.m3516do((ASN1Encodable) enumerationMo33076super2.nextElement());
                                }
                                cimport2.m3516do(r10VarM6308case.m6730else());
                                tg0VarArrM8440goto2[i] = new tg0(tg2.m7884else(new n(cimport2)));
                            }
                        }
                        if (tg0VarArrM8440goto2 != null) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= tg0VarArrM8440goto2.length) {
                                    break;
                                }
                                if (arrayList.contains(tg0VarArrM8440goto2[i2])) {
                                    z = true;
                                    break;
                                }
                                i2++;
                            }
                        }
                        if (!z) {
                            throw new a2("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    } else {
                        if (q10Var.m6310try() == null) {
                            throw new a2("Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint.");
                        }
                        tg0[] tg0VarArrM8440goto3 = q10Var.m6310try().m8440goto();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= tg0VarArrM8440goto3.length) {
                                break;
                            }
                            if (arrayList.contains(tg0VarArrM8440goto3[i3])) {
                                z = true;
                                break;
                            }
                            i3++;
                        }
                        if (!z) {
                            throw new a2("No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point.");
                        }
                    }
                }
                try {
                    r7 r7VarM6795try = r7.m6795try(Ctry.m35130const((X509Extension) obj, f31580this));
                    if (obj instanceof X509Certificate) {
                        if (do0VarM1460else.m1468const() && r7VarM6795try != null && r7VarM6795try.m6797goto()) {
                            throw new a2("CA Cert CRL only contains user certificates.");
                        }
                        if (do0VarM1460else.m1467class() && (r7VarM6795try == null || !r7VarM6795try.m6797goto())) {
                            throw new a2("End CRL only contains CA certificates.");
                        }
                    }
                    if (do0VarM1460else.m1466catch()) {
                        throw new a2("onlyContainsAttributeCerts boolean is asserted.");
                    }
                } catch (Exception e3) {
                    throw new a2("Basic constraints extension could not be decoded.", e3);
                }
            }
        } catch (Exception e4) {
            throw new a2("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m34985return(X509CRL x509crl, X509CRL x509crl2, Cnew cnew) throws a2 {
        if (x509crl == null) {
            return;
        }
        try {
            String str = f31582try;
            do0 do0VarM1460else = do0.m1460else(Ctry.m35130const(x509crl2, str));
            if (cnew.m34603finally()) {
                if (!Cprivate.m35098for(x509crl).equals(Cprivate.m35098for(x509crl2))) {
                    throw new a2("Complete CRL issuer does not match delta CRL issuer.");
                }
                try {
                    do0 do0VarM1460else2 = do0.m1460else(Ctry.m35130const(x509crl, str));
                    boolean z = false;
                    if (do0VarM1460else != null ? do0VarM1460else.equals(do0VarM1460else2) : do0VarM1460else2 == null) {
                        z = true;
                    }
                    if (!z) {
                        throw new a2("Issuing distribution point extension from delta CRL and complete CRL does not match.");
                    }
                    try {
                        String str2 = f31569const;
                        Cfinal cfinalM35130const = Ctry.m35130const(x509crl2, str2);
                        try {
                            Cfinal cfinalM35130const2 = Ctry.m35130const(x509crl, str2);
                            if (cfinalM35130const == null) {
                                throw new a2("CRL authority key identifier is null.");
                            }
                            if (cfinalM35130const2 == null) {
                                throw new a2("Delta CRL authority key identifier is null.");
                            }
                            if (!cfinalM35130const.equals(cfinalM35130const2)) {
                                throw new a2("Delta CRL authority key identifier does not match complete CRL authority key identifier.");
                            }
                        } catch (a2 e) {
                            throw new a2("Authority key identifier extension could not be extracted from delta CRL.", e);
                        }
                    } catch (a2 e2) {
                        throw new a2("Authority key identifier extension could not be extracted from complete CRL.", e2);
                    }
                } catch (Exception e3) {
                    throw new a2("Issuing distribution point extension from delta CRL could not be decoded.", e3);
                }
            }
        } catch (Exception e4) {
            throw new a2("Issuing distribution point extension could not be decoded.", e4);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static Cstrictfp m34986static(X509CRL x509crl, q10 q10Var) throws a2 {
        try {
            do0 do0VarM1460else = do0.m1460else(Ctry.m35130const(x509crl, f31582try));
            if (do0VarM1460else != null && do0VarM1460else.m1469this() != null && q10Var.m6309this() != null) {
                return new Cstrictfp(q10Var.m6309this()).m35113new(new Cstrictfp(do0VarM1460else.m1469this()));
            }
            if ((do0VarM1460else == null || do0VarM1460else.m1469this() == null) && q10Var.m6309this() == null) {
                return Cstrictfp.f31676if;
            }
            return (q10Var.m6309this() == null ? Cstrictfp.f31676if : new Cstrictfp(q10Var.m6309this())).m35113new(do0VarM1460else == null ? Cstrictfp.f31676if : new Cstrictfp(do0VarM1460else.m1469this()));
        } catch (Exception e) {
            throw new a2("Issuing distribution point extension could not be decoded.", e);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m34987strictfp(CertPath certPath, int i, za1 za1Var, int i2) throws CertPathValidatorException {
        if (i2 <= 0 && za1Var == null) {
            throw new p90("No valid policy tree found when one expected.", null, certPath, i);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m34988super(CertPath certPath, int i) throws CertPathValidatorException {
        boolean[] keyUsage = ((X509Certificate) certPath.getCertificates().get(i)).getKeyUsage();
        if (keyUsage != null && !keyUsage[5]) {
            throw new p90("Issuer certificate keyusage extension is critical and does not permit key signing.", null, certPath, i);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static Set m34989switch(X509CRL x509crl, Object obj, X509Certificate x509Certificate, PublicKey publicKey, Cnew cnew, List list, JcaJceHelper jcaJceHelper) throws a2, IOException {
        int i;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(Cprivate.m35098for(x509crl).getEncoded());
            org.bouncycastle.jcajce.Cif<? extends Certificate> cifM34580do = new Cif.C0413if(x509CertSelector).m34580do();
            try {
                Collection collectionM35139if = Ctry.m35139if(cifM34580do, cnew.m34599const());
                collectionM35139if.addAll(Ctry.m35139if(cifM34580do, cnew.m34598class()));
                collectionM35139if.add(x509Certificate);
                Iterator it = collectionM35139if.iterator();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (x509Certificate2.equals(x509Certificate)) {
                        arrayList.add(x509Certificate2);
                        arrayList2.add(publicKey);
                    } else {
                        try {
                            Cextends cextends = new Cextends();
                            X509CertSelector x509CertSelector2 = new X509CertSelector();
                            x509CertSelector2.setCertificate(x509Certificate2);
                            Cnew.Cif cifM34628import = new Cnew.Cif(cnew).m34628import(new Cif.C0413if(x509CertSelector2).m34580do());
                            if (list.contains(x509Certificate2)) {
                                cifM34628import.m34635while(false);
                            } else {
                                cifM34628import.m34635while(true);
                            }
                            List<? extends Certificate> certificates = cextends.engineBuild(new Cfor.Cif(cifM34628import.m34634throw()).m34577try()).getCertPath().getCertificates();
                            arrayList.add(x509Certificate2);
                            arrayList2.add(Ctry.m35135final(certificates, 0, jcaJceHelper));
                        } catch (CertPathBuilderException e) {
                            throw new a2("CertPath for CRL signer failed to validate.", e);
                        } catch (CertPathValidatorException e2) {
                            throw new a2("Public key of issuer certificate of CRL could not be retrieved.", e2);
                        } catch (Exception e3) {
                            throw new a2(e3.getMessage());
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                a2 a2Var = null;
                for (i = 0; i < arrayList.size(); i++) {
                    boolean[] keyUsage = ((X509Certificate) arrayList.get(i)).getKeyUsage();
                    if (keyUsage == null || (keyUsage.length >= 7 && keyUsage[6])) {
                        hashSet.add(arrayList2.get(i));
                    } else {
                        a2Var = new a2("Issuer certificate key usage extension does not permit CRL signing.");
                    }
                }
                if (hashSet.isEmpty() && a2Var == null) {
                    throw new a2("Cannot find a valid issuer certificate.");
                }
                if (!hashSet.isEmpty() || a2Var == null) {
                    return hashSet;
                }
                throw a2Var;
            } catch (a2 e4) {
                throw new a2("Issuer certificate for CRL cannot be searched.", e4);
            }
        } catch (IOException e5) {
            throw new a2("Subject criteria for certificate selector to find issuer certificate for CRL could not be set.", e5);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
    
        r3 = org.bouncycastle.asn1.Cgoto.m33041class(r1, false).m33044final().intValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
    
        if (r3 >= r5) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        return r3;
     */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m34990this(CertPath certPath, int i, int i2) throws CertPathValidatorException {
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31574goto));
            if (csuperM33129catch != null) {
                Enumeration enumerationMo33076super = csuperM33129catch.mo33076super();
                while (true) {
                    if (!enumerationMo33076super.hasMoreElements()) {
                        break;
                    }
                    try {
                        Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
                        if (cimportM33063catch.getTagNo() == 0) {
                            break;
                        }
                    } catch (IllegalArgumentException e) {
                        throw new p90("Policy constraints extension contents cannot be decoded.", e, certPath, i);
                    }
                }
            }
            return i2;
        } catch (Exception e2) {
            throw new p90("Policy constraints extension cannot be decoded.", e2, certPath, i);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m34991throw(CertPath certPath, int i, Set set, List list) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(i);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            try {
                ((PKIXCertPathChecker) it.next()).check(x509Certificate, set);
            } catch (CertPathValidatorException e) {
                throw new CertPathValidatorException(e.getMessage(), e.getCause(), certPath, i);
            }
        }
        if (set.isEmpty()) {
            return;
        }
        throw new p90("Certificate has unsupported critical extension: " + set, null, certPath, i);
    }

    /* renamed from: throws, reason: not valid java name */
    public static PublicKey m34992throws(X509CRL x509crl, Set set) throws a2, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException, NoSuchProviderException {
        Iterator it = set.iterator();
        Exception e = null;
        while (it.hasNext()) {
            PublicKey publicKey = (PublicKey) it.next();
            try {
                x509crl.verify(publicKey);
                return publicKey;
            } catch (Exception e2) {
                e = e2;
            }
        }
        throw new a2("Cannot verify CRL.", e);
    }

    /* renamed from: transient, reason: not valid java name */
    public static za1 m34993transient(CertPath certPath, Cnew cnew, Set set, int i, List[] listArr, za1 za1Var, Set set2) throws CertPathValidatorException {
        int size = certPath.getCertificates().size();
        if (za1Var == null) {
            if (cnew.m34612throws()) {
                throw new p90("Explicit policy requested but none available.", null, certPath, i);
            }
            return null;
        }
        if (!Ctry.m35145public(set)) {
            HashSet<za1> hashSet = new HashSet();
            for (List list : listArr) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    za1 za1Var2 = (za1) list.get(i2);
                    if ("2.5.29.32.0".equals(za1Var2.getValidPolicy())) {
                        Iterator children = za1Var2.getChildren();
                        while (children.hasNext()) {
                            za1 za1Var3 = (za1) children.next();
                            if (!"2.5.29.32.0".equals(za1Var3.getValidPolicy())) {
                                hashSet.add(za1Var3);
                            }
                        }
                    }
                }
            }
            for (za1 za1Var4 : hashSet) {
                if (!set.contains(za1Var4.getValidPolicy())) {
                    za1Var = Ctry.m35143package(za1Var, listArr, za1Var4);
                }
            }
            if (za1Var != null) {
                for (int i3 = size - 1; i3 >= 0; i3--) {
                    List list2 = listArr[i3];
                    for (int i4 = 0; i4 < list2.size(); i4++) {
                        za1 za1Var5 = (za1) list2.get(i4);
                        if (!za1Var5.m10145for()) {
                            za1Var = Ctry.m35143package(za1Var, listArr, za1Var5);
                        }
                    }
                }
            }
        } else if (cnew.m34612throws()) {
            if (set2.isEmpty()) {
                throw new p90("Explicit policy requested but none available.", null, certPath, i);
            }
            HashSet hashSet2 = new HashSet();
            for (List list3 : listArr) {
                for (int i5 = 0; i5 < list3.size(); i5++) {
                    za1 za1Var6 = (za1) list3.get(i5);
                    if ("2.5.29.32.0".equals(za1Var6.getValidPolicy())) {
                        Iterator children2 = za1Var6.getChildren();
                        while (children2.hasNext()) {
                            hashSet2.add(children2.next());
                        }
                    }
                }
            }
            Iterator it = hashSet2.iterator();
            while (it.hasNext()) {
                set2.contains(((za1) it.next()).getValidPolicy());
            }
            for (int i6 = size - 1; i6 >= 0; i6--) {
                List list4 = listArr[i6];
                for (int i7 = 0; i7 < list4.size(); i7++) {
                    za1 za1Var7 = (za1) list4.get(i7);
                    if (!za1Var7.m10145for()) {
                        za1Var = Ctry.m35143package(za1Var, listArr, za1Var7);
                    }
                }
            }
        }
        return za1Var;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m34994try(CertPath certPath, int i, Cpackage cpackage) throws CertPathValidatorException {
        try {
            Csuper csuperM33129catch = Csuper.m33129catch(Ctry.m35130const((X509Certificate) certPath.getCertificates().get(i), f31568class));
            b21 b21VarM422else = csuperM33129catch != null ? b21.m422else(csuperM33129catch) : null;
            if (b21VarM422else != null) {
                wg0[] wg0VarArrM426goto = b21VarM422else.m426goto();
                if (wg0VarArrM426goto != null) {
                    try {
                        cpackage.m35095strictfp(wg0VarArrM426goto);
                    } catch (Exception e) {
                        throw new p90("Permitted subtrees cannot be build from name constraints extension.", e, certPath, i);
                    }
                }
                wg0[] wg0VarArrM425case = b21VarM422else.m425case();
                if (wg0VarArrM425case != null) {
                    for (int i2 = 0; i2 != wg0VarArrM425case.length; i2++) {
                        try {
                            cpackage.m35091do(wg0VarArrM425case[i2]);
                        } catch (Exception e2) {
                            throw new p90("Excluded subtrees cannot be build from name constraints extension.", e2, certPath, i);
                        }
                    }
                }
            }
        } catch (Exception e3) {
            throw new p90("Name constraints extension could not be decoded.", e3, certPath, i);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public static int m34995volatile(int i, X509Certificate x509Certificate) {
        return (Ctry.m35149switch(x509Certificate) || i == 0) ? i : i - 1;
    }

    /* renamed from: while, reason: not valid java name */
    public static Set m34996while(Date date, Cnew cnew, X509Certificate x509Certificate, X509CRL x509crl) throws a2 {
        HashSet hashSet = new HashSet();
        if (cnew.m34603finally()) {
            try {
                String str = f31566case;
                ye yeVarM9822case = ye.m9822case(Ctry.m35130const(x509Certificate, str));
                if (yeVarM9822case == null) {
                    try {
                        yeVarM9822case = ye.m9822case(Ctry.m35130const(x509crl, str));
                    } catch (a2 e) {
                        throw new a2("Freshest CRL extension could not be decoded from CRL.", e);
                    }
                }
                if (yeVarM9822case != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(cnew.m34596break());
                    try {
                        arrayList.addAll(Ctry.m35133else(yeVarM9822case, cnew.m34611throw()));
                        try {
                            hashSet.addAll(Ctry.m35129class(date, x509crl, cnew.m34598class(), arrayList));
                        } catch (a2 e2) {
                            throw new a2("Exception obtaining delta CRLs.", e2);
                        }
                    } catch (a2 e3) {
                        throw new a2("No new delta CRL locations could be added from Freshest CRL extension.", e3);
                    }
                }
            } catch (a2 e4) {
                throw new a2("Freshest CRL extension could not be decoded from certificate.", e4);
            }
        }
        return hashSet;
    }
}
