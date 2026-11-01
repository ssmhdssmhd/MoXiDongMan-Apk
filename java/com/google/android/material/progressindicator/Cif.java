package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.support.v4.h3;
import android.support.v4.n7;
import android.support.v4.qx0;
import android.support.v4.zl;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* renamed from: com.google.android.material.progressindicator.if, reason: invalid class name */
/* loaded from: classes.dex */
final class Cif extends Ctry<ObjectAnimator> {

    /* renamed from: class, reason: not valid java name */
    private static final int f12404class = 4;

    /* renamed from: const, reason: not valid java name */
    private static final int f12405const = 5400;

    /* renamed from: final, reason: not valid java name */
    private static final int f12407final = 667;

    /* renamed from: return, reason: not valid java name */
    private static final int f12411return = -20;

    /* renamed from: static, reason: not valid java name */
    private static final int f12412static = 250;

    /* renamed from: super, reason: not valid java name */
    private static final int f12413super = 667;

    /* renamed from: switch, reason: not valid java name */
    private static final int f12414switch = 1520;

    /* renamed from: throw, reason: not valid java name */
    private static final int f12415throw = 333;

    /* renamed from: while, reason: not valid java name */
    private static final int f12417while = 333;

    /* renamed from: break, reason: not valid java name */
    private float f12418break;

    /* renamed from: case, reason: not valid java name */
    private final FastOutSlowInInterpolator f12419case;

    /* renamed from: catch, reason: not valid java name */
    public Animatable2Compat.AnimationCallback f12420catch;

    /* renamed from: else, reason: not valid java name */
    private final n7 f12421else;

    /* renamed from: goto, reason: not valid java name */
    private int f12422goto;

    /* renamed from: new, reason: not valid java name */
    private ObjectAnimator f12423new;

    /* renamed from: this, reason: not valid java name */
    private float f12424this;

    /* renamed from: try, reason: not valid java name */
    private ObjectAnimator f12425try;

    /* renamed from: import, reason: not valid java name */
    private static final int[] f12408import = {0, 1350, 2700, 4050};

    /* renamed from: native, reason: not valid java name */
    private static final int[] f12409native = {667, 2017, 3367, 4717};

    /* renamed from: public, reason: not valid java name */
    private static final int[] f12410public = {1000, 2350, 3700, 5050};

    /* renamed from: throws, reason: not valid java name */
    private static final Property<Cif, Float> f12416throws = new Cfor(Float.class, "animationFraction");

    /* renamed from: default, reason: not valid java name */
    private static final Property<Cif, Float> f12406default = new Cnew(Float.class, "completeEndFraction");

    /* renamed from: com.google.android.material.progressindicator.if$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            Cif cif = Cif.this;
            cif.f12422goto = (cif.f12422goto + 4) % Cif.this.f12421else.f4132for.length;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.if$for, reason: invalid class name */
    public static class Cfor extends Property<Cif, Float> {
        public Cfor(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(Cif cif) {
            return Float.valueOf(cif.m13877super());
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(Cif cif, Float f) {
            cif.m13882public(f.floatValue());
        }
    }

    /* renamed from: com.google.android.material.progressindicator.if$if, reason: invalid class name and collision with other inner class name */
    public class C0062if extends AnimatorListenerAdapter {
        public C0062if() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Cif.this.mo13827do();
            Cif cif = Cif.this;
            cif.f12420catch.onAnimationEnd(cif.f12430do);
        }
    }

