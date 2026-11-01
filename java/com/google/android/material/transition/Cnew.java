package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.common.collect.LinkedHashMultimap;

/* renamed from: com.google.android.material.transition.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements VisibilityAnimatorProvider {

    /* renamed from: if, reason: not valid java name */
    public static final float f13398if = 0.35f;

    /* renamed from: do, reason: not valid java name */
    private float f13399do = 0.35f;

    /* renamed from: com.google.android.material.transition.new$do, reason: invalid class name */
    public static class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13400do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13401for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13402if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f13403new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f13404try;

        public Cdo(View view, float f, float f2, float f3, float f4) {
            this.f13400do = view;
            this.f13402if = f;
            this.f13401for = f2;
            this.f13403new = f3;
            this.f13404try = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13400do.setAlpha(TransitionUtils.m14762super(this.f13402if, this.f13401for, this.f13403new, this.f13404try, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.new$if, reason: invalid class name */
    public static class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13405do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13406if;

        public Cif(View view, float f) {
            this.f13405do = view;
            this.f13406if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13405do.setAlpha(this.f13406if);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14792do(View view, float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, float f5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new Cdo(view, f, f2, f3, f4));
        valueAnimatorOfFloat.addListener(new Cif(view, f5));
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14792do(view, 0.0f, alpha, this.f13399do, 1.0f, alpha);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14792do(view, alpha, 0.0f, 0.0f, this.f13399do, alpha);
    }

    /* renamed from: for, reason: not valid java name */
    public void m14793for(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f13399do = f;
    }

    /* renamed from: if, reason: not valid java name */
    public float m14794if() {
        return this.f13399do;
    }
}
