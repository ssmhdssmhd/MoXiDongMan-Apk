package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.support.v4.w1;
import android.support.v4.z1;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.transition.platform.VisibilityAnimatorProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.const, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cconst<P extends VisibilityAnimatorProvider> extends Visibility {

    /* renamed from: do, reason: not valid java name */
    private final P f13455do;

    /* renamed from: for, reason: not valid java name */
    private final List<VisibilityAnimatorProvider> f13456for = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private VisibilityAnimatorProvider f13457if;

    public Cconst(P p, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f13455do = p;
        this.f13457if = visibilityAnimatorProvider;
    }

    /* renamed from: break, reason: not valid java name */
    private void m14855break(@NonNull Context context, boolean z) {
        TransitionUtils.m14828public(this, context, mo14840case(z));
        TransitionUtils.m14829return(this, context, mo14844else(z), mo14847try(z));
    }

    /* renamed from: if, reason: not valid java name */
    private static void m14856if(List<Animator> list, @Nullable VisibilityAnimatorProvider visibilityAnimatorProvider, ViewGroup viewGroup, View view, boolean z) {
        if (visibilityAnimatorProvider == null) {
            return;
        }
        Animator animatorCreateAppear = z ? visibilityAnimatorProvider.createAppear(viewGroup, view) : visibilityAnimatorProvider.createDisappear(viewGroup, view);
        if (animatorCreateAppear != null) {
            list.add(animatorCreateAppear);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private Animator m14857new(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        m14856if(arrayList, this.f13455do, viewGroup, view, z);
        m14856if(arrayList, this.f13457if, viewGroup, view, z);
        Iterator<VisibilityAnimatorProvider> it = this.f13456for.iterator();
        while (it.hasNext()) {
            m14856if(arrayList, it.next(), viewGroup, view, z);
        }
        m14855break(viewGroup.getContext(), z);
        z1.m10010do(animatorSet, arrayList);
        return animatorSet;
    }

    @AttrRes
    /* renamed from: case */
    public int mo14840case(boolean z) {
        return 0;
    }

    /* renamed from: catch */
    public boolean mo14841catch(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        return this.f13456for.remove(visibilityAnimatorProvider);
    }

    /* renamed from: class */
    public void mo14842class(@Nullable VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f13457if = visibilityAnimatorProvider;
    }

    /* renamed from: do */
    public void mo14843do(@NonNull VisibilityAnimatorProvider visibilityAnimatorProvider) {
        this.f13456for.add(visibilityAnimatorProvider);
    }

    @AttrRes
    /* renamed from: else */
    public int mo14844else(boolean z) {
        return 0;
    }

    /* renamed from: for */
    public void mo14845for() {
        this.f13456for.clear();
    }

    @NonNull
    /* renamed from: goto */
    public P mo14852goto() {
        return this.f13455do;
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m14857new(viewGroup, view, true);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return m14857new(viewGroup, view, false);
    }

    @Nullable
    /* renamed from: this */
    public VisibilityAnimatorProvider mo14846this() {
        return this.f13457if;
    }

    @NonNull
    /* renamed from: try */
    public TimeInterpolator mo14847try(boolean z) {
        return w1.f7371if;
    }
}
