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
/* renamed from: com.google.android.material.transition.platform.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements VisibilityAnimatorProvider {

    /* renamed from: do, reason: not valid java name */
    private float f13476do = 1.0f;

    /* renamed from: com.google.android.material.transition.platform.for$do, reason: invalid class name */
    public static class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13477do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13478for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13479if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f13480new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f13481try;

        public Cdo(View view, float f, float f2, float f3, float f4) {
            this.f13477do = view;
            this.f13479if = f;
            this.f13478for = f2;
            this.f13480new = f3;
            this.f13481try = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13477do.setAlpha(TransitionUtils.m14831super(this.f13479if, this.f13478for, this.f13480new, this.f13481try, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: com.google.android.material.transition.platform.for$if, reason: invalid class name */
    public static class Cif extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13482do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13483if;

        public Cif(View view, float f) {
            this.f13482do = view;
            this.f13483if = f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13482do.setAlpha(this.f13483if);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14876do(View view, float f, float f2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f3, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f4, float f5) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new Cdo(view, f, f2, f3, f4));
        valueAnimatorOfFloat.addListener(new Cif(view, f5));
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14876do(view, 0.0f, alpha, 0.0f, this.f13476do, alpha);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        return m14876do(view, alpha, 0.0f, 0.0f, 1.0f, alpha);
    }

    /* renamed from: for, reason: not valid java name */
    public void m14877for(float f) {
        this.f13476do = f;
    }

    /* renamed from: if, reason: not valid java name */
    public float m14878if() {
        return this.f13476do;
    }
}
