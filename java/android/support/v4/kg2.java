package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.RawAgreement;
import org.bouncycastle.crypto.params.Celse;
import org.bouncycastle.crypto.params.Cgoto;

/* loaded from: classes3.dex */
public final class kg2 implements RawAgreement {

    /* renamed from: do, reason: not valid java name */
    private Celse f3382do;

    @Override // org.bouncycastle.crypto.RawAgreement
    public void calculateAgreement(CipherParameters cipherParameters, byte[] bArr, int i) {
        this.f3382do.m33843new((Cgoto) cipherParameters, bArr, i);
    }

    @Override // org.bouncycastle.crypto.RawAgreement
    public int getAgreementSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.RawAgreement
    public void init(CipherParameters cipherParameters) {
        this.f3382do = (Celse) cipherParameters;
    }
}
