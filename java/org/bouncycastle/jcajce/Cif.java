package org.bouncycastle.jcajce;

import java.io.IOException;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.X509CertSelector;
import java.util.Collection;
import org.bouncycastle.util.Selector;

/* renamed from: org.bouncycastle.jcajce.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif<T extends Certificate> implements Selector<T> {

    /* renamed from: do, reason: not valid java name */
    private final CertSelector f30952do;

    /* renamed from: org.bouncycastle.jcajce.if$for, reason: invalid class name */
    public static class Cfor extends X509CertSelector {

        /* renamed from: do, reason: not valid java name */
        private final Cif f30953do;

        public Cfor(Cif cif) throws IOException {
            this.f30953do = cif;
            if (cif.f30952do instanceof X509CertSelector) {
                X509CertSelector x509CertSelector = (X509CertSelector) cif.f30952do;
                setAuthorityKeyIdentifier(x509CertSelector.getAuthorityKeyIdentifier());
                setBasicConstraints(x509CertSelector.getBasicConstraints());
                setCertificate(x509CertSelector.getCertificate());
                setCertificateValid(x509CertSelector.getCertificateValid());
                setKeyUsage(x509CertSelector.getKeyUsage());
                setMatchAllSubjectAltNames(x509CertSelector.getMatchAllSubjectAltNames());
                setPrivateKeyValid(x509CertSelector.getPrivateKeyValid());
                setSerialNumber(x509CertSelector.getSerialNumber());
                setSubjectKeyIdentifier(x509CertSelector.getSubjectKeyIdentifier());
                setSubjectPublicKey(x509CertSelector.getSubjectPublicKey());
                try {
                    setExtendedKeyUsage(x509CertSelector.getExtendedKeyUsage());
                    setIssuer(x509CertSelector.getIssuerAsBytes());
                    setNameConstraints(x509CertSelector.getNameConstraints());
                    setPathToNames(x509CertSelector.getPathToNames());
                    setPolicy(x509CertSelector.getPolicy());
                    setSubject(x509CertSelector.getSubjectAsBytes());
                    setSubjectAlternativeNames(x509CertSelector.getSubjectAlternativeNames());
                    setSubjectPublicKeyAlgID(x509CertSelector.getSubjectPublicKeyAlgID());
                } catch (IOException e) {
                    throw new IllegalStateException("base selector invalid: " + e.getMessage(), e);
                }
            }
        }

        @Override // java.security.cert.X509CertSelector, java.security.cert.CertSelector
        public boolean match(Certificate certificate) {
            Cif cif = this.f30953do;
            return cif == null ? certificate != null : cif.match(certificate);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0413if {

        /* renamed from: do, reason: not valid java name */
        private final CertSelector f30954do;

        public C0413if(CertSelector certSelector) {
            this.f30954do = (CertSelector) certSelector.clone();
        }

        /* renamed from: do, reason: not valid java name */
        public Cif<? extends Certificate> m34580do() {
            return new Cif<>(this.f30954do);
        }
    }

    private Cif(CertSelector certSelector) {
        this.f30952do = certSelector;
    }

    /* renamed from: if, reason: not valid java name */
    public static Collection<? extends Certificate> m34579if(Cif cif, CertStore certStore) throws CertStoreException {
        return certStore.getCertificates(new Cfor(cif));
    }

    @Override // org.bouncycastle.util.Selector, java.security.cert.CertSelector
    public Object clone() {
        return new Cif(this.f30952do);
    }

    @Override // org.bouncycastle.util.Selector
    public boolean match(Certificate certificate) {
        return this.f30952do.match(certificate);
    }
}
