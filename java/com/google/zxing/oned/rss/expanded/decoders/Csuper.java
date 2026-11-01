package com.google.zxing.oned.rss.expanded.decoders;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.super, reason: invalid class name */
/* loaded from: classes2.dex */
final class Csuper extends Cwhile {

    /* renamed from: for, reason: not valid java name */
    private final int f17704for;

    /* renamed from: if, reason: not valid java name */
    private final String f17705if;

    /* renamed from: new, reason: not valid java name */
    private final boolean f17706new;

    public Csuper(int i, String str) {
        super(i);
        this.f17705if = str;
        this.f17706new = false;
        this.f17704for = 0;
    }

    /* renamed from: for, reason: not valid java name */
    public int m22083for() {
        return this.f17704for;
    }

    /* renamed from: if, reason: not valid java name */
    public String m22084if() {
        return this.f17705if;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m22085new() {
        return this.f17706new;
    }

    public Csuper(int i, String str, int i2) {
        super(i);
        this.f17706new = true;
        this.f17704for = i2;
        this.f17705if = str;
    }
}
