package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

/* renamed from: com.google.android.material.appbar.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew {

    /* renamed from: do, reason: not valid java name */
    private final View f11263do;

    /* renamed from: for, reason: not valid java name */
    private int f11265for;

    /* renamed from: if, reason: not valid java name */
    private int f11266if;

    /* renamed from: new, reason: not valid java name */
    private int f11267new;

    /* renamed from: try, reason: not valid java name */
    private int f11268try;

    /* renamed from: case, reason: not valid java name */
    private boolean f11262case = true;

    /* renamed from: else, reason: not valid java name */
    private boolean f11264else = true;

    public Cnew(View view) {
        this.f11263do = view;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m12681break(int i) {
        if (!this.f11264else || this.f11268try == i) {
            return false;
        }
        this.f11268try = i;
        m12685do();
        return true;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m12682case() {
        return this.f11264else;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m12683catch(int i) {
        if (!this.f11262case || this.f11267new == i) {
            return false;
        }
        this.f11267new = i;
        m12685do();
        return true;
    }

    /* renamed from: class, reason: not valid java name */
    public void m12684class(boolean z) {
        this.f11262case = z;
    }

    /* renamed from: do, reason: not valid java name */
    public void m12685do() {
        View view = this.f11263do;
        ViewCompat.offsetTopAndBottom(view, this.f11267new - (view.getTop() - this.f11266if));
        View view2 = this.f11263do;
        ViewCompat.offsetLeftAndRight(view2, this.f11268try - (view2.getLeft() - this.f11265for));
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m12686else() {
        return this.f11262case;
    }

    /* renamed from: for, reason: not valid java name */
    public int m12687for() {
        return this.f11266if;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m12688goto() {
        this.f11266if = this.f11263do.getTop();
        this.f11265for = this.f11263do.getLeft();
    }

    /* renamed from: if, reason: not valid java name */
    public int m12689if() {
        return this.f11265for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m12690new() {
        return this.f11268try;
    }

    /* renamed from: this, reason: not valid java name */
    public void m12691this(boolean z) {
        this.f11264else = z;
    }

    /* renamed from: try, reason: not valid java name */
    public int m12692try() {
        return this.f11267new;
    }
}
