package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.ah2;
import android.support.v4.fh2;
import android.support.v4.p90;
import android.support.v4.q10;
import android.support.v4.r10;
import android.support.v4.tg0;
import android.support.v4.ug0;
import android.support.v4.v42;
import android.support.v4.ye;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilder;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathValidator;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.Cfor;
import org.bouncycastle.jcajce.Cif;
import org.bouncycastle.jcajce.Cnew;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.x509.Cgoto;
import org.bouncycastle.x509.X509AttributeCertificate;

/* renamed from: org.bouncycastle.jce.provider.continue, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccontinue {

    /* renamed from: do, reason: not valid java name */
    private static final String f31590do = Cif.f29322interface.m32795super();

    /* renamed from: if, reason: not valid java name */
    private static final String f31592if = Cif.f29338volatile.m32795super();

    /* renamed from: for, reason: not valid java name */
    private static final String f31591for = Cif.f29323native.m32795super();

    /* renamed from: new, reason: not valid java name */
    private static final String f31593new = Cif.f29319finally.m32795super();

    /* renamed from: case, reason: not valid java name */
    public static void m35010case(X509Certificate x509Certificate, Cnew cnew) throws CertPathValidatorException {
        if (x509Certificate.getKeyUsage() != null && !x509Certificate.getKeyUsage()[0] && !x509Certificate.getKeyUsage()[1]) {
            throw new CertPathValidatorException("Attribute certificate issuer public key cannot be used to validate digital signatures.");
        }
        if (x509Certificate.getBasicConstraints() != -1) {
            throw new CertPathValidatorException("Attribute certificate issuer is also a public key certificate issuer.");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m35011do(X509AttributeCertificate x509AttributeCertificate, Set set, Set set2) throws CertPathValidatorException {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (x509AttributeCertificate.getAttributes(str) != null) {
                throw new CertPathValidatorException("Attribute certificate contains prohibited attribute: " + str + ".");
            }
        }
        Iterator it2 = set2.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            if (x509AttributeCertificate.getAttributes(str2) == null) {
                throw new CertPathValidatorException("Attribute certificate does not contain necessary attribute: " + str2 + ".");
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m35012else(X509Certificate x509Certificate, Set set) throws CertPathValidatorException {
        Iterator it = set.iterator();
        boolean z = false;
        while (it.hasNext()) {
            TrustAnchor trustAnchor = (TrustAnchor) it.next();
            if (x509Certificate.getSubjectX500Principal().getName("RFC2253").equals(trustAnchor.getCAName()) || x509Certificate.equals(trustAnchor.getTrustedCert())) {
                z = true;
            }
        }
        if (!z) {
            throw new CertPathValidatorException("Attribute certificate issuer is not directly trusted.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0179  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m35013for(X509AttributeCertificate x509AttributeCertificate, Cnew cnew, X509Certificate x509Certificate, Date date, List list, JcaJceHelper jcaJceHelper) throws a2, CertPathValidatorException {
        boolean z;
        int i;
        a2 a2Var;
        if (cnew.m34601extends()) {
            if (x509AttributeCertificate.getExtensionValue(f31592if) != null) {
                if (x509AttributeCertificate.getExtensionValue(f31591for) != null || x509AttributeCertificate.getExtensionValue(f31593new) != null) {
                    throw new CertPathValidatorException("No rev avail extension is set, but also an AC revocation pointer.");
                }
                return;
            }
            try {
                ye yeVarM9822case = ye.m9822case(Ctry.m35130const(x509AttributeCertificate, f31591for));
                List arrayList = new ArrayList();
                try {
                    arrayList.addAll(Ctry.m35133else(yeVarM9822case, cnew.m34611throw()));
                    Cnew.Cif cif = new Cnew.Cif(cnew);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        cif.m34625class((PKIXCRLStore) arrayList);
                    }
                    Cnew cnewM34634throw = cif.m34634throw();
                    Ccase ccase = new Ccase();
                    Cstrictfp cstrictfp = new Cstrictfp();
                    int i2 = 11;
                    if (yeVarM9822case != null) {
                        try {
                            q10[] q10VarArrM9825try = yeVarM9822case.m9825try();
                            int i3 = 0;
                            z = false;
                            while (i3 < q10VarArrM9825try.length && ccase.m35000do() == i2 && !cstrictfp.m35114try()) {
                                try {
                                    int i4 = i3;
                                    i = 11;
                                    try {
                                        m35015if(q10VarArrM9825try[i3], x509AttributeCertificate, (Cnew) cnewM34634throw.clone(), date, x509Certificate, ccase, cstrictfp, list, jcaJceHelper);
                                        i3 = i4 + 1;
                                        i2 = 11;
                                        z = true;
                                    } catch (a2 e) {
                                        e = e;
                                        a2Var = new a2("No valid CRL for distribution point found.", e);
                                        if (ccase.m35000do() == i) {
                                        }
                                        if (z) {
                                        }
                                    }
                                } catch (a2 e2) {
                                    e = e2;
                                    i = 11;
                                }
                            }
                            i = 11;
                            a2Var = null;
                        } catch (Exception e3) {
                            throw new p90("Distribution points could not be read.", e3);
                        }
                    } else {
                        i = 11;
                        a2Var = null;
                        z = false;
                    }
                    if (ccase.m35000do() == i) {
                        try {
                            if (!cstrictfp.m35114try()) {
                                try {
                                    m35015if(new q10(new r10(0, new ug0(new tg0(4, new Celse(((X500Principal) x509AttributeCertificate.getIssuer().m36520if()[0]).getEncoded()).m33002break()))), null, null), x509AttributeCertificate, (Cnew) cnewM34634throw.clone(), date, x509Certificate, ccase, cstrictfp, list, jcaJceHelper);
                                    z = true;
                                } catch (Exception e4) {
                                    throw new a2("Issuer from certificate for CRL could not be reencoded.", e4);
                                }
                            }
                        } catch (a2 e5) {
                            a2Var = new a2("No valid CRL for distribution point found.", e5);
                        }
                    }
                    if (z) {
                        throw new p90("No valid CRL found.", a2Var);
                    }
                    if (ccase.m35000do() == i) {
                        if (!cstrictfp.m35114try() && ccase.m35000do() == i) {
                            ccase.m35001for(12);
                        }
                        if (ccase.m35000do() == 12) {
                            throw new CertPathValidatorException("Attribute certificate status could not be determined.");
                        }
                        return;
                    }
                    throw new CertPathValidatorException(("Attribute certificate revocation after " + ccase.m35002if()) + ", reason: " + Cabstract.f31577native[ccase.m35000do()]);
                } catch (a2 e6) {
                    throw new CertPathValidatorException("No additional CRL locations could be decoded from CRL distribution point extension.", e6);
                }
            } catch (a2 e7) {
                throw new CertPathValidatorException("CRL distribution point extension could not be read.", e7);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m35014goto(X509AttributeCertificate x509AttributeCertificate, Cnew cnew) throws CertPathValidatorException {
        try {
            x509AttributeCertificate.checkValidity(Ctry.m35141native(cnew));
        } catch (CertificateExpiredException e) {
            throw new p90("Attribute certificate is not valid.", e);
        } catch (CertificateNotYetValidException e2) {
            throw new p90("Attribute certificate is not valid.", e2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static void m35015if(q10 q10Var, X509AttributeCertificate x509AttributeCertificate, Cnew cnew, Date date, X509Certificate x509Certificate, Ccase ccase, Cstrictfp cstrictfp, List list, JcaJceHelper jcaJceHelper) throws a2 {
        Iterator it;
        if (x509AttributeCertificate.getExtensionValue(fh2.f1816strictfp.m32795super()) != null) {
            return;
        }
        Date date2 = new Date(System.currentTimeMillis());
        if (date.getTime() > date2.getTime()) {
            throw new a2("Validation time is in future.");
        }
        Iterator it2 = Ctry.m35128catch(q10Var, x509AttributeCertificate, date2, cnew).iterator();
        a2 e = null;
        boolean z = false;
        while (it2.hasNext() && ccase.m35000do() == 11 && !cstrictfp.m35114try()) {
            try {
                X509CRL x509crl = (X509CRL) it2.next();
                Cstrictfp cstrictfpM34986static = Cabstract.m34986static(x509crl, q10Var);
                if (cstrictfpM34986static.m35111for(cstrictfp)) {
                    it = it2;
                    try {
                        X509CRL x509crlM34968default = cnew.m34603finally() ? Cabstract.m34968default(Ctry.m35129class(date2, x509crl, cnew.m34598class(), cnew.m34596break()), Cabstract.m34992throws(x509crl, Cabstract.m34989switch(x509crl, x509AttributeCertificate, null, null, cnew, list, jcaJceHelper))) : null;
                        if (cnew.m34608static() != 1 && x509AttributeCertificate.getNotAfter().getTime() < x509crl.getThisUpdate().getTime()) {
                            throw new a2("No valid CRL for current time found.");
                        }
                        Cabstract.m34979native(q10Var, x509AttributeCertificate, x509crl);
                        Cabstract.m34984public(q10Var, x509AttributeCertificate, x509crl);
                        Cabstract.m34985return(x509crlM34968default, x509crl, cnew);
                        Cabstract.m34971extends(date, x509crlM34968default, x509AttributeCertificate, ccase, cnew);
                        Cabstract.m34973finally(date, x509crl, x509AttributeCertificate, ccase);
                        if (ccase.m35000do() == 8) {
                            ccase.m35001for(11);
                        }
                        cstrictfp.m35110do(cstrictfpM34986static);
                        it2 = it;
                        z = true;
                    } catch (a2 e2) {
                        e = e2;
                        it2 = it;
                    }
                } else {
                    continue;
                }
            } catch (a2 e3) {
                e = e3;
                it = it2;
            }
        }
        if (!z) {
            throw e;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static CertPath m35016new(X509AttributeCertificate x509AttributeCertificate, Cnew cnew) throws CertPathBuilderException, NoSuchAlgorithmException, IOException, CertPathValidatorException, NoSuchProviderException, InvalidAlgorithmParameterException {
        HashSet hashSet = new HashSet();
        if (x509AttributeCertificate.getHolder().m36461try() != null) {
            X509CertSelector x509CertSelector = new X509CertSelector();
            x509CertSelector.setSerialNumber(x509AttributeCertificate.getHolder().m36455break());
            Principal[] principalArrM36461try = x509AttributeCertificate.getHolder().m36461try();
            for (int i = 0; i < principalArrM36461try.length; i++) {
                try {
                    if (principalArrM36461try[i] instanceof X500Principal) {
                        x509CertSelector.setIssuer(((X500Principal) principalArrM36461try[i]).getEncoded());
                    }
                    hashSet.addAll(Ctry.m35139if(new Cif.C0413if(x509CertSelector).m34580do(), cnew.m34598class()));
                } catch (a2 e) {
                    throw new p90("Public key certificate for attribute certificate cannot be searched.", e);
                } catch (IOException e2) {
                    throw new p90("Unable to encode X500 principal.", e2);
                }
            }
            if (hashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in base certificate ID for attribute certificate cannot be found.");
            }
        }
        if (x509AttributeCertificate.getHolder().m36460new() != null) {
            ah2 ah2Var = new ah2();
            Principal[] principalArrM36460new = x509AttributeCertificate.getHolder().m36460new();
            for (int i2 = 0; i2 < principalArrM36460new.length; i2++) {
                try {
                    if (principalArrM36460new[i2] instanceof X500Principal) {
                        ah2Var.setIssuer(((X500Principal) principalArrM36460new[i2]).getEncoded());
                    }
                    hashSet.addAll(Ctry.m35139if(new Cif.C0413if(ah2Var).m34580do(), cnew.m34598class()));
                } catch (a2 e3) {
                    throw new p90("Public key certificate for attribute certificate cannot be searched.", e3);
                } catch (IOException e4) {
                    throw new p90("Unable to encode X500 principal.", e4);
                }
            }
            if (hashSet.isEmpty()) {
                throw new CertPathValidatorException("Public key certificate specified in entity name for attribute certificate cannot be found.");
            }
        }
        Cnew.Cif cif = new Cnew.Cif(cnew);
        Iterator it = hashSet.iterator();
        p90 p90Var = null;
        CertPathBuilderResult certPathBuilderResultBuild = null;
        while (it.hasNext()) {
            ah2 ah2Var2 = new ah2();
            ah2Var2.setCertificate((X509Certificate) it.next());
            cif.m34628import(new Cif.C0413if(ah2Var2).m34580do());
            try {
                try {
                    certPathBuilderResultBuild = CertPathBuilder.getInstance("PKIX", Cdo.PROVIDER_NAME).build(new Cfor.Cif(cif.m34634throw()).m34577try());
                } catch (InvalidAlgorithmParameterException e5) {
                    throw new RuntimeException(e5.getMessage());
                } catch (CertPathBuilderException e6) {
                    p90Var = new p90("Certification path for public key certificate of attribute certificate could not be build.", e6);
                }
            } catch (NoSuchAlgorithmException e7) {
                throw new p90("Support class could not be created.", e7);
            } catch (NoSuchProviderException e8) {
                throw new p90("Support class could not be created.", e8);
            }
        }
        if (p90Var == null) {
            return certPathBuilderResultBuild.getCertPath();
        }
        throw p90Var;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m35017this(X509AttributeCertificate x509AttributeCertificate, CertPath certPath, CertPath certPath2, Cnew cnew, Set set) throws CertPathValidatorException {
        Set<String> criticalExtensionOIDs = x509AttributeCertificate.getCriticalExtensionOIDs();
        String str = f31590do;
        if (criticalExtensionOIDs.contains(str)) {
            try {
                v42.m8750new(Ctry.m35130const(x509AttributeCertificate, str));
            } catch (a2 e) {
                throw new p90("Target information extension could not be read.", e);
            } catch (IllegalArgumentException e2) {
                throw new p90("Target information extension could not be read.", e2);
            }
        }
        criticalExtensionOIDs.remove(str);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((Cgoto) it.next()).m36516do(x509AttributeCertificate, certPath, certPath2, criticalExtensionOIDs);
        }
        if (criticalExtensionOIDs.isEmpty()) {
            return;
        }
        throw new CertPathValidatorException("Attribute certificate contains unsupported critical extensions: " + criticalExtensionOIDs);
    }

    /* renamed from: try, reason: not valid java name */
    public static CertPathValidatorResult m35018try(CertPath certPath, Cnew cnew) throws CertPathValidatorException {
        try {
            try {
                return CertPathValidator.getInstance("PKIX", Cdo.PROVIDER_NAME).validate(certPath, cnew);
            } catch (InvalidAlgorithmParameterException e) {
                throw new RuntimeException(e.getMessage());
            } catch (CertPathValidatorException e2) {
                throw new p90("Certification path for issuer certificate of attribute certificate could not be validated.", e2);
            }
        } catch (NoSuchAlgorithmException e3) {
            throw new p90("Support class could not be created.", e3);
        } catch (NoSuchProviderException e4) {
            throw new p90("Support class could not be created.", e4);
        }
    }
}
