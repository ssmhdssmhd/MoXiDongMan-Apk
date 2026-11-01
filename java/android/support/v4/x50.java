package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.Xof;
import org.bouncycastle.crypto.params.Cnew;
import org.bouncycastle.crypto.params.Ctry;
import org.bouncycastle.math.ec.rfc8032.Cif;

/* loaded from: classes3.dex */
public class x50 implements Signer {

    /* renamed from: do, reason: not valid java name */
    private final Xof f7774do = Cif.m35559try();

    /* renamed from: for, reason: not valid java name */
    private boolean f7775for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f7776if;

    /* renamed from: new, reason: not valid java name */
    private Cnew f7777new;

    /* renamed from: try, reason: not valid java name */
    private Ctry f7778try;

    public x50(byte[] bArr) {
        this.f7776if = q3.m6371final(bArr);
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() {
        if (!this.f7775for || this.f7777new == null) {
            throw new IllegalStateException("Ed448phSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[64];
        if (64 != this.f7774do.doFinal(bArr, 0, 64)) {
            throw new IllegalStateException("Prehash digest failed");
        }
        byte[] bArr2 = new byte[114];
        this.f7777new.m33856try(1, this.f7778try, this.f7776if, bArr, 0, 64, bArr2, 0);
        return bArr2;
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f7775for = z;
        if (z) {
            Cnew cnew = (Cnew) cipherParameters;
            this.f7777new = cnew;
            this.f7778try = cnew.m33853for();
        } else {
            this.f7777new = null;
            this.f7778try = (Ctry) cipherParameters;
        }
        reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f7774do.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f7774do.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f7774do.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        Ctry ctry;
        if (this.f7775for || (ctry = this.f7778try) == null) {
            throw new IllegalStateException("Ed448phSigner not initialised for verification");
        }
        return Cif.h(bArr, 0, ctry.m33861for(), 0, this.f7776if, this.f7774do);
    }
}
