package org.bouncycastle.pqc.jcajce.provider.qtesla;

import android.support.v4.cc1;
import android.support.v4.ri1;
import android.support.v4.si1;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Signature {

    /* renamed from: do, reason: not valid java name */
    private Digest f32560do;

    /* renamed from: for, reason: not valid java name */
    private SecureRandom f32561for;

    /* renamed from: if, reason: not valid java name */
    private si1 f32562if;

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.case$case, reason: invalid class name and collision with other inner class name */
    public static class C0468case extends Ccase {
        public C0468case() {
            super("qTESLA", new org.bouncycastle.crypto.digests.Cdo(), new si1());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.case$do, reason: invalid class name */
    public static class Cdo extends Ccase {
        public Cdo() {
            super(ri1.m6993do(0), new org.bouncycastle.crypto.digests.Cdo(), new si1());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.case$for, reason: invalid class name */
    public static class Cfor extends Ccase {
        public Cfor() {
            super(ri1.m6993do(2), new org.bouncycastle.crypto.digests.Cdo(), new si1());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.case$if, reason: invalid class name */
    public static class Cif extends Ccase {
        public Cif() {
            super(ri1.m6993do(1), new org.bouncycastle.crypto.digests.Cdo(), new si1());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.case$new, reason: invalid class name */
    public static class Cnew extends Ccase {
        public Cnew() {
            super(ri1.m6993do(3), new org.bouncycastle.crypto.digests.Cdo(), new si1());
        }
    }

    /* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.case$try, reason: invalid class name */
    public static class Ctry extends Ccase {
        public Ctry() {
            super(ri1.m6993do(4), new org.bouncycastle.crypto.digests.Cdo(), new si1());
        }
    }

    public Ccase(String str) {
        super(str);
    }

    public Ccase(String str, Digest digest, si1 si1Var) {
        super(str);
        this.f32560do = digest;
        this.f32562if = si1Var;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof org.bouncycastle.pqc.jcajce.provider.qtesla.Cdo)) {
            throw new InvalidKeyException("unknown private key passed to qTESLA");
        }
        CipherParameters keyParams = ((org.bouncycastle.pqc.jcajce.provider.qtesla.Cdo) privateKey).getKeyParams();
        SecureRandom secureRandom = this.f32561for;
        if (secureRandom != null) {
            keyParams = new cc1(keyParams, secureRandom);
        }
        this.f32562if.init(true, keyParams);
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f32561for = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof org.bouncycastle.pqc.jcajce.provider.qtesla.Cif)) {
            throw new InvalidKeyException("unknown public key passed to qTESLA");
        }
        CipherParameters keyParams = ((org.bouncycastle.pqc.jcajce.provider.qtesla.Cif) publicKey).getKeyParams();
        this.f32560do.reset();
        this.f32562if.init(false, keyParams);
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
            return this.f32562if.generateSignature(org.bouncycastle.pqc.jcajce.provider.qtesla.Cfor.m36106if(this.f32560do));
        } catch (Exception e) {
            if (e instanceof IllegalStateException) {
                throw new SignatureException(e.getMessage());
            }
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f32560do.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f32560do.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        return this.f32562if.verifySignature(org.bouncycastle.pqc.jcajce.provider.qtesla.Cfor.m36106if(this.f32560do), bArr);
    }
}
