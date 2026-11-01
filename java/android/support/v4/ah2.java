package android.support.v4;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import org.bouncycastle.util.Selector;

/* loaded from: classes3.dex */
public class ah2 extends X509CertSelector implements Selector {
    /* renamed from: do, reason: not valid java name */
    public static ah2 m251do(X509CertSelector x509CertSelector) throws IOException {
        if (x509CertSelector == null) {
            throw new IllegalArgumentException("cannot create from null selector");
        }
        ah2 ah2Var = new ah2();
        ah2Var.setAuthorityKeyIdentifier(x509CertSelector.getAuthorityKeyIdentifier());
        ah2Var.setBasicConstraints(x509CertSelector.getBasicConstraints());
        ah2Var.setCertificate(x509CertSelector.getCertificate());
        ah2Var.setCertificateValid(x509CertSelector.getCertificateValid());
        ah2Var.setMatchAllSubjectAltNames(x509CertSelector.getMatchAllSubjectAltNames());
        try {
            ah2Var.setPathToNames(x509CertSelector.getPathToNames());
            ah2Var.setExtendedKeyUsage(x509CertSelector.getExtendedKeyUsage());
            ah2Var.setNameConstraints(x509CertSelector.getNameConstraints());
            ah2Var.setPolicy(x509CertSelector.getPolicy());
            ah2Var.setSubjectPublicKeyAlgID(x509CertSelector.getSubjectPublicKeyAlgID());
            ah2Var.setSubjectAlternativeNames(x509CertSelector.getSubjectAlternativeNames());
            ah2Var.setIssuer(x509CertSelector.getIssuer());
            ah2Var.setKeyUsage(x509CertSelector.getKeyUsage());
            ah2Var.setPrivateKeyValid(x509CertSelector.getPrivateKeyValid());
            ah2Var.setSerialNumber(x509CertSelector.getSerialNumber());
            ah2Var.setSubject(x509CertSelector.getSubject());
            ah2Var.setSubjectKeyIdentifier(x509CertSelector.getSubjectKeyIdentifier());
            ah2Var.setSubjectPublicKey(x509CertSelector.getSubjectPublicKey());
            return ah2Var;
        } catch (IOException e) {
            throw new IllegalArgumentException("error in passed in selector: " + e);
        }
    }

    @Override // java.security.cert.X509CertSelector, java.security.cert.CertSelector, org.bouncycastle.util.Selector
    public Object clone() {
        return (ah2) super.clone();
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Object obj) {
        if (obj instanceof X509Certificate) {
            return super.match((Certificate) obj);
        }
        return false;
    }

    @Override // java.security.cert.X509CertSelector, java.security.cert.CertSelector
    public boolean match(Certificate certificate) {
        return match((Object) certificate);
    }
}
