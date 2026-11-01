package com.bumptech.glide.request.transition;

import android.content.Context;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.bumptech.glide.request.transition.ViewTransition;

/* renamed from: com.bumptech.glide.request.transition.new, reason: invalid class name */
/* loaded from: classes.dex */
public class Cnew<R> implements TransitionFactory<R> {

    /* renamed from: do, reason: not valid java name */
    private final ViewTransition.ViewTransitionAnimationFactory f10450do;

    /* renamed from: if, reason: not valid java name */
    private Transition<R> f10451if;

    /* renamed from: com.bumptech.glide.request.transition.new$do, reason: invalid class name */
    public static class Cdo implements ViewTransition.ViewTransitionAnimationFactory {

        /* renamed from: do, reason: not valid java name */
        private final Animation f10452do;

        public Cdo(Animation animation) {
            this.f10452do = animation;
        }

        @Override // com.bumptech.glide.request.transition.ViewTransition.ViewTransitionAnimationFactory
        public Animation build(Context context) {
            return this.f10452do;
        }
    }

    /* renamed from: com.bumptech.glide.request.transition.new$if, reason: invalid class name */
    public static class Cif implements ViewTransition.ViewTransitionAnimationFactory {

        /* renamed from: do, reason: not valid java name */
        private final int f10453do;

        public Cif(int i) {
            this.f10453do = i;
        }

        @Override // com.bumptech.glide.request.transition.ViewTransition.ViewTransitionAnimationFactory
        public Animation build(Context context) {
            return AnimationUtils.loadAnimation(context, this.f10453do);
        }
    }

    public Cnew(Animation animation) {
        this(new Cdo(animation));
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(com.bumptech.glide.load.Cdo cdo, boolean z) {
        if (cdo == com.bumptech.glide.load.Cdo.MEMORY_CACHE || !z) {
            return Cfor.m12024do();
        }
        if (this.f10451if == null) {
            this.f10451if = new ViewTransition(this.f10450do);
        }
        return this.f10451if;
    }

    public Cnew(int i) {
        this(new Cif(i));
    }

    public Cnew(ViewTransition.ViewTransitionAnimationFactory viewTransitionAnimationFactory) {
        this.f10450do = viewTransitionAnimationFactory;
    }
}
