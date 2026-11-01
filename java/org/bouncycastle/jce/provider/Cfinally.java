package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.b1;
import android.support.v4.p90;
import android.support.v4.tg2;
import android.support.v4.w32;
import android.support.v4.w5;
import android.support.v4.za1;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.PublicKey;
import java.security.cert.CertPath;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.PKIXParameters;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.Cfor;
import org.bouncycastle.jcajce.Cnew;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.x509.Celse;

/* renamed from: org.bouncycastle.jce.provider.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfinally extends CertPathValidatorSpi {

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31615do = new w5();

    /* renamed from: do, reason: not valid java name */
    public static void m35027do(X509Certificate x509Certificate) throws a2 {
        try {
            w32.m9030case(x509Certificate.getTBSCertificate());
        } catch (IllegalArgumentException e) {
            throw new a2(e.getMessage());
        } catch (CertificateEncodingException e2) {
            throw new a2("unable to process TBSCertificate", e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v8, types: [android.support.v4.b1] */
    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertificateNotYetValidException, IOException, CertPathValidatorException, CertificateExpiredException, InvalidAlgorithmParameterException {
        Cnew cnewM34569do;
        List<? extends Certificate> list;
        tg2 tg2VarM35097do;
        PublicKey cAPublicKey;
        HashSet hashSet;
        Cpackage cpackage;
        ArrayList[] arrayListArr;
        HashSet hashSet2;
        Cfinally cfinally = this;
        if (certPathParameters instanceof PKIXParameters) {
            Cnew.Cif cif = new Cnew.Cif((PKIXParameters) certPathParameters);
            if (certPathParameters instanceof Celse) {
                Celse celse = (Celse) certPathParameters;
                cif.m34631return(celse.m36469final());
                cif.m34632static(celse.m36465class());
            }
            cnewM34569do = cif.m34634throw();
        } else if (certPathParameters instanceof Cfor) {
            cnewM34569do = ((Cfor) certPathParameters).m34569do();
        } else {
            if (!(certPathParameters instanceof Cnew)) {
                throw new InvalidAlgorithmParameterException("Parameters must be a " + PKIXParameters.class.getName() + " instance.");
            }
            cnewM34569do = (Cnew) certPathParameters;
        }
        if (cnewM34569do.m34607return() == null) {
            throw new InvalidAlgorithmParameterException("trustAnchors is null, this is not allowed for certification path validation.");
        }
        List<? extends Certificate> certificates = certPath.getCertificates();
        int size = certificates.size();
        int iM35138goto = -1;
        if (certificates.isEmpty()) {
            throw new CertPathValidatorException("Certification path is empty.", null, certPath, -1);
        }
        Set setM34609super = cnewM34569do.m34609super();
        try {
            TrustAnchor trustAnchorM35153try = Ctry.m35153try((X509Certificate) certificates.get(certificates.size() - 1), cnewM34569do.m34607return(), cnewM34569do.m34605native());
            if (trustAnchorM35153try == null) {
                list = certificates;
                try {
                    throw new CertPathValidatorException("Trust anchor for certification path not found.", null, certPath, -1);
                } catch (a2 e) {
                    e = e;
                    throw new CertPathValidatorException(e.getMessage(), e.getUnderlyingException(), certPath, list.size() - 1);
                }
            }
            m35027do(trustAnchorM35153try.getTrustedCert());
            Cnew cnewM34634throw = new Cnew.Cif(cnewM34569do).m34629native(trustAnchorM35153try).m34634throw();
            int i = size + 1;
            ArrayList[] arrayListArr2 = new ArrayList[i];
            for (int i2 = 0; i2 < i; i2++) {
                arrayListArr2[i2] = new ArrayList();
            }
            HashSet hashSet3 = new HashSet();
            hashSet3.add("2.5.29.32.0");
            za1 za1Var = new za1(new ArrayList(), 0, hashSet3, null, new HashSet(), "2.5.29.32.0", false);
            arrayListArr2[0].add(za1Var);
            Cpackage cpackage2 = new Cpackage();
            HashSet hashSet4 = new HashSet();
            int i3 = cnewM34634throw.m34612throws() ? 0 : i;
            int i4 = cnewM34634throw.m34610switch() ? 0 : i;
            if (cnewM34634throw.m34600default()) {
                i = 0;
            }
            X509Certificate trustedCert = trustAnchorM35153try.getTrustedCert();
            try {
                if (trustedCert != null) {
                    tg2VarM35097do = Cprivate.m35101try(trustedCert);
                    cAPublicKey = trustedCert.getPublicKey();
                } else {
                    tg2VarM35097do = Cprivate.m35097do(trustAnchorM35153try);
                    cAPublicKey = trustAnchorM35153try.getCAPublicKey();
                }
                try {
                    iM35138goto = Ctry.m35138goto(cAPublicKey);
                    iM35138goto.m420new();
                    iM35138goto.m419else();
                    if (cnewM34634throw.m34606public() != null && !cnewM34634throw.m34606public().match((Certificate) certificates.get(0))) {
                        throw new p90("Target certificate in certification path does not match targetConstraints.", null, certPath, 0);
                    }
                    List listM34597catch = cnewM34634throw.m34597catch();
                    Iterator it = listM34597catch.iterator();
                    while (it.hasNext()) {
                        ((PKIXCertPathChecker) it.next()).init(false);
                    }
                    int iM34972final = size;
                    X509Certificate x509Certificate = null;
                    int i5 = i;
                    int i6 = i4;
                    za1 za1Var2 = za1Var;
                    int i7 = i3;
                    int size2 = certificates.size() - 1;
                    int iM34990this = i7;
                    while (size2 >= 0) {
                        int i8 = size - size2;
                        Set set = setM34609super;
                        X509Certificate x509Certificate2 = (X509Certificate) certificates.get(size2);
                        boolean z = size2 == certificates.size() + (-1);
                        try {
                            m35027do(x509Certificate2);
                            TrustAnchor trustAnchor = trustAnchorM35153try;
                            JcaJceHelper jcaJceHelper = cfinally.f31615do;
                            int i9 = i6;
                            List<? extends Certificate> list2 = certificates;
                            int i10 = iM34990this;
                            Cnew cnew = cnewM34634throw;
                            int i11 = size2;
                            Cnew cnew2 = cnewM34634throw;
                            int iM34962break = i5;
                            Cpackage cpackage3 = cpackage2;
                            ArrayList[] arrayListArr3 = arrayListArr2;
                            Cabstract.m34981package(certPath, cnew, size2, cAPublicKey, z, tg2VarM35097do, trustedCert, jcaJceHelper);
                            Cabstract.m34982private(certPath, i11, cpackage3);
                            za1 za1VarM34967continue = Cabstract.m34967continue(certPath, i11, Cabstract.m34961abstract(certPath, i11, hashSet4, za1Var2, arrayListArr3, i9));
                            Cabstract.m34987strictfp(certPath, i11, za1VarM34967continue, i10);
                            if (i8 == size) {
                                cpackage = cpackage3;
                                arrayListArr = arrayListArr3;
                                cfinally = this;
                                za1Var2 = za1VarM34967continue;
                                i6 = i9;
                                iM34972final = iM34972final;
                                iM34990this = i10;
                            } else if (x509Certificate2 == null || x509Certificate2.getVersion() != 1) {
                                Cabstract.m34980new(certPath, i11);
                                arrayListArr = arrayListArr3;
                                za1 za1VarM34974for = Cabstract.m34974for(certPath, i11, arrayListArr, za1VarM34967continue, iM34962break);
                                Cabstract.m34994try(certPath, i11, cpackage3);
                                int iM34963case = Cabstract.m34963case(certPath, i11, i10);
                                int iM34970else = Cabstract.m34970else(certPath, i11, iM34962break);
                                int iM34975goto = Cabstract.m34975goto(certPath, i11, i9);
                                iM34990this = Cabstract.m34990this(certPath, i11, iM34963case);
                                iM34962break = Cabstract.m34962break(certPath, i11, iM34970else);
                                int iM34964catch = Cabstract.m34964catch(certPath, i11, iM34975goto);
                                Cabstract.m34965class(certPath, i11);
                                iM34972final = Cabstract.m34972final(certPath, i11, Cabstract.m34966const(certPath, i11, iM34972final));
                                Cabstract.m34988super(certPath, i11);
                                Set<String> criticalExtensionOIDs = x509Certificate2.getCriticalExtensionOIDs();
                                if (criticalExtensionOIDs != null) {
                                    hashSet2 = new HashSet(criticalExtensionOIDs);
                                    hashSet2.remove(Cabstract.f31572final);
                                    hashSet2.remove(Cabstract.f31575if);
                                    hashSet2.remove(Cabstract.f31573for);
                                    hashSet2.remove(Cabstract.f31578new);
                                    hashSet2.remove(Cabstract.f31582try);
                                    hashSet2.remove(Cabstract.f31571else);
                                    hashSet2.remove(Cabstract.f31574goto);
                                    hashSet2.remove(Cabstract.f31580this);
                                    hashSet2.remove(Cabstract.f31567catch);
                                    hashSet2.remove(Cabstract.f31568class);
                                } else {
                                    hashSet2 = new HashSet();
                                }
                                Cabstract.m34991throw(certPath, i11, hashSet2, listM34597catch);
                                tg2 tg2VarM35101try = Cprivate.m35101try(x509Certificate2);
                                try {
                                    cpackage = cpackage3;
                                    cfinally = this;
                                    try {
                                        PublicKey publicKeyM35135final = Ctry.m35135final(certPath.getCertificates(), i11, cfinally.f31615do);
                                        b1 b1VarM35138goto = Ctry.m35138goto(publicKeyM35135final);
                                        b1VarM35138goto.m420new();
                                        b1VarM35138goto.m419else();
                                        za1Var2 = za1VarM34974for;
                                        i6 = iM34964catch;
                                        tg2VarM35097do = tg2VarM35101try;
                                        cAPublicKey = publicKeyM35135final;
                                        trustedCert = x509Certificate2;
                                    } catch (CertPathValidatorException e2) {
                                        e = e2;
                                        throw new CertPathValidatorException("Next working key could not be retrieved.", e, certPath, i11);
                                    }
                                } catch (CertPathValidatorException e3) {
                                    e = e3;
                                }
                            } else {
                                if (i8 != 1 || !x509Certificate2.equals(trustAnchor.getTrustedCert())) {
                                    throw new CertPathValidatorException("Version 1 certificates can't be used as CA ones.", null, certPath, i11);
                                }
                                cpackage = cpackage3;
                                arrayListArr = arrayListArr3;
                                cfinally = this;
                                za1Var2 = za1VarM34967continue;
                                i6 = i9;
                                iM34972final = iM34972final;
                                iM34990this = i10;
                            }
                            i5 = iM34962break;
                            size2 = i11 - 1;
                            x509Certificate = x509Certificate2;
                            setM34609super = set;
                            certificates = list2;
                            cnewM34634throw = cnew2;
                            trustAnchorM35153try = trustAnchor;
                            Cpackage cpackage4 = cpackage;
                            arrayListArr2 = arrayListArr;
                            cpackage2 = cpackage4;
                        } catch (a2 e4) {
                            throw new CertPathValidatorException(e4.getMessage(), e4.getUnderlyingException(), certPath, size2);
                        }
                    }
                    Cnew cnew3 = cnewM34634throw;
                    ArrayList[] arrayListArr4 = arrayListArr2;
                    TrustAnchor trustAnchor2 = trustAnchorM35153try;
                    Set set2 = setM34609super;
                    X509Certificate x509Certificate3 = x509Certificate;
                    int i12 = size2;
                    int i13 = i12 + 1;
                    int iM34978interface = Cabstract.m34978interface(certPath, i13, Cabstract.m34995volatile(iM34990this, x509Certificate3));
                    Set<String> criticalExtensionOIDs2 = x509Certificate3.getCriticalExtensionOIDs();
                    if (criticalExtensionOIDs2 != null) {
                        hashSet = new HashSet(criticalExtensionOIDs2);
                        hashSet.remove(Cabstract.f31572final);
                        hashSet.remove(Cabstract.f31575if);
                        hashSet.remove(Cabstract.f31573for);
                        hashSet.remove(Cabstract.f31578new);
                        hashSet.remove(Cabstract.f31582try);
                        hashSet.remove(Cabstract.f31571else);
                        hashSet.remove(Cabstract.f31574goto);
                        hashSet.remove(Cabstract.f31580this);
                        hashSet.remove(Cabstract.f31567catch);
                        hashSet.remove(Cabstract.f31568class);
                        hashSet.remove(Cabstract.f31565break);
                        hashSet.remove(Cif.f29336throws.m32795super());
                    } else {
                        hashSet = new HashSet();
                    }
                    Cabstract.m34983protected(certPath, i13, listM34597catch, hashSet);
                    za1 za1VarM34993transient = Cabstract.m34993transient(certPath, cnew3, set2, i13, arrayListArr4, za1Var2, hashSet4);
                    if (iM34978interface > 0 || za1VarM34993transient != null) {
                        return new PKIXCertPathValidatorResult(trustAnchor2, za1VarM34993transient, x509Certificate3.getPublicKey());
                    }
                    throw new CertPathValidatorException("Path processing failed on policy.", null, certPath, i12);
                } catch (CertPathValidatorException e5) {
                    throw new p90("Algorithm identifier of public key of trust anchor could not be read.", e5, certPath, -1);
                }
            } catch (IllegalArgumentException e6) {
                throw new p90("Subject of trust anchor could not be (re)encoded.", e6, certPath, iM35138goto);
            }
        } catch (a2 e7) {
            e = e7;
            list = certificates;
        }
    }
}
