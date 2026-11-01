package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.pqc.crypto.MessageSigner;

/* loaded from: classes3.dex */
public class a10 implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final Digest f11do;

    /* renamed from: for, reason: not valid java name */
    private boolean f12for;

    /* renamed from: if, reason: not valid java name */
    private final MessageSigner f13if;

    public a10(MessageSigner messageSigner, Digest digest) {
        this.f13if = messageSigner;
        this.f11do = digest;
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        if (!this.f12for) {
            throw new IllegalStateException("DigestingMessageSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.f11do.getDigestSize()];
        this.f11do.doFinal(bArr, 0);
        return this.f13if.generateSignature(bArr);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f12for = z;
        a4 a4Var = cipherParameters instanceof cc1 ? (a4) ((cc1) cipherParameters).m846do() : (a4) cipherParameters;
        if (z && !a4Var.m33do()) {
            throw new IllegalArgumentException("Signing Requires Private Key.");
        }
        if (!z && a4Var.m33do()) {
            throw new IllegalArgumentException("Verification Requires Public Key.");
        }
        reset();
        this.f13if.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f11do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f11do.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f11do.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        if (this.f12for) {
            throw new IllegalStateException("DigestingMessageSigner not initialised for verification");
        }
        byte[] bArr2 = new byte[this.f11do.getDigestSize()];
        this.f11do.doFinal(bArr2, 0);
        return this.f13if.verifySignature(bArr2, bArr);
    }
}
