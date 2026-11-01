package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.final, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfinal implements VisibilityAnimatorProvider {

    /* renamed from: case, reason: not valid java name */
    private boolean f13467case;

    /* renamed from: do, reason: not valid java name */
    private float f13468do;

    /* renamed from: for, reason: not valid java name */
    private float f13469for;

    /* renamed from: if, reason: not valid java name */
    private float f13470if;

    /* renamed from: new, reason: not valid java name */
    private float f13471new;

    /* renamed from: try, reason: not valid java name */
    private boolean f13472try;

    /* renamed from: com.google.android.material.transition.platform.final$do, reason: invalid class name */
    public static class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13473do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f13474for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f13475if;

        public Cdo(View view, float f, float f2) {
            this.f13473do = view;
            this.f13475if = f;
            this.f13474for = f2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13473do.setScaleX(this.f13475if);
            this.f13473do.setScaleY(this.f13474for);
        }
    }

    public Cfinal() {
        this(true);
    }

    /* renamed from: do, reason: not valid java name */
    private static Animator m14863do(View view, float f, float f2) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, scaleX * f, scaleX * f2), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f * scaleY, f2 * scaleY));
        objectAnimatorOfPropertyValuesHolder.addListener(new Cdo(view, scaleX, scaleY));
        return objectAnimatorOfPropertyValuesHolder;
    }

    /* renamed from: break, reason: not valid java name */
    public void m14864break(float f) {
        this.f13469for = f;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m14865case() {
        return this.f13472try;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m14866catch(float f) {
        this.f13470if = f;
    }

    /* renamed from: class, reason: not valid java name */
    public void m14867class(float f) {
        this.f13468do = f;
    }

    /* renamed from: const, reason: not valid java name */
    public void m14868const(boolean z) {
        this.f13467case = z;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return this.f13472try ? m14863do(view, this.f13469for, this.f13471new) : m14863do(view, this.f13470if, this.f13468do);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.f13467case) {
            return this.f13472try ? m14863do(view, this.f13468do, this.f13470if) : m14863do(view, this.f13471new, this.f13469for);
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m14869else() {
        return this.f13467case;
    }

    /* renamed from: for, reason: not valid java name */
    public float m14870for() {
        return this.f13469for;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m14871goto(boolean z) {
        this.f13472try = z;
    }

    /* renamed from: if, reason: not valid java name */
    public float m14872if() {
        return this.f13471new;
    }

    /* renamed from: new, reason: not valid java name */
    public float m14873new() {
        return this.f13470if;
    }

    /* renamed from: this, reason: not valid java name */
    public void m14874this(float f) {
        this.f13471new = f;
    }

    /* renamed from: try, reason: not valid java name */
    public float m14875try() {
        return this.f13468do;
    }

    public Cfinal(boolean z) {
        this.f13468do = 1.0f;
        this.f13470if = 1.1f;
        this.f13469for = 0.8f;
        this.f13471new = 1.0f;
        this.f13467case = true;
        this.f13472try = z;
    }
}
