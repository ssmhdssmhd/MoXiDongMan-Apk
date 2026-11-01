package org.bouncycastle.x509;

import android.support.v4.a2;
import android.support.v4.ah2;
import android.support.v4.b1;
import android.support.v4.do0;
import android.support.v4.fe1;
import android.support.v4.p90;
import android.support.v4.r12;
import android.support.v4.za1;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.cert.CRLException;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.PKIXParameters;
import java.security.cert.PolicyQualifierInfo;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.security.cert.X509Certificate;
import java.security.cert.X509Extension;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAPublicKeySpec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cconst;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cnew;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.x509.Cdo;
import org.bouncycastle.util.Encodable;
import org.bouncycastle.util.Store;

/* renamed from: org.bouncycastle.x509.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor {

    /* renamed from: import, reason: not valid java name */
    public static final int f32735import = 6;

    /* renamed from: super, reason: not valid java name */
    public static final String f32738super = "2.5.29.32.0";

    /* renamed from: while, reason: not valid java name */
    public static final int f32742while = 5;

    /* renamed from: do, reason: not valid java name */
    public static final Cthis f32729do = new Cthis();

    /* renamed from: if, reason: not valid java name */
    public static final String f32734if = Cif.f29328public.m32795super();

    /* renamed from: for, reason: not valid java name */
    public static final String f32732for = Cif.f29309break.m32795super();

    /* renamed from: new, reason: not valid java name */
    public static final String f32737new = Cif.f29329return.m32795super();

    /* renamed from: try, reason: not valid java name */
    public static final String f32741try = Cif.f29320goto.m32795super();

    /* renamed from: case, reason: not valid java name */
    public static final String f32725case = Cif.f29321import.m32795super();

    /* renamed from: else, reason: not valid java name */
    public static final String f32730else = Cif.f29310case.m32795super();

    /* renamed from: goto, reason: not valid java name */
    public static final String f32733goto = Cif.f29317extends.m32795super();

    /* renamed from: this, reason: not valid java name */
    public static final String f32739this = Cif.f29335throw.m32795super();

    /* renamed from: break, reason: not valid java name */
    public static final String f32724break = Cif.f29332super.m32795super();

    /* renamed from: catch, reason: not valid java name */
    public static final String f32726catch = Cif.f29333switch.m32795super();

    /* renamed from: class, reason: not valid java name */
    public static final String f32727class = Cif.f29315default.m32795super();

    /* renamed from: const, reason: not valid java name */
    public static final String f32728const = Cif.f29323native.m32795super();

    /* renamed from: final, reason: not valid java name */
    public static final String f32731final = Cif.f29330static.m32795super();

    /* renamed from: throw, reason: not valid java name */
    public static final String f32740throw = Cif.f29311catch.m32795super();

    /* renamed from: native, reason: not valid java name */
    public static final String[] f32736native = {"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};

    /* renamed from: break, reason: not valid java name */
    private static Cfinal m36492break(String str, byte[] bArr) throws a2 {
        try {
            return new Celse(((Cclass) new Celse(bArr).m33002break()).mo5490const()).m33002break();
        } catch (Exception e) {
            throw new a2("exception processing extension " + str, e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static X500Principal m36493case(Object obj) {
        return obj instanceof X509Certificate ? ((X509Certificate) obj).getIssuerX500Principal() : (X500Principal) ((X509AttributeCertificate) obj).getIssuer().m36520if()[0];
    }

    /* renamed from: catch, reason: not valid java name */
    public static final Set m36494catch(Csuper csuper) throws CertPathValidatorException {
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

    /* renamed from: class, reason: not valid java name */
    private static BigInteger m36495class(Object obj) {
        return obj instanceof X509Certificate ? ((X509Certificate) obj).getSerialNumber() : ((X509AttributeCertificate) obj).getSerialNumber();
    }

    /* renamed from: const, reason: not valid java name */
    public static X500Principal m36496const(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectX500Principal();
    }

    /* renamed from: do, reason: not valid java name */
    public static Collection m36497do(ah2 ah2Var, List list) throws a2 {
        HashSet hashSet = new HashSet();
        Cdo cdo = new Cdo();
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    for (Object objEngineGenerateCertificate : ((Store) obj).getMatches(ah2Var)) {
                        if (objEngineGenerateCertificate instanceof Encodable) {
                            objEngineGenerateCertificate = cdo.engineGenerateCertificate(new ByteArrayInputStream(((Encodable) objEngineGenerateCertificate).getEncoded()));
                        } else if (!(objEngineGenerateCertificate instanceof Certificate)) {
                            throw new a2("Unknown object found in certificate store.");
                        }
                        hashSet.add(objEngineGenerateCertificate);
                    }
                } catch (r12 e) {
                    throw new a2("Problem while picking certificates from X.509 store.", e);
                } catch (IOException e2) {
                    throw new a2("Problem while extracting certificates from X.509 store.", e2);
                } catch (CertificateException e3) {
                    throw new a2("Problem while extracting certificates from X.509 store.", e3);
                }
            } else {
                try {
                    hashSet.addAll(((CertStore) obj).getCertificates(ah2Var));
                } catch (CertStoreException e4) {
                    throw new a2("Problem while picking certificates from certificate store.", e4);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: else, reason: not valid java name */
    public static Cfinal m36498else(X509Extension x509Extension, String str) throws a2 {
        byte[] extensionValue = x509Extension.getExtensionValue(str);
        if (extensionValue == null) {
            return null;
        }
        return m36492break(str, extensionValue);
    }

    /* renamed from: final, reason: not valid java name */
    public static Date m36499final(PKIXParameters pKIXParameters) {
        Date date = pKIXParameters.getDate();
        return date == null ? new Date() : date;
    }

    /* renamed from: for, reason: not valid java name */
    public static Collection m36500for(Ccatch ccatch, List list) throws a2 {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof Cconst) {
                try {
                    hashSet.addAll(((Cconst) obj).getMatches(ccatch));
                } catch (r12 e) {
                    throw new a2("Problem while picking certificates from X.509 store.", e);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: goto, reason: not valid java name */
    public static X500Principal m36501goto(X509CRL x509crl) {
        return x509crl.getIssuerX500Principal();
    }

    /* renamed from: if, reason: not valid java name */
    public static Collection m36502if(org.bouncycastle.jcajce.Cif cif, List list) throws a2 {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    hashSet.addAll(((Store) obj).getMatches(cif));
                } catch (r12 e) {
                    throw new a2("Problem while picking certificates from X.509 store.", e);
                }
            } else {
                try {
                    hashSet.addAll(org.bouncycastle.jcajce.Cif.m34579if(cif, (CertStore) obj));
                } catch (CertStoreException e2) {
                    throw new a2("Problem while picking certificates from certificate store.", e2);
                }
            }
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
    
        if (r13.getCriticalExtensionOIDs() == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        r7 = r13.getCriticalExtensionOIDs().contains(org.bouncycastle.x509.Cfor.f32734if);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a2, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a3, code lost:
    
        r13 = (android.support.v4.za1) r1.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b1, code lost:
    
        if ("2.5.29.32.0".equals(r13.getValidPolicy()) == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b3, code lost:
    
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
    /* renamed from: import, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m36503import(int i, List[] listArr, String str, Map map, X509Certificate x509Certificate) throws a2, CertPathValidatorException {
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
                za1Var.m10142case((Set) map.get(str));
                break;
            }
        }
        if (z) {
            return;
        }
        for (za1 za1Var2 : listArr[i]) {
            if ("2.5.29.32.0".equals(za1Var2.getValidPolicy())) {
                Set setM36494catch = null;
                try {
                    Enumeration enumerationMo33076super = Csuper.m33129catch(m36498else(x509Certificate, f32734if)).mo33076super();
                    while (true) {
                        if (!enumerationMo33076super.hasMoreElements()) {
                            break;
                        }
                        try {
                            fe1 fe1VarM2258new = fe1.m2258new(enumerationMo33076super.nextElement());
                            if ("2.5.29.32.0".equals(fe1VarM2258new.m2260try().m32795super())) {
                                try {
                                    setM36494catch = m36494catch(fe1VarM2258new.m2259case());
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

    /* renamed from: native, reason: not valid java name */
    public static za1 m36504native(int i, List[] listArr, String str, za1 za1Var) {
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
                        i2 = (za1Var3.m10145for() || (za1Var = m36508static(za1Var, listArr, za1Var3)) != null) ? i2 + 1 : 0;
                    }
                }
            }
        }
        return za1Var;
    }

    /* renamed from: new, reason: not valid java name */
    public static b1 m36505new(PublicKey publicKey) throws CertPathValidatorException {
        try {
            return Ctry.m33291case(new Celse(publicKey.getEncoded()).m33002break()).m33297try();
        } catch (Exception e) {
            throw new p90("Subject public key cannot be decoded.", e);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m36506public(int i, List[] listArr, Ccatch ccatch, Set set) {
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

    /* renamed from: return, reason: not valid java name */
    public static void m36507return(int i, List[] listArr, Ccatch ccatch, Set set) {
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

    /* renamed from: static, reason: not valid java name */
    public static za1 m36508static(za1 za1Var, List[] listArr, za1 za1Var2) {
        za1 za1Var3 = (za1) za1Var2.getParent();
        if (za1Var == null) {
            return null;
        }
        if (za1Var3 != null) {
            za1Var3.m10148new(za1Var2);
            m36510switch(listArr, za1Var2);
            return za1Var;
        }
        for (int i = 0; i < listArr.length; i++) {
            listArr[i] = new ArrayList();
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m36509super(Set set) {
        return set == null || set.contains("2.5.29.32.0") || set.isEmpty();
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m36510switch(List[] listArr, za1 za1Var) {
        listArr[za1Var.getDepth()].remove(za1Var);
        if (za1Var.m10145for()) {
            Iterator children = za1Var.getChildren();
            while (children.hasNext()) {
                m36510switch(listArr, (za1) children.next());
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static PublicKey m36511this(List list, int i) throws CertPathValidatorException {
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
            return KeyFactory.getInstance("DSA", org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME).generatePublic(new DSAPublicKeySpec(dSAPublicKey2.getY(), params.getP(), params.getQ(), params.getG()));
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m36512throw(X509CRL x509crl) throws CRLException {
        try {
            byte[] extensionValue = x509crl.getExtensionValue(Cif.f29335throw.m32795super());
            if (extensionValue != null) {
                if (do0.m1460else(Cclass.m32796catch(extensionValue).mo5490const()).m1464break()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            throw new CRLException("Exception reading IssuingDistributionPoint: " + e);
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m36513throws(X509Certificate x509Certificate, PublicKey publicKey, String str) throws GeneralSecurityException {
        if (str == null) {
            x509Certificate.verify(publicKey);
        } else {
            x509Certificate.verify(publicKey, str);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m36514try(Date date, X509CRL x509crl, Object obj, Cnew cnew) throws a2 {
        X509CRLEntry revokedCertificate;
        try {
            if (m36512throw(x509crl)) {
                revokedCertificate = x509crl.getRevokedCertificate(m36495class(obj));
                if (revokedCertificate == null) {
                    return;
                }
                X500Principal certificateIssuer = revokedCertificate.getCertificateIssuer();
                if (certificateIssuer == null) {
                    certificateIssuer = m36501goto(x509crl);
                }
                if (!m36493case(obj).equals(certificateIssuer)) {
                    return;
                }
            } else if (!m36493case(obj).equals(m36501goto(x509crl)) || (revokedCertificate = x509crl.getRevokedCertificate(m36495class(obj))) == null) {
                return;
            }
            Cnew cnewM33093class = null;
            if (revokedCertificate.hasExtensions()) {
                try {
                    cnewM33093class = Cnew.m33093class(m36498else(revokedCertificate, org.bouncycastle.asn1.x509.Celse.f29237catch.m32795super()));
                } catch (Exception e) {
                    throw new a2("Reason code CRL entry extension could not be decoded.", e);
                }
            }
            if (date.getTime() >= revokedCertificate.getRevocationDate().getTime() || cnewM33093class == null || cnewM33093class.m33095final().intValue() == 0 || cnewM33093class.m33095final().intValue() == 1 || cnewM33093class.m33095final().intValue() == 2 || cnewM33093class.m33095final().intValue() == 8) {
                cnew.m36549for(cnewM33093class != null ? cnewM33093class.m33095final().intValue() : 0);
                cnew.m36551new(revokedCertificate.getRevocationDate());
            }
        } catch (CRLException e2) {
            throw new a2("Failed check for indirect CRL.", e2);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m36515while(X509Certificate x509Certificate) {
        return x509Certificate.getSubjectDN().equals(x509Certificate.getIssuerDN());
    }
}
