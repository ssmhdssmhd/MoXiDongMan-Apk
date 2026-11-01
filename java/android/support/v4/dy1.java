package android.support.v4;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class dy1 extends SignatureSpi {

    /* renamed from: do, reason: not valid java name */
    private Digest f1164do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f1165for;

    /* renamed from: if, reason: not valid java name */
    private bl1 f1166if;

    /* renamed from: android.support.v4.dy1$do, reason: invalid class name */
    public static class Cdo extends dy1 {
        public Cdo() {
            super(new xp1(), new bl1());
        }
    }

    /* renamed from: android.support.v4.dy1$for, reason: invalid class name */
    public static class Cfor extends dy1 {
        public Cfor() {
            super(new zp1(), new bl1());
        }
    }

    /* renamed from: android.support.v4.dy1$if, reason: invalid class name */
    public static class Cif extends dy1 {
        public Cif() {
            super(new yp1(), new bl1());
        }
    }

    /* renamed from: android.support.v4.dy1$new, reason: invalid class name */
    public static class Cnew extends dy1 {
        public Cnew() {
            super(new bq1(), new bl1());
        }
    }

    public dy1(Digest digest, bl1 bl1Var) {
        this.f1164do = digest;
        this.f1166if = bl1Var;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        CipherParameters cipherParametersM7471do = sk1.m7471do(privateKey);
        SecureRandom secureRandom = this.f1165for;
        if (secureRandom != null) {
            cipherParametersM7471do = new cc1(cipherParametersM7471do, secureRandom);
        }
        this.f1164do.reset();
        this.f1166if.init(true, cipherParametersM7471do);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f1165for = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        a4 a4VarM7472if = sk1.m7472if(publicKey);
        this.f1164do.reset();
        this.f1166if.init(false, a4VarM7472if);
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
        byte[] bArr = new byte[this.f1164do.getDigestSize()];
        this.f1164do.doFinal(bArr, 0);
        try {
            return this.f1166if.generateSignature(bArr);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f1164do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f1164do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f1164do.getDigestSize()];
        this.f1164do.doFinal(bArr2, 0);
        return this.f1166if.verifySignature(bArr2, bArr);
    }
}
