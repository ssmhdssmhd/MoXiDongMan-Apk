package org.bouncycastle.jcajce.provider.asymmetric.ecgost12;

import android.support.v4.a4;
import android.support.v4.cc1;
import android.support.v4.lg0;
import android.support.v4.n40;
import android.support.v4.s40;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jce.interfaces.ECKey;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.provider.Cdo;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ecgost12.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew extends SignatureSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: for, reason: not valid java name */
    private int f31145for = 128;

    /* renamed from: new, reason: not valid java name */
    private int f31147new = 64;

    /* renamed from: do, reason: not valid java name */
    private Digest f31144do = new lg0();

    /* renamed from: if, reason: not valid java name */
    private DSAExt f31146if = new n40();

    /* renamed from: do, reason: not valid java name */
    public static a4 m34693do(PublicKey publicKey) throws InvalidKeyException {
        return publicKey instanceof Cif ? ((Cif) publicKey).engineGetKeyParameters() : Celse.m34743try(publicKey);
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof ECKey)) {
            throw new InvalidKeyException("cannot recognise key type in ECGOST-2012-512 signer");
        }
        s40 s40Var = (s40) Celse.m34740new(privateKey);
        if (s40Var.m7258if().m1650try().bitLength() < 505) {
            throw new InvalidKeyException("key too weak for ECGOST-2012-512");
        }
        this.f31144do.reset();
        SecureRandom secureRandom = ((SignatureSpi) this).appRandom;
        if (secureRandom != null) {
            this.f31146if.init(true, new cc1(s40Var, secureRandom));
        } else {
            this.f31146if.init(true, s40Var);
        }
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        s40 s40Var;
        if (publicKey instanceof ECPublicKey) {
            s40Var = (s40) m34693do(publicKey);
        } else {
            try {
                s40Var = (s40) Celse.m34743try(Cdo.getPublicKey(Ctry.m33291case(publicKey.getEncoded())));
            } catch (Exception unused) {
                throw new InvalidKeyException("cannot recognise key type in ECGOST-2012-512 signer");
            }
        }
        if (s40Var.m7258if().m1650try().bitLength() < 505) {
            throw new InvalidKeyException("key too weak for ECGOST-2012-512");
        }
        this.f31144do.reset();
        this.f31146if.init(false, s40Var);
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
        byte[] bArr = new byte[this.f31144do.getDigestSize()];
        this.f31144do.doFinal(bArr, 0);
        try {
            byte[] bArr2 = new byte[this.f31145for];
            BigInteger[] bigIntegerArrGenerateSignature = this.f31146if.generateSignature(bArr);
            byte[] byteArray = bigIntegerArrGenerateSignature[0].toByteArray();
            byte[] byteArray2 = bigIntegerArrGenerateSignature[1].toByteArray();
            if (byteArray2[0] != 0) {
                System.arraycopy(byteArray2, 0, bArr2, this.f31147new - byteArray2.length, byteArray2.length);
            } else {
                System.arraycopy(byteArray2, 1, bArr2, this.f31147new - (byteArray2.length - 1), byteArray2.length - 1);
            }
            if (byteArray[0] != 0) {
                System.arraycopy(byteArray, 0, bArr2, this.f31145for - byteArray.length, byteArray.length);
            } else {
                System.arraycopy(byteArray, 1, bArr2, this.f31145for - (byteArray.length - 1), byteArray.length - 1);
            }
            return bArr2;
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31144do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31144do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f31144do.getDigestSize()];
        this.f31144do.doFinal(bArr2, 0);
        try {
            int i = this.f31147new;
            byte[] bArr3 = new byte[i];
            byte[] bArr4 = new byte[i];
            System.arraycopy(bArr, 0, bArr4, 0, i);
            int i2 = this.f31147new;
            System.arraycopy(bArr, i2, bArr3, 0, i2);
            BigInteger[] bigIntegerArr = {new BigInteger(1, bArr3), new BigInteger(1, bArr4)};
            return this.f31146if.verifySignature(bArr2, bigIntegerArr[0], bigIntegerArr[1]);
        } catch (Exception unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }
}
