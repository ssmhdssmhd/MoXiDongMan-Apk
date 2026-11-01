package android.support.v4;

import javax.crypto.spec.IvParameterSpec;

/* renamed from: android.support.v4.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends IvParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f1916do;

    /* renamed from: if, reason: not valid java name */
    private final int f1917if;

    public Cfor(byte[] bArr, int i) {
        this(bArr, i, null);
    }

    public Cfor(byte[] bArr, int i, byte[] bArr2) {
        super(bArr);
        this.f1917if = i;
        this.f1916do = q3.m6371final(bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m2380do() {
        return q3.m6371final(this.f1916do);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m2381for() {
        return getIV();
    }

    /* renamed from: if, reason: not valid java name */
    public int m2382if() {
        return this.f1917if;
    }
}
