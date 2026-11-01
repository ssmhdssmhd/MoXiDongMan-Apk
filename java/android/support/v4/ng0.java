package android.support.v4;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public class ng0 implements DerivationParameters {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f4225do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f4226for;

    /* renamed from: if, reason: not valid java name */
    private final int f4227if;

    public ng0(byte[] bArr, int i) {
        this(bArr, i, null);
    }

    public ng0(byte[] bArr, int i, byte[] bArr2) {
        this.f4225do = bArr;
        this.f4227if = i;
        this.f4226for = bArr2;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m5242do() {
        return this.f4226for;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m5243for() {
        return this.f4225do;
    }

    /* renamed from: if, reason: not valid java name */
    public int m5244if() {
        return this.f4227if;
    }
}
