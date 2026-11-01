package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class fc1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f1761do;

    /* renamed from: if, reason: not valid java name */
    private CipherParameters f1762if;

    public fc1(CipherParameters cipherParameters, byte[] bArr) {
        this(cipherParameters, bArr, 0, bArr.length);
    }

    public fc1(CipherParameters cipherParameters, byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f1761do = bArr2;
        this.f1762if = cipherParameters;
        System.arraycopy(bArr, i, bArr2, 0, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public CipherParameters m2244do() {
        return this.f1762if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m2245if() {
        return this.f1761do;
    }
}
