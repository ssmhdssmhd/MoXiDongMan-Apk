package com.google.zxing.pdf417.decoder;

/* renamed from: com.google.zxing.pdf417.decoder.new, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnew {

    /* renamed from: case, reason: not valid java name */
    private static final int f17807case = -1;

    /* renamed from: do, reason: not valid java name */
    private final int f17808do;

    /* renamed from: for, reason: not valid java name */
    private final int f17809for;

    /* renamed from: if, reason: not valid java name */
    private final int f17810if;

    /* renamed from: new, reason: not valid java name */
    private final int f17811new;

    /* renamed from: try, reason: not valid java name */
    private int f17812try = -1;

    public Cnew(int i, int i2, int i3, int i4) {
        this.f17808do = i;
        this.f17810if = i2;
        this.f17809for = i3;
        this.f17811new = i4;
    }

    /* renamed from: break, reason: not valid java name */
    public void m22252break() {
        this.f17812try = ((this.f17811new / 30) * 3) + (this.f17809for / 3);
    }

    /* renamed from: case, reason: not valid java name */
    public int m22253case() {
        return this.f17810if - this.f17808do;
    }

    /* renamed from: do, reason: not valid java name */
    public int m22254do() {
        return this.f17809for;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m22255else() {
        return m22257goto(this.f17812try);
    }

    /* renamed from: for, reason: not valid java name */
    public int m22256for() {
        return this.f17812try;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m22257goto(int i) {
        return i != -1 && this.f17809for == (i % 3) * 3;
    }

    /* renamed from: if, reason: not valid java name */
    public int m22258if() {
        return this.f17810if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m22259new() {
        return this.f17808do;
    }

    /* renamed from: this, reason: not valid java name */
    public void m22260this(int i) {
        this.f17812try = i;
    }

    public String toString() {
        return this.f17812try + "|" + this.f17811new;
    }

    /* renamed from: try, reason: not valid java name */
    public int m22261try() {
        return this.f17811new;
    }
}
