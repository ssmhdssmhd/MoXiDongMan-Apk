package com.google.android.material.appbar;

import android.R;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.k62;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* renamed from: com.google.android.material.appbar.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry {

    /* renamed from: do, reason: not valid java name */
    private static final int[] f11269do = {R.attr.stateListAnimator};

    /* renamed from: do, reason: not valid java name */
    public static void m12693do(@NonNull View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m12694for(@NonNull View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context, attributeSet, f11269do, i, i2, new int[0]);
        try {
            if (typedArrayM4267break.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, typedArrayM4267break.getResourceId(0, 0)));
            }
        } finally {
            typedArrayM4267break.recycle();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m12695if(@NonNull View view, float f) throws Resources.NotFoundException {
        int integer = view.getResources().getInteger(com.google.android.material.R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{R.attr.enabled, com.google.android.material.R.attr.state_liftable, -com.google.android.material.R.attr.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
