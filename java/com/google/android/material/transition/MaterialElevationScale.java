package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;

/* loaded from: classes.dex */
public final class MaterialElevationScale extends Cgoto<Cthis> {

    /* renamed from: try, reason: not valid java name */
    private static final float f13330try = 0.85f;

    /* renamed from: new, reason: not valid java name */
    private final boolean f13331new;

    public MaterialElevationScale(boolean z) {
        super(m14721const(z), m14722final());
        this.f13331new = z;
    }

    /* renamed from: const, reason: not valid java name */
    private static Cthis m14721const(boolean z) {
        Cthis cthis = new Cthis(z);
        cthis.m14965catch(f13330try);
        cthis.m14963break(f13330try);
        return cthis;
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14722final() {
        return new Cfor();
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: catch, reason: not valid java name */
    public /* bridge */ /* synthetic */ boolean mo14723catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.mo14723catch(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: class, reason: not valid java name */
    public /* bridge */ /* synthetic */ void mo14724class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14724class(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: do, reason: not valid java name */
    public /* bridge */ /* synthetic */ void mo14725do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14725do(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: for, reason: not valid java name */
    public /* bridge */ /* synthetic */ void mo14726for() {
        super.mo14726for();
    }

    @Override // com.google.android.material.transition.Cgoto, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.Cgoto, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m14727super() {
        return this.f13331new;
    }

    @Override // com.google.android.material.transition.Cgoto
    @Nullable
    /* renamed from: this, reason: not valid java name */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14728this() {
        return super.mo14728this();
    }
}
