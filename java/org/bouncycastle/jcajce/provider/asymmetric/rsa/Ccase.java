package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.b1;
import android.support.v4.ck1;
import android.support.v4.kk1;
import android.support.v4.mw0;
import android.support.v4.nw0;
import android.support.v4.q3;
import android.support.v4.rj1;
import android.support.v4.sj1;
import android.support.v4.tj1;
import android.support.v4.u00;
import android.support.v4.v00;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.engines.Creturn;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends SignatureSpi {

    /* renamed from: do, reason: not valid java name */
    private Digest f31216do;

    /* renamed from: for, reason: not valid java name */
    private b1 f31217for;

    /* renamed from: if, reason: not valid java name */
    private AsymmetricBlockCipher f31218if;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$break, reason: invalid class name */
    public static class Cbreak extends Ccase {
        public Cbreak() {
            super(NISTObjectIdentifiers.id_sha384, u00.m8179try(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$case, reason: invalid class name and collision with other inner class name */
    public static class C0422case extends Ccase {
        public C0422case() {
            super(TeleTrusTObjectIdentifiers.ripemd256, new tj1(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$catch, reason: invalid class name */
    public static class Ccatch extends Ccase {
        public Ccatch() {
            super(NISTObjectIdentifiers.id_sha3_224, u00.m8169case(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$class, reason: invalid class name */
    public static class Cclass extends Ccase {
        public Cclass() {
            super(NISTObjectIdentifiers.id_sha3_256, u00.m8173else(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$const, reason: invalid class name */
    public static class Cconst extends Ccase {
        public Cconst() {
            super(NISTObjectIdentifiers.id_sha3_384, u00.m8175goto(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(PKCSObjectIdentifiers.md2, new mw0(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$else, reason: invalid class name */
    public static class Celse extends Ccase {
        public Celse() {
            super(OIWObjectIdentifiers.idSHA1, u00.m8176if(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$final, reason: invalid class name */
    public static class Cfinal extends Ccase {
        public Cfinal() {
            super(NISTObjectIdentifiers.id_sha3_512, u00.m8178this(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$for, reason: invalid class name */
    public static class Cfor extends Ccase {
        public Cfor() {
            super(PKCSObjectIdentifiers.md5, u00.m8172do(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$goto, reason: invalid class name */
    public static class Cgoto extends Ccase {
        public Cgoto() {
            super(NISTObjectIdentifiers.id_sha224, u00.m8174for(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(PKCSObjectIdentifiers.md4, new nw0(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$import, reason: invalid class name */
    public static class Cimport extends Ccase {
        public Cimport() {
            super(new org.bouncycastle.crypto.digests.Cdo(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$new, reason: invalid class name */
    public static class Cnew extends Ccase {
        public Cnew() {
            super(TeleTrusTObjectIdentifiers.ripemd128, new rj1(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$super, reason: invalid class name */
    public static class Csuper extends Ccase {
        public Csuper() {
            super(NISTObjectIdentifiers.id_sha512, u00.m8168break(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$this, reason: invalid class name */
    public static class Cthis extends Ccase {
        public Cthis() {
            super(NISTObjectIdentifiers.id_sha256, u00.m8177new(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$throw, reason: invalid class name */
    public static class Cthrow extends Ccase {
        public Cthrow() {
            super(NISTObjectIdentifiers.id_sha512_224, u00.m8170catch(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$try, reason: invalid class name */
    public static class Ctry extends Ccase {
        public Ctry() {
            super(TeleTrusTObjectIdentifiers.ripemd160, new sj1(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.case$while, reason: invalid class name */
    public static class Cwhile extends Ccase {
        public Cwhile() {
            super(NISTObjectIdentifiers.id_sha512_256, u00.m8171class(), new org.bouncycastle.crypto.encodings.Cfor(new Creturn()));
        }
    }

    public Ccase(org.bouncycastle.asn1.Ccatch ccatch, Digest digest, AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f31216do = digest;
        this.f31218if = asymmetricBlockCipher;
        this.f31217for = new b1(ccatch, h.f29080do);
    }

    public Ccase(Digest digest, AsymmetricBlockCipher asymmetricBlockCipher) {
        this.f31216do = digest;
        this.f31218if = asymmetricBlockCipher;
        this.f31217for = null;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m34718do(byte[] bArr) throws IOException {
        b1 b1Var = this.f31217for;
        return b1Var == null ? bArr : new v00(b1Var, bArr).m32764do(ASN1Encoding.DER);
    }

    /* renamed from: if, reason: not valid java name */
    private String m34719if(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass().getName();
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        return null;
    }

    @Override // java.security.SignatureSpi
    public AlgorithmParameters engineGetParameters() {
        return null;
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof RSAPrivateKey) {
            ck1 ck1VarM4430for = kk1.m4430for((RSAPrivateKey) privateKey);
            this.f31216do.reset();
            this.f31218if.init(true, ck1VarM4430for);
        } else {
            throw new InvalidKeyException("Supplied key (" + m34719if(privateKey) + ") is not a RSAPrivateKey instance");
        }
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof RSAPublicKey) {
            ck1 ck1VarM4432new = kk1.m4432new((RSAPublicKey) publicKey);
            this.f31216do.reset();
            this.f31218if.init(false, ck1VarM4432new);
        } else {
            throw new InvalidKeyException("Supplied key (" + m34719if(publicKey) + ") is not a RSAPublicKey instance");
        }
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
        byte[] bArr = new byte[this.f31216do.getDigestSize()];
        this.f31216do.doFinal(bArr, 0);
        try {
            byte[] bArrM34718do = m34718do(bArr);
            return this.f31218if.processBlock(bArrM34718do, 0, bArrM34718do.length);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new SignatureException("key too small for signature type");
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31216do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31216do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArrProcessBlock;
        byte[] bArrM34718do;
        byte[] bArr2 = new byte[this.f31216do.getDigestSize()];
        this.f31216do.doFinal(bArr2, 0);
        try {
            bArrProcessBlock = this.f31218if.processBlock(bArr, 0, bArr.length);
            bArrM34718do = m34718do(bArr2);
        } catch (Exception unused) {
        }
        if (bArrProcessBlock.length == bArrM34718do.length) {
            return q3.m6360abstract(bArrProcessBlock, bArrM34718do);
        }
        if (bArrProcessBlock.length != bArrM34718do.length - 2) {
            q3.m6360abstract(bArrM34718do, bArrM34718do);
            return false;
        }
        bArrM34718do[1] = (byte) (bArrM34718do[1] - 2);
        bArrM34718do[3] = (byte) (bArrM34718do[3] - 2);
        int i = bArrM34718do[3] + 4;
        int i2 = i + 2;
        int i3 = 0;
        for (int i4 = 0; i4 < bArrM34718do.length - i2; i4++) {
            i3 |= bArrProcessBlock[i + i4] ^ bArrM34718do[i2 + i4];
        }
        for (int i5 = 0; i5 < i; i5++) {
            i3 |= bArrProcessBlock[i5] ^ bArrM34718do[i5];
        }
        return i3 == 0;
    }
}
