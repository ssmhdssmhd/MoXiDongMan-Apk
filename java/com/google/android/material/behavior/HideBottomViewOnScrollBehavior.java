package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.v4.w1;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: case, reason: not valid java name */
    public static final int f11319case = 175;

    /* renamed from: else, reason: not valid java name */
    private static final int f11320else = 1;

    /* renamed from: goto, reason: not valid java name */
    private static final int f11321goto = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f11322try = 225;

    /* renamed from: do, reason: not valid java name */
    private int f11323do;

    /* renamed from: for, reason: not valid java name */
    private int f11324for;

    /* renamed from: if, reason: not valid java name */
    private int f11325if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private ViewPropertyAnimator f11326new;

    /* renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f11326new = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f11323do = 0;
        this.f11325if = 2;
        this.f11324for = 0;
    }

    /* renamed from: if, reason: not valid java name */
    private void m12778if(@NonNull V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f11326new = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new Cdo());
    }

    /* renamed from: for, reason: not valid java name */
    public void m12779for(@NonNull V v, @Dimension int i) {
        this.f11324for = i;
        if (this.f11325if == 1) {
            v.setTranslationY(this.f11323do + i);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m12780new(@NonNull V v) {
        if (this.f11325if == 1) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f11326new;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f11325if = 1;
        m12778if(v, this.f11323do + this.f11324for, 175L, w1.f7370for);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        this.f11323do = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        if (i2 > 0) {
            m12780new(v);
        } else if (i2 < 0) {
            m12781try(v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        return i == 2;
    }

    /* renamed from: try, reason: not valid java name */
    public void m12781try(@NonNull V v) {
        if (this.f11325if == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f11326new;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f11325if = 2;
        m12778if(v, 0, 225L, w1.f7372new);
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11323do = 0;
        this.f11325if = 2;
        this.f11324for = 0;
    }
}
