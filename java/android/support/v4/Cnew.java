package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* renamed from: android.support.v4.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private byte[] f4198do;

    /* renamed from: for, reason: not valid java name */
    private gr0 f4199for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f4200if;

    /* renamed from: new, reason: not valid java name */
    private int f4201new;

    public Cnew(gr0 gr0Var, int i, byte[] bArr) {
        this(gr0Var, i, bArr, null);
    }

    public Cnew(gr0 gr0Var, int i, byte[] bArr, byte[] bArr2) {
        this.f4199for = gr0Var;
        this.f4200if = q3.m6371final(bArr);
        this.f4201new = i;
        this.f4198do = q3.m6371final(bArr2);
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m5194do() {
        return q3.m6371final(this.f4198do);
    }

    /* renamed from: for, reason: not valid java name */
    public int m5195for() {
        return this.f4201new;
    }

    /* renamed from: if, reason: not valid java name */
    public gr0 m5196if() {
        return this.f4199for;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5197new() {
        return q3.m6371final(this.f4200if);
    }
}
