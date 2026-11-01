package android.support.v4;

import org.bouncycastle.crypto.DerivationParameters;

/* loaded from: classes3.dex */
public final class hq0 implements DerivationParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f2448do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f2449for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f2450if;

    /* renamed from: new, reason: not valid java name */
    private int f2451new;

    public hq0(byte[] bArr, byte[] bArr2, int i) {
        this(bArr, null, bArr2, i);
    }

    public hq0(byte[] bArr, byte[] bArr2, byte[] bArr3, int i) {
        if (bArr == null) {
            throw new IllegalArgumentException("A KDF requires Ki (a seed) as input");
        }
        this.f2448do = q3.m6371final(bArr);
        if (bArr2 == null) {
            this.f2450if = new byte[0];
        } else {
            this.f2450if = q3.m6371final(bArr2);
        }
        if (bArr3 == null) {
            this.f2449for = new byte[0];
        } else {
            this.f2449for = q3.m6371final(bArr3);
        }
        if (i != 8 && i != 16 && i != 24 && i != 32) {
            throw new IllegalArgumentException("Length of counter should be 8, 16, 24 or 32");
        }
        this.f2451new = i;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m3085do() {
        return q3.m6371final(this.f2449for);
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m3086for() {
        return q3.m6371final(this.f2449for);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m3087if() {
        return q3.m6371final(this.f2450if);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m3088new() {
        return this.f2448do;
    }

    /* renamed from: try, reason: not valid java name */
    public int m3089try() {
        return this.f2451new;
    }
}
