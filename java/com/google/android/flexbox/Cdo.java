package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.flexbox.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: break, reason: not valid java name */
    public float f11126break;

    /* renamed from: case, reason: not valid java name */
    public int f11127case;

    /* renamed from: catch, reason: not valid java name */
    public float f11128catch;

    /* renamed from: class, reason: not valid java name */
    public int f11129class;

    /* renamed from: const, reason: not valid java name */
    public int f11130const;

    /* renamed from: else, reason: not valid java name */
    public int f11132else;

    /* renamed from: goto, reason: not valid java name */
    public int f11135goto;

    /* renamed from: import, reason: not valid java name */
    public boolean f11137import;

    /* renamed from: super, reason: not valid java name */
    public int f11139super;

    /* renamed from: this, reason: not valid java name */
    public int f11140this;

    /* renamed from: throw, reason: not valid java name */
    public int f11141throw;

    /* renamed from: try, reason: not valid java name */
    public int f11142try;

    /* renamed from: while, reason: not valid java name */
    public boolean f11143while;

    /* renamed from: do, reason: not valid java name */
    public int f11131do = Integer.MAX_VALUE;

    /* renamed from: if, reason: not valid java name */
    public int f11136if = Integer.MAX_VALUE;

    /* renamed from: for, reason: not valid java name */
    public int f11134for = Integer.MIN_VALUE;

    /* renamed from: new, reason: not valid java name */
    public int f11138new = Integer.MIN_VALUE;

    /* renamed from: final, reason: not valid java name */
    public List<Integer> f11133final = new ArrayList();

    /* renamed from: case, reason: not valid java name */
    public float m12546case() {
        return this.f11126break;
    }

    /* renamed from: do, reason: not valid java name */
    public int m12547do() {
        return this.f11132else;
    }

    /* renamed from: else, reason: not valid java name */
    public float m12548else() {
        return this.f11128catch;
    }

    /* renamed from: for, reason: not valid java name */
    public int m12549for() {
        return this.f11135goto;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m12550goto(View view, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f11131do = Math.min(this.f11131do, (view.getLeft() - flexItem.getMarginLeft()) - i);
        this.f11136if = Math.min(this.f11136if, (view.getTop() - flexItem.getMarginTop()) - i2);
        this.f11134for = Math.max(this.f11134for, view.getRight() + flexItem.getMarginRight() + i3);
        this.f11138new = Math.max(this.f11138new, view.getBottom() + flexItem.getMarginBottom() + i4);
    }

    /* renamed from: if, reason: not valid java name */
    public int m12551if() {
        return this.f11139super;
    }

    /* renamed from: new, reason: not valid java name */
    public int m12552new() {
        return this.f11135goto - this.f11140this;
    }

    /* renamed from: try, reason: not valid java name */
    public int m12553try() {
        return this.f11142try;
    }
}
