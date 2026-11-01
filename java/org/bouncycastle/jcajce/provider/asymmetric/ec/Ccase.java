package org.bouncycastle.jcajce.provider.asymmetric.ec;

import android.support.v4.ac1;
import android.support.v4.cc1;
import android.support.v4.kq1;
import android.support.v4.w5;
import android.support.v4.xs;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.signers.Cthis;
import org.bouncycastle.jcajce.provider.asymmetric.util.Celse;
import org.bouncycastle.jcajce.util.JcaJceHelper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends SignatureSpi {

    /* renamed from: do, reason: not valid java name */
    private final JcaJceHelper f31061do = new w5();

    /* renamed from: for, reason: not valid java name */
    private kq1 f31062for;

    /* renamed from: if, reason: not valid java name */
    private AlgorithmParameters f31063if;

    /* renamed from: new, reason: not valid java name */
    private final Cthis f31064new;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.ec.case$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(new Cthis());
        }
    }

    public Ccase(Cthis cthis) {
        this.f31064new = cthis;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        if (this.f31063if == null && this.f31062for != null) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.f31061do.createAlgorithmParameters("PSS");
                this.f31063if = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.f31062for);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.f31063if;
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        CipherParameters cipherParametersM34740new = Celse.m34740new(privateKey);
        SecureRandom secureRandom = ((SignatureSpi) this).appRandom;
        if (secureRandom != null) {
            cipherParametersM34740new = new cc1(cipherParametersM34740new, secureRandom);
        }
        kq1 kq1Var = this.f31062for;
        if (kq1Var != null) {
            this.f31064new.init(true, new ac1(cipherParametersM34740new, kq1Var.m4473do()));
        } else {
            this.f31064new.init(true, cipherParametersM34740new);
        }
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        CipherParameters cipherParametersM34667do = Cnew.m34667do(publicKey);
        kq1 kq1Var = this.f31062for;
        if (kq1Var != null) {
            cipherParametersM34667do = new ac1(cipherParametersM34667do, kq1Var.m4473do());
        }
        this.f31064new.init(false, cipherParametersM34667do);
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof kq1)) {
            throw new InvalidAlgorithmParameterException("only SM2ParameterSpec supported");
        }
        this.f31062for = (kq1) algorithmParameterSpec;
    }

    @Override // java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f31064new.generateSignature();
        } catch (xs e) {
            throw new SignatureException("unable to create signature: " + e.getMessage());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31064new.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31064new.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f31064new.verifySignature(bArr);
    }
}
