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

/* renamed from: com.google.android.material.transition.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements VisibilityAnimatorProvider {

    /* renamed from: do, reason: not valid java name */
    private float f13384do = 1.0f;

    /* renamed from: com.google.android.material.transition.for$do, reason: invalid class name */
    public static class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13385do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13386for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13387if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f13388new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f13389try;

        public Cdo(View view, float f, float f2, float f3, float f4) {
            this.f13385do = view;
            this.f13387if = f;
            this.f13386for = f2;
            this.f13388new = f3;
            this.f13389try = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13385do.setAlpha(TransitionUtils.m14762super(this.f13387if, this.f13386for, this.f13388new, this.f13389try, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.for$if, reason: invalid class name */
    public static class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13390do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13391if;

        public Cif(View view, float f) {
            this.f13390do = view;
            this.f13391if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13390do.setAlpha(this.f13391if);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14784do(View view, float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, float f5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new Cdo(view, f, f2, f3, f4));
        valueAnimatorOfFloat.addListener(new Cif(view, f5));
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14784do(view, 0.0f, alpha, 0.0f, this.f13384do, alpha);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14784do(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    /* renamed from: for, reason: not valid java name */
    public void m14785for(float f) {
        this.f13384do = f;
    }

    /* renamed from: if, reason: not valid java name */
    public float m14786if() {
        return this.f13384do;
    }
}
