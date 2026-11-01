package org.bouncycastle.jce;

import android.support.v4.x32;
import java.io.IOException;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.x509.Ccase;
import org.bouncycastle.asn1.x509.Cgoto;

/* renamed from: org.bouncycastle.jce.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {
    /* renamed from: do, reason: not valid java name */
    public static Ccase m34947do(X509CRL x509crl) throws CRLException {
        try {
            return new Ccase(Cgoto.m33230class(Ccase.m33192try(Cfinal.m33015else(x509crl.getTBSCertList())).m33197else()));
        } catch (IOException e) {
            throw new CRLException(e.toString());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Ccase m34948for(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new Ccase(Cgoto.m33230class(x32.m9374case(Cfinal.m33015else(x509Certificate.getTBSCertificate())).m9379const()));
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Ccase m34949if(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new Ccase(Cgoto.m33230class(x32.m9374case(Cfinal.m33015else(x509Certificate.getTBSCertificate())).m9381goto()));
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }
}
