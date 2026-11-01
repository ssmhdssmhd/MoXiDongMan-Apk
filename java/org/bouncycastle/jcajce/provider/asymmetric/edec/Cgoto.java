package org.bouncycastle.jcajce.provider.asymmetric.edec;

import android.support.v4.a4;
import android.support.v4.xs;
import android.support.v4.y50;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.SignatureSpi;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.Cnew;
import org.bouncycastle.crypto.params.Ctry;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto extends SignatureSpi {

    /* renamed from: for, reason: not valid java name */
    private static final byte[] f31176for = new byte[0];

    /* renamed from: do, reason: not valid java name */
    private final String f31177do;

    /* renamed from: if, reason: not valid java name */
    private Signer f31178if;

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.goto$do, reason: invalid class name */
    public static final class Cdo extends Cgoto {
        public Cdo() {
            super(y50.f8138if);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.goto$for, reason: invalid class name */
    public static final class Cfor extends Cgoto {
        public Cfor() {
            super(null);
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.edec.goto$if, reason: invalid class name */
    public static final class Cif extends Cgoto {
        public Cif() {
            super(y50.f8137for);
        }
    }

    public Cgoto(String str) {
        this.f31177do = str;
    }

    /* renamed from: do, reason: not valid java name */
    private Signer m34702do(String str) throws InvalidKeyException {
        String str2 = this.f31177do;
        if (str2 == null || str.equals(str2)) {
            return str.equals(y50.f8137for) ? new org.bouncycastle.crypto.signers.Cfor(f31176for) : new org.bouncycastle.crypto.signers.Cdo();
        }
        throw new InvalidKeyException("inappropriate key for " + this.f31177do);
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) throws InvalidParameterException {
        throw new UnsupportedOperationException("engineGetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof org.bouncycastle.jcajce.provider.asymmetric.edec.Cdo)) {
            throw new InvalidKeyException("cannot identify EdDSA public key");
        }
        a4 a4VarEngineGetKeyParameters = ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cdo) privateKey).engineGetKeyParameters();
        this.f31178if = m34702do(a4VarEngineGetKeyParameters instanceof Cnew ? y50.f8137for : y50.f8138if);
        this.f31178if.init(true, a4VarEngineGetKeyParameters);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof org.bouncycastle.jcajce.provider.asymmetric.edec.Cif)) {
            throw new InvalidKeyException("cannot identify EdDSA public key");
        }
        a4 a4VarEngineGetKeyParameters = ((org.bouncycastle.jcajce.provider.asymmetric.edec.Cif) publicKey).engineGetKeyParameters();
        this.f31178if = m34702do(a4VarEngineGetKeyParameters instanceof Ctry ? y50.f8137for : y50.f8138if);
        this.f31178if.init(false, a4VarEngineGetKeyParameters);
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(String str, Object obj) throws InvalidParameterException {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public byte[] engineSign() throws SignatureException {
        try {
            return this.f31178if.generateSignature();
        } catch (xs e) {
            throw new SignatureException(e.getMessage());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f31178if.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f31178if.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f31178if.verifySignature(bArr);
    }
}
