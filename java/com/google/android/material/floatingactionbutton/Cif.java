package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.support.v4.q01;
import android.support.v4.w1;
import android.support.v4.z1;
import android.util.Property;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.material.floatingactionbutton.if, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cif implements MotionStrategy {

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private q01 f12014case;

    /* renamed from: do, reason: not valid java name */
    private final Context f12015do;

    /* renamed from: for, reason: not valid java name */
    private final ArrayList<Animator.AnimatorListener> f12016for = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final ExtendedFloatingActionButton f12017if;

    /* renamed from: new, reason: not valid java name */
    private final com.google.android.material.floatingactionbutton.Cdo f12018new;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private q01 f12019try;

    /* renamed from: com.google.android.material.floatingactionbutton.if$do, reason: invalid class name */
    public class Cdo extends Property<ExtendedFloatingActionButton, Float> {
        public Cdo(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            return Float.valueOf(w1.m9011do(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.f11876implements.getColorForState(extendedFloatingActionButton.getDrawableState(), Cif.this.f12017if.f11876implements.getDefaultColor()))));
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
            int colorForState = extendedFloatingActionButton.f11876implements.getColorForState(extendedFloatingActionButton.getDrawableState(), Cif.this.f12017if.f11876implements.getDefaultColor());
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (w1.m9011do(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f.floatValue() == 1.0f) {
                extendedFloatingActionButton.g(extendedFloatingActionButton.f11876implements);
            } else {
                extendedFloatingActionButton.g(colorStateListValueOf);
            }
        }
    }

    public Cif(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.Cdo cdo) {
        this.f12017if = extendedFloatingActionButton;
        this.f12015do = extendedFloatingActionButton.getContext();
        this.f12018new = cdo;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void addAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f12016for.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public AnimatorSet createAnimator() {
        return m13521if(getCurrentMotionSpec());
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final q01 getCurrentMotionSpec() {
        q01 q01Var = this.f12014case;
        if (q01Var != null) {
            return q01Var;
        }
        if (this.f12019try == null) {
            this.f12019try = q01.m6295new(this.f12015do, getDefaultMotionSpecResource());
        }
        return (q01) Preconditions.checkNotNull(this.f12019try);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @NonNull
    public final List<Animator.AnimatorListener> getListeners() {
        return this.f12016for;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @Nullable
    public q01 getMotionSpec() {
        return this.f12014case;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public AnimatorSet m13521if(@NonNull q01 q01Var) {
        ArrayList arrayList = new ArrayList();
        if (q01Var.m6297break("opacity")) {
            arrayList.add(q01Var.m6298case("opacity", this.f12017if, View.ALPHA));
        }
        if (q01Var.m6297break("scale")) {
            arrayList.add(q01Var.m6298case("scale", this.f12017if, View.SCALE_Y));
            arrayList.add(q01Var.m6298case("scale", this.f12017if, View.SCALE_X));
        }
        if (q01Var.m6297break("width")) {
            arrayList.add(q01Var.m6298case("width", this.f12017if, ExtendedFloatingActionButton.c));
        }
        if (q01Var.m6297break("height")) {
            arrayList.add(q01Var.m6298case("height", this.f12017if, ExtendedFloatingActionButton.d));
        }
        if (q01Var.m6297break("paddingStart")) {
            arrayList.add(q01Var.m6298case("paddingStart", this.f12017if, ExtendedFloatingActionButton.e));
        }
        if (q01Var.m6297break("paddingEnd")) {
            arrayList.add(q01Var.m6298case("paddingEnd", this.f12017if, ExtendedFloatingActionButton.f));
        }
        if (q01Var.m6297break("labelOpacity")) {
            arrayList.add(q01Var.m6298case("labelOpacity", this.f12017if, new Cdo(Float.class, "LABEL_OPACITY_PROPERTY")));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        z1.m10010do(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    public void onAnimationCancel() {
        this.f12018new.m13512if();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    public void onAnimationEnd() {
        this.f12018new.m13512if();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.f12018new.m13511for(animator);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void removeAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.f12016for.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void setMotionSpec(@Nullable q01 q01Var) {
        this.f12014case = q01Var;
    }
}
