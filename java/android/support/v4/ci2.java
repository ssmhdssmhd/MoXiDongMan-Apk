package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.RawAgreement;

/* loaded from: classes3.dex */
public class ci2 implements RawAgreement {

    /* renamed from: do, reason: not valid java name */
    private final RawAgreement f799do;

    /* renamed from: if, reason: not valid java name */
    private ai2 f800if;

    public ci2(RawAgreement rawAgreement) {
        this.f799do = rawAgreement;
    }

    @Override // org.bouncycastle.crypto.RawAgreement
    public void calculateAgreement(CipherParameters cipherParameters, byte[] bArr, int i) {
        bi2 bi2Var = (bi2) cipherParameters;
        this.f799do.init(this.f800if.m255do());
        this.f799do.calculateAgreement(bi2Var.m558do(), bArr, i);
        this.f799do.init(this.f800if.m256for());
        this.f799do.calculateAgreement(bi2Var.m559if(), bArr, i + this.f799do.getAgreementSize());
    }

    @Override // org.bouncycastle.crypto.RawAgreement
    public int getAgreementSize() {
        return this.f799do.getAgreementSize() * 2;
    }

    @Override // org.bouncycastle.crypto.RawAgreement
    public void init(CipherParameters cipherParameters) {
        this.f800if = (ai2) cipherParameters;
    }
}
