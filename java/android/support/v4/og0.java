package android.support.v4;

import org.bouncycastle.crypto.DerivationParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.DigestDerivationFunction;

/* loaded from: classes3.dex */
public class og0 implements DigestDerivationFunction {

    /* renamed from: do, reason: not valid java name */
    private final Digest f4601do;

    /* renamed from: for, reason: not valid java name */
    private int f4602for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f4603if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f4604new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f4605try;

    public og0(Digest digest) {
        this.f4601do = digest;
        this.f4605try = new byte[digest.getDigestSize()];
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws tw, IllegalArgumentException {
        if (i + i2 > bArr.length) {
            throw new tw("output buffer too small");
        }
        Digest digest = this.f4601do;
        byte[] bArr2 = this.f4603if;
        digest.update(bArr2, 0, bArr2.length);
        int i3 = this.f4602for;
        this.f4602for = i3 + 1;
        byte[] bArrM3360goto = ib1.m3360goto(i3);
        this.f4601do.update(bArrM3360goto, 0, bArrM3360goto.length);
        byte[] bArr3 = this.f4604new;
        if (bArr3 != null) {
            this.f4601do.update(bArr3, 0, bArr3.length);
        }
        this.f4601do.doFinal(this.f4605try, 0);
        System.arraycopy(this.f4605try, 0, bArr, i, i2);
        q3.m6365const(this.f4605try);
        return i2;
    }

    @Override // org.bouncycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.f4601do;
    }

    @Override // org.bouncycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof ng0)) {
            throw new IllegalArgumentException("unkown parameters type");
        }
        ng0 ng0Var = (ng0) derivationParameters;
        this.f4603if = ng0Var.m5243for();
        this.f4602for = ng0Var.m5244if();
        this.f4604new = ng0Var.m5242do();
    }
}
