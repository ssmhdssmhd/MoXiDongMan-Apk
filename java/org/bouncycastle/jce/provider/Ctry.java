package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.b1;
import android.support.v4.c5;
import android.support.v4.fe1;
import android.support.v4.p90;
import android.support.v4.pj1;
import android.support.v4.q10;
import android.support.v4.r10;
import android.support.v4.r12;
import android.support.v4.tg0;
import android.support.v4.tg2;
import android.support.v4.ug0;
import android.support.v4.ye;
import android.support.v4.za1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.cert.CRL;
import java.security.cert.CRLException;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.PolicyQualifierInfo;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cconst;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cnew;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.isismtt.ISISMTTObjectIdentifiers;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.Cdo;
import org.bouncycastle.jcajce.Cif;
import org.bouncycastle.jcajce.PKIXCRLStore;
import org.bouncycastle.jcajce.PKIXCertStore;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.util.Store;
import org.bouncycastle.x509.X509AttributeCertificate;

/* renamed from: org.bouncycastle.jce.provider.try, reason: invalid class name */
/* loaded from: classes3.dex */
class Ctry {

    /* renamed from: import, reason: not valid java name */
    public static final int f31695import = 6;

    /* renamed from: super, reason: not valid java name */
    public static final String f31698super = "2.5.29.32.0";

    /* renamed from: while, reason: not valid java name */
    public static final int f31702while = 5;

    /* renamed from: do, reason: not valid java name */
    public static final Cdefault f31689do = new Cdefault();

    /* renamed from: if, reason: not valid java name */
    public static final String f31694if = Cif.f29328public.m32795super();

    /* renamed from: for, reason: not valid java name */
    public static final String f31692for = Cif.f29309break.m32795super();

    /* renamed from: new, reason: not valid java name */
    public static final String f31697new = Cif.f29329return.m32795super();

    /* renamed from: try, reason: not valid java name */
    public static final String f31701try = Cif.f29320goto.m32795super();

    /* renamed from: case, reason: not valid java name */
    public static final String f31685case = Cif.f29321import.m32795super();

    /* renamed from: else, reason: not valid java name */
    public static final String f31690else = Cif.f29310case.m32795super();

    /* renamed from: goto, reason: not valid java name */
    public static final String f31693goto = Cif.f29317extends.m32795super();

    /* renamed from: this, reason: not valid java name */
    public static final String f31699this = Cif.f29335throw.m32795super();

    /* renamed from: break, reason: not valid java name */
    public static final String f31684break = Cif.f29332super.m32795super();

    /* renamed from: catch, reason: not valid java name */
    public static final String f31686catch = Cif.f29333switch.m32795super();

    /* renamed from: class, reason: not valid java name */
    public static final String f31687class = Cif.f29315default.m32795super();

    /* renamed from: const, reason: not valid java name */
    public static final String f31688const = Cif.f29323native.m32795super();

    /* renamed from: final, reason: not valid java name */
    public static final String f31691final = Cif.f29330static.m32795super();

    /* renamed from: throw, reason: not valid java name */
    public static final String f31700throw = Cif.f29311catch.m32795super();

