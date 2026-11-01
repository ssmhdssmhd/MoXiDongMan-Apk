package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class dc1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private CipherParameters f986do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f987if;

    public dc1(CipherParameters cipherParameters, byte[] bArr) {
        this.f986do = cipherParameters;
        this.f987if = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public CipherParameters m1262do() {
        return this.f986do;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m1263if() {
        return this.f987if;
    }
}
