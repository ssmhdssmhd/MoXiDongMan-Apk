package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.support.v4.ft0;
import android.support.v4.n7;
import android.support.v4.qx0;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import com.google.android.material.R;
import java.util.Arrays;

/* renamed from: com.google.android.material.progressindicator.goto, reason: invalid class name */
/* loaded from: classes.dex */
final class Cgoto extends Ctry<ObjectAnimator> {

    /* renamed from: class, reason: not valid java name */
    private static final int f12391class = 1800;

    /* renamed from: const, reason: not valid java name */
    private static final int[] f12392const = {533, 567, 850, 750};

    /* renamed from: final, reason: not valid java name */
    private static final int[] f12393final = {1267, 1000, 333, 0};

    /* renamed from: super, reason: not valid java name */
    private static final Property<Cgoto, Float> f12394super = new Cif(Float.class, "animationFraction");

    /* renamed from: break, reason: not valid java name */
    private boolean f12395break;

    /* renamed from: case, reason: not valid java name */
    private final n7 f12396case;

    /* renamed from: catch, reason: not valid java name */
    public Animatable2Compat.AnimationCallback f12397catch;

    /* renamed from: else, reason: not valid java name */
    private int f12398else;

    /* renamed from: goto, reason: not valid java name */
    private boolean f12399goto;

    /* renamed from: new, reason: not valid java name */
    private ObjectAnimator f12400new;

    /* renamed from: this, reason: not valid java name */
    private float f12401this;

    /* renamed from: try, reason: not valid java name */
    private final Interpolator[] f12402try;

    /* renamed from: com.google.android.material.progressindicator.goto$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (Cgoto.this.f12395break) {
                Cgoto.this.f12400new.setRepeatCount(-1);
                Cgoto cgoto = Cgoto.this;
                cgoto.f12397catch.onAnimationEnd(cgoto.f12430do);
                Cgoto.this.f12395break = false;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            Cgoto cgoto = Cgoto.this;
            cgoto.f12398else = (cgoto.f12398else + 1) % Cgoto.this.f12396case.f4132for.length;
            Cgoto.this.f12399goto = true;
        }
    }

    /* renamed from: com.google.android.material.progressindicator.goto$if, reason: invalid class name */
    public static class Cif extends Property<Cgoto, Float> {
        public Cif(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(Cgoto cgoto) {
            return Float.valueOf(cgoto.m13864while());
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(Cgoto cgoto, Float f) {
            cgoto.m13866return(f.floatValue());
        }
    }

    public Cgoto(@NonNull Context context, @NonNull ft0 ft0Var) {
        super(2);
        this.f12398else = 0;
        this.f12397catch = null;
        this.f12396case = ft0Var;
        this.f12402try = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line1_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line1_tail_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line2_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line2_tail_interpolator)};
    }

    /* renamed from: import, reason: not valid java name */
    private void m13858import() {
        if (this.f12400new == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f12394super, 0.0f, 1.0f);
            this.f12400new = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.f12400new.setInterpolator(null);
            this.f12400new.setRepeatCount(-1);
            this.f12400new.addListener(new Cdo());
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m13859native() {
        if (this.f12399goto) {
            Arrays.fill(this.f12431for, qx0.m6674do(this.f12396case.f4132for[this.f12398else], this.f12430do.getAlpha()));
            this.f12399goto = false;
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m13860static(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            this.f12432if[i2] = Math.max(0.0f, Math.min(1.0f, this.f12402try[i2].getInterpolation(m13889if(i, f12393final[i2], f12392const[i2]))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public float m13864while() {
        return this.f12401this;
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: case */
    public void mo13826case() {
        if (!this.f12430do.isVisible()) {
            mo13827do();
        } else {
            this.f12395break = true;
            this.f12400new.setRepeatCount(0);
        }
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: do */
    public void mo13827do() {
        ObjectAnimator objectAnimator = this.f12400new;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: else */
    public void mo13828else() {
        m13858import();
        m13865public();
        this.f12400new.start();
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: for */
    public void mo13829for() {
        m13865public();
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: goto */
    public void mo13830goto() {
        this.f12397catch = null;
    }

    @Override // com.google.android.material.progressindicator.Ctry
    /* renamed from: new */
    public void mo13832new(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f12397catch = animationCallback;
    }

    @VisibleForTesting
    /* renamed from: public, reason: not valid java name */
    public void m13865public() {
        this.f12398else = 0;
        int iM6674do = qx0.m6674do(this.f12396case.f4132for[0], this.f12430do.getAlpha());
        int[] iArr = this.f12431for;
        iArr[0] = iM6674do;
        iArr[1] = iM6674do;
    }

    @VisibleForTesting
    /* renamed from: return, reason: not valid java name */
    public void m13866return(float f) {
        this.f12401this = f;
        m13860static((int) (f * 1800.0f));
        m13859native();
        this.f12430do.invalidateSelf();
    }
}
