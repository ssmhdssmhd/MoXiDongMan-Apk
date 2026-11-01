package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class ec1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f1387do;

    /* renamed from: if, reason: not valid java name */
    private CipherParameters f1388if;

    public ec1(CipherParameters cipherParameters, byte[] bArr) {
        this(cipherParameters, bArr, 0, bArr.length);
    }

    public ec1(CipherParameters cipherParameters, byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f1387do = bArr2;
        this.f1388if = cipherParameters;
        System.arraycopy(bArr, i, bArr2, 0, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public CipherParameters m1786do() {
        return this.f1388if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m1787if() {
        return this.f1387do;
    }
}
