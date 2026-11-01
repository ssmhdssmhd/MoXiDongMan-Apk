package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.v4.ft0;
import android.support.v4.n7;
import android.support.v4.qx0;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.Arrays;

/* renamed from: com.google.android.material.progressindicator.else, reason: invalid class name */
/* loaded from: classes.dex */
final class Celse extends Ctry<ObjectAnimator> {

    /* renamed from: break, reason: not valid java name */
    private static final int f12362break = 667;

    /* renamed from: catch, reason: not valid java name */
    private static final int f12363catch = 333;

    /* renamed from: class, reason: not valid java name */
    private static final Property<Celse, Float> f12364class = new Cif(Float.class, "animationFraction");

    /* renamed from: case, reason: not valid java name */
    private final n7 f12365case;

    /* renamed from: else, reason: not valid java name */
    private int f12366else;

    /* renamed from: goto, reason: not valid java name */
    private boolean f12367goto;

    /* renamed from: new, reason: not valid java name */
    private ObjectAnimator f12368new;

    /* renamed from: this, reason: not valid java name */
    private float f12369this;

    /* renamed from: try, reason: not valid java name */
    private FastOutSlowInInterpolator f12370try;

    /* renamed from: com.google.android.material.progressindicator.else$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            Celse celse = Celse.this;
            celse.f12366else = (celse.f12366else + 1) % Celse.this.f12365case.f4132for.length;
            Celse.this.f12367goto = true;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.else$if, reason: invalid class name */
    public static class Cif extends Property<Celse, Float> {
        public Cif(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(Celse celse) {
            return Float.valueOf(celse.m13821final());
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(Celse celse, Float f) {
            celse.m13831import(f.floatValue());
        }
    }

    public Celse(@NonNull ft0 ft0Var) {
        super(3);
        this.f12366else = 1;
        this.f12365case = ft0Var;
        this.f12370try = new FastOutSlowInInterpolator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public float m13821final() {
        return this.f12369this;
    }

    /* renamed from: native, reason: not valid java name */
    private void m13822native(int i) {
        this.f12432if[0] = 0.0f;
        float fM13889if = m13889if(i, 0, f12362break);
        float[] fArr = this.f12432if;
        float interpolation = this.f12370try.getInterpolation(fM13889if);
        fArr[2] = interpolation;
        fArr[1] = interpolation;
        float[] fArr2 = this.f12432if;
        float interpolation2 = this.f12370try.getInterpolation(fM13889if + 0.49925038f);
        fArr2[4] = interpolation2;
        fArr2[3] = interpolation2;
        this.f12432if[5] = 1.0f;
    }

    /* renamed from: super, reason: not valid java name */
    private void m13823super() {
        if (this.f12368new == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f12364class, 0.0f, 1.0f);
            this.f12368new = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.f12368new.setInterpolator(null);
            this.f12368new.setRepeatCount(-1);
            this.f12368new.addListener(new Cdo());
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m13825throw() {
        if (!this.f12367goto || this.f12432if[3] >= 1.0f) {
            return;
        }
        int[] iArr = this.f12431for;
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        iArr[0] = qx0.m6674do(this.f12365case.f4132for[this.f12366else], this.f12430do.getAlpha());
        this.f12367goto = false;
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: case, reason: not valid java name */
    public void mo13826case() {
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: do, reason: not valid java name */
    public void mo13827do() {
        ObjectAnimator objectAnimator = this.f12368new;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: else, reason: not valid java name */
    public void mo13828else() {
        m13823super();
        m13833while();
        this.f12368new.start();
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: for, reason: not valid java name */
    public void mo13829for() {
        m13833while();
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: goto, reason: not valid java name */
    public void mo13830goto() {
    }

    @VisibleForTesting
    /* renamed from: import, reason: not valid java name */
    public void m13831import(float f) {
        this.f12369this = f;
        m13822native((int) (f * 333.0f));
        m13825throw();
        this.f12430do.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: new, reason: not valid java name */
    public void mo13832new(@Nullable Animatable2Compat.AnimationCallback animationCallback) {
    }

    @VisibleForTesting
    /* renamed from: while, reason: not valid java name */
    public void m13833while() {
        this.f12367goto = true;
        this.f12366else = 1;
        Arrays.fill(this.f12431for, qx0.m6674do(this.f12365case.f4132for[0], this.f12430do.getAlpha()));
    }
}
