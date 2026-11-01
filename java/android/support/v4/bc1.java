package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class bc1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f406do;

    /* renamed from: if, reason: not valid java name */
    private CipherParameters f407if;

    public bc1(CipherParameters cipherParameters, byte[] bArr) {
        this(cipherParameters, bArr, 0, bArr.length);
    }

    public bc1(CipherParameters cipherParameters, byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f406do = bArr2;
        this.f407if = cipherParameters;
        System.arraycopy(bArr, i, bArr2, 0, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m514do() {
        return this.f406do;
    }

    /* renamed from: if, reason: not valid java name */
    public CipherParameters m515if() {
        return this.f407if;
    }
}
