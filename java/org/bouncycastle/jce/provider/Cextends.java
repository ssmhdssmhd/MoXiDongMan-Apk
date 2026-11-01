package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.o90;
import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathBuilderResult;
import java.security.cert.CertPathBuilderSpi;
import java.security.cert.CertPathParameters;
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
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.jcajce.Cfor;
import org.bouncycastle.jcajce.Cnew;
import org.bouncycastle.jcajce.PKIXCertStore;
import org.bouncycastle.jcajce.provider.asymmetric.x509.Cdo;
import org.bouncycastle.x509.Ccase;
import org.bouncycastle.x509.Celse;

/* renamed from: org.bouncycastle.jce.provider.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cextends extends CertPathBuilderSpi {

    /* renamed from: do, reason: not valid java name */
    private Exception f31613do;

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f1  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CertPathBuilderResult m35025do(X509Certificate x509Certificate, Cfor cfor, List list) throws a2 {
        CertPathBuilderResult certPathBuilderResultM35025do = null;
        if (list.contains(x509Certificate) || cfor.m34571if().contains(x509Certificate)) {
            return null;
        }
        if (cfor.m34570for() != -1 && list.size() - 1 > cfor.m34570for()) {
            return null;
        }
        list.add(x509Certificate);
        try {
            Cdo cdo = new Cdo();
            Cfinally cfinally = new Cfinally();
            try {
            } catch (a2 e) {
                this.f31613do = e;
            }
            if (Ctry.m35147static(x509Certificate, cfor.m34569do().m34607return(), cfor.m34569do().m34605native())) {
                try {
                    CertPath certPathEngineGenerateCertPath = cdo.engineGenerateCertPath(list);
                    try {
                        PKIXCertPathValidatorResult pKIXCertPathValidatorResult = (PKIXCertPathValidatorResult) cfinally.engineValidate(certPathEngineGenerateCertPath, cfor);
                        return new PKIXCertPathBuilderResult(certPathEngineGenerateCertPath, pKIXCertPathValidatorResult.getTrustAnchor(), pKIXCertPathValidatorResult.getPolicyTree(), pKIXCertPathValidatorResult.getPublicKey());
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
                    while (it.hasNext() && certPathBuilderResultM35025do == null) {
                        certPathBuilderResultM35025do = m35025do((X509Certificate) it.next(), cfor, list);
                    }
                    if (certPathBuilderResultM35025do == null) {
                        list.remove(x509Certificate);
                    }
                    return certPathBuilderResultM35025do;
                } catch (a2 e4) {
                    throw new a2("Cannot find issuer certificate for certificate in certification path.", e4);
                }
            } catch (CertificateParsingException e5) {
                throw new a2("No additional X.509 stores can be added from certificate locations.", e5);
            }
            this.f31613do = e;
            if (certPathBuilderResultM35025do == null) {
            }
            return certPathBuilderResultM35025do;
        } catch (Exception unused) {
            throw new RuntimeException("Exception creating support classes.");
        }
    }

    @Override // java.security.cert.CertPathBuilderSpi
    public CertPathBuilderResult engineBuild(CertPathParameters certPathParameters) throws CertPathBuilderException, a2, InvalidAlgorithmParameterException {
        Cfor cforM34577try;
        Exception exc;
        Cfor.Cif cif;
        if (certPathParameters instanceof PKIXBuilderParameters) {
            PKIXBuilderParameters pKIXBuilderParameters = (PKIXBuilderParameters) certPathParameters;
            Cnew.Cif cif2 = new Cnew.Cif(pKIXBuilderParameters);
            if (certPathParameters instanceof Celse) {
                Ccase ccase = (Ccase) certPathParameters;
                Iterator it = ccase.m36474new().iterator();
                while (it.hasNext()) {
                    cif2.m34626const((PKIXCertStore) it.next());
                }
                cif = new Cfor.Cif(cif2.m34634throw());
                cif.m34576new(ccase.m36419default());
                cif.m34575case(ccase.m36420extends());
            } else {
                cif = new Cfor.Cif(pKIXBuilderParameters);
            }
            cforM34577try = cif.m34577try();
        } else {
            if (!(certPathParameters instanceof Cfor)) {
                throw new InvalidAlgorithmParameterException("Parameters must be an instance of " + PKIXBuilderParameters.class.getName() + " or " + Cfor.class.getName() + ".");
            }
            cforM34577try = (Cfor) certPathParameters;
        }
        ArrayList arrayList = new ArrayList();
        org.bouncycastle.jcajce.Cif cifM34606public = cforM34577try.m34569do().m34606public();
        try {
            Collection collectionM35139if = Ctry.m35139if(cifM34606public, cforM34577try.m34569do().m34599const());
            collectionM35139if.addAll(Ctry.m35139if(cifM34606public, cforM34577try.m34569do().m34598class()));
            if (collectionM35139if.isEmpty()) {
                throw new CertPathBuilderException("No certificate found matching targetContraints.");
            }
            CertPathBuilderResult certPathBuilderResultM35025do = null;
            Iterator it2 = collectionM35139if.iterator();
            while (it2.hasNext() && certPathBuilderResultM35025do == null) {
                certPathBuilderResultM35025do = m35025do((X509Certificate) it2.next(), cforM34577try, arrayList);
            }
            if (certPathBuilderResultM35025do == null && (exc = this.f31613do) != null) {
                if (exc instanceof a2) {
                    throw new CertPathBuilderException(this.f31613do.getMessage(), this.f31613do.getCause());
                }
                throw new CertPathBuilderException("Possible certificate chain could not be validated.", this.f31613do);
            }
            if (certPathBuilderResultM35025do == null && this.f31613do == null) {
                throw new CertPathBuilderException("Unable to find certificate chain.");
            }
            return certPathBuilderResultM35025do;
        } catch (a2 e) {
            throw new o90("Error finding target certificate.", e);
        }
    }
}
