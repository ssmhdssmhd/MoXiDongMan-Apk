package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.bq1;
import android.support.v4.cc1;
import android.support.v4.dq1;
import android.support.v4.yp1;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.xmss.Cpackage;
import org.bouncycastle.pqc.crypto.xmss.Cstrictfp;
import org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends Signature implements StateAwareSignature {

    /* renamed from: do, reason: not valid java name */
    private Digest f32575do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f32576for;

    /* renamed from: if, reason: not valid java name */
    private Cstrictfp f32577if;

    /* renamed from: new, reason: not valid java name */
    private org.bouncycastle.asn1.Ccatch f32578new;

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$case, reason: invalid class name */
    public static class Ccase extends Ccatch {
        public Ccase() {
            super("SHAKE128withXMSSMT-SHAKE128", new dq1(128), new Cstrictfp());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$do, reason: invalid class name */
    public static class Cdo extends Ccatch {
        public Cdo() {
            super("XMSS-SHA256", new org.bouncycastle.crypto.digests.Cdo(), new Cstrictfp());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$else, reason: invalid class name */
    public static class Celse extends Ccatch {
        public Celse() {
            super("XMSS-SHAKE256", new org.bouncycastle.crypto.digests.Cdo(), new Cstrictfp());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$for, reason: invalid class name */
    public static class Cfor extends Ccatch {
        public Cfor() {
            super("XMSS-SHA512", new org.bouncycastle.crypto.digests.Cdo(), new Cstrictfp());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$goto, reason: invalid class name */
    public static class Cgoto extends Ccatch {
        public Cgoto() {
            super("SHAKE256withXMSS-SHAKE256", new dq1(256), new Cstrictfp());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$if, reason: invalid class name */
    public static class Cif extends Ccatch {
        public Cif() {
            super("SHA256withXMSS-SHA256", new yp1(), new Cstrictfp());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$new, reason: invalid class name */
    public static class Cnew extends Ccatch {
        public Cnew() {
            super("SHA512withXMSS-SHA512", new bq1(), new Cstrictfp());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.catch$try, reason: invalid class name */
    public static class Ctry extends Ccatch {
        public Ctry() {
            super("XMSS-SHAKE128", new org.bouncycastle.crypto.digests.Cdo(), new Cstrictfp());
        }
    }

    public Ccatch(String str) {
        super(str);
    }

    public Ccatch(String str, Digest digest, Cstrictfp cstrictfp) {
        super(str);
        this.f32575do = digest;
        this.f32577if = cstrictfp;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof org.bouncycastle.pqc.jcajce.provider.xmss.Cfor)) {
            throw new InvalidKeyException("unknown private key passed to XMSS");
        }
        org.bouncycastle.pqc.jcajce.provider.xmss.Cfor cfor = (org.bouncycastle.pqc.jcajce.provider.xmss.Cfor) privateKey;
        CipherParameters keyParams = cfor.getKeyParams();
        this.f32578new = cfor.getTreeDigestOID();
        SecureRandom secureRandom = this.f32576for;
        if (secureRandom != null) {
            keyParams = new cc1(keyParams, secureRandom);
        }
        this.f32575do.reset();
        this.f32577if.init(true, keyParams);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f32576for = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof org.bouncycastle.pqc.jcajce.provider.xmss.Cnew)) {
            throw new InvalidKeyException("unknown public key passed to XMSS");
        }
        CipherParameters keyParams = ((org.bouncycastle.pqc.jcajce.provider.xmss.Cnew) publicKey).getKeyParams();
        this.f32578new = null;
        this.f32575do.reset();
        this.f32577if.init(false, keyParams);
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f32577if.generateSignature(org.bouncycastle.pqc.jcajce.provider.xmss.Ctry.m36114if(this.f32575do));
        } catch (Exception e) {
            if (e instanceof IllegalStateException) {
                throw new SignatureException(e.getMessage());
            }
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f32575do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f32575do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f32577if.verifySignature(org.bouncycastle.pqc.jcajce.provider.xmss.Ctry.m36114if(this.f32575do), bArr);
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature
    public PrivateKey getUpdatedPrivateKey() {
        org.bouncycastle.asn1.Ccatch ccatch = this.f32578new;
        if (ccatch == null) {
            throw new IllegalStateException("signature object not in a signing state");
        }
        org.bouncycastle.pqc.jcajce.provider.xmss.Cfor cfor = new org.bouncycastle.pqc.jcajce.provider.xmss.Cfor(ccatch, (Cpackage) this.f32577if.getUpdatedPrivateKey());
        this.f32578new = null;
        return cfor;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature
    public boolean isSigningCapable() {
        return (this.f32578new == null || this.f32577if.m35998do() == 0) ? false : true;
    }
}
