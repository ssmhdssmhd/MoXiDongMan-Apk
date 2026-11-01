package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.badge.BadgeDrawable;
import java.util.List;

/* renamed from: com.google.android.material.appbar.if, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cif extends Cfor<View> {

    /* renamed from: do, reason: not valid java name */
    public final Rect f11258do;

    /* renamed from: for, reason: not valid java name */
    private int f11259for;

    /* renamed from: if, reason: not valid java name */
    public final Rect f11260if;

    /* renamed from: new, reason: not valid java name */
    private int f11261new;

    public Cif() {
        this.f11258do = new Rect();
        this.f11260if = new Rect();
        this.f11259for = 0;
    }

    /* renamed from: else, reason: not valid java name */
    private static int m12675else(int i) {
        return i == 0 ? BadgeDrawable.f11272import : i;
    }

    /* renamed from: case, reason: not valid java name */
    public final int m12676case() {
        return this.f11259for;
    }

    @Nullable
    /* renamed from: do */
    public abstract View mo12628do(List<View> list);

    /* renamed from: for */
    public float mo12629for(View view) {
        return 1.0f;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m12677goto(int i) {
        this.f11261new = i;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m12678if(View view) {
        if (this.f11261new == 0) {
            return 0;
        }
        float fMo12629for = mo12629for(view);
        int i = this.f11261new;
        return MathUtils.clamp((int) (fMo12629for * i), 0, i);
    }

    @Override // com.google.android.material.appbar.Cfor
    public void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        View viewMo12628do = mo12628do(coordinatorLayout.getDependencies(view));
        if (viewMo12628do == null) {
            super.layoutChild(coordinatorLayout, view, i);
            this.f11259for = 0;
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        Rect rect = this.f11258do;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, viewMo12628do.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + viewMo12628do.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.f11260if;
        GravityCompat.apply(m12675else(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int iM12678if = m12678if(viewMo12628do);
        view.layout(rect2.left, rect2.top - iM12678if, rect2.right, rect2.bottom - iM12678if);
        this.f11259for = rect2.top - viewMo12628do.getBottom();
    }

    /* renamed from: new, reason: not valid java name */
    public final int m12679new() {
        return this.f11261new;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
        View viewMo12628do;
        WindowInsetsCompat lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (viewMo12628do = mo12628do(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (ViewCompat.getFitsSystemWindows(viewMo12628do) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetTop() + lastWindowInsets.getSystemWindowInsetBottom();
        }
        int iMo12630try = size + mo12630try(viewMo12628do);
        int measuredHeight = viewMo12628do.getMeasuredHeight();
        if (m12680this()) {
            view.setTranslationY(-measuredHeight);
        } else {
            iMo12630try -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(iMo12630try, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m12680this() {
        return false;
    }

    /* renamed from: try */
    public int mo12630try(@NonNull View view) {
        return view.getMeasuredHeight();
    }

    public Cif(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11258do = new Rect();
        this.f11260if = new Rect();
        this.f11259for = 0;
    }
}
