package org.bouncycastle.x509;

import android.support.v4.Cimport;
import android.support.v4.b1;
import android.support.v4.qd2;
import android.support.v4.t62;
import android.support.v4.w32;
import android.support.v4.w5;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.x509.Cgoto;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.x509.Cdo;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.Ccase;

/* renamed from: org.bouncycastle.x509.while, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cwhile {

    /* renamed from: case, reason: not valid java name */
    private String f32777case;

    /* renamed from: new, reason: not valid java name */
    private Ccatch f32781new;

    /* renamed from: try, reason: not valid java name */
    private b1 f32782try;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f32778do = new w5();

    /* renamed from: if, reason: not valid java name */
    private final Cdo f32780if = new Cdo();

    /* renamed from: for, reason: not valid java name */
    private qd2 f32779for = new qd2();

    /* renamed from: try, reason: not valid java name */
    private X509Certificate m36626try(w32 w32Var, byte[] bArr) throws CertificateEncodingException {
        Cimport cimport = new Cimport();
        cimport.m3516do(w32Var);
        cimport.m3516do(this.f32782try);
        cimport.m3516do(new Cinstanceof(bArr));
        try {
            return (X509Certificate) this.f32780if.engineGenerateCertificate(new ByteArrayInputStream(new n(cimport).m32764do(ASN1Encoding.DER)));
        } catch (Exception e) {
            throw new Ctry("exception producing certificate object", e);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public Iterator m36627break() {
        return Cthrow.m36596try();
    }

    /* renamed from: case, reason: not valid java name */
    public X509Certificate m36628case(PrivateKey privateKey) throws SignatureException, SecurityException, InvalidKeyException {
        try {
            return m36636goto(privateKey, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME, null);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m36629catch() {
        this.f32779for = new qd2();
    }

    /* renamed from: class, reason: not valid java name */
    public void m36630class(X500Principal x500Principal) {
        try {
            this.f32779for.m6509try(new Ccase(x500Principal.getEncoded()));
        } catch (IOException e) {
            throw new IllegalArgumentException("can't process principal: " + e);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m36631const(Cgoto cgoto) {
        this.f32779for.m6509try(cgoto);
    }

    /* renamed from: do, reason: not valid java name */
    public X509Certificate m36632do(PrivateKey privateKey) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateEncodingException {
        return m36640new(privateKey, null);
    }

    /* renamed from: else, reason: not valid java name */
    public X509Certificate m36633else(PrivateKey privateKey, String str) throws SignatureException, SecurityException, InvalidKeyException, NoSuchProviderException {
        return m36636goto(privateKey, str, null);
    }

    /* renamed from: final, reason: not valid java name */
    public void m36634final(Date date) {
        this.f32779for.m6506if(new t62(date));
    }

    /* renamed from: for, reason: not valid java name */
    public X509Certificate m36635for(PrivateKey privateKey, String str, SecureRandom secureRandom) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException, CertificateEncodingException {
        w32 w32VarM6502do = this.f32779for.m6502do();
        try {
            return m36626try(w32VarM6502do, Cthrow.m36589do(this.f32781new, this.f32777case, str, privateKey, secureRandom, w32VarM6502do));
        } catch (IOException e) {
            throw new Ctry("exception encoding TBS cert", e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public X509Certificate m36636goto(PrivateKey privateKey, String str, SecureRandom secureRandom) throws SignatureException, InvalidKeyException, SecurityException, NoSuchProviderException {
        try {
            return m36635for(privateKey, str, secureRandom);
        } catch (InvalidKeyException e) {
            throw e;
        } catch (NoSuchProviderException e2) {
            throw e2;
        } catch (SignatureException e3) {
            throw e3;
        } catch (GeneralSecurityException e4) {
            throw new SecurityException("exception: " + e4);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public X509Certificate m36637if(PrivateKey privateKey, String str) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException, CertificateEncodingException {
        return m36635for(privateKey, str, null);
    }

    /* renamed from: import, reason: not valid java name */
    public void m36638import(String str) {
        this.f32777case = str;
        try {
            Ccatch ccatchM36586case = Cthrow.m36586case(str);
            this.f32781new = ccatchM36586case;
            b1 b1VarM36585break = Cthrow.m36585break(ccatchM36586case, str);
            this.f32782try = b1VarM36585break;
            this.f32779for.m6503else(b1VarM36585break);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unknown signature type requested");
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m36639native(X500Principal x500Principal) {
        try {
            this.f32779for.m6500catch(new Ccase(x500Principal.getEncoded()));
        } catch (IOException e) {
            throw new IllegalArgumentException("can't process principal: " + e);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public X509Certificate m36640new(PrivateKey privateKey, SecureRandom secureRandom) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateEncodingException {
        w32 w32VarM6502do = this.f32779for.m6502do();
        try {
            return m36626try(w32VarM6502do, Cthrow.m36593if(this.f32781new, this.f32777case, privateKey, secureRandom, w32VarM6502do));
        } catch (IOException e) {
            throw new Ctry("exception encoding TBS cert", e);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m36641public(Cgoto cgoto) {
        this.f32779for.m6500catch(cgoto);
    }

    /* renamed from: super, reason: not valid java name */
    public void m36642super(Date date) {
        this.f32779for.m6505goto(new t62(date));
    }

    /* renamed from: this, reason: not valid java name */
    public X509Certificate m36643this(PrivateKey privateKey, SecureRandom secureRandom) throws SignatureException, SecurityException, InvalidKeyException {
        try {
            return m36636goto(privateKey, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME, secureRandom);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m36644throw(PublicKey publicKey) {
        try {
            this.f32779for.m6501class(Ctry.m33291case(publicKey.getEncoded()));
        } catch (Exception e) {
            throw new IllegalArgumentException("unable to process key - " + e.toString());
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void m36645while(BigInteger bigInteger) {
        if (bigInteger.compareTo(BigInteger.ZERO) <= 0) {
            throw new IllegalArgumentException("serial number must be a positive integer");
        }
        this.f32779for.m6499case(new org.bouncycastle.asn1.Cgoto(bigInteger));
    }
}
