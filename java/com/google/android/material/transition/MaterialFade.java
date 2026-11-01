package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.support.v4.w1;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.R;

/* loaded from: classes.dex */
public final class MaterialFade extends Cgoto<Cfor> {

    /* renamed from: case, reason: not valid java name */
    @AttrRes
    private static final int f13332case = R.attr.motionDurationShort2;

    /* renamed from: else, reason: not valid java name */
    @AttrRes
    private static final int f13333else = R.attr.motionDurationShort1;

    /* renamed from: goto, reason: not valid java name */
    @AttrRes
    private static final int f13334goto = R.attr.motionEasingLinear;

    /* renamed from: new, reason: not valid java name */
    private static final float f13335new = 0.8f;

    /* renamed from: try, reason: not valid java name */
    private static final float f13336try = 0.3f;

    public MaterialFade() {
        super(m14729const(), m14730final());
    }

    /* renamed from: const, reason: not valid java name */
    private static Cfor m14729const() {
        Cfor cfor = new Cfor();
        cfor.m14785for(f13336try);
        return cfor;
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14730final() {
        Cthis cthis = new Cthis();
        cthis.m14967const(false);
        cthis.m14963break(0.8f);
        return cthis;
    }

    @Override // com.google.android.material.transition.Cgoto
    @AttrRes
    /* renamed from: case, reason: not valid java name */
    public int mo14731case(boolean z) {
        return z ? f13332case : f13333else;
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
    /* renamed from: else, reason: not valid java name */
    public int mo14732else(boolean z) {
        return f13334goto;
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

    @Override // com.google.android.material.transition.Cgoto
    @NonNull
    /* renamed from: try, reason: not valid java name */
    public TimeInterpolator mo14733try(boolean z) {
        return w1.f7369do;
    }
}
