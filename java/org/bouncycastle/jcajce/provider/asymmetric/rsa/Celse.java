package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.kk1;
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

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends SignatureSpi {

    /* renamed from: do, reason: not valid java name */
    private org.bouncycastle.crypto.signers.Ccase f31222do;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$break, reason: invalid class name */
    public static class Cbreak extends Celse {
        public Cbreak() {
            super(new xf2(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$case, reason: invalid class name */
    public static class Ccase extends Celse {
        public Ccase() {
            super(u00.m8179try(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$do, reason: invalid class name */
    public static class Cdo extends Celse {
        public Cdo() {
            super(u00.m8172do(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$else, reason: invalid class name and collision with other inner class name */
    public static class C0424else extends Celse {
        public C0424else() {
            super(u00.m8168break(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$for, reason: invalid class name */
    public static class Cfor extends Celse {
        public Cfor() {
            super(u00.m8176if(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$goto, reason: invalid class name */
    public static class Cgoto extends Celse {
        public Cgoto() {
            super(u00.m8170catch(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$if, reason: invalid class name */
    public static class Cif extends Celse {
        public Cif() {
            super(new sj1(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$new, reason: invalid class name */
    public static class Cnew extends Celse {
        public Cnew() {
            super(u00.m8174for(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$this, reason: invalid class name */
    public static class Cthis extends Celse {
        public Cthis() {
            super(u00.m8171class(), new Creturn());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.else$try, reason: invalid class name */
    public static class Ctry extends Celse {
        public Ctry() {
            super(u00.m8177new(), new Creturn());
        }
    }

    public Celse(Digest digest, AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f31222do = new org.bouncycastle.crypto.signers.Ccase(asymmetricBlockCipher, digest, true);
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        this.f31222do.init(true, kk1.m4430for((RSAPrivateKey) privateKey));
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        this.f31222do.init(false, kk1.m4432new((RSAPublicKey) publicKey));
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
            return this.f31222do.generateSignature();
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31222do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31222do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f31222do.verifySignature(bArr);
    }
}
