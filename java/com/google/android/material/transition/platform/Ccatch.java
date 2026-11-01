package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.catch, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccatch extends Cconst<Cnew> {

    /* renamed from: new, reason: not valid java name */
    private static final float f13446new = 0.92f;

    /* renamed from: try, reason: not valid java name */
    @AttrRes
    private static final int f13447try = R.attr.motionDurationLong1;

    /* renamed from: case, reason: not valid java name */
    @AttrRes
    private static final int f13445case = R.attr.motionEasingStandard;

    public Ccatch() {
        super(m14848const(), m14849final());
    }

    /* renamed from: const, reason: not valid java name */
    private static Cnew m14848const() {
        return new Cnew();
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14849final() {
        Cfinal cfinal = new Cfinal();
        cfinal.m14868const(false);
        cfinal.m14864break(f13446new);
        return cfinal;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @AttrRes
    /* renamed from: case */
    public int mo14840case(boolean z) {
        return f13447try;
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
    @AttrRes
    /* renamed from: else */
    public int mo14844else(boolean z) {
        return f13445case;
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

    @Override // com.google.android.material.transition.platform.Cconst
    @Nullable
    /* renamed from: this */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14846this() {
        return super.mo14846this();
    }
}
