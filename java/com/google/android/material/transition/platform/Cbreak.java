package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.support.v4.w1;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak extends Cconst<Cfor> {

    /* renamed from: case, reason: not valid java name */
    @AttrRes
    private static final int f13434case = R.attr.motionDurationShort2;

    /* renamed from: else, reason: not valid java name */
    @AttrRes
    private static final int f13435else = R.attr.motionDurationShort1;

    /* renamed from: goto, reason: not valid java name */
    @AttrRes
    private static final int f13436goto = R.attr.motionEasingLinear;

    /* renamed from: new, reason: not valid java name */
    private static final float f13437new = 0.8f;

    /* renamed from: try, reason: not valid java name */
    private static final float f13438try = 0.3f;

    public Cbreak() {
        super(m14838const(), m14839final());
    }

    /* renamed from: const, reason: not valid java name */
    private static Cfor m14838const() {
        Cfor cfor = new Cfor();
        cfor.m14877for(f13438try);
        return cfor;
    }

    /* renamed from: final, reason: not valid java name */
    private static VisibilityAnimatorProvider m14839final() {
        Cfinal cfinal = new Cfinal();
        cfinal.m14868const(false);
        cfinal.m14864break(0.8f);
        return cfinal;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @AttrRes
    /* renamed from: case, reason: not valid java name */
    public int mo14840case(boolean z) {
        return z ? f13434case : f13435else;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: catch, reason: not valid java name */
    public /* bridge */ /* synthetic */ boolean mo14841catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return super.mo14841catch(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: class, reason: not valid java name */
    public /* bridge */ /* synthetic */ void mo14842class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14842class(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: do, reason: not valid java name */
    public /* bridge */ /* synthetic */ void mo14843do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        super.mo14843do(visibilityAnimatorProvider);
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @AttrRes
    /* renamed from: else, reason: not valid java name */
    public int mo14844else(boolean z) {
        return f13436goto;
    }

    @Override // com.google.android.material.transition.platform.Cconst
    /* renamed from: for, reason: not valid java name */
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
    /* renamed from: this, reason: not valid java name */
    public /* bridge */ /* synthetic */ VisibilityAnimatorProvider mo14846this() {
        return super.mo14846this();
    }

    @Override // com.google.android.material.transition.platform.Cconst
    @NonNull
    /* renamed from: try, reason: not valid java name */
    public TimeInterpolator mo14847try(boolean z) {
        return w1.f7369do;
    }
}
