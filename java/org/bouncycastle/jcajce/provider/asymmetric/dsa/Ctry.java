package org.bouncycastle.jcajce.provider.asymmetric.dsa;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.lv;
import android.support.v4.qi0;
import android.support.v4.u00;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.signers.DSAEncoding;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends SignatureSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private Digest f31048do;

    /* renamed from: for, reason: not valid java name */
    private DSAEncoding f31049for = org.bouncycastle.crypto.signers.Cbreak.f30346do;

    /* renamed from: if, reason: not valid java name */
    private DSAExt f31050if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f31051new;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$break, reason: invalid class name */
    public static class Cbreak extends Ctry {
        public Cbreak() {
            super(u00.m8174for(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$case, reason: invalid class name */
    public static class Ccase extends Ctry {
        public Ccase() {
            super(u00.m8169case(), new lv(new qi0(u00.m8169case())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$catch, reason: invalid class name */
    public static class Ccatch extends Ctry {
        public Ccatch() {
            super(u00.m8177new(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$class, reason: invalid class name */
    public static class Cclass extends Ctry {
        public Cclass() {
            super(u00.m8179try(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$const, reason: invalid class name */
    public static class Cconst extends Ctry {
        public Cconst() {
            super(u00.m8168break(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$do, reason: invalid class name */
    public static class Cdo extends Ctry {
        public Cdo() {
            super(u00.m8174for(), new lv(new qi0(u00.m8174for())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$else, reason: invalid class name */
    public static class Celse extends Ctry {
        public Celse() {
            super(u00.m8173else(), new lv(new qi0(u00.m8173else())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$final, reason: invalid class name */
    public static class Cfinal extends Ctry {
        public Cfinal() {
            super(u00.m8169case(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        public Cfor() {
            super(u00.m8179try(), new lv(new qi0(u00.m8179try())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$goto, reason: invalid class name */
    public static class Cgoto extends Ctry {
        public Cgoto() {
            super(u00.m8175goto(), new lv(new qi0(u00.m8175goto())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif() {
            super(u00.m8177new(), new lv(new qi0(u00.m8177new())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$import, reason: invalid class name */
    public static class Cimport extends Ctry {
        public Cimport() {
            super(new org.bouncycastle.crypto.digests.Cdo(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$native, reason: invalid class name */
    public static class Cnative extends Ctry {
        public Cnative() {
            super(u00.m8176if(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        public Cnew() {
            super(u00.m8168break(), new lv(new qi0(u00.m8168break())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$super, reason: invalid class name */
    public static class Csuper extends Ctry {
        public Csuper() {
            super(u00.m8173else(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$this, reason: invalid class name */
    public static class Cthis extends Ctry {
        public Cthis() {
            super(u00.m8178this(), new lv(new qi0(u00.m8178this())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$throw, reason: invalid class name */
    public static class Cthrow extends Ctry {
        public Cthrow() {
            super(u00.m8175goto(), new lv());
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0415try extends Ctry {
        public C0415try() {
            super(u00.m8176if(), new lv(new qi0(u00.m8176if())));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dsa.try$while, reason: invalid class name */
    public static class Cwhile extends Ctry {
        public Cwhile() {
            super(u00.m8178this(), new lv());
        }
    }

    public Ctry(Digest digest, DSAExt dSAExt) {
        this.f31048do = digest;
        this.f31050if = dSAExt;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        CipherParameters cipherParametersM34648if = org.bouncycastle.jcajce.provider.asymmetric.dsa.Ccase.m34648if(privateKey);
        SecureRandom secureRandom = this.f31051new;
        if (secureRandom != null) {
            cipherParametersM34648if = new cc1(cipherParametersM34648if, secureRandom);
        }
        this.f31048do.reset();
        this.f31050if.init(true, cipherParametersM34648if);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f31051new = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        a4 a4VarM34647for = org.bouncycastle.jcajce.provider.asymmetric.dsa.Ccase.m34647for(publicKey);
        this.f31048do.reset();
        this.f31050if.init(false, a4VarM34647for);
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
        byte[] bArr = new byte[this.f31048do.getDigestSize()];
        this.f31048do.doFinal(bArr, 0);
        try {
            BigInteger[] bigIntegerArrGenerateSignature = this.f31050if.generateSignature(bArr);
            return this.f31049for.encode(this.f31050if.getOrder(), bigIntegerArrGenerateSignature[0], bigIntegerArrGenerateSignature[1]);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31048do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31048do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f31048do.getDigestSize()];
        this.f31048do.doFinal(bArr2, 0);
        try {
            BigInteger[] bigIntegerArrDecode = this.f31049for.decode(this.f31050if.getOrder(), bArr);
            return this.f31050if.verifySignature(bArr2, bigIntegerArrDecode[0], bigIntegerArrDecode[1]);
        } catch (Exception unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }
}
