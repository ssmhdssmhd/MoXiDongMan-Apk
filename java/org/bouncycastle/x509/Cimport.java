package org.bouncycastle.x509;

import android.support.v4.q3;
import android.support.v4.q4;
import android.support.v4.xg2;
import android.support.v4.y90;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;

/* renamed from: org.bouncycastle.x509.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport implements X509AttributeCertificate {

    /* renamed from: do, reason: not valid java name */
    private q4 f32744do;

    /* renamed from: for, reason: not valid java name */
    private Date f32745for;

    /* renamed from: if, reason: not valid java name */
    private Date f32746if;

    public Cimport(q4 q4Var) throws IOException {
        this.f32744do = q4Var;
        try {
            this.f32745for = q4Var.m6402new().m6747new().m4232try().m32776const();
            this.f32746if = q4Var.m6402new().m6747new().m4231case().m32776const();
        } catch (ParseException unused) {
            throw new IOException("invalid data structure in certificate!");
        }
    }

    public Cimport(InputStream inputStream) throws IOException {
        this(m36522if(inputStream));
    }

    public Cimport(byte[] bArr) throws IOException {
        this(new ByteArrayInputStream(bArr));
    }

    /* renamed from: do, reason: not valid java name */
    private Set m36521do(boolean z) {
        y90 y90VarM6741case = this.f32744do.m6402new().m6741case();
        if (y90VarM6741case == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration enumerationM9788const = y90VarM6741case.m9788const();
        while (enumerationM9788const.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) enumerationM9788const.nextElement();
            if (y90VarM6741case.m9786case(ccatch).m33248this() == z) {
                hashSet.add(ccatch.m32795super());
            }
        }
        return hashSet;
    }

    /* renamed from: if, reason: not valid java name */
    private static q4 m36522if(InputStream inputStream) throws IOException {
        try {
            return q4.m6399try(new Celse(inputStream).m33002break());
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            throw new IOException("exception decoding certificate structure: " + e2.toString());
        }
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException {
        checkValidity(new Date());
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException {
        if (date.after(getNotAfter())) {
            throw new CertificateExpiredException("certificate expired on " + getNotAfter());
        }
        if (date.before(getNotBefore())) {
            throw new CertificateNotYetValidException("certificate not valid till " + getNotBefore());
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X509AttributeCertificate)) {
            return false;
        }
        try {
            return q3.m6362case(getEncoded(), ((X509AttributeCertificate) obj).getEncoded());
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public xg2[] getAttributes() {
        Csuper csuperM6748try = this.f32744do.m6402new().m6748try();
        xg2[] xg2VarArr = new xg2[csuperM6748try.size()];
        for (int i = 0; i != csuperM6748try.size(); i++) {
            xg2VarArr[i] = new xg2(csuperM6748try.mo33075final(i));
        }
        return xg2VarArr;
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public xg2[] getAttributes(String str) {
        Csuper csuperM6748try = this.f32744do.m6402new().m6748try();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != csuperM6748try.size(); i++) {
            xg2 xg2Var = new xg2(csuperM6748try.mo33075final(i));
            if (xg2Var.m9507new().equals(str)) {
                arrayList.add(xg2Var);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return (xg2[]) arrayList.toArray(new xg2[arrayList.size()]);
    }

    @Override // java.security.cert.X509Extension
    public Set getCriticalExtensionOIDs() {
        return m36521do(true);
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public byte[] getEncoded() throws IOException {
        return this.f32744do.getEncoded();
    }

    @Override // java.security.cert.X509Extension
    public byte[] getExtensionValue(String str) {
        Cif cifM9786case;
        y90 y90VarM6741case = this.f32744do.m6402new().m6741case();
        if (y90VarM6741case == null || (cifM9786case = y90VarM6741case.m9786case(new Ccatch(str))) == null) {
            return null;
        }
        try {
            return cifM9786case.m33246case().m32764do(ASN1Encoding.DER);
        } catch (Exception e) {
            throw new RuntimeException("error encoding " + e.toString());
        }
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public Cdo getHolder() {
        return new Cdo((Csuper) this.f32744do.m6402new().m6745else().toASN1Primitive());
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public Cif getIssuer() {
        return new Cif(this.f32744do.m6402new().m6740break());
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public boolean[] getIssuerUniqueID() {
        Cinstanceof cinstanceofM6742catch = this.f32744do.m6402new().m6742catch();
        if (cinstanceofM6742catch == null) {
            return null;
        }
        byte[] bArrM33057const = cinstanceofM6742catch.m33057const();
        int length = (bArrM33057const.length * 8) - cinstanceofM6742catch.m33060throw();
        boolean[] zArr = new boolean[length];
        for (int i = 0; i != length; i++) {
            zArr[i] = (bArrM33057const[i / 8] & (128 >>> (i % 8))) != 0;
        }
        return zArr;
    }

    @Override // java.security.cert.X509Extension
    public Set getNonCriticalExtensionOIDs() {
        return m36521do(false);
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public Date getNotAfter() {
        return this.f32745for;
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public Date getNotBefore() {
        return this.f32746if;
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public BigInteger getSerialNumber() {
        return this.f32744do.m6402new().m6743class().m33044final();
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public byte[] getSignature() {
        return this.f32744do.m6401else().m33059super();
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public int getVersion() {
        return this.f32744do.m6402new().m6746final().m33044final().intValue() + 1;
    }

    @Override // java.security.cert.X509Extension
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        return (criticalExtensionOIDs == null || criticalExtensionOIDs.isEmpty()) ? false : true;
    }

    public int hashCode() {
        try {
            return q3.n(getEncoded());
        } catch (IOException unused) {
            return 0;
        }
    }

    @Override // org.bouncycastle.x509.X509AttributeCertificate
    public final void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        if (!this.f32744do.m6400case().equals(this.f32744do.m6402new().m6744const())) {
            throw new CertificateException("Signature algorithm in certificate info not same as outer certificate");
        }
        Signature signature = Signature.getInstance(this.f32744do.m6400case().m420new().m32795super(), str);
        signature.initVerify(publicKey);
        try {
            signature.update(this.f32744do.m6402new().getEncoded());
            if (!signature.verify(getSignature())) {
                throw new InvalidKeyException("Public key presented not for certificate signature");
            }
        } catch (IOException unused) {
            throw new SignatureException("Exception encoding certificate info object");
        }
    }
}
