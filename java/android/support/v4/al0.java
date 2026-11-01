package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class al0 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f199do;

    /* renamed from: for, reason: not valid java name */
    private int f200for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f201if;

    public al0(byte[] bArr, byte[] bArr2, int i) {
        this.f199do = q3.m6371final(bArr);
        this.f201if = q3.m6371final(bArr2);
        this.f200for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m266do() {
        return q3.m6371final(this.f199do);
    }

    /* renamed from: for, reason: not valid java name */
    public int m267for() {
        return this.f200for;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m268if() {
        return q3.m6371final(this.f201if);
    }
}
