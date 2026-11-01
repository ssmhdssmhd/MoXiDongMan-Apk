package org.bouncycastle.x509;

import android.support.v4.Cimport;
import android.support.v4.b1;
import android.support.v4.fh2;
import android.support.v4.gh2;
import android.support.v4.t62;
import android.support.v4.td2;
import android.support.v4.w5;
import android.support.v4.y90;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.cert.CRLException;
import java.security.cert.X509CRL;
import java.security.cert.X509CRLEntry;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.x509.Ccase;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.provider.Cprotected;

/* renamed from: org.bouncycastle.x509.native, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnative {

    /* renamed from: for, reason: not valid java name */
    private Ccatch f32749for;

    /* renamed from: new, reason: not valid java name */
    private b1 f32751new;

    /* renamed from: try, reason: not valid java name */
    private String f32752try;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f32748do = new w5();

    /* renamed from: if, reason: not valid java name */
    private td2 f32750if = new td2();

    /* renamed from: case, reason: not valid java name */
    private gh2 f32747case = new gh2();

    /* renamed from: org.bouncycastle.x509.native$do, reason: invalid class name */
    public static class Cdo extends CRLException {
        public Throwable cause;

        public Cdo(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    /* renamed from: const, reason: not valid java name */
    private Ccase m36523const() {
        if (!this.f32747case.m2694new()) {
            this.f32750if.m7818catch(this.f32747case.m2692for());
        }
        return this.f32750if.m7824goto();
    }

    /* renamed from: final, reason: not valid java name */
    private X509CRL m36524final(Ccase ccase, byte[] bArr) throws CRLException {
        Cimport cimport = new Cimport();
        cimport.m3516do(ccase);
        cimport.m3516do(this.f32751new);
        cimport.m3516do(new Cinstanceof(bArr));
        return new Cprotected(new org.bouncycastle.asn1.x509.Cdo(new n(cimport)));
    }

    /* renamed from: break, reason: not valid java name */
    public X509CRL m36525break(PrivateKey privateKey, String str) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException, NoSuchProviderException {
        return m36527catch(privateKey, str, null);
    }

    /* renamed from: case, reason: not valid java name */
    public void m36526case(String str, boolean z, byte[] bArr) {
        m36533goto(new Ccatch(str), z, bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public X509CRL m36527catch(PrivateKey privateKey, String str, SecureRandom secureRandom) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException, NoSuchProviderException {
        Ccase ccaseM36523const = m36523const();
        try {
            return m36524final(ccaseM36523const, Cthrow.m36589do(this.f32749for, this.f32752try, str, privateKey, secureRandom, ccaseM36523const));
        } catch (IOException e) {
            throw new Cdo("cannot generate CRL encoding", e);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public X509CRL m36528class(PrivateKey privateKey, SecureRandom secureRandom) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException {
        Ccase ccaseM36523const = m36523const();
        try {
            return m36524final(ccaseM36523const, Cthrow.m36593if(this.f32749for, this.f32752try, privateKey, secureRandom, ccaseM36523const));
        } catch (IOException e) {
            throw new Cdo("cannot generate CRL encoding", e);
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m36529default(Date date) {
        this.f32750if.m7831while(new t62(date));
    }

    /* renamed from: do, reason: not valid java name */
    public void m36530do(X509CRL x509crl) throws CRLException {
        Set<? extends X509CRLEntry> revokedCertificates = x509crl.getRevokedCertificates();
        if (revokedCertificates != null) {
            Iterator<? extends X509CRLEntry> it = revokedCertificates.iterator();
            while (it.hasNext()) {
                try {
                    this.f32750if.m7830try(Csuper.m33129catch(new Celse(it.next().getEncoded()).m33002break()));
                } catch (IOException e) {
                    throw new CRLException("exception processing encoding of CRL: " + e.toString());
                }
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m36531else(Ccatch ccatch, boolean z, ASN1Encodable aSN1Encodable) {
        this.f32747case.m2691do(new Ccatch(ccatch.m32795super()), z, aSN1Encodable);
    }

    /* renamed from: for, reason: not valid java name */
    public void m36532for(BigInteger bigInteger, Date date, int i, Date date2) {
        this.f32750if.m7825if(new Cgoto(bigInteger), new t62(date), i, new org.bouncycastle.asn1.Ccase(date2));
    }

    /* renamed from: goto, reason: not valid java name */
    public void m36533goto(Ccatch ccatch, boolean z, byte[] bArr) {
        this.f32747case.m2693if(new Ccatch(ccatch.m32795super()), z, bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public void m36534if(BigInteger bigInteger, Date date, int i) {
        this.f32750if.m7821do(new Cgoto(bigInteger), new t62(date), i);
    }

    /* renamed from: import, reason: not valid java name */
    public X509CRL m36535import(PrivateKey privateKey, SecureRandom secureRandom) throws SignatureException, SecurityException, InvalidKeyException {
        try {
            return m36547while(privateKey, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME, secureRandom);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    /* renamed from: native, reason: not valid java name */
    public Iterator m36536native() {
        return Cthrow.m36596try();
    }

    /* renamed from: new, reason: not valid java name */
    public void m36537new(BigInteger bigInteger, Date date, fh2 fh2Var) {
        this.f32750if.m7823for(new Cgoto(bigInteger), new t62(date), y90.m9782break(fh2Var));
    }

    /* renamed from: public, reason: not valid java name */
    public void m36538public() {
        this.f32750if = new td2();
        this.f32747case.m2695try();
    }

    /* renamed from: return, reason: not valid java name */
    public void m36539return(X500Principal x500Principal) {
        try {
            this.f32750if.m7820const(new org.bouncycastle.jce.Ccase(x500Principal.getEncoded()));
        } catch (IOException e) {
            throw new IllegalArgumentException("can't process principal: " + e);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m36540static(org.bouncycastle.asn1.x509.Cgoto cgoto) {
        this.f32750if.m7820const(cgoto);
    }

    /* renamed from: super, reason: not valid java name */
    public X509CRL m36541super(PrivateKey privateKey) throws SignatureException, SecurityException, InvalidKeyException {
        try {
            return m36547while(privateKey, org.bouncycastle.jce.provider.Cdo.PROVIDER_NAME, null);
        } catch (NoSuchProviderException unused) {
            throw new SecurityException("BC provider not installed!");
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m36542switch(Date date) {
        this.f32750if.m7822final(new t62(date));
    }

    /* renamed from: this, reason: not valid java name */
    public X509CRL m36543this(PrivateKey privateKey) throws IllegalStateException, NoSuchAlgorithmException, SignatureException, InvalidKeyException, CRLException {
        return m36528class(privateKey, null);
    }

    /* renamed from: throw, reason: not valid java name */
    public X509CRL m36544throw(PrivateKey privateKey, String str) throws SignatureException, SecurityException, InvalidKeyException, NoSuchProviderException {
        return m36547while(privateKey, str, null);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m36545throws(String str) {
        this.f32752try = str;
        try {
            Ccatch ccatchM36586case = Cthrow.m36586case(str);
            this.f32749for = ccatchM36586case;
            b1 b1VarM36585break = Cthrow.m36585break(ccatchM36586case, str);
            this.f32751new = b1VarM36585break;
            this.f32750if.m7829throw(b1VarM36585break);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unknown signature type requested");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m36546try(String str, boolean z, ASN1Encodable aSN1Encodable) {
        m36531else(new Ccatch(str), z, aSN1Encodable);
    }

    /* renamed from: while, reason: not valid java name */
    public X509CRL m36547while(PrivateKey privateKey, String str, SecureRandom secureRandom) throws SignatureException, InvalidKeyException, SecurityException, NoSuchProviderException {
        try {
            return m36527catch(privateKey, str, secureRandom);
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
}
