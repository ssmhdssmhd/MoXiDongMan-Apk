package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.annotation.NonNull;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* renamed from: com.google.android.material.progressindicator.try, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Ctry<T extends Animator> {

    /* renamed from: do, reason: not valid java name */
    public IndeterminateDrawable f12430do;

    /* renamed from: for, reason: not valid java name */
    public final int[] f12431for;

    /* renamed from: if, reason: not valid java name */
    public final float[] f12432if;

    public Ctry(int i) {
        this.f12432if = new float[i * 2];
        this.f12431for = new int[i];
    }

    /* renamed from: case */
    public abstract void mo13826case();

    /* renamed from: do */
    public abstract void mo13827do();

    /* renamed from: else */
    public abstract void mo13828else();

    /* renamed from: for */
    public abstract void mo13829for();

    /* renamed from: goto */
    public abstract void mo13830goto();

    /* renamed from: if, reason: not valid java name */
    public float m13889if(int i, int i2, int i3) {
        return (i - i2) / i3;
    }

    /* renamed from: new */
    public abstract void mo13832new(@NonNull Animatable2Compat.AnimationCallback animationCallback);

    /* renamed from: try, reason: not valid java name */
    public void m13890try(@NonNull IndeterminateDrawable indeterminateDrawable) {
        this.f12430do = indeterminateDrawable;
    }
}
