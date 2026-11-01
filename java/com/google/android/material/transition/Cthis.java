package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* renamed from: com.google.android.material.transition.this, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthis implements VisibilityAnimatorProvider {

    /* renamed from: case, reason: not valid java name */
    private boolean f13600case;

    /* renamed from: do, reason: not valid java name */
    private float f13601do;

    /* renamed from: for, reason: not valid java name */
    private float f13602for;

    /* renamed from: if, reason: not valid java name */
    private float f13603if;

    /* renamed from: new, reason: not valid java name */
    private float f13604new;

    /* renamed from: try, reason: not valid java name */
    private boolean f13605try;

    /* renamed from: com.google.android.material.transition.this$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13606do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13607for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13608if;

        public Cdo(View view, float f, float f2) {
            this.f13606do = view;
            this.f13608if = f;
            this.f13607for = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13606do.setScaleX(this.f13608if);
            this.f13606do.setScaleY(this.f13607for);
        }
    }

    public Cthis() {
        this(true);
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14962do(View view, float f, float f2) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, scaleX * f, scaleX * f2), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f * scaleY, f2 * scaleY));
        objectAnimatorOfPropertyValuesHolder.addListener(new Cdo(view, scaleX, scaleY));
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* renamed from: break, reason: not valid java name */
    public void m14963break(float f) {
        this.f13602for = f;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m14964case() {
        return this.f13605try;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m14965catch(float f) {
        this.f13603if = f;
    }

    /* renamed from: class, reason: not valid java name */
    public void m14966class(float f) {
        this.f13601do = f;
    }

    /* renamed from: const, reason: not valid java name */
    public void m14967const(boolean z) {
        this.f13600case = z;
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f13605try ? m14962do(view, this.f13602for, this.f13604new) : m14962do(view, this.f13603if, this.f13601do);
    }

    @Override // com.google.android.material.transition.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f13600case) {
            return this.f13605try ? m14962do(view, this.f13601do, this.f13603if) : m14962do(view, this.f13604new, this.f13602for);
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m14968else() {
        return this.f13600case;
    }

    /* renamed from: for, reason: not valid java name */
    public float m14969for() {
        return this.f13602for;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m14970goto(boolean z) {
        this.f13605try = z;
    }

    /* renamed from: if, reason: not valid java name */
    public float m14971if() {
        return this.f13604new;
    }

    /* renamed from: new, reason: not valid java name */
    public float m14972new() {
        return this.f13603if;
    }

    /* renamed from: this, reason: not valid java name */
    public void m14973this(float f) {
        this.f13604new = f;
    }

    /* renamed from: try, reason: not valid java name */
    public float m14974try() {
        return this.f13601do;
    }

    public Cthis(boolean z) {
        this.f13601do = 1.0f;
        this.f13603if = 1.1f;
        this.f13602for = 0.8f;
        this.f13604new = 1.0f;
        this.f13600case = true;
        this.f13605try = z;
    }
}
