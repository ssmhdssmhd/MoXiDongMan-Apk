package org.bouncycastle.jcajce.provider.asymmetric.util;

import java.math.BigInteger;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.signers.DSAEncoding;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.case, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ccase extends SignatureSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    public Digest f31237do;

    /* renamed from: for, reason: not valid java name */
    public DSAEncoding f31238for;

    /* renamed from: if, reason: not valid java name */
    public DSAExt f31239if;

    public Ccase(Digest digest, DSAExt dSAExt, DSAEncoding dSAEncoding) {
        this.f31237do = digest;
        this.f31239if = dSAExt;
        this.f31238for = dSAEncoding;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
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
        byte[] bArr = new byte[this.f31237do.getDigestSize()];
        this.f31237do.doFinal(bArr, 0);
        try {
            BigInteger[] bigIntegerArrGenerateSignature = this.f31239if.generateSignature(bArr);
            return this.f31238for.encode(this.f31239if.getOrder(), bigIntegerArrGenerateSignature[0], bigIntegerArrGenerateSignature[1]);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31237do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31237do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f31237do.getDigestSize()];
        this.f31237do.doFinal(bArr2, 0);
        try {
            BigInteger[] bigIntegerArrDecode = this.f31238for.decode(this.f31239if.getOrder(), bArr);
            return this.f31239if.verifySignature(bArr2, bigIntegerArrDecode[0], bigIntegerArrDecode[1]);
        } catch (Exception unused) {
            throw new SignatureException("error decoding signature bytes.");
        }
    }
}
