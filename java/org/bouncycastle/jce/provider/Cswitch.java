package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.ah2;
import android.support.v4.o90;
import android.support.v4.r12;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidator;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.PKIXBuilderParameters;
import java.security.cert.PKIXCertPathBuilderResult;
import java.security.cert.PKIXCertPathValidatorResult;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.Cfor;
import org.bouncycastle.jcajce.Cif;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;
import org.bouncycastle.x509.Ccase;
import org.bouncycastle.x509.Ccatch;
import org.bouncycastle.x509.Celse;
import org.bouncycastle.x509.X509AttributeCertificate;

/* renamed from: org.bouncycastle.jce.provider.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cswitch extends CertPathBuilderSpi {

    /* renamed from: do, reason: not valid java name */
    private Exception f31678do;

    /* JADX WARN: Removed duplicated region for block: B:52:0x010b  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CertPathBuilderResult m35115do(X509AttributeCertificate x509AttributeCertificate, X509Certificate x509Certificate, Cfor cfor, List list) throws a2, NoSuchAlgorithmException, CertificateException, NoSuchProviderException {
        CertPathBuilderResult certPathBuilderResultM35115do = null;
        if (list.contains(x509Certificate) || cfor.m34571if().contains(x509Certificate)) {
            return null;
        }
        if (cfor.m34570for() != -1 && list.size() - 1 > cfor.m34570for()) {
            return null;
        }
        list.add(x509Certificate);
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509", Cdo.PROVIDER_NAME);
            CertPathValidator certPathValidator = CertPathValidator.getInstance("RFC3281", Cdo.PROVIDER_NAME);
            try {
            } catch (a2 e) {
                this.f31678do = new a2("No valid certification path could be build.", e);
            }
            if (Ctry.m35147static(x509Certificate, cfor.m34569do().m34607return(), cfor.m34569do().m34605native())) {
                try {
                    CertPath certPathGenerateCertPath = certificateFactory.generateCertPath((List<? extends Certificate>) list);
                    try {
                        PKIXCertPathValidatorResult pKIXCertPathValidatorResult = (PKIXCertPathValidatorResult) certPathValidator.validate(certPathGenerateCertPath, cfor);
                        return new PKIXCertPathBuilderResult(certPathGenerateCertPath, pKIXCertPathValidatorResult.getTrustAnchor(), pKIXCertPathValidatorResult.getPolicyTree(), pKIXCertPathValidatorResult.getPublicKey());
                    } catch (Exception e2) {
                        throw new a2("Certification path could not be validated.", e2);
                    }
                } catch (Exception e3) {
                    throw new a2("Certification path could not be constructed from certificate list.", e3);
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(cfor.m34569do().m34599const());
            try {
                arrayList.addAll(Ctry.m35127case(x509Certificate.getExtensionValue(Cif.f29334this.m32795super()), cfor.m34569do().m34613while()));
                HashSet hashSet = new HashSet();
                try {
                    hashSet.addAll(Ctry.m35137for(x509Certificate, cfor.m34569do().m34598class(), arrayList));
                    if (hashSet.isEmpty()) {
                        throw new a2("No issuer certificate for certificate in certification path found.");
                    }
                    Iterator it = hashSet.iterator();
                    while (it.hasNext() && certPathBuilderResultM35115do == null) {
                        X509Certificate x509Certificate2 = (X509Certificate) it.next();
                        if (!x509Certificate2.getIssuerX500Principal().equals(x509Certificate2.getSubjectX500Principal())) {
                            certPathBuilderResultM35115do = m35115do(x509AttributeCertificate, x509Certificate2, cfor, list);
                        }
                    }
                    if (certPathBuilderResultM35115do == null) {
                        list.remove(x509Certificate);
                    }
                    return certPathBuilderResultM35115do;
                } catch (a2 e4) {
                    throw new a2("Cannot find issuer certificate for certificate in certification path.", e4);
                }
            } catch (CertificateParsingException e5) {
                throw new a2("No additional X.509 stores can be added from certificate locations.", e5);
            }
            this.f31678do = new a2("No valid certification path could be build.", e);
            if (certPathBuilderResultM35115do == null) {
            }
            return certPathBuilderResultM35115do;
        } catch (Exception unused) {
            throw new RuntimeException("Exception creating support classes.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Collection m35116if(Ccatch ccatch, List list) throws a2 {
        HashSet hashSet = new HashSet();
        for (Object obj : list) {
            if (obj instanceof Store) {
                try {
                    hashSet.addAll(((Store) obj).getMatches(ccatch));
                } catch (r12 e) {
                    throw new a2("Problem while picking certificates from X.509 store.", e);
                }
            }
        }
        return hashSet;
    }

    @Override // java.security.cert.CertPathBuilderSpi
    public CertPathBuilderResult engineBuild(CertPathParameters certPathParameters) throws CertPathBuilderException, a2, NoSuchAlgorithmException, IOException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        Cfor cforM34577try;
        boolean z = certPathParameters instanceof PKIXBuilderParameters;
        if (!z && !(certPathParameters instanceof Ccase) && !(certPathParameters instanceof Cfor)) {
            throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + Cfor.class.getName() + ".");
        }
        List arrayList = new ArrayList();
        if (z) {
            Cfor.Cif cif = new Cfor.Cif((PKIXBuilderParameters) certPathParameters);
            if (certPathParameters instanceof Celse) {
                Ccase ccase = (Ccase) certPathParameters;
                cif.m34576new(ccase.m36419default());
                cif.m34575case(ccase.m36420extends());
                arrayList = ccase.m36480this();
            }
            cforM34577try = cif.m34577try();
        } else {
            cforM34577try = (Cfor) certPathParameters;
        }
        ArrayList arrayList2 = new ArrayList();
        Selector selectorM34606public = cforM34577try.m34569do().m34606public();
        if (!(selectorM34606public instanceof Ccatch)) {
            throw new CertPathBuilderException("TargetConstraints must be an instance of " + Ccatch.class.getName() + " for " + getClass().getName() + " class.");
        }
        try {
            Collection collectionM35116if = m35116if((Ccatch) selectorM34606public, arrayList);
            if (collectionM35116if.isEmpty()) {
                throw new CertPathBuilderException("No attribute certificate found matching targetContraints.");
            }
            CertPathBuilderResult certPathBuilderResultM35115do = null;
            Iterator it = collectionM35116if.iterator();
            while (it.hasNext() && certPathBuilderResultM35115do == null) {
                X509AttributeCertificate x509AttributeCertificate = (X509AttributeCertificate) it.next();
                ah2 ah2Var = new ah2();
                Principal[] principalArrM36520if = x509AttributeCertificate.getIssuer().m36520if();
                HashSet hashSet = new HashSet();
                for (int i = 0; i < principalArrM36520if.length; i++) {
                    try {
                        if (principalArrM36520if[i] instanceof X500Principal) {
                            ah2Var.setSubject(((X500Principal) principalArrM36520if[i]).getEncoded());
                        }
                        org.bouncycastle.jcajce.Cif<? extends Certificate> cifM34580do = new Cif.C0413if(ah2Var).m34580do();
                        hashSet.addAll(Ctry.m35139if(cifM34580do, cforM34577try.m34569do().m34598class()));
                        hashSet.addAll(Ctry.m35139if(cifM34580do, cforM34577try.m34569do().m34599const()));
                    } catch (a2 e) {
                        throw new o90("Public key certificate for attribute certificate cannot be searched.", e);
                    } catch (IOException e2) {
                        throw new o90("cannot encode X500Principal.", e2);
                    }
                }
                if (hashSet.isEmpty()) {
                    throw new CertPathBuilderException("Public key certificate for attribute certificate cannot be found.");
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext() && certPathBuilderResultM35115do == null) {
                    certPathBuilderResultM35115do = m35115do(x509AttributeCertificate, (X509Certificate) it2.next(), cforM34577try, arrayList2);
                }
            }
            if (certPathBuilderResultM35115do == null && this.f31678do != null) {
                throw new o90("Possible certificate chain could not be validated.", this.f31678do);
            }
            if (certPathBuilderResultM35115do == null && this.f31678do == null) {
                throw new CertPathBuilderException("Unable to find certificate chain.");
            }
            return certPathBuilderResultM35115do;
        } catch (a2 e3) {
            throw new o90("Error finding target attribute certificate.", e3);
        }
    }
}
