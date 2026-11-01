package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.google.android.material.internal.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private final ArrayList<Cif> f12190do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private Cif f12192if = null;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    public ValueAnimator f12191for = null;

    /* renamed from: new, reason: not valid java name */
    private final Animator.AnimatorListener f12193new = new Cdo();

    /* renamed from: com.google.android.material.internal.for$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Cfor cfor = Cfor.this;
            if (cfor.f12191for == animator) {
                cfor.f12191for = null;
            }
        }
    }

    /* renamed from: com.google.android.material.internal.for$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int[] f12195do;

        /* renamed from: if, reason: not valid java name */
        public final ValueAnimator f12196if;

        public Cif(int[] iArr, ValueAnimator valueAnimator) {
            this.f12195do = iArr;
            this.f12196if = valueAnimator;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m13675if() {
        ValueAnimator valueAnimator = this.f12191for;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f12191for = null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m13676try(@NonNull Cif cif) {
        ValueAnimator valueAnimator = cif.f12196if;
        this.f12191for = valueAnimator;
        valueAnimator.start();
    }

    /* renamed from: do, reason: not valid java name */
    public void m13677do(int[] iArr, ValueAnimator valueAnimator) {
        Cif cif = new Cif(iArr, valueAnimator);
        valueAnimator.addListener(this.f12193new);
        this.f12190do.add(cif);
    }

    /* renamed from: for, reason: not valid java name */
    public void m13678for() {
        ValueAnimator valueAnimator = this.f12191for;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f12191for = null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m13679new(int[] iArr) {
        Cif cif;
        int size = this.f12190do.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                cif = null;
                break;
            }
            cif = this.f12190do.get(i);
            if (StateSet.stateSetMatches(cif.f12195do, iArr)) {
                break;
            } else {
                i++;
            }
        }
        Cif cif2 = this.f12192if;
        if (cif == cif2) {
            return;
        }
        if (cif2 != null) {
            m13675if();
        }
        this.f12192if = cif;
        if (cif != null) {
            m13676try(cif);
        }
    }
}
