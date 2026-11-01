package com.google.zxing.oned.rss.expanded.decoders;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.const, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cconst {

    /* renamed from: do, reason: not valid java name */
    private int f17684do = 0;

    /* renamed from: if, reason: not valid java name */
    private Cdo f17685if = Cdo.NUMERIC;

    /* renamed from: com.google.zxing.oned.rss.expanded.decoders.const$do, reason: invalid class name */
    public enum Cdo {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    /* renamed from: case, reason: not valid java name */
    public void m22047case() {
        this.f17685if = Cdo.ALPHA;
    }

    /* renamed from: do, reason: not valid java name */
    public int m22048do() {
        return this.f17684do;
    }

    /* renamed from: else, reason: not valid java name */
    public void m22049else() {
        this.f17685if = Cdo.ISO_IEC_646;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m22050for() {
        return this.f17685if == Cdo.ALPHA;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m22051goto() {
        this.f17685if = Cdo.NUMERIC;
    }

    /* renamed from: if, reason: not valid java name */
    public void m22052if(int i) {
        this.f17684do += i;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m22053new() {
        return this.f17685if == Cdo.ISO_IEC_646;
    }

    /* renamed from: this, reason: not valid java name */
    public void m22054this(int i) {
        this.f17684do = i;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m22055try() {
        return this.f17685if == Cdo.NUMERIC;
    }
}
