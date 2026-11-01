package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DSA;
import org.bouncycastle.crypto.DSAExt;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.signers.Cbreak;
import org.bouncycastle.crypto.signers.DSAEncoding;

/* loaded from: classes3.dex */
public class bv implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final DSA f538do;

    /* renamed from: for, reason: not valid java name */
    private final DSAEncoding f539for;

    /* renamed from: if, reason: not valid java name */
    private final Digest f540if;

    /* renamed from: new, reason: not valid java name */
    private boolean f541new;

    public bv(DSA dsa, Digest digest) {
        this.f538do = dsa;
        this.f540if = digest;
        this.f539for = Cbreak.f30346do;
    }

    public bv(DSAExt dSAExt, Digest digest, DSAEncoding dSAEncoding) {
        this.f538do = dSAExt;
        this.f540if = digest;
        this.f539for = dSAEncoding;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m643do() {
        DSA dsa = this.f538do;
        if (dsa instanceof DSAExt) {
            return ((DSAExt) dsa).getOrder();
        }
        return null;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        if (!this.f541new) {
            throw new IllegalStateException("DSADigestSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.f540if.getDigestSize()];
        this.f540if.doFinal(bArr, 0);
        BigInteger[] bigIntegerArrGenerateSignature = this.f538do.generateSignature(bArr);
        try {
            return this.f539for.encode(m643do(), bigIntegerArrGenerateSignature[0], bigIntegerArrGenerateSignature[1]);
        } catch (Exception unused) {
            throw new IllegalStateException("unable to encode signature");
        }
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f541new = z;
        a4 a4Var = cipherParameters instanceof cc1 ? (a4) ((cc1) cipherParameters).m846do() : (a4) cipherParameters;
        if (z && !a4Var.m33do()) {
            throw new IllegalArgumentException("Signing Requires Private Key.");
        }
        if (!z && a4Var.m33do()) {
            throw new IllegalArgumentException("Verification Requires Public Key.");
        }
        reset();
        this.f538do.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f540if.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f540if.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f540if.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        if (this.f541new) {
            throw new IllegalStateException("DSADigestSigner not initialised for verification");
        }
        byte[] bArr2 = new byte[this.f540if.getDigestSize()];
        this.f540if.doFinal(bArr2, 0);
        try {
            BigInteger[] bigIntegerArrDecode = this.f539for.decode(m643do(), bArr);
            return this.f538do.verifySignature(bArr2, bigIntegerArrDecode[0], bigIntegerArrDecode[1]);
        } catch (Exception unused) {
            return false;
        }
    }
}
