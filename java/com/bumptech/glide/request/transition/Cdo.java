package com.bumptech.glide.request.transition;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.transition.Transition;

/* renamed from: com.bumptech.glide.request.transition.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo<R> implements TransitionFactory<R> {

    /* renamed from: do, reason: not valid java name */
    private final TransitionFactory<Drawable> f10443do;

    /* renamed from: com.bumptech.glide.request.transition.do$do, reason: invalid class name and collision with other inner class name */
    public final class C0044do implements Transition<R> {

        /* renamed from: do, reason: not valid java name */
        private final Transition<Drawable> f10444do;

        public C0044do(Transition<Drawable> transition) {
            this.f10444do = transition;
        }

        @Override // com.bumptech.glide.request.transition.Transition
        public boolean transition(R r, Transition.ViewAdapter viewAdapter) {
            return this.f10444do.transition(new BitmapDrawable(viewAdapter.getView().getResources(), Cdo.this.mo6445do(r)), viewAdapter);
        }
    }

    public Cdo(TransitionFactory<Drawable> transitionFactory) {
        this.f10443do = transitionFactory;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> build(com.bumptech.glide.load.Cdo cdo, boolean z) {
        return new C0044do(this.f10443do.build(cdo, z));
    }

    /* renamed from: do */
    public abstract Bitmap mo6445do(R r);
}
