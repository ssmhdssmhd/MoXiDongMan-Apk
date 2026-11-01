package android.support.v4;

import org.bouncycastle.crypto.KeyEncoder;

/* loaded from: classes3.dex */
public class d80 {

    /* renamed from: do, reason: not valid java name */
    private y3 f952do;

    /* renamed from: if, reason: not valid java name */
    private KeyEncoder f953if;

    public d80(y3 y3Var, KeyEncoder keyEncoder) {
        this.f952do = y3Var;
        this.f953if = keyEncoder;
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m1164do() {
        return this.f953if.getEncoded(this.f952do.m9727if());
    }

    /* renamed from: if, reason: not valid java name */
    public y3 m1165if() {
        return this.f952do;
    }
}
