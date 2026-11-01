package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.R;

/* loaded from: classes.dex */
public final class MaterialFadeThrough extends Cgoto<Cnew> {

    /* renamed from: new, reason: not valid java name */
    private static final float f13338new = 0.92f;

    /* renamed from: try, reason: not valid java name */
    @AttrRes
    private static final int f13339try = R.attr.motionDurationLong1;

    /* renamed from: case, reason: not valid java name */
    @AttrRes
    private static final int f13337case = R.attr.motionEasingStandard;

    public MaterialFadeThrough() {
        super(m14734const(), m14735final());
    }

    /* renamed from: const, reason: not valid java name */
    private static Cnew m14734const() {
        return new Cnew();
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14735final() {
        Cthis cthis = new Cthis();
        cthis.m14967const(false);
        cthis.m14963break(f13338new);
        return cthis;
    }

    @Override // com.google.android.material.transition.Cgoto
    @AttrRes
    /* renamed from: case */
    public int mo14731case(boolean z) {
        return f13339try;
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: catch */
    public /* bridge */ /* synthetic */ boolean mo14723catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.mo14723catch(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: class */
    public /* bridge */ /* synthetic */ void mo14724class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14724class(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: do */
    public /* bridge */ /* synthetic */ void mo14725do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14725do(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.Cgoto
    @AttrRes
    /* renamed from: else */
    public int mo14732else(boolean z) {
        return f13337case;
    }

    @Override // com.google.android.material.transition.Cgoto
    /* renamed from: for */
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

    @Override // com.google.android.material.transition.Cgoto
    @Nullable
    /* renamed from: this */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14728this() {
        return super.mo14728this();
    }
}
