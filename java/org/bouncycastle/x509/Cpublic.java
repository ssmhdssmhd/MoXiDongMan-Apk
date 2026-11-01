package org.bouncycastle.x509;

import android.support.v4.Cimport;
import android.support.v4.b1;
import android.support.v4.eh2;
import android.support.v4.gh2;
import android.support.v4.t62;
import android.support.v4.ud2;
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
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Iterator;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jcajce.provider.asymmetric.x509.Cdo;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.Ccase;

/* renamed from: org.bouncycastle.x509.public, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cpublic {

    /* renamed from: case, reason: not valid java name */
    private String f32757case;

    /* renamed from: new, reason: not valid java name */
    private Ccatch f32762new;

    /* renamed from: try, reason: not valid java name */
    private b1 f32763try;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f32758do = new w5();

    /* renamed from: if, reason: not valid java name */
    private final Cdo f32761if = new Cdo();

    /* renamed from: for, reason: not valid java name */
    private ud2 f32760for = new ud2();

    /* renamed from: else, reason: not valid java name */
    private gh2 f32759else = new gh2();

    /* renamed from: class, reason: not valid java name */
    private X509Certificate m36552class(w32 w32Var, byte[] bArr) throws Exception {
        Cimport cimport = new Cimport();
        cimport.m3516do(w32Var);
        cimport.m3516do(this.f32763try);
        cimport.m3516do(new Cinstanceof(bArr));
        return (X509Certificate) this.f32761if.engineGenerateCertificate(new ByteArrayInputStream(new n(cimport).m32764do(ASN1Encoding.DER)));
    }

    /* renamed from: const, reason: not valid java name */
    private w32 m36553const() {
        if (!this.f32759else.m2694new()) {
            this.f32760for.m8395try(this.f32759else.m2692for());
        }
        return this.f32760for.m8385do();
    }

    /* renamed from: try, reason: not valid java name */
    private Cinstanceof m36554try(boolean[] zArr) {
        byte[] bArr = new byte[(zArr.length + 7) / 8];
        for (int i = 0; i != zArr.length; i++) {
            int i2 = i / 8;
            bArr[i2] = (byte) (bArr[i2] | (zArr[i] ? 1 << (7 - (i % 8)) : 0));
        }
        int length = zArr.length % 8;
        return length == 0 ? new Cinstanceof(bArr) : new Cinstanceof(bArr, 8 - length);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m36555abstract(boolean[] zArr) {
        this.f32760for.m8394throw(m36554try(zArr));
    }

    /* renamed from: break, reason: not valid java name */
    public X509Certificate m36556break(PrivateKey privateKey, String str, SecureRandom secureRandom) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException, CertificateEncodingException {
        w32 w32VarM36553const = m36553const();
        try {
            try {
                return m36552class(w32VarM36553const, Cthrow.m36589do(this.f32762new, this.f32757case, str, privateKey, secureRandom, w32VarM36553const));
            } catch (Exception e) {
                throw new Ctry("exception producing certificate object", e);
            }
        } catch (IOException e2) {
            throw new Ctry("exception encoding TBS cert", e2);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m36557case(String str, boolean z, X509Certificate x509Certificate) throws CertificateParsingException {
        byte[] extensionValue = x509Certificate.getExtensionValue(str);
        if (extensionValue != null) {
            try {
                m36560do(str, z, eh2.m1921do(extensionValue));
            } catch (IOException e) {
                throw new CertificateParsingException(e.toString());
            }
        } else {
            throw new CertificateParsingException("extension " + str + " not present");
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public X509Certificate m36558catch(PrivateKey privateKey, SecureRandom secureRandom) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateEncodingException {
        w32 w32VarM36553const = m36553const();
        try {
            try {
                return m36552class(w32VarM36553const, Cthrow.m36593if(this.f32762new, this.f32757case, privateKey, secureRandom, w32VarM36553const));
            } catch (Exception e) {
                throw new Ctry("exception producing certificate object", e);
            }
        } catch (IOException e2) {
            throw new Ctry("exception encoding TBS cert", e2);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m36559default(PublicKey publicKey) throws IllegalArgumentException {
        try {
            this.f32760for.m8392super(Ctry.m33291case(new Celse(publicKey.getEncoded()).m33002break()));
        } catch (Exception e) {
            throw new IllegalArgumentException("unable to process key - " + e.toString());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m36560do(String str, boolean z, ASN1Encodable aSN1Encodable) {
        m36565for(new Ccatch(str), z, aSN1Encodable);
    }

    /* renamed from: else, reason: not valid java name */
    public void m36561else(Ccatch ccatch, boolean z, X509Certificate x509Certificate) throws CertificateParsingException {
        m36557case(ccatch.m32795super(), z, x509Certificate);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m36562extends(BigInteger bigInteger) {
        if (bigInteger.compareTo(BigInteger.ZERO) <= 0) {
            throw new IllegalArgumentException("serial number must be a positive integer");
        }
        this.f32760for.m8393this(new Cgoto(bigInteger));
    }

    /* renamed from: final, reason: not valid java name */
    public X509Certificate m36563final(PrivateKey privateKey) throws SignatureException, SecurityException, InvalidKeyException {
        try {
            return m36579throw(privateKey, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME, null);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public void m36564finally(String str) {
        this.f32757case = str;
        try {
            Ccatch ccatchM36586case = Cthrow.m36586case(str);
            this.f32762new = ccatchM36586case;
            b1 b1VarM36585break = Cthrow.m36585break(ccatchM36586case, str);
            this.f32763try = b1VarM36585break;
            this.f32760for.m8380break(b1VarM36585break);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unknown signature type requested: " + str);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m36565for(Ccatch ccatch, boolean z, ASN1Encodable aSN1Encodable) {
        this.f32759else.m2691do(new Ccatch(ccatch.m32795super()), z, aSN1Encodable);
    }

    /* renamed from: goto, reason: not valid java name */
    public X509Certificate m36566goto(PrivateKey privateKey) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateEncodingException {
        return m36558catch(privateKey, null);
    }

    /* renamed from: if, reason: not valid java name */
    public void m36567if(String str, boolean z, byte[] bArr) {
        m36570new(new Ccatch(str), z, bArr);
    }

    /* renamed from: import, reason: not valid java name */
    public Iterator m36568import() {
        return Cthrow.m36596try();
    }

    /* renamed from: native, reason: not valid java name */
    public void m36569native() {
        this.f32760for = new ud2();
        this.f32759else.m2695try();
    }

    /* renamed from: new, reason: not valid java name */
    public void m36570new(Ccatch ccatch, boolean z, byte[] bArr) {
        this.f32759else.m2693if(new Ccatch(ccatch.m32795super()), z, bArr);
    }

    /* renamed from: package, reason: not valid java name */
    public void m36571package(X500Principal x500Principal) {
        try {
            this.f32760for.m8387final(new Ccase(x500Principal.getEncoded()));
        } catch (IOException e) {
            throw new IllegalArgumentException("can't process principal: " + e);
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m36572private(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f32760for.m8387final(cgoto);
    }

    /* renamed from: public, reason: not valid java name */
    public void m36573public(X500Principal x500Principal) {
        try {
            this.f32760for.m8386else(new Ccase(x500Principal.getEncoded()));
        } catch (IOException e) {
            throw new IllegalArgumentException("can't process principal: " + e);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m36574return(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f32760for.m8386else(cgoto);
    }

    /* renamed from: static, reason: not valid java name */
    public void m36575static(boolean[] zArr) {
        this.f32760for.m8389goto(m36554try(zArr));
    }

    /* renamed from: super, reason: not valid java name */
    public X509Certificate m36576super(PrivateKey privateKey, String str) throws SignatureException, SecurityException, InvalidKeyException, NoSuchProviderException {
        return m36579throw(privateKey, str, null);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m36577switch(Date date) {
        this.f32760for.m8390if(new t62(date));
    }

    /* renamed from: this, reason: not valid java name */
    public X509Certificate m36578this(PrivateKey privateKey, String str) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, NoSuchProviderException, CertificateEncodingException {
        return m36556break(privateKey, str, null);
    }

    /* renamed from: throw, reason: not valid java name */
    public X509Certificate m36579throw(PrivateKey privateKey, String str, SecureRandom secureRandom) throws SignatureException, InvalidKeyException, SecurityException, NoSuchProviderException {
        try {
            return m36556break(privateKey, str, secureRandom);
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

    /* renamed from: throws, reason: not valid java name */
    public void m36580throws(Date date) {
        this.f32760for.m8382catch(new t62(date));
    }

    /* renamed from: while, reason: not valid java name */
    public X509Certificate m36581while(PrivateKey privateKey, SecureRandom secureRandom) throws SignatureException, SecurityException, InvalidKeyException {
        try {
            return m36579throw(privateKey, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME, secureRandom);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }
}
