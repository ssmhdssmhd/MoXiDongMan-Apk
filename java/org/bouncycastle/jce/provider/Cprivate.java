package org.bouncycastle.jce.provider;

import android.support.v4.tg2;
import java.security.cert.TrustAnchor;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.x509.X509AttributeCertificate;

/* renamed from: org.bouncycastle.jce.provider.private, reason: invalid class name */
/* loaded from: classes3.dex */
class Cprivate {
    /* renamed from: do, reason: not valid java name */
    public static tg2 m35097do(TrustAnchor trustAnchor) {
        return tg2.m7884else(trustAnchor.getCA().getEncoded());
    }

    /* renamed from: for, reason: not valid java name */
    public static tg2 m35098for(X509CRL x509crl) {
        return tg2.m7884else(x509crl.getIssuerX500Principal().getEncoded());
    }

    /* renamed from: if, reason: not valid java name */
    public static tg2 m35099if(Object obj) {
        return obj instanceof X509Certificate ? m35100new((X509Certificate) obj) : tg2.m7884else(((X500Principal) ((X509AttributeCertificate) obj).getIssuer().m36520if()[0]).getEncoded());
    }

    /* renamed from: new, reason: not valid java name */
    public static tg2 m35100new(X509Certificate x509Certificate) {
        return tg2.m7884else(x509Certificate.getIssuerX500Principal().getEncoded());
    }

    /* renamed from: try, reason: not valid java name */
    public static tg2 m35101try(X509Certificate x509Certificate) {
        return tg2.m7884else(x509Certificate.getSubjectX500Principal().getEncoded());
    }
}
