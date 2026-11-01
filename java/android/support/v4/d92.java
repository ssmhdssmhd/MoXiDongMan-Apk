package android.support.v4;

import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes3.dex */
public class d92 implements CipherParameters {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f973do;

    /* renamed from: if, reason: not valid java name */
    private final gr0 f974if;

    public d92(gr0 gr0Var, byte[] bArr) {
        this.f974if = gr0Var;
        this.f973do = q3.m6371final(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public gr0 m1174do() {
        return this.f974if;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m1175if() {
        return this.f973do;
    }
}
