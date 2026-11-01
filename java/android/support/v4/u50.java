package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.params.Cfor;
import org.bouncycastle.crypto.params.Cif;
import org.bouncycastle.math.ec.rfc8032.Cdo;

/* loaded from: classes3.dex */
public class u50 implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final Digest f6762do = Cdo.m35486case();

    /* renamed from: for, reason: not valid java name */
    private boolean f6763for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f6764if;

    /* renamed from: new, reason: not valid java name */
    private Cif f6765new;

    /* renamed from: try, reason: not valid java name */
    private Cfor f6766try;

    public u50(byte[] bArr) {
        this.f6764if = q3.m6371final(bArr);
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        if (!this.f6763for || this.f6765new == null) {
            throw new IllegalStateException("Ed25519phSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[64];
        if (64 != this.f6762do.doFinal(bArr, 0)) {
            throw new IllegalStateException("Prehash digest failed");
        }
        byte[] bArr2 = new byte[64];
        this.f6765new.m33852try(2, this.f6766try, this.f6764if, bArr, 0, 64, bArr2, 0);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f6763for = z;
        if (z) {
            Cif cif = (Cif) cipherParameters;
            this.f6765new = cif;
            this.f6766try = cif.m33849for();
        } else {
            this.f6765new = null;
            this.f6766try = (Cfor) cipherParameters;
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f6762do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f6762do.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f6762do.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        Cfor cfor;
        if (this.f6763for || (cfor = this.f6766try) == null) {
            throw new IllegalStateException("Ed25519phSigner not initialised for verification");
        }
        return Cdo.n(bArr, 0, cfor.m33845for(), 0, this.f6764if, this.f6762do);
    }
}
