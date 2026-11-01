package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.v4.w1;
import android.support.v4.z1;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import com.google.android.material.transition.VisibilityAnimatorProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.android.material.transition.goto, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cgoto<P extends VisibilityAnimatorProvider> extends Visibility {

    /* renamed from: do, reason: not valid java name */
    private final P f13392do;

    /* renamed from: for, reason: not valid java name */
    private final List<VisibilityAnimatorProvider> f13393for = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private VisibilityAnimatorProvider f13394if;

    public Cgoto(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f13392do = p;
        this.f13394if = visibilityAnimatorProvider;
    }

    /* renamed from: break, reason: not valid java name */
    private void m14787break(@NonNull Context context, boolean z) {
        TransitionUtils.m14759public(this, context, mo14731case(z));
        TransitionUtils.m14760return(this, context, mo14732else(z), mo14733try(z));
    }

    /* renamed from: if, reason: not valid java name */
    private static void m14788if(List<Animator> list, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider, ViewGroup viewGroup, View view, boolean z) {
        if (visibilityAnimatorProvider == null) {
            return;
        }
        Animator animatorCreateAppear = z ? visibilityAnimatorProvider.createAppear(viewGroup, view) : visibilityAnimatorProvider.createDisappear(viewGroup, view);
        if (animatorCreateAppear != null) {
            list.add(animatorCreateAppear);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private Animator m14789new(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        m14788if(arrayList, this.f13392do, viewGroup, view, z);
        m14788if(arrayList, this.f13394if, viewGroup, view, z);
        Iterator<VisibilityAnimatorProvider> it = this.f13393for.iterator();
        while (it.hasNext()) {
            m14788if(arrayList, it.next(), viewGroup, view, z);
        }
        m14787break(viewGroup.getContext(), z);
        z1.m10010do(animatorSet, arrayList);
        return animatorSet;
    }

    @AttrRes
    /* renamed from: case */
    public int mo14731case(boolean z) {
        return 0;
    }

    /* renamed from: catch */
    public boolean mo14723catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return this.f13393for.remove(visibilityAnimatorProvider);
    }

    /* renamed from: class */
    public void mo14724class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f13394if = visibilityAnimatorProvider;
    }

    /* renamed from: do */
    public void mo14725do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f13393for.add(visibilityAnimatorProvider);
    }

    @AttrRes
    /* renamed from: else */
    public int mo14732else(boolean z) {
        return 0;
    }

    /* renamed from: for */
    public void mo14726for() {
        this.f13393for.clear();
    }

    @NonNull
    /* renamed from: goto */
    public P mo14738goto() {
        return this.f13392do;
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m14789new(viewGroup, view, true);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m14789new(viewGroup, view, false);
    }

    @Nullable
    /* renamed from: this */
    public VisibilityAnimatorProvider mo14728this() {
        return this.f13394if;
    }

    @NonNull
    /* renamed from: try */
    public TimeInterpolator mo14733try(boolean z) {
        return w1.f7371if;
    }
}
