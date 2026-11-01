package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.kk1;
import android.support.v4.rj1;
import android.support.v4.sj1;
import android.support.v4.u00;
import android.support.v4.xf2;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.engines.Creturn;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends SignatureSpi {

    /* renamed from: do, reason: not valid java name */
    private org.bouncycastle.crypto.signers.Ccatch f31219do;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$break, reason: invalid class name */
    public static class Cbreak extends Ccatch {
        public Cbreak() {
            super(new xf2(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$case, reason: invalid class name */
    public static class Ccase extends Ccatch {
        public Ccase() {
            super(u00.m8179try(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$do, reason: invalid class name */
    public static class Cdo extends Ccatch {
        public Cdo() {
            super(new rj1(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$else, reason: invalid class name */
    public static class Celse extends Ccatch {
        public Celse() {
            super(u00.m8168break(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$for, reason: invalid class name */
    public static class Cfor extends Ccatch {
        public Cfor() {
            super(u00.m8176if(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$goto, reason: invalid class name */
    public static class Cgoto extends Ccatch {
        public Cgoto() {
            super(u00.m8170catch(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$if, reason: invalid class name */
    public static class Cif extends Ccatch {
        public Cif() {
            super(new sj1(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$new, reason: invalid class name */
    public static class Cnew extends Ccatch {
        public Cnew() {
            super(u00.m8174for(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$this, reason: invalid class name */
    public static class Cthis extends Ccatch {
        public Cthis() {
            super(u00.m8171class(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.catch$try, reason: invalid class name */
    public static class Ctry extends Ccatch {
        public Ctry() {
            super(u00.m8177new(), new Creturn());
        }
    }

    public Ccatch(Digest digest, AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f31219do = new org.bouncycastle.crypto.signers.Ccatch(asymmetricBlockCipher, digest);
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        this.f31219do.init(true, kk1.m4430for((RSAPrivateKey) privateKey));
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        this.f31219do.init(false, kk1.m4432new((RSAPublicKey) publicKey));
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
            return this.f31219do.generateSignature();
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31219do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31219do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f31219do.verifySignature(bArr);
    }
}
