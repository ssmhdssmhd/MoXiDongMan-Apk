package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.ld0;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.throw, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthrow extends Cwhile {

    /* renamed from: new, reason: not valid java name */
    public static final int f17707new = 10;

    /* renamed from: for, reason: not valid java name */
    private final int f17708for;

    /* renamed from: if, reason: not valid java name */
    private final int f17709if;

    public Cthrow(int i, int i2, int i3) throws ld0 {
        super(i);
        if (i2 < 0 || i2 > 10 || i3 < 0 || i3 > 10) {
            throw ld0.getFormatInstance();
        }
        this.f17709if = i2;
        this.f17708for = i3;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m22087case() {
        return this.f17709if == 10;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m22088else() {
        return this.f17708for == 10;
    }

    /* renamed from: for, reason: not valid java name */
    public int m22089for() {
        return this.f17708for;
    }

    /* renamed from: if, reason: not valid java name */
    public int m22090if() {
        return this.f17709if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m22091new() {
        return (this.f17709if * 10) + this.f17708for;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m22092try() {
        return this.f17709if == 10 || this.f17708for == 10;
    }
}
