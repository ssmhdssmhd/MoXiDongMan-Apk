package com.bumptech.glide.request.transition;

import com.bumptech.glide.load.Cdo;
import com.bumptech.glide.request.transition.ViewPropertyTransition;

/* renamed from: com.bumptech.glide.request.transition.try, reason: invalid class name */
/* loaded from: classes.dex */
public class Ctry<R> implements TransitionFactory<R> {

    /* renamed from: do, reason: not valid java name */
    private final ViewPropertyTransition.Animator f10454do;

    /* renamed from: if, reason: not valid java name */
    private ViewPropertyTransition<R> f10455if;

    public Ctry(ViewPropertyTransition.Animator animator) {
        this.f10454do = animator;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(Cdo cdo, boolean z) {
        if (cdo == Cdo.MEMORY_CACHE || !z) {
            return Cfor.m12024do();
        }
        if (this.f10455if == null) {
            this.f10455if = new ViewPropertyTransition<>(this.f10454do);
        }
        return this.f10455if;
    }
}
