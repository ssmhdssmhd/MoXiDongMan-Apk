package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.eu;
import android.support.v4.gq0;
import android.support.v4.iu;
import android.support.v4.ld2;
import android.support.v4.lq;
import android.support.v4.lu;
import android.support.v4.mu;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.ru;
import android.support.v4.rw0;
import android.support.v4.sw0;
import android.support.v4.tu;
import android.support.v4.u00;
import android.support.v4.uu;
import android.support.v4.vu;
import android.support.v4.wu;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.DerivationFunction;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends org.bouncycastle.jcajce.provider.asymmetric.util.Cdo {

    /* renamed from: break, reason: not valid java name */
    private final BasicAgreement f31008break;

    /* renamed from: catch, reason: not valid java name */
    private tu f31009catch;

    /* renamed from: class, reason: not valid java name */
    private sw0 f31010class;

    /* renamed from: const, reason: not valid java name */
    private BigInteger f31011const;

    /* renamed from: final, reason: not valid java name */
    private BigInteger f31012final;

    /* renamed from: super, reason: not valid java name */
    private BigInteger f31013super;

    /* renamed from: this, reason: not valid java name */
    private final wu f31014this;

    /* renamed from: throw, reason: not valid java name */
    private byte[] f31015throw;

    /* renamed from: while, reason: not valid java name */
    private static final BigInteger f31007while = BigInteger.valueOf(1);

    /* renamed from: import, reason: not valid java name */
    private static final BigInteger f31006import = BigInteger.valueOf(2);

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$abstract, reason: invalid class name */
    public static class Cabstract extends Celse {
        public Cabstract() {
            super("MQVwithSHA512CKDF", new rw0(), new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$break, reason: invalid class name */
    public static class Cbreak extends Celse {
        public Cbreak() {
            super("DHUwithSHA512KDF", new wu(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$case, reason: invalid class name */
    public static class Ccase extends Celse {
        public Ccase() {
            super("DHUwithSHA256KDF", new wu(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$catch, reason: invalid class name */
    public static class Ccatch extends Celse {
        public Ccatch() {
            super("DHwithRFC2631KDF", new iu(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$class, reason: invalid class name */
    public static class Cclass extends Celse {
        public Cclass() {
            super("DHwithSHA1CKDF", new lq(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$const, reason: invalid class name */
    public static class Cconst extends Celse {
        public Cconst() {
            super("DHwithSHA1CKDF", new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$continue, reason: invalid class name */
    public static class Ccontinue extends Celse {
        public Ccontinue() {
            super("MQVwithSHA512KDF", new rw0(), new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$default, reason: invalid class name */
    public static class Cdefault extends Celse {
        public Cdefault() {
            super("MQVwithSHA224KDF", new rw0(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$do, reason: invalid class name */
    public static class Cdo extends Celse {
        public Cdo() {
            super("DHUwithSHA1CKDF", new wu(), new lq(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$else, reason: invalid class name and collision with other inner class name */
    public static class C0414else extends Celse {
        public C0414else() {
            super("DHUwithSHA384CKDF", new wu(), new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$extends, reason: invalid class name */
    public static class Cextends extends Celse {
        public Cextends() {
            super("MQVwithSHA256CKDF", new rw0(), new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$final, reason: invalid class name */
    public static class Cfinal extends Celse {
        public Cfinal() {
            super("DHwithSHA224CKDF", new lq(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$finally, reason: invalid class name */
    public static class Cfinally extends Celse {
        public Cfinally() {
            super("MQVwithSHA256KDF", new rw0(), new gq0(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$for, reason: invalid class name */
    public static class Cfor extends Celse {
        public Cfor() {
            super("DHUwithSHA224CKDF", new wu(), new lq(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$goto, reason: invalid class name */
    public static class Cgoto extends Celse {
        public Cgoto() {
            super("DHUwithSHA384KDF", new wu(), new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$if, reason: invalid class name */
    public static class Cif extends Celse {
        public Cif() {
            super("DHUwithSHA1KDF", new wu(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$import, reason: invalid class name */
    public static class Cimport extends Celse {
        public Cimport() {
            super("DHwithSHA384CKDF", new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$native, reason: invalid class name */
    public static class Cnative extends Celse {
        public Cnative() {
            super("DHwithSHA384KDF", new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$new, reason: invalid class name */
    public static class Cnew extends Celse {
        public Cnew() {
            super("DHUwithSHA224KDF", new wu(), new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$package, reason: invalid class name */
    public static class Cpackage extends Celse {
        public Cpackage() {
            super("MQVwithSHA384CKDF", new rw0(), new lq(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$private, reason: invalid class name */
    public static class Cprivate extends Celse {
        public Cprivate() {
            super("MQVwithSHA384KDF", new rw0(), new gq0(u00.m8179try()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$public, reason: invalid class name */
    public static class Cpublic extends Celse {
        public Cpublic() {
            super("DHwithSHA512CKDF", new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$return, reason: invalid class name */
    public static class Creturn extends Celse {
        public Creturn() {
            super("DHwithSHA512KDF", new gq0(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$static, reason: invalid class name */
    public static class Cstatic extends Celse {
        public Cstatic() {
            super("MQVwithSHA1CKDF", new rw0(), new lq(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$super, reason: invalid class name */
    public static class Csuper extends Celse {
        public Csuper() {
            super("DHwithSHA224CKDF", new gq0(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$switch, reason: invalid class name */
    public static class Cswitch extends Celse {
        public Cswitch() {
            super("MQVwithSHA1KDF", new rw0(), new gq0(u00.m8176if()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$this, reason: invalid class name */
    public static class Cthis extends Celse {
        public Cthis() {
            super("DHUwithSHA512CKDF", new wu(), new lq(u00.m8168break()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$throw, reason: invalid class name */
    public static class Cthrow extends Celse {
        public Cthrow() {
            super("DHwithSHA256CKDF", new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$throws, reason: invalid class name */
    public static class Cthrows extends Celse {
        public Cthrows() {
            super("MQVwithSHA224CKDF", new rw0(), new lq(u00.m8174for()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$try, reason: invalid class name */
    public static class Ctry extends Celse {
        public Ctry() {
            super("DHUwithSHA256CKDF", new wu(), new lq(u00.m8177new()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.else$while, reason: invalid class name */
    public static class Cwhile extends Celse {
        public Cwhile() {
            super("DHwithSHA256CKDF", new gq0(u00.m8177new()));
        }
    }

    public Celse() {
        this("Diffie-Hellman", null);
    }

    public Celse(String str, wu wuVar, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.f31014this = wuVar;
        this.f31008break = null;
    }

    public Celse(String str, BasicAgreement basicAgreement, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.f31014this = null;
        this.f31008break = basicAgreement;
    }

    public Celse(String str, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.f31014this = null;
        this.f31008break = null;
    }

    /* renamed from: else, reason: not valid java name */
    private pu m34636else(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof DHPrivateKey)) {
            throw new InvalidKeyException("private key not a DHPrivateKey");
        }
        if (privateKey instanceof org.bouncycastle.jcajce.provider.asymmetric.dh.Cfor) {
            return ((org.bouncycastle.jcajce.provider.asymmetric.dh.Cfor) privateKey).engineGetKeyParameters();
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) privateKey;
        DHParameterSpec params = dHPrivateKey.getParams();
        return new pu(dHPrivateKey.getX(), new ou(params.getP(), params.getG(), null, params.getL()));
    }

    /* renamed from: goto, reason: not valid java name */
    private ru m34637goto(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof DHPublicKey)) {
            throw new InvalidKeyException("public key not a DHPublicKey");
        }
        if (publicKey instanceof org.bouncycastle.jcajce.provider.asymmetric.dh.Cnew) {
            return ((org.bouncycastle.jcajce.provider.asymmetric.dh.Cnew) publicKey).engineGetKeyParameters();
        }
        DHPublicKey dHPublicKey = (DHPublicKey) publicKey;
        DHParameterSpec params = dHPublicKey.getParams();
        return params instanceof eu ? new ru(dHPublicKey.getY(), ((eu) params).m2021do()) : new ru(dHPublicKey.getY(), new ou(params.getP(), params.getG(), null, params.getL()));
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m34638case(BigInteger bigInteger) {
        int iBitLength = (this.f31012final.bitLength() + 7) / 8;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == iBitLength) {
            return byteArray;
        }
        if (byteArray[0] != 0 || byteArray.length != iBitLength + 1) {
            byte[] bArr = new byte[iBitLength];
            System.arraycopy(byteArray, 0, bArr, iBitLength - byteArray.length, byteArray.length);
            return bArr;
        }
        int length = byteArray.length - 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(byteArray, 1, bArr2, 0, length);
        return bArr2;
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo
    /* renamed from: do */
    public byte[] mo9261do() {
        return this.f31015throw;
    }

    @Override // javax.crypto.KeyAgreementSpi
    public Key engineDoPhase(Key key, boolean z) throws IllegalStateException, InvalidKeyException {
        if (this.f31011const == null) {
            throw new IllegalStateException("Diffie-Hellman not initialised.");
        }
        if (!(key instanceof DHPublicKey)) {
            throw new InvalidKeyException("DHKeyAgreement doPhase requires DHPublicKey");
        }
        DHPublicKey dHPublicKey = (DHPublicKey) key;
        if (!dHPublicKey.getParams().getG().equals(this.f31013super) || !dHPublicKey.getParams().getP().equals(this.f31012final)) {
            throw new InvalidKeyException("DHPublicKey not for this KeyAgreement!");
        }
        BigInteger y = dHPublicKey.getY();
        if (y != null && y.compareTo(f31006import) >= 0) {
            BigInteger bigInteger = this.f31012final;
            BigInteger bigInteger2 = f31007while;
            if (y.compareTo(bigInteger.subtract(bigInteger2)) < 0) {
                if (this.f31014this != null) {
                    if (!z) {
                        throw new IllegalStateException("unified Diffie-Hellman can use only two key pairs");
                    }
                    this.f31015throw = this.f31014this.m9284do(new vu(m34637goto((PublicKey) key), m34637goto(this.f31009catch.m8128for())));
                    return null;
                }
                if (this.f31008break != null) {
                    if (!z) {
                        throw new IllegalStateException("MQV Diffie-Hellman can use only two key pairs");
                    }
                    this.f31015throw = m34638case(this.f31008break.calculateAgreement(new mu(m34637goto((PublicKey) key), m34637goto(this.f31010class.m7623for()))));
                    return null;
                }
                BigInteger bigIntegerModPow = y.modPow(this.f31011const, this.f31012final);
                if (bigIntegerModPow.compareTo(bigInteger2) == 0) {
                    throw new InvalidKeyException("Shared key can't be 1");
                }
                this.f31015throw = m34638case(bigIntegerModPow);
                if (z) {
                    return null;
                }
                return new org.bouncycastle.jcajce.provider.asymmetric.dh.Cnew(bigIntegerModPow, dHPublicKey.getParams());
            }
        }
        throw new InvalidKeyException("Invalid DH PublicKey");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo, javax.crypto.KeyAgreementSpi
    public int engineGenerateSecret(byte[] bArr, int i) throws IllegalStateException, ShortBufferException {
        if (this.f31011const != null) {
            return super.engineGenerateSecret(bArr, i);
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo, javax.crypto.KeyAgreementSpi
    public SecretKey engineGenerateSecret(String str) throws NoSuchAlgorithmException {
        if (this.f31011const != null) {
            return str.equals("TlsPremasterSecret") ? new SecretKeySpec(org.bouncycastle.jcajce.provider.asymmetric.util.Cdo.m34728try(this.f31015throw), str) : super.engineGenerateSecret(str);
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // org.bouncycastle.jcajce.provider.asymmetric.util.Cdo, javax.crypto.KeyAgreementSpi
    public byte[] engineGenerateSecret() throws IllegalStateException {
        if (this.f31011const != null) {
            return super.engineGenerateSecret();
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        if (!(key instanceof DHPrivateKey)) {
            throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
        this.f31012final = dHPrivateKey.getParams().getP();
        this.f31013super = dHPrivateKey.getParams().getG();
        BigInteger x = dHPrivateKey.getX();
        this.f31011const = x;
        this.f31015throw = m34638case(x);
    }

    @Override // javax.crypto.KeyAgreementSpi
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        BasicAgreement basicAgreement;
        lu luVar;
        wu wuVar;
        uu uuVar;
        if (!(key instanceof DHPrivateKey)) {
            throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey for initialisation");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
        if (algorithmParameterSpec == null) {
            this.f31012final = dHPrivateKey.getParams().getP();
            this.f31013super = dHPrivateKey.getParams().getG();
        } else if (algorithmParameterSpec instanceof DHParameterSpec) {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
            this.f31012final = dHParameterSpec.getP();
            this.f31013super = dHParameterSpec.getG();
            this.f31009catch = null;
            this.f31246for = null;
        } else if (algorithmParameterSpec instanceof tu) {
            if (this.f31014this == null) {
                throw new InvalidAlgorithmParameterException("agreement algorithm not DHU based");
            }
            this.f31012final = dHPrivateKey.getParams().getP();
            this.f31013super = dHPrivateKey.getParams().getG();
            tu tuVar = (tu) algorithmParameterSpec;
            this.f31009catch = tuVar;
            this.f31246for = tuVar.m8130new();
            if (this.f31009catch.m8129if() != null) {
                wuVar = this.f31014this;
                uuVar = new uu(m34636else(dHPrivateKey), m34636else(this.f31009catch.m8127do()), m34637goto(this.f31009catch.m8129if()));
            } else {
                wuVar = this.f31014this;
                uuVar = new uu(m34636else(dHPrivateKey), m34636else(this.f31009catch.m8127do()));
            }
            wuVar.m9285for(uuVar);
        } else if (algorithmParameterSpec instanceof sw0) {
            if (this.f31008break == null) {
                throw new InvalidAlgorithmParameterException("agreement algorithm not MQV based");
            }
            this.f31012final = dHPrivateKey.getParams().getP();
            this.f31013super = dHPrivateKey.getParams().getG();
            sw0 sw0Var = (sw0) algorithmParameterSpec;
            this.f31010class = sw0Var;
            this.f31246for = sw0Var.m7625new();
            if (this.f31010class.m7624if() != null) {
                basicAgreement = this.f31008break;
                luVar = new lu(m34636else(dHPrivateKey), m34636else(this.f31010class.m7622do()), m34637goto(this.f31010class.m7624if()));
            } else {
                basicAgreement = this.f31008break;
                luVar = new lu(m34636else(dHPrivateKey), m34636else(this.f31010class.m7622do()));
            }
            basicAgreement.init(luVar);
        } else {
            if (!(algorithmParameterSpec instanceof ld2)) {
                throw new InvalidAlgorithmParameterException("DHKeyAgreement only accepts DHParameterSpec");
            }
            if (this.f31247if == null) {
                throw new InvalidAlgorithmParameterException("no KDF specified for UserKeyingMaterialSpec");
            }
            this.f31012final = dHPrivateKey.getParams().getP();
            this.f31013super = dHPrivateKey.getParams().getG();
            this.f31009catch = null;
            this.f31246for = ((ld2) algorithmParameterSpec).m4644do();
        }
        BigInteger x = dHPrivateKey.getX();
        this.f31011const = x;
        this.f31015throw = m34638case(x);
    }
}
