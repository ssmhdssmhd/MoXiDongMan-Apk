package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class gr0 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f2229do;

    public gr0(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public gr0(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f2229do = bArr2;
        System.arraycopy(bArr, i, bArr2, 0, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m2770do() {
        return this.f2229do;
    }
}
