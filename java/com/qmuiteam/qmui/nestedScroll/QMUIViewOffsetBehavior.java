package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.support.v4.zh1;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes2.dex */
public class QMUIViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: do, reason: not valid java name */
    private zh1 f19216do;

    /* renamed from: for, reason: not valid java name */
    private int f19217for;

    /* renamed from: if, reason: not valid java name */
    private int f19218if;

    public QMUIViewOffsetBehavior() {
        this.f19218if = 0;
        this.f19217for = 0;
    }

    /* renamed from: do, reason: not valid java name */
    public int m23556do() {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            return zh1Var.m10206do();
        }
        return 0;
    }

    public int getLeftAndRightOffset() {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            return zh1Var.m10208for();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            return zh1Var.m10211new();
        }
        return 0;
    }

    /* renamed from: if, reason: not valid java name */
    public int m23557if() {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            return zh1Var.m10210if();
        }
        return 0;
    }

    public boolean isHorizontalOffsetEnabled() {
        zh1 zh1Var = this.f19216do;
        return zh1Var != null && zh1Var.m10213try();
    }

    public boolean isVerticalOffsetEnabled() {
        zh1 zh1Var = this.f19216do;
        return zh1Var != null && zh1Var.m10203case();
    }

    public void layoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        layoutChild(coordinatorLayout, v, i);
        if (this.f19216do == null) {
            this.f19216do = new zh1(v);
        }
        this.f19216do.m10207else();
        int i2 = this.f19218if;
        if (i2 != 0) {
            this.f19216do.m10204catch(i2);
            this.f19218if = 0;
        }
        int i3 = this.f19217for;
        if (i3 == 0) {
            return true;
        }
        this.f19216do.m10212this(i3);
        this.f19217for = 0;
        return true;
    }

    public void setHorizontalOffsetEnabled(boolean z) {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            zh1Var.m10209goto(z);
        }
    }

    public boolean setLeftAndRightOffset(int i) {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            return zh1Var.m10212this(i);
        }
        this.f19217for = i;
        return false;
    }

    public boolean setTopAndBottomOffset(int i) {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            return zh1Var.m10204catch(i);
        }
        this.f19218if = i;
        return false;
    }

    public void setVerticalOffsetEnabled(boolean z) {
        zh1 zh1Var = this.f19216do;
        if (zh1Var != null) {
            zh1Var.m10205class(z);
        }
    }

    public QMUIViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19218if = 0;
        this.f19217for = 0;
    }
}