    /* renamed from: native, reason: not valid java name */
    public static final String[] f31696native = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    /* renamed from: abstract, reason: not valid java name */
    public static void m35125abstract(X509Certificate x509Certificate, PublicKey publicKey, String str) throws GeneralSecurityException {
        if (str == null) {
            x509Certificate.verify(publicKey);
        } else {
            x509Certificate.verify(publicKey, str);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m35126break(Date date, X509CRL x509crl, Object obj, Ccase ccase) throws a2 {
        X509CRLEntry revokedCertificate;
        try {
            if (Cprotected.m35103for(x509crl)) {
                revokedCertificate = x509crl.getRevokedCertificate(m35154while(obj));
                if (revokedCertificate == null) {
                    return;
                }
                X500Principal certificateIssuer = revokedCertificate.getCertificateIssuer();
                if (!Cprivate.m35099if(obj).equals(certificateIssuer == null ? Cprivate.m35098for(x509crl) : tg2.m7884else(certificateIssuer.getEncoded()))) {
                    return;
                }
            } else if (!Cprivate.m35099if(obj).equals(Cprivate.m35098for(x509crl)) || (revokedCertificate = x509crl.getRevokedCertificate(m35154while(obj))) == null) {
                return;
            }
            Cnew cnewM33093class = null;
            if (revokedCertificate.hasExtensions()) {
                try {
                    cnewM33093class = Cnew.m33093class(m35130const(revokedCertificate, Cif.f29312class.m32795super()));
                } catch (Exception e) {
                    throw new a2("Reason code CRL entry extension could not be decoded.", e);
                }
            }
            if (date.getTime() >= revokedCertificate.getRevocationDate().getTime() || cnewM33093class == null || cnewM33093class.m33095final().intValue() == 0 || cnewM33093class.m33095final().intValue() == 1 || cnewM33093class.m33095final().intValue() == 2 || cnewM33093class.m33095final().intValue() == 8) {
                ccase.m35001for(cnewM33093class != null ? cnewM33093class.m33095final().intValue() : 0);
                ccase.m35003new(revokedCertificate.getRevocationDate());
            }
        } catch (CRLException e2) {
            throw new a2("Failed check for indirect CRL.", e2);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static List<PKIXCertStore> m35127case(byte[] bArr, Map<tg0, PKIXCertStore> map) throws CertificateParsingException {
        if (bArr == null) {
            return Collections.EMPTY_LIST;
        }
        tg0[] tg0VarArrM8440goto = ug0.m8436case(Cclass.m32796catch(bArr).mo5490const()).m8440goto();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != tg0VarArrM8440goto.length; i++) {
            PKIXCertStore pKIXCertStore = map.get(tg0VarArrM8440goto[i]);
            if (pKIXCertStore != null) {
                arrayList.add(pKIXCertStore);
            }
        }
        return arrayList;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Set m35128catch(q10 q10Var, Object obj, Date date, org.bouncycastle.jcajce.Cnew cnew) throws a2, IOException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        try {
            HashSet hashSet = new HashSet();
            hashSet.add(Cprivate.m35099if(obj));
            m35150this(q10Var, hashSet, x509CRLSelector);
            if (obj instanceof X509Certificate) {
                x509CRLSelector.setCertificateChecking((X509Certificate) obj);
            }
            Cdo<? extends CRL> cdoM34566else = new Cdo.Cif(x509CRLSelector).m34567goto(true).m34566else();
            if (cnew.m34602final() != null) {
                date = cnew.m34602final();
            }
            Set setM35020if = f31689do.m35020if(cdoM34566else, date, cnew.m34598class(), cnew.m34596break());
            m35132do(setM35020if, obj);
            return setM35020if;
        } catch (a2 e) {
            throw new a2("Could not get issuer information from distribution point.", e);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Set m35129class(Date date, X509CRL x509crl, List<CertStore> list, List<PKIXCRLStore> list2) throws a2, IOException {
        X509CRLSelector x509CRLSelector = new X509CRLSelector();
        try {
            x509CRLSelector.addIssuerName(Cprivate.m35098for(x509crl).getEncoded());
            try {
                Cfinal cfinalM35130const = m35130const(x509crl, f31700throw);
                BigInteger bigIntegerM33043const = cfinalM35130const != null ? Cgoto.m33040catch(cfinalM35130const).m33043const() : null;
                try {
                    byte[] extensionValue = x509crl.getExtensionValue(f31699this);
                    x509CRLSelector.setMinCRLNumber(bigIntegerM33043const != null ? bigIntegerM33043const.add(BigInteger.valueOf(1L)) : null);
                    Cdo.Cif cif = new Cdo.Cif(x509CRLSelector);
                    cif.m34563break(extensionValue);
                    cif.m34564catch(true);
                    cif.m34565class(bigIntegerM33043const);
                    Set<X509CRL> setM35020if = f31689do.m35020if(cif.m34566else(), date, list, list2);
                    HashSet hashSet = new HashSet();
                    for (X509CRL x509crl2 : setM35020if) {
                        if (m35146return(x509crl2)) {
                            hashSet.add(x509crl2);
                        }
                    }
                    return hashSet;
                } catch (Exception e) {
                    throw new a2("Issuing distribution point extension value could not be read.", e);
                }
            } catch (Exception e2) {
                throw new a2("CRL number extension could not be extracted from CRL.", e2);
            }
        } catch (IOException e3) {
            throw new a2("Cannot extract issuer from CRL.", e3);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static Cfinal m35130const(X509Extension x509Extension, String str) throws a2 {
        byte[] extensionValue = x509Extension.getExtensionValue(str);
        if (extensionValue == null) {
            return null;
        }
        return m35148super(str, extensionValue);
    }

    /* renamed from: default, reason: not valid java name */
    public static za1 m35131default(int i, List[] listArr, String str, za1 za1Var) {
        int i2;
        Iterator it = listArr[i].iterator();
        while (it.hasNext()) {
            za1 za1Var2 = (za1) it.next();
            if (za1Var2.getValidPolicy().equals(str)) {
                ((za1) za1Var2.getParent()).m10148new(za1Var2);
                it.remove();
                for (int i3 = i - 1; i3 >= 0; i3--) {
                    List list = listArr[i3];
                    while (i2 < list.size()) {
                        za1 za1Var3 = (za1) list.get(i2);
                        i2 = (za1Var3.m10145for() || (za1Var = m35143package(za1Var, listArr, za1Var3)) != null) ? i2 + 1 : 0;
                    }
                }
            }
        }
        return za1Var;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m35132do(Set set, Object obj) throws a2 {
        if (set.isEmpty()) {
            if (obj instanceof X509AttributeCertificate) {
                throw new a2("No CRLs found for issuer \"" + ((X509AttributeCertificate) obj).getIssuer().m36520if()[0] + "\"");
            }
            throw new a2("No CRLs found for issuer \"" + pj1.i.toString(Cprivate.m35100new((X509Certificate) obj)) + "\"");
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static List<PKIXCRLStore> m35133else(ye yeVar, Map<tg0, PKIXCRLStore> map) throws a2 {
        if (yeVar == null) {
            return Collections.EMPTY_LIST;
        }
        try {
            q10[] q10VarArrM9825try = yeVar.m9825try();
            ArrayList arrayList = new ArrayList();
            for (q10 q10Var : q10VarArrM9825try) {
                r10 r10VarM6308case = q10Var.m6308case();
                if (r10VarM6308case != null && r10VarM6308case.m6731goto() == 0) {
                    for (tg0 tg0Var : ug0.m8436case(r10VarM6308case.m6730else()).m8440goto()) {
                        PKIXCRLStore pKIXCRLStore = map.get(tg0Var);
                        if (pKIXCRLStore != null) {
                            arrayList.add(pKIXCRLStore);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e) {
            throw new a2("Distribution points could not be read.", e);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m35134extends(int i, List[] listArr, Ccatch ccatch, Set set) {
        List list = listArr[i - 1];
        for (int i2 = 0; i2 < list.size(); i2++) {
            za1 za1Var = (za1) list.get(i2);
            if (za1Var.getExpectedPolicies().contains(ccatch.m32795super())) {
                HashSet hashSet = new HashSet();
                hashSet.add(ccatch.m32795super());
                za1 za1Var2 = new za1(new ArrayList(), i, hashSet, za1Var, set, ccatch.m32795super(), false);
                za1Var.m10143do(za1Var2);
                listArr[i].add(za1Var2);
                return true;
            }
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    public static PublicKey m35135final(List list, int i, JcaJceHelper jcaJceHelper) throws CertPathValidatorException {
        DSAPublicKey dSAPublicKey;
        PublicKey publicKey = ((Certificate) list.get(i)).getPublicKey();
        if (!(publicKey instanceof DSAPublicKey)) {
            return publicKey;
        }
        DSAPublicKey dSAPublicKey2 = (DSAPublicKey) publicKey;
        if (dSAPublicKey2.getParams() != null) {
            return dSAPublicKey2;
        }
        do {
            i++;
            if (i >= list.size()) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            PublicKey publicKey2 = ((X509Certificate) list.get(i)).getPublicKey();
            if (!(publicKey2 instanceof DSAPublicKey)) {
                throw new CertPathValidatorException("DSA parameters cannot be inherited from previous certificate.");
            }
            dSAPublicKey = (DSAPublicKey) publicKey2;
        } while (dSAPublicKey.getParams() == null);
        DSAParams params = dSAPublicKey.getParams();
        try {
            return jcaJceHelper.createKeyFactory("DSA").generatePublic(new DSAPublicKeySpec(dSAPublicKey2.getY(), params.getP(), params.getQ(), params.getG()));
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m35136finally(int i, List[] listArr, Ccatch ccatch, Set set) {
        List list = listArr[i - 1];
        for (int i2 = 0; i2 < list.size(); i2++) {
            za1 za1Var = (za1) list.get(i2);
            if ("2.5.29.32.0".equals(za1Var.getValidPolicy())) {
                HashSet hashSet = new HashSet();
                hashSet.add(ccatch.m32795super());
                za1 za1Var2 = new za1(new ArrayList(), i, hashSet, za1Var, set, ccatch.m32795super(), false);
                za1Var.m10143do(za1Var2);
                listArr[i].add(za1Var2);
                return;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Collection m35137for(X509Certificate x509Certificate, List<CertStore> list, List<PKIXCertStore> list2) throws a2, IOException {
        byte[] bArrM747this;
        X509CertSelector x509CertSelector = new X509CertSelector();
        try {
            x509CertSelector.setSubject(Cprivate.m35100new(x509Certificate).getEncoded());
            try {
                byte[] extensionValue = x509Certificate.getExtensionValue(f31691final);
                if (extensionValue != null && (bArrM747this = c5.m743else(Cclass.m32796catch(extensionValue).mo5490const()).m747this()) != null) {
                    x509CertSelector.setSubjectKeyIdentifier(new j(bArrM747this).getEncoded());
                }
            } catch (Exception unused) {
            }
            org.bouncycastle.jcajce.Cif<? extends Certificate> cifM34580do = new Cif.C0413if(x509CertSelector).m34580do();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(m35139if(cifM34580do, list));
                arrayList.addAll(m35139if(cifM34580do, list2));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    linkedHashSet.add((X509Certificate) it.next());
                }
                return linkedHashSet;
            } catch (a2 e) {
                throw new a2("Issuer certificate cannot be searched.", e);
            }
        } catch (IOException e2) {
            throw new a2("Subject criteria for certificate selector to find issuer certificate could not be set.", e2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static b1 m35138goto(PublicKey publicKey) throws CertPathValidatorException {
        try {
            return org.bouncycastle.asn1.x509.Ctry.m33291case(new Celse(publicKey.getEncoded()).m33002break()).m33295new();
        } catch (Exception e) {
            throw new p90("Subject public key cannot be decoded.", e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Collection m35139if(org.bouncycastle.jcajce.Cif cif, List list) throws a2 {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    linkedHashSet.addAll(((Store) obj).getMatches(cif));
                } catch (r12 e) {
                    throw new a2("Problem while picking certificates from X.509 store.", e);
                }
            } else {
                try {
                    linkedHashSet.addAll(org.bouncycastle.jcajce.Cif.m34579if(cif, (CertStore) obj));
                } catch (CertStoreException e2) {
                    throw new a2("Problem while picking certificates from certificate store.", e2);
                }
            }
        }
        return linkedHashSet;
    }

    /* renamed from: import, reason: not valid java name */
    public static Date m35140import(org.bouncycastle.jcajce.Cnew cnew, CertPath certPath, int i) throws a2 {
        if (cnew.m34608static() == 1 && i > 0) {
            int i2 = i - 1;
            if (i2 == 0) {
                try {
                    byte[] extensionValue = ((X509Certificate) certPath.getCertificates().get(i2)).getExtensionValue(ISISMTTObjectIdentifiers.id_isismtt_at_dateOfCertGen.m32795super());
                    Ccase ccaseM32773final = extensionValue != null ? Ccase.m32773final(Cfinal.m33015else(extensionValue)) : null;
                    if (ccaseM32773final != null) {
                        try {
                            return ccaseM32773final.m32776const();
                        } catch (ParseException e) {
                            throw new a2("Date from date of cert gen extension could not be parsed.", e);
                        }
                    }
                } catch (IOException unused) {
                    throw new a2("Date of cert gen extension could not be read.");
                } catch (IllegalArgumentException unused2) {
                    throw new a2("Date of cert gen extension could not be read.");
                }
            }
            return ((X509Certificate) certPath.getCertificates().get(i2)).getNotBefore();
        }
        return m35141native(cnew);
    }

    /* renamed from: native, reason: not valid java name */
    public static Date m35141native(org.bouncycastle.jcajce.Cnew cnew) {
        Date dateM34602final = cnew.m34602final();
        return dateM34602final == null ? new Date() : dateM34602final;
    }

    /* renamed from: new, reason: not valid java name */
    public static TrustAnchor m35142new(X509Certificate x509Certificate, Set set) throws a2 {
        return m35153try(x509Certificate, set, null);
    }

    /* renamed from: package, reason: not valid java name */
    public static za1 m35143package(za1 za1Var, List[] listArr, za1 za1Var2) {
        za1 za1Var3 = (za1) za1Var2.getParent();
        if (za1Var == null) {
            return null;
        }
        if (za1Var3 != null) {
            za1Var3.m10148new(za1Var2);
            m35144private(listArr, za1Var2);
            return za1Var;
        }
        for (int i = 0; i < listArr.length; i++) {
            listArr[i] = new ArrayList();
        }
        return null;
    }

    /* renamed from: private, reason: not valid java name */
    private static void m35144private(List[] listArr, za1 za1Var) {
        listArr[za1Var.getDepth()].remove(za1Var);
        if (za1Var.m10145for()) {
            Iterator children = za1Var.getChildren();
            while (children.hasNext()) {
                m35144private(listArr, (za1) children.next());
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m35145public(Set set) {
        return set == null || set.contains("2.5.29.32.0") || set.isEmpty();
    }

    /* renamed from: return, reason: not valid java name */
    private static boolean m35146return(X509CRL x509crl) {
        Set<String> criticalExtensionOIDs = x509crl.getCriticalExtensionOIDs();
        if (criticalExtensionOIDs == null) {
            return false;
        }
        return criticalExtensionOIDs.contains(Cabstract.f31571else);
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m35147static(X509Certificate x509Certificate, Set set, String str) throws a2 {
        try {
            return m35153try(x509Certificate, set, str) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static Cfinal m35148super(String str, byte[] bArr) throws a2 {
        try {
            return new Celse(((Cclass) new Celse(bArr).m33002break()).mo5490const()).m33002break();
        } catch (Exception e) {
            throw new a2("exception processing extension " + str, e);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m35149switch(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
    }

    /* renamed from: this, reason: not valid java name */
    public static void m35150this(q10 q10Var, Collection collection, X509CRLSelector x509CRLSelector) throws a2, IOException {
        ArrayList arrayList = new ArrayList();
        if (q10Var.m6310try() != null) {
            tg0[] tg0VarArrM8440goto = q10Var.m6310try().m8440goto();
            for (int i = 0; i < tg0VarArrM8440goto.length; i++) {
                if (tg0VarArrM8440goto[i].getTagNo() == 4) {
                    try {
                        arrayList.add(tg2.m7884else(tg0VarArrM8440goto[i].m7878else().toASN1Primitive().getEncoded()));
                    } catch (IOException e) {
                        throw new a2("CRL issuer information from distribution point cannot be decoded.", e);
                    }
                }
            }
        } else {
            if (q10Var.m6308case() == null) {
                throw new a2("CRL issuer is omitted from distribution point but no distributionPoint field present.");
            }
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                x509CRLSelector.addIssuerName(((tg2) it2.next()).getEncoded());
            } catch (IOException e2) {
                throw new a2("Cannot decode CRL issuer information.", e2);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static final Set m35151throw(Csuper csuper) throws CertPathValidatorException {
        HashSet hashSet = new HashSet();
        if (csuper == null) {
            return hashSet;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Cconst cconst = new Cconst(byteArrayOutputStream);
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            try {
                cconst.mo32770const((ASN1Encodable) enumerationMo33076super.nextElement());
                hashSet.add(new PolicyQualifierInfo(byteArrayOutputStream.toByteArray()));
                byteArrayOutputStream.reset();
            } catch (IOException e) {
                throw new p90("Policy qualifier info cannot be decoded.", e);
            }
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x008e, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0093, code lost:
    
        if (r13.getCriticalExtensionOIDs() == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0095, code lost:
    
        r7 = r13.getCriticalExtensionOIDs().contains(org.bouncycastle.jce.provider.Ctry.f31694if);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a2, code lost:
    
        r13 = (android.support.v4.za1) r1.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b0, code lost:
    
        if ("2.5.29.32.0".equals(r13.getValidPolicy()) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b2, code lost:
    
        r8 = new android.support.v4.za1(new java.util.ArrayList(), r9, (java.util.Set) r12.get(r11), r13, r5, r11, r7);
        r13.m10143do(r8);
        r10[r9].add(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
    
        return;
     */
    /* renamed from: throws, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m35152throws(int i, List[] listArr, String str, Map map, X509Certificate x509Certificate) throws a2, CertPathValidatorException {
        boolean z;
        Iterator it = listArr[i].iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            za1 za1Var = (za1) it.next();
            if (za1Var.getValidPolicy().equals(str)) {
                z = true;
                za1Var.f8499for = (Set) map.get(str);
                break;
            }
        }
        if (z) {
            return;
        }
        for (za1 za1Var2 : listArr[i]) {
            if ("2.5.29.32.0".equals(za1Var2.getValidPolicy())) {
                Set setM35151throw = null;
                try {
                    Enumeration enumerationMo33076super = Csuper.m33129catch(m35130const(x509Certificate, f31694if)).mo33076super();
                    while (true) {
                        if (!enumerationMo33076super.hasMoreElements()) {
                            break;
                        }
                        try {
                            fe1 fe1VarM2258new = fe1.m2258new(enumerationMo33076super.nextElement());
                            if ("2.5.29.32.0".equals(fe1VarM2258new.m2260try().m32795super())) {
                                try {
                                    setM35151throw = m35151throw(fe1VarM2258new.m2259case());
                                    break;
                                } catch (CertPathValidatorException e) {
                                    throw new p90("Policy qualifier info set could not be built.", e);
                                }
                            }
                        } catch (Exception e2) {
                            throw new a2("Policy information cannot be decoded.", e2);
                        }
                    }
                } catch (Exception e3) {
                    throw new a2("Certificate policies cannot be decoded.", e3);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TrustAnchor m35153try(X509Certificate x509Certificate, Set set, String str) throws a2, IOException {
        X509CertSelector x509CertSelector = new X509CertSelector();
        tg2 tg2VarM35099if = Cprivate.m35099if(x509Certificate);
        try {
            x509CertSelector.setSubject(tg2VarM35099if.getEncoded());
            Iterator it = set.iterator();
            TrustAnchor trustAnchor = null;
            Exception e = null;
            PublicKey cAPublicKey = null;
            while (it.hasNext() && trustAnchor == null) {
                trustAnchor = (TrustAnchor) it.next();
                if (trustAnchor.getTrustedCert() != null) {
                    if (x509CertSelector.match(trustAnchor.getTrustedCert())) {
                        cAPublicKey = trustAnchor.getTrustedCert().getPublicKey();
                    } else {
                        trustAnchor = null;
                    }
                } else if (trustAnchor.getCAName() != null && trustAnchor.getCAPublicKey() != null) {
                    try {
                        if (tg2VarM35099if.equals(Cprivate.m35097do(trustAnchor))) {
                            cAPublicKey = trustAnchor.getCAPublicKey();
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                }
                if (cAPublicKey != null) {
                    try {
                        m35125abstract(x509Certificate, cAPublicKey, str);
                    } catch (Exception e2) {
                        e = e2;
                        trustAnchor = null;
                        cAPublicKey = null;
                    }
                }
            }
            if (trustAnchor != null || e == null) {
                return trustAnchor;
            }
            throw new a2("TrustAnchor found but certificate validation failed.", e);
        } catch (IOException e3) {
            throw new a2("Cannot set subject search criteria for trust anchor.", e3);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private static BigInteger m35154while(Object obj) {
        return ((X509Certificate) obj).getSerialNumber();
    }
}
