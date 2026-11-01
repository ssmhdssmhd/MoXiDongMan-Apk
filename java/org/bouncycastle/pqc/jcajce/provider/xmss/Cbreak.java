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
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.xmss.Creturn;
import org.bouncycastle.pqc.crypto.xmss.Cthrows;
import org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends Signature implements StateAwareSignature {

    /* renamed from: do, reason: not valid java name */
    private Digest f32571do;

    /* renamed from: for, reason: not valid java name */
    private Ccatch f32572for;

    /* renamed from: if, reason: not valid java name */
    private Cthrows f32573if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f32574new;

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$case, reason: invalid class name */
    public static class Ccase extends Cbreak {
        public Ccase() {
            super("SHAKE128withXMSSMT-SHAKE128", new dq1(128), new Cthrows());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$do, reason: invalid class name */
    public static class Cdo extends Cbreak {
        public Cdo() {
            super("XMSSMT-SHA256", new org.bouncycastle.crypto.digests.Cdo(), new Cthrows());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$else, reason: invalid class name */
    public static class Celse extends Cbreak {
        public Celse() {
            super("XMSSMT-SHAKE256", new org.bouncycastle.crypto.digests.Cdo(), new Cthrows());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$for, reason: invalid class name */
    public static class Cfor extends Cbreak {
        public Cfor() {
            super("XMSSMT-SHA512", new org.bouncycastle.crypto.digests.Cdo(), new Cthrows());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$goto, reason: invalid class name */
    public static class Cgoto extends Cbreak {
        public Cgoto() {
            super("SHAKE256withXMSSMT-SHAKE256", new dq1(256), new Cthrows());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$if, reason: invalid class name */
    public static class Cif extends Cbreak {
        public Cif() {
            super("SHA256withXMSSMT-SHA256", new yp1(), new Cthrows());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$new, reason: invalid class name */
    public static class Cnew extends Cbreak {
        public Cnew() {
            super("SHA512withXMSSMT-SHA512", new bq1(), new Cthrows());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.break$try, reason: invalid class name */
    public static class Ctry extends Cbreak {
        public Ctry() {
            super("XMSSMT-SHAKE128", new org.bouncycastle.crypto.digests.Cdo(), new Cthrows());
        }
    }

    public Cbreak(String str) {
        super(str);
    }

    public Cbreak(String str, Digest digest, Cthrows cthrows) {
        super(str);
        this.f32571do = digest;
        this.f32573if = cthrows;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof org.bouncycastle.pqc.jcajce.provider.xmss.Cdo)) {
            throw new InvalidKeyException("unknown private key passed to XMSSMT");
        }
        org.bouncycastle.pqc.jcajce.provider.xmss.Cdo cdo = (org.bouncycastle.pqc.jcajce.provider.xmss.Cdo) privateKey;
        CipherParameters keyParams = cdo.getKeyParams();
        this.f32572for = cdo.getTreeDigestOID();
        SecureRandom secureRandom = this.f32574new;
        if (secureRandom != null) {
            keyParams = new cc1(keyParams, secureRandom);
        }
        this.f32571do.reset();
        this.f32573if.init(true, keyParams);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f32574new = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof org.bouncycastle.pqc.jcajce.provider.xmss.Cif)) {
            throw new InvalidKeyException("unknown public key passed to XMSSMT");
        }
        CipherParameters keyParams = ((org.bouncycastle.pqc.jcajce.provider.xmss.Cif) publicKey).getKeyParams();
        this.f32572for = null;
        this.f32571do.reset();
        this.f32573if.init(false, keyParams);
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
            return this.f32573if.generateSignature(org.bouncycastle.pqc.jcajce.provider.xmss.Ctry.m36114if(this.f32571do));
        } catch (Exception e) {
            if (e instanceof IllegalStateException) {
                throw new SignatureException(e.getMessage());
            }
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f32571do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f32571do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f32573if.verifySignature(org.bouncycastle.pqc.jcajce.provider.xmss.Ctry.m36114if(this.f32571do), bArr);
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature
    public PrivateKey getUpdatedPrivateKey() {
        Ccatch ccatch = this.f32572for;
        if (ccatch == null) {
            throw new IllegalStateException("signature object not in a signing state");
        }
        org.bouncycastle.pqc.jcajce.provider.xmss.Cdo cdo = new org.bouncycastle.pqc.jcajce.provider.xmss.Cdo(ccatch, (Creturn) this.f32573if.getUpdatedPrivateKey());
        this.f32572for = null;
        return cdo;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.StateAwareSignature
    public boolean isSigningCapable() {
        return (this.f32572for == null || this.f32573if.m36055do() == 0) ? false : true;
    }
}
