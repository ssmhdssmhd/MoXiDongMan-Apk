package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.n7;
import android.support.v4.w1;
import android.support.v4.x1;
import android.util.Property;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.common.collect.LinkedHashMultimap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.google.android.material.progressindicator.for, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cfor extends Drawable implements Animatable2Compat {

    /* renamed from: super, reason: not valid java name */
    private static final boolean f12372super = false;

    /* renamed from: throw, reason: not valid java name */
    private static final int f12373throw = 500;

    /* renamed from: while, reason: not valid java name */
    private static final Property<Cfor, Float> f12374while = new C0061for(Float.class, "growFraction");

    /* renamed from: break, reason: not valid java name */
    private Animatable2Compat.AnimationCallback f12375break;

    /* renamed from: case, reason: not valid java name */
    private boolean f12376case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f12377catch;

    /* renamed from: class, reason: not valid java name */
    private float f12378class;

    /* renamed from: do, reason: not valid java name */
    public final Context f12380do;

    /* renamed from: else, reason: not valid java name */
    private boolean f12381else;

    /* renamed from: final, reason: not valid java name */
    private int f12382final;

    /* renamed from: goto, reason: not valid java name */
    private float f12384goto;

    /* renamed from: if, reason: not valid java name */
    public final n7 f12385if;

    /* renamed from: new, reason: not valid java name */
    private ValueAnimator f12386new;

    /* renamed from: this, reason: not valid java name */
    private List<Animatable2Compat.AnimationCallback> f12387this;

    /* renamed from: try, reason: not valid java name */
    private ValueAnimator f12388try;

    /* renamed from: const, reason: not valid java name */
    public final Paint f12379const = new Paint();

    /* renamed from: for, reason: not valid java name */
    public x1 f12383for = new x1();

    /* renamed from: com.google.android.material.progressindicator.for$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            Cfor.this.m13844try();
        }
    }

    /* renamed from: com.google.android.material.progressindicator.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0061for extends Property<Cfor, Float> {
        public C0061for(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Float get(Cfor cfor) {
            return Float.valueOf(cfor.m13846else());
        }

        @Override // android.util.Property
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(Cfor cfor, Float f) {
            cfor.m13845const(f.floatValue());
        }
    }

    /* renamed from: com.google.android.material.progressindicator.for$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            Cfor.super.setVisible(false, false);
            Cfor.this.m13843new();
        }
    }

    public Cfor(@NonNull Context context, @NonNull n7 n7Var) {
        this.f12380do = context;
        this.f12385if = n7Var;
        setAlpha(255);
    }

    /* renamed from: case, reason: not valid java name */
    private void m13836case(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z = this.f12377catch;
        this.f12377catch = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f12377catch = z;
    }

    /* renamed from: class, reason: not valid java name */
    private void m13837class() {
        if (this.f12386new == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f12374while, 0.0f, 1.0f);
            this.f12386new = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f12386new.setInterpolator(w1.f7371if);
            m13842import(this.f12386new);
        }
        if (this.f12388try == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, f12374while, 1.0f, 0.0f);
            this.f12388try = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f12388try.setInterpolator(w1.f7371if);
            m13839final(this.f12388try);
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m13839final(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f12388try;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f12388try = valueAnimator;
        valueAnimator.addListener(new Cif());
    }

    /* renamed from: import, reason: not valid java name */
    private void m13842import(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f12386new;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f12386new = valueAnimator;
        valueAnimator.addListener(new Cdo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public void m13843new() {
        Animatable2Compat.AnimationCallback animationCallback = this.f12375break;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f12387this;
        if (list == null || this.f12377catch) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it = list.iterator();
        while (it.hasNext()) {
            it.next().onAnimationEnd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public void m13844try() {
        Animatable2Compat.AnimationCallback animationCallback = this.f12375break;
        if (animationCallback != null) {
            animationCallback.onAnimationStart(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f12387this;
        if (list == null || this.f12377catch) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it = list.iterator();
        while (it.hasNext()) {
            it.next().onAnimationStart(this);
        }
    }

    /* renamed from: break */
    public boolean mo13791break() {
        ValueAnimator valueAnimator = this.f12388try;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f12381else;
    }

    /* renamed from: catch */
    public boolean mo13792catch() {
        ValueAnimator valueAnimator = this.f12386new;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f12376case;
    }

    public void clearAnimationCallbacks() {
        this.f12387this.clear();
        this.f12387this = null;
    }

    /* renamed from: const, reason: not valid java name */
    public void m13845const(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        if (this.f12378class != f) {
            this.f12378class = f;
            invalidateSelf();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public float m13846else() {
        if (this.f12385if.m5117if() || this.f12385if.m5116do()) {
            return (this.f12381else || this.f12376case) ? this.f12384goto : this.f12378class;
        }
        return 1.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f12382final;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public ValueAnimator m13847goto() {
        return this.f12388try;
    }

    public boolean isRunning() {
        return mo13792catch() || mo13791break();
    }

    /* renamed from: native */
    public boolean mo13795native(boolean z, boolean z2, boolean z3) {
        return mo13797public(z, z2, z3 && this.f12383for.m9323do(this.f12380do.getContentResolver()) > 0.0f);
    }

    /* renamed from: public */
    public boolean mo13797public(boolean z, boolean z2, boolean z3) {
        m13837class();
        if (!isVisible() && !z) {
            return false;
        }
        ValueAnimator valueAnimator = z ? this.f12386new : this.f12388try;
        if (!z3) {
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                m13836case(valueAnimator);
            }
            return super.setVisible(z, false);
        }
        if (z3 && valueAnimator.isRunning()) {
            return false;
        }
        boolean z4 = !z || super.setVisible(z, false);
        if (!(z ? this.f12385if.m5117if() : this.f12385if.m5116do())) {
            m13836case(valueAnimator);
            return z4;
        }
        if (z2 || Build.VERSION.SDK_INT < 19 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z4;
    }

    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (this.f12387this == null) {
            this.f12387this = new ArrayList();
        }
        if (this.f12387this.contains(animationCallback)) {
            return;
        }
        this.f12387this.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12382final = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f12379const.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return mo13795native(z, z2, true);
    }

    public void start() {
        mo13797public(true, true, false);
    }

    public void stop() {
        mo13797public(false, true, false);
    }

    /* renamed from: super, reason: not valid java name */
    public void m13848super(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f12375break = animationCallback;
    }

    /* renamed from: this */
    public boolean mo13798this() {
        return mo13795native(false, false, false);
    }

    @VisibleForTesting
    /* renamed from: throw, reason: not valid java name */
    public void m13849throw(boolean z, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f12381else = z;
        this.f12384goto = f;
    }

    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f12387this;
        if (list == null || !list.contains(animationCallback)) {
            return false;
        }
        this.f12387this.remove(animationCallback);
        if (!this.f12387this.isEmpty()) {
            return true;
        }
        this.f12387this = null;
        return true;
    }

    @VisibleForTesting
    /* renamed from: while, reason: not valid java name */
    public void m13850while(boolean z, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f12376case = z;
        this.f12384goto = f;
    }
}