    /* renamed from: com.google.android.material.progressindicator.if$new, reason: invalid class name */
    public static class Cnew extends Property<Cif, Float> {
        public Cnew(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(Cif cif) {
            return Float.valueOf(cif.m13879throw());
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(Cif cif, Float f) {
            cif.m13875return(f.floatValue());
        }
    }

    public Cif(@NonNull zl zlVar) {
        super(1);
        this.f12422goto = 0;
        this.f12420catch = null;
        this.f12421else = zlVar;
        this.f12419case = new FastOutSlowInInterpolator();
    }

    /* renamed from: import, reason: not valid java name */
    private void m13874import(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            float fM13889if = m13889if(i, f12410public[i2], 333);
            if (fM13889if >= 0.0f && fM13889if <= 1.0f) {
                int i3 = i2 + this.f12422goto;
                int[] iArr = this.f12421else.f4132for;
                int length = i3 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                int iM6674do = qx0.m6674do(iArr[length], this.f12430do.getAlpha());
                int iM6674do2 = qx0.m6674do(this.f12421else.f4132for[length2], this.f12430do.getAlpha());
                this.f12431for[0] = h3.m2919if().evaluate(this.f12419case.getInterpolation(fM13889if), Integer.valueOf(iM6674do), Integer.valueOf(iM6674do2)).intValue();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public void m13875return(float f) {
        this.f12418break = f;
    }

    /* renamed from: static, reason: not valid java name */
    private void m13876static(int i) {
        float[] fArr = this.f12432if;
        float f = this.f12424this;
        fArr[0] = (f * 1520.0f) - 20.0f;
        fArr[1] = f * 1520.0f;
        for (int i2 = 0; i2 < 4; i2++) {
            float fM13889if = m13889if(i, f12408import[i2], 667);
            float[] fArr2 = this.f12432if;
            fArr2[1] = fArr2[1] + (this.f12419case.getInterpolation(fM13889if) * 250.0f);
            float fM13889if2 = m13889if(i, f12409native[i2], 667);
            float[] fArr3 = this.f12432if;
            fArr3[0] = fArr3[0] + (this.f12419case.getInterpolation(fM13889if2) * 250.0f);
        }
        float[] fArr4 = this.f12432if;
        fArr4[0] = fArr4[0] + ((fArr4[1] - fArr4[0]) * this.f12418break);
        fArr4[0] = fArr4[0] / 360.0f;
        fArr4[1] = fArr4[1] / 360.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public float m13877super() {
        return this.f12424this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public float m13879throw() {
        return this.f12418break;
    }

    /* renamed from: while, reason: not valid java name */
    private void m13880while() {
        if (this.f12423new == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f12416throws, 0.0f, 1.0f);
            this.f12423new = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.f12423new.setInterpolator(null);
            this.f12423new.setRepeatCount(-1);
            this.f12423new.addListener(new Cdo());
        }
        if (this.f12425try == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, f12406default, 0.0f, 1.0f);
            this.f12425try = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.f12425try.setInterpolator(this.f12419case);
            this.f12425try.addListener(new C0062if());
        }
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: case */
    public void mo13826case() {
        if (this.f12425try.isRunning()) {
            return;
        }
        if (this.f12430do.isVisible()) {
            this.f12425try.start();
        } else {
            mo13827do();
        }
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: do */
    public void mo13827do() {
        ObjectAnimator objectAnimator = this.f12423new;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: else */
    public void mo13828else() {
        m13880while();
        m13881native();
        this.f12423new.start();
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: for */
    public void mo13829for() {
        m13881native();
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: goto */
    public void mo13830goto() {
        this.f12420catch = null;
    }

    @VisibleForTesting
    /* renamed from: native, reason: not valid java name */
    public void m13881native() {
        this.f12422goto = 0;
        this.f12431for[0] = qx0.m6674do(this.f12421else.f4132for[0], this.f12430do.getAlpha());
        this.f12418break = 0.0f;
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: new */
    public void mo13832new(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f12420catch = animationCallback;
    }

    @VisibleForTesting
    /* renamed from: public, reason: not valid java name */
    public void m13882public(float f) {
        this.f12424this = f;
        int i = (int) (f * 5400.0f);
        m13876static(i);
        m13874import(i);
        this.f12430do.invalidateSelf();
    }
}
