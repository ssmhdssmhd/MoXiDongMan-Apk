package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.cc1;
import android.support.v4.ck1;
import android.support.v4.kk1;
import android.support.v4.qy0;
import android.support.v4.t00;
import android.support.v4.w5;
import android.support.v4.xs;
import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.engines.Creturn;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends SignatureSpi {

    /* renamed from: break, reason: not valid java name */
    private boolean f31199break;

    /* renamed from: case, reason: not valid java name */
    private Digest f31200case;

    /* renamed from: catch, reason: not valid java name */
    private ck1 f31201catch;

    /* renamed from: class, reason: not valid java name */
    private org.bouncycastle.crypto.signers.Celse f31202class;

    /* renamed from: const, reason: not valid java name */
    private boolean f31203const;

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31204do;

    /* renamed from: else, reason: not valid java name */
    private Digest f31205else;

    /* renamed from: for, reason: not valid java name */
    private PSSParameterSpec f31206for;

    /* renamed from: goto, reason: not valid java name */
    private int f31207goto;

    /* renamed from: if, reason: not valid java name */
    private AlgorithmParameters f31208if;

    /* renamed from: new, reason: not valid java name */
    private PSSParameterSpec f31209new;

    /* renamed from: this, reason: not valid java name */
    private byte f31210this;

    /* renamed from: try, reason: not valid java name */
    private AsymmetricBlockCipher f31211try;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$break, reason: invalid class name and collision with other inner class name */
    public static class C0421break extends Cbreak {
        public C0421break() {
            super(new Creturn(), new PSSParameterSpec("SHA3-512", "MGF1", new MGF1ParameterSpec("SHA3-512"), 64, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$case, reason: invalid class name */
    public static class Ccase extends Cbreak {
        public Ccase() {
            super(new Creturn(), new PSSParameterSpec(qy0.f5544this, "MGF1", new MGF1ParameterSpec(qy0.f5544this), 48, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$catch, reason: invalid class name */
    public static class Ccatch extends Cbreak {
        public Ccatch() {
            super(new Creturn(), new PSSParameterSpec("SHA-512(224)", "MGF1", new MGF1ParameterSpec("SHA-512(224)"), 28, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$class, reason: invalid class name */
    public static class Cclass extends Cbreak {
        public Cclass() {
            super(new Creturn(), new PSSParameterSpec("SHA-512(256)", "MGF1", new MGF1ParameterSpec("SHA-512(256)"), 32, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$const, reason: invalid class name */
    public static class Cconst extends Cbreak {
        public Cconst() {
            super(new Creturn(), new PSSParameterSpec("SHA-512", "MGF1", new MGF1ParameterSpec("SHA-512"), 64, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$do, reason: invalid class name */
    public class Cdo implements Digest {

        /* renamed from: do, reason: not valid java name */
        private ByteArrayOutputStream f31212do = new ByteArrayOutputStream();

        /* renamed from: for, reason: not valid java name */
        private boolean f31213for = true;

        /* renamed from: if, reason: not valid java name */
        private Digest f31214if;

        public Cdo(Digest digest) {
            this.f31214if = digest;
        }

        @Override // org.bouncycastle.crypto.Digest
        public int doFinal(byte[] bArr, int i) {
            byte[] byteArray = this.f31212do.toByteArray();
            if (this.f31213for) {
                System.arraycopy(byteArray, 0, bArr, i, byteArray.length);
            } else {
                this.f31214if.update(byteArray, 0, byteArray.length);
                this.f31214if.doFinal(bArr, i);
            }
            reset();
            this.f31213for = !this.f31213for;
            return byteArray.length;
        }

        @Override // org.bouncycastle.crypto.Digest
        public String getAlgorithmName() {
            return "NULL";
        }

        public int getByteLength() {
            return 0;
        }

        @Override // org.bouncycastle.crypto.Digest
        public int getDigestSize() {
            return this.f31214if.getDigestSize();
        }

        @Override // org.bouncycastle.crypto.Digest
        public void reset() {
            this.f31212do.reset();
            this.f31214if.reset();
        }

        @Override // org.bouncycastle.crypto.Digest
        public void update(byte b) {
            this.f31212do.write(b);
        }

        @Override // org.bouncycastle.crypto.Digest
        public void update(byte[] bArr, int i, int i2) {
            this.f31212do.write(bArr, i, i2);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$else, reason: invalid class name */
    public static class Celse extends Cbreak {
        public Celse() {
            super(new Creturn(), new PSSParameterSpec("SHA3-224", "MGF1", new MGF1ParameterSpec("SHA3-224"), 28, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$final, reason: invalid class name */
    public static class Cfinal extends Cbreak {
        public Cfinal() {
            super(new Creturn(), null, true);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$for, reason: invalid class name */
    public static class Cfor extends Cbreak {
        public Cfor() {
            super(new Creturn(), PSSParameterSpec.DEFAULT);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$goto, reason: invalid class name */
    public static class Cgoto extends Cbreak {
        public Cgoto() {
            super(new Creturn(), new PSSParameterSpec("SHA3-256", "MGF1", new MGF1ParameterSpec("SHA3-256"), 32, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$if, reason: invalid class name */
    public static class Cif extends Cbreak {
        public Cif() {
            super(new Creturn(), null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$new, reason: invalid class name */
    public static class Cnew extends Cbreak {
        public Cnew() {
            super(new Creturn(), new PSSParameterSpec(qy0.f5542else, "MGF1", new MGF1ParameterSpec(qy0.f5542else), 28, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$this, reason: invalid class name */
    public static class Cthis extends Cbreak {
        public Cthis() {
            super(new Creturn(), new PSSParameterSpec("SHA3-384", "MGF1", new MGF1ParameterSpec("SHA3-384"), 48, 1));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.break$try, reason: invalid class name */
    public static class Ctry extends Cbreak {
        public Ctry() {
            super(new Creturn(), new PSSParameterSpec("SHA-256", "MGF1", new MGF1ParameterSpec("SHA-256"), 32, 1));
        }
    }

    public Cbreak(AsymmetricBlockCipher asymmetricBlockCipher, PSSParameterSpec pSSParameterSpec) {
        this(asymmetricBlockCipher, pSSParameterSpec, false);
    }

    public Cbreak(AsymmetricBlockCipher asymmetricBlockCipher, PSSParameterSpec pSSParameterSpec, boolean z) {
        this.f31204do = new w5();
        this.f31203const = true;
        this.f31211try = asymmetricBlockCipher;
        this.f31209new = pSSParameterSpec;
        if (pSSParameterSpec == null) {
            this.f31206for = PSSParameterSpec.DEFAULT;
        } else {
            this.f31206for = pSSParameterSpec;
        }
        this.f31205else = t00.m7670do(this.f31206for.getDigestAlgorithm());
        this.f31207goto = this.f31206for.getSaltLength();
        this.f31210this = m34716do(this.f31206for.getTrailerField());
        this.f31199break = z;
        m34717if();
    }

    /* renamed from: do, reason: not valid java name */
    private byte m34716do(int i) {
        if (i == 1) {
            return org.bouncycastle.crypto.signers.Celse.f30385final;
        }
        throw new IllegalArgumentException("unknown trailer field");
    }

    /* renamed from: if, reason: not valid java name */
    private void m34717if() {
        this.f31200case = this.f31199break ? new Cdo(this.f31205else) : this.f31205else;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f31208if == null && this.f31206for != null) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.f31204do.createAlgorithmParameters("PSS");
                this.f31208if = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.f31206for);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f31208if;
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof RSAPrivateKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPrivateKey instance");
        }
        this.f31201catch = kk1.m4430for((RSAPrivateKey) privateKey);
        org.bouncycastle.crypto.signers.Celse celse = new org.bouncycastle.crypto.signers.Celse(this.f31211try, this.f31200case, this.f31205else, this.f31207goto, this.f31210this);
        this.f31202class = celse;
        celse.init(true, this.f31201catch);
        this.f31203const = true;
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        if (!(privateKey instanceof RSAPrivateKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPrivateKey instance");
        }
        this.f31201catch = kk1.m4430for((RSAPrivateKey) privateKey);
        org.bouncycastle.crypto.signers.Celse celse = new org.bouncycastle.crypto.signers.Celse(this.f31211try, this.f31200case, this.f31205else, this.f31207goto, this.f31210this);
        this.f31202class = celse;
        celse.init(true, new cc1(this.f31201catch, secureRandom));
        this.f31203const = true;
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof RSAPublicKey)) {
            throw new InvalidKeyException("Supplied key is not a RSAPublicKey instance");
        }
        this.f31201catch = kk1.m4432new((RSAPublicKey) publicKey);
        org.bouncycastle.crypto.signers.Celse celse = new org.bouncycastle.crypto.signers.Celse(this.f31211try, this.f31200case, this.f31205else, this.f31207goto, this.f31210this);
        this.f31202class = celse;
        celse.init(false, this.f31201catch);
        this.f31203const = true;
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        org.bouncycastle.crypto.signers.Celse celse;
        boolean z;
        if (algorithmParameterSpec == null && (algorithmParameterSpec = this.f31209new) == null) {
            return;
        }
        if (!this.f31203const) {
            throw new ProviderException("cannot call setParameter in the middle of update");
        }
        if (!(algorithmParameterSpec instanceof PSSParameterSpec)) {
            throw new InvalidAlgorithmParameterException("Only PSSParameterSpec supported");
        }
        PSSParameterSpec pSSParameterSpec = (PSSParameterSpec) algorithmParameterSpec;
        PSSParameterSpec pSSParameterSpec2 = this.f31209new;
        if (pSSParameterSpec2 != null && !t00.m7671for(pSSParameterSpec2.getDigestAlgorithm(), pSSParameterSpec.getDigestAlgorithm())) {
            throw new InvalidAlgorithmParameterException("parameter must be using " + this.f31209new.getDigestAlgorithm());
        }
        if (!pSSParameterSpec.getMGFAlgorithm().equalsIgnoreCase("MGF1") && !pSSParameterSpec.getMGFAlgorithm().equals(PKCSObjectIdentifiers.id_mgf1.m32795super())) {
            throw new InvalidAlgorithmParameterException("unknown mask generation function specified");
        }
        if (!(pSSParameterSpec.getMGFParameters() instanceof MGF1ParameterSpec)) {
            throw new InvalidAlgorithmParameterException("unknown MGF parameters");
        }
        MGF1ParameterSpec mGF1ParameterSpec = (MGF1ParameterSpec) pSSParameterSpec.getMGFParameters();
        if (!t00.m7671for(mGF1ParameterSpec.getDigestAlgorithm(), pSSParameterSpec.getDigestAlgorithm())) {
            throw new InvalidAlgorithmParameterException("digest algorithm for MGF should be the same as for PSS parameters.");
        }
        Digest digestM7670do = t00.m7670do(mGF1ParameterSpec.getDigestAlgorithm());
        if (digestM7670do == null) {
            throw new InvalidAlgorithmParameterException("no match on MGF digest algorithm: " + mGF1ParameterSpec.getDigestAlgorithm());
        }
        this.f31208if = null;
        this.f31206for = pSSParameterSpec;
        this.f31205else = digestM7670do;
        this.f31207goto = pSSParameterSpec.getSaltLength();
        this.f31210this = m34716do(this.f31206for.getTrailerField());
        m34717if();
        if (this.f31201catch != null) {
            this.f31202class = new org.bouncycastle.crypto.signers.Celse(this.f31211try, this.f31200case, this.f31205else, this.f31207goto, this.f31210this);
            if (this.f31201catch.m33do()) {
                celse = this.f31202class;
                z = true;
            } else {
                celse = this.f31202class;
                z = false;
            }
            celse.init(z, this.f31201catch);
        }
    }

    @Override // java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        this.f31203const = true;
        try {
            return this.f31202class.generateSignature();
        } catch (xs e) {
            throw new SignatureException(e.getMessage());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31202class.update(b);
        this.f31203const = false;
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31202class.update(bArr, i, i2);
        this.f31203const = false;
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        this.f31203const = true;
        return this.f31202class.verifySignature(bArr);
    }
}
