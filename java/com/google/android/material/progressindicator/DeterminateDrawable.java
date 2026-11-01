package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.support.v4.ft0;
import android.support.v4.n7;
import android.support.v4.qx0;
import android.support.v4.zl;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* loaded from: classes.dex */
public final class DeterminateDrawable<S extends n7> extends Cfor {

    /* renamed from: default, reason: not valid java name */
    private static final FloatPropertyCompat<DeterminateDrawable> f12338default = new Cdo("indicatorLevel");

    /* renamed from: switch, reason: not valid java name */
    private static final int f12339switch = 10000;

    /* renamed from: throws, reason: not valid java name */
    private static final float f12340throws = 50.0f;

    /* renamed from: import, reason: not valid java name */
    private Cnew<S> f12341import;

    /* renamed from: native, reason: not valid java name */
    private final SpringForce f12342native;

    /* renamed from: public, reason: not valid java name */
    private final SpringAnimation f12343public;

    /* renamed from: return, reason: not valid java name */
    private float f12344return;

    /* renamed from: static, reason: not valid java name */
    private boolean f12345static;

    /* renamed from: com.google.android.material.progressindicator.DeterminateDrawable$do, reason: invalid class name */
    public static class Cdo extends FloatPropertyCompat<DeterminateDrawable> {
        public Cdo(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public float getValue(DeterminateDrawable determinateDrawable) {
            return determinateDrawable.m13785extends() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void setValue(DeterminateDrawable determinateDrawable, float f) {
            determinateDrawable.m13786package(f / 10000.0f);
        }
    }

    public DeterminateDrawable(@NonNull Context context, @NonNull n7 n7Var, @NonNull Cnew<S> cnew) {
        super(context, n7Var);
        this.f12345static = false;
        m13794finally(cnew);
        SpringForce springForce = new SpringForce();
        this.f12342native = springForce;
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(50.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, f12338default);
        this.f12343public = springAnimation;
        springAnimation.setSpring(springForce);
        m13845const(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public float m13785extends() {
        return this.f12344return;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public void m13786package(float f) {
        this.f12344return = f;
        invalidateSelf();
    }

    @NonNull
    /* renamed from: switch, reason: not valid java name */
    public static DeterminateDrawable<zl> m13789switch(@NonNull Context context, @NonNull zl zlVar) {
        return new DeterminateDrawable<>(context, zlVar, new com.google.android.material.progressindicator.Cdo(zlVar));
    }

    @NonNull
    /* renamed from: throws, reason: not valid java name */
    public static DeterminateDrawable<ft0> m13790throws(@NonNull Context context, @NonNull ft0 ft0Var) {
        return new DeterminateDrawable<>(context, ft0Var, new Ccase(ft0Var));
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: break, reason: not valid java name */
    public /* bridge */ /* synthetic */ boolean mo13791break() {
        return super.mo13791break();
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: catch, reason: not valid java name */
    public /* bridge */ /* synthetic */ boolean mo13792catch() {
        return super.mo13792catch();
    }

    @Override // com.google.android.material.progressindicator.Cfor, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @NonNull
    /* renamed from: default, reason: not valid java name */
    public Cnew<S> m13793default() {
        return this.f12341import;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f12341import.m13888else(canvas, m13846else());
            this.f12341import.mo13811for(canvas, this.f12379const);
            this.f12341import.mo13812if(canvas, this.f12379const, 0.0f, m13785extends(), qx0.m6674do(this.f12385if.f4132for[0], getAlpha()));
            canvas.restore();
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public void m13794finally(@NonNull Cnew<S> cnew) {
        this.f12341import = cnew;
        cnew.m13887case(this);
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f12341import.mo13813new();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f12341import.mo13814try();
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f12343public.cancel();
        m13786package(getLevel() / 10000.0f);
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: native, reason: not valid java name */
    public /* bridge */ /* synthetic */ boolean mo13795native(boolean z, boolean z2, boolean z3) {
        return super.mo13795native(z, z2, z3);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        if (this.f12345static) {
            this.f12343public.cancel();
            m13786package(i / 10000.0f);
            return true;
        }
        this.f12343public.setStartValue(m13785extends() * 10000.0f);
        this.f12343public.animateToFinalPosition(i);
        return true;
    }

    /* renamed from: private, reason: not valid java name */
    public void m13796private(float f) {
        setLevel((int) (f * 10000.0f));
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: public, reason: not valid java name */
    public boolean mo13797public(boolean z, boolean z2, boolean z3) {
        boolean zMo13797public = super.mo13797public(z, z2, z3);
        float fM9323do = this.f12383for.m9323do(this.f12380do.getContentResolver());
        if (fM9323do == 0.0f) {
            this.f12345static = true;
        } else {
            this.f12345static = false;
            this.f12342native.setStiffness(50.0f / fM9323do);
        }
        return zMo13797public;
    }

    @Override // com.google.android.material.progressindicator.Cfor, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: this, reason: not valid java name */
    public /* bridge */ /* synthetic */ boolean mo13798this() {
        return super.mo13798this();
    }

    @Override // com.google.android.material.progressindicator.Cfor, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }
}
