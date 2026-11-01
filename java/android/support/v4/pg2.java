package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.RawAgreement;
import org.bouncycastle.crypto.params.Cbreak;
import org.bouncycastle.crypto.params.Cthis;

/* loaded from: classes3.dex */
public final class pg2 implements RawAgreement {

    /* renamed from: do, reason: not valid java name */
    private Cthis f4963do;

    @Override // org.bouncycastle.crypto.RawAgreement
    public void calculateAgreement(CipherParameters cipherParameters, byte[] bArr, int i) {
        this.f4963do.m33859new((Cbreak) cipherParameters, bArr, i);
    }

    @Override // org.bouncycastle.crypto.RawAgreement
    public int getAgreementSize() {
        return 56;
    }

    @Override // org.bouncycastle.crypto.RawAgreement
    public void init(CipherParameters cipherParameters) {
        this.f4963do = (Cthis) cipherParameters;
    }
}
