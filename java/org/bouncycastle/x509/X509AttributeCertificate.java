package org.bouncycastle.x509;

import android.support.v4.xg2;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Extension;
import java.util.Date;

/* loaded from: classes3.dex */
public interface X509AttributeCertificate extends X509Extension {
    void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException;

    void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException;

    xg2[] getAttributes();

    xg2[] getAttributes(String str);

    byte[] getEncoded() throws IOException;

    Cdo getHolder();

    Cif getIssuer();

    boolean[] getIssuerUniqueID();

    Date getNotAfter();

    Date getNotBefore();

    BigInteger getSerialNumber();

    byte[] getSignature();

    int getVersion();

    void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException;
}
