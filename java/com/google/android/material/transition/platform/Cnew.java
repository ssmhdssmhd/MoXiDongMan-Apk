package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.common.collect.LinkedHashMultimap;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements VisibilityAnimatorProvider {

    /* renamed from: if, reason: not valid java name */
    public static final float f13580if = 0.35f;

    /* renamed from: do, reason: not valid java name */
    private float f13581do = 0.35f;

    /* renamed from: com.google.android.material.transition.platform.new$do, reason: invalid class name */
    public static class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13582do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13583for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13584if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f13585new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f13586try;

        public Cdo(View view, float f, float f2, float f3, float f4) {
            this.f13582do = view;
            this.f13584if = f;
            this.f13583for = f2;
            this.f13585new = f3;
            this.f13586try = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13582do.setAlpha(TransitionUtils.m14831super(this.f13584if, this.f13583for, this.f13585new, this.f13586try, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.platform.new$if, reason: invalid class name */
    public static class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13587do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13588if;

        public Cif(View view, float f) {
            this.f13587do = view;
            this.f13588if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13587do.setAlpha(this.f13588if);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14944do(View view, float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, float f5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new Cdo(view, f, f2, f3, f4));
        valueAnimatorOfFloat.addListener(new Cif(view, f5));
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14944do(view, 0.0f, alpha, this.f13581do, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14944do(view, alpha, 0.0f, 0.0f, this.f13581do, alpha);
    }

    /* renamed from: for, reason: not valid java name */
    public void m14945for(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f13581do = f;
    }

    /* renamed from: if, reason: not valid java name */
    public float m14946if() {
        return this.f13581do;
    }
}
