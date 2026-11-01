package android.support.v4;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public class qw0 implements DerivationParameters {

    /* renamed from: do, reason: not valid java name */
    public byte[] f5525do;

    public qw0(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public qw0(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f5525do = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m6671do() {
        return this.f5525do;
    }
}
