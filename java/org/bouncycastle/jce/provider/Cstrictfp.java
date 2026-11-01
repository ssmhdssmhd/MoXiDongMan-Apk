package org.bouncycastle.jce.provider;

import android.support.v4.ll1;

/* renamed from: org.bouncycastle.jce.provider.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
class Cstrictfp {

    /* renamed from: if, reason: not valid java name */
    public static final Cstrictfp f31676if = new Cstrictfp(33023);

    /* renamed from: do, reason: not valid java name */
    private int f31677do;

    public Cstrictfp() {
        this(0);
    }

    private Cstrictfp(int i) {
        this.f31677do = i;
    }

    public Cstrictfp(ll1 ll1Var) {
        this.f31677do = ll1Var.m33058import();
    }

    /* renamed from: do, reason: not valid java name */
    public void m35110do(Cstrictfp cstrictfp) {
        this.f31677do = cstrictfp.m35112if() | this.f31677do;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m35111for(Cstrictfp cstrictfp) {
        return ((cstrictfp.m35112if() ^ this.f31677do) | this.f31677do) != 0;
    }

    /* renamed from: if, reason: not valid java name */
    public int m35112if() {
        return this.f31677do;
    }

    /* renamed from: new, reason: not valid java name */
    public Cstrictfp m35113new(Cstrictfp cstrictfp) {
        Cstrictfp cstrictfp2 = new Cstrictfp();
        cstrictfp2.m35110do(new Cstrictfp(cstrictfp.m35112if() & this.f31677do));
        return cstrictfp2;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m35114try() {
        return this.f31677do == f31676if.f31677do;
    }
}
