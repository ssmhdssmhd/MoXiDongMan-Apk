package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class mj1 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f3926do;

    /* renamed from: if, reason: not valid java name */
    private int f3927if;

    public mj1(byte[] bArr, int i) {
        if (bArr.length > 255) {
            throw new IllegalArgumentException("RC5 key length can be no greater than 255");
        }
        byte[] bArr2 = new byte[bArr.length];
        this.f3926do = bArr2;
        this.f3927if = i;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m4932do() {
        return this.f3926do;
    }

    /* renamed from: if, reason: not valid java name */
    public int m4933if() {
        return this.f3927if;
    }
}
