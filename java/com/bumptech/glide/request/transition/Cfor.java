package com.bumptech.glide.request.transition;

import com.bumptech.glide.request.transition.Transition;

/* renamed from: com.bumptech.glide.request.transition.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor<R> implements Transition<R> {

    /* renamed from: do, reason: not valid java name */
    public static final Cfor<?> f10446do = new Cfor<>();

    /* renamed from: if, reason: not valid java name */
    private static final TransitionFactory<?> f10447if = new Cdo();

    /* renamed from: com.bumptech.glide.request.transition.for$do, reason: invalid class name */
    public static class Cdo<R> implements TransitionFactory<R> {
        @Override // com.bumptech.glide.request.transition.TransitionFactory
        public Transition<R> build(com.bumptech.glide.load.Cdo cdo, boolean z) {
            return Cfor.f10446do;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <R> Transition<R> m12024do() {
        return f10446do;
    }

    /* renamed from: if, reason: not valid java name */
    public static <R> TransitionFactory<R> m12025if() {
        return (TransitionFactory<R>) f10447if;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    public boolean transition(Object obj, Transition.ViewAdapter viewAdapter) {
        return false;
    }
}
