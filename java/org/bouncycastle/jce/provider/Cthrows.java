package org.bouncycastle.jce.provider;

import android.support.v4.a2;
import android.support.v4.p90;
import android.support.v4.w5;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
import java.security.cert.CertPathParameters;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertPathValidatorResult;
import java.security.cert.CertPathValidatorSpi;
import java.security.cert.PKIXParameters;
import java.security.cert.X509Certificate;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.jcajce.Cnew;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.util.Selector;
import org.bouncycastle.x509.Ccatch;
import org.bouncycastle.x509.Celse;
import org.bouncycastle.x509.X509AttributeCertificate;

/* renamed from: org.bouncycastle.jce.provider.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrows extends CertPathValidatorSpi {

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31679do = new w5();

    @Override // java.security.cert.CertPathValidatorSpi
    public CertPathValidatorResult engineValidate(CertPath certPath, CertPathParameters certPathParameters) throws CertPathBuilderException, a2, NoSuchAlgorithmException, IOException, CertPathValidatorException, NoSuchProviderException, InvalidAlgorithmParameterException {
        Cnew cnewM34634throw;
        boolean z = certPathParameters instanceof Celse;
        if (!z && !(certPathParameters instanceof Cnew)) {
            throw new InvalidAlgorithmParameterException("Parameters must be a " + Celse.class.getName() + " instance.");
        }
        Set hashSet = new HashSet();
        Set hashSet2 = new HashSet();
        Set hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        if (certPathParameters instanceof PKIXParameters) {
            Cnew.Cif cif = new Cnew.Cif((PKIXParameters) certPathParameters);
            if (z) {
                Celse celse = (Celse) certPathParameters;
                cif.m34631return(celse.m36469final());
                cif.m34632static(celse.m36465class());
                hashSet = celse.m36483try();
                hashSet2 = celse.m36471goto();
                hashSet3 = celse.m36468else();
            }
            cnewM34634throw = cif.m34634throw();
        } else {
            cnewM34634throw = (Cnew) certPathParameters;
        }
        Cnew cnew = cnewM34634throw;
        Selector selectorM34606public = cnew.m34606public();
        if (!(selectorM34606public instanceof Ccatch)) {
            throw new InvalidAlgorithmParameterException("TargetConstraints must be an instance of " + Ccatch.class.getName() + " for " + getClass().getName() + " class.");
        }
        X509AttributeCertificate x509AttributeCertificateM36426case = ((Ccatch) selectorM34606public).m36426case();
        CertPath certPathM35016new = Ccontinue.m35016new(x509AttributeCertificateM36426case, cnew);
        CertPathValidatorResult certPathValidatorResultM35018try = Ccontinue.m35018try(certPath, cnew);
        X509Certificate x509Certificate = (X509Certificate) certPath.getCertificates().get(0);
        Ccontinue.m35010case(x509Certificate, cnew);
        Ccontinue.m35012else(x509Certificate, hashSet4);
        Ccontinue.m35014goto(x509AttributeCertificateM36426case, cnew);
        Ccontinue.m35017this(x509AttributeCertificateM36426case, certPath, certPathM35016new, cnew, hashSet);
        Ccontinue.m35011do(x509AttributeCertificateM36426case, hashSet2, hashSet3);
        try {
            Ccontinue.m35013for(x509AttributeCertificateM36426case, cnew, x509Certificate, Ctry.m35140import(cnew, null, -1), certPath.getCertificates(), this.f31679do);
            return certPathValidatorResultM35018try;
        } catch (a2 e) {
            throw new p90("Could not get validity date from attribute certificate.", e);
        }
    }
}
