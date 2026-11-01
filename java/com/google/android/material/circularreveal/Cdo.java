package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import androidx.annotation.NonNull;
import com.google.android.material.circularreveal.CircularRevealWidget;

/* renamed from: com.google.android.material.circularreveal.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: com.google.android.material.circularreveal.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0059do extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CircularRevealWidget f11674do;

        public C0059do(CircularRevealWidget circularRevealWidget) {
            this.f11674do = circularRevealWidget;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f11674do.destroyCircularRevealCache();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f11674do.buildCircularRevealCache();
        }
    }

    private Cdo() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static Animator m13109do(@NonNull CircularRevealWidget circularRevealWidget, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(circularRevealWidget, (Property<CircularRevealWidget, V>) CircularRevealWidget.Cfor.f11664do, (TypeEvaluator) CircularRevealWidget.Cif.f11665if, (Object[]) new CircularRevealWidget.Ctry[]{new CircularRevealWidget.Ctry(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return objectAnimatorOfObject;
        }
        CircularRevealWidget.Ctry revealInfo = circularRevealWidget.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) circularRevealWidget, (int) f, (int) f2, revealInfo.f11670for, f3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static Animator.AnimatorListener m13110for(@NonNull CircularRevealWidget circularRevealWidget) {
        return new C0059do(circularRevealWidget);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static Animator m13111if(CircularRevealWidget circularRevealWidget, float f, float f2, float f3, float f4) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(circularRevealWidget, (Property<CircularRevealWidget, V>) CircularRevealWidget.Cfor.f11664do, (TypeEvaluator) CircularRevealWidget.Cif.f11665if, (Object[]) new CircularRevealWidget.Ctry[]{new CircularRevealWidget.Ctry(f, f2, f3), new CircularRevealWidget.Ctry(f, f2, f4)});
        if (Build.VERSION.SDK_INT < 21) {
            return objectAnimatorOfObject;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) circularRevealWidget, (int) f, (int) f2, f3, f4);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }
}
