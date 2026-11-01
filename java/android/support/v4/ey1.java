package android.support.v4;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.sphincs.Ccase;

/* loaded from: classes3.dex */
public class ey1 extends SignatureSpi {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f1626do;

    /* renamed from: for, reason: not valid java name */
    private Ccase f1627for;

    /* renamed from: if, reason: not valid java name */
    private Digest f1628if;

    /* renamed from: new, reason: not valid java name */
    private SecureRandom f1629new;

    /* renamed from: android.support.v4.ey1$do, reason: invalid class name */
    public static class Cdo extends ey1 {
        public Cdo() {
            super(new aq1(512), NISTObjectIdentifiers.id_sha3_256, new Ccase(new aq1(256), new aq1(512)));
        }
    }

    /* renamed from: android.support.v4.ey1$if, reason: invalid class name */
    public static class Cif extends ey1 {
        public Cif() {
            super(new bq1(), NISTObjectIdentifiers.id_sha512_256, new Ccase(new cq1(256), new bq1()));
        }
    }

    public ey1(Digest digest, Ccatch ccatch, Ccase ccase) {
        this.f1628if = digest;
        this.f1626do = ccatch;
        this.f1627for = ccase;
    }

    @Override // java.security.SignatureSpi
    public Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("engineSetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof g6)) {
            throw new InvalidKeyException("unknown private key passed to SPHINCS-256");
        }
        g6 g6Var = (g6) privateKey;
        if (this.f1626do.equals(g6Var.getTreeDigest())) {
            CipherParameters keyParams = g6Var.getKeyParams();
            this.f1628if.reset();
            this.f1627for.init(true, keyParams);
        } else {
            throw new InvalidKeyException("SPHINCS-256 signature for tree digest: " + g6Var.getTreeDigest());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        this.f1629new = secureRandom;
        engineInitSign(privateKey);
    }

    @Override // java.security.SignatureSpi
    public void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        if (!(publicKey instanceof h6)) {
            throw new InvalidKeyException("unknown public key passed to SPHINCS-256");
        }
        h6 h6Var = (h6) publicKey;
        if (this.f1626do.equals(h6Var.getTreeDigest())) {
            CipherParameters keyParams = h6Var.getKeyParams();
            this.f1628if.reset();
            this.f1627for.init(false, keyParams);
        } else {
            throw new InvalidKeyException("SPHINCS-256 signature for tree digest: " + h6Var.getTreeDigest());
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
        byte[] bArr = new byte[this.f1628if.getDigestSize()];
        this.f1628if.doFinal(bArr, 0);
        try {
            return this.f1627for.generateSignature(bArr);
        } catch (Exception e) {
            throw new SignatureException(e.toString());
        }
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte b) throws SignatureException {
        this.f1628if.update(b);
    }

    @Override // java.security.SignatureSpi
    public void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        this.f1628if.update(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    public boolean engineVerify(byte[] bArr) throws SignatureException {
        byte[] bArr2 = new byte[this.f1628if.getDigestSize()];
        this.f1628if.doFinal(bArr2, 0);
        return this.f1627for.verifySignature(bArr2, bArr);
    }
}
