package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class ac1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private CipherParameters f92do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f93if;

    public ac1(CipherParameters cipherParameters, byte[] bArr) {
        this.f92do = cipherParameters;
        this.f93if = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m175do() {
        return this.f93if;
    }

    /* renamed from: if, reason: not valid java name */
    public CipherParameters m176if() {
        return this.f92do;
    }
}
