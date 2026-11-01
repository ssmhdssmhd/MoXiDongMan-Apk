package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.this, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthis extends Cconst<Cfinal> {

    /* renamed from: try, reason: not valid java name */
    private static final float f13596try = 0.85f;

    /* renamed from: new, reason: not valid java name */
    private final boolean f13597new;

    public Cthis(boolean z) {
        super(m14957const(z), m14958final());
        this.f13597new = z;
    }

    /* renamed from: const, reason: not valid java name */
    private static Cfinal m14957const(boolean z) {
        Cfinal cfinal = new Cfinal(z);
        cfinal.m14866catch(f13596try);
        cfinal.m14864break(f13596try);
        return cfinal;
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14958final() {
        return new Cfor();
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: catch */
    public /* bridge */ /* synthetic */ boolean mo14841catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.mo14841catch(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: class */
    public /* bridge */ /* synthetic */ void mo14842class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14842class(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: do */
    public /* bridge */ /* synthetic */ void mo14843do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14843do(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: for */
    public /* bridge */ /* synthetic */ void mo14845for() {
        super.mo14845for();
    }

    @Override // com.google.android.material.transition.platform.Cconst, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.Cconst, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m14959super() {
        return this.f13597new;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @Nullable
    /* renamed from: this */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14846this() {
        return super.mo14846this();
    }
}
