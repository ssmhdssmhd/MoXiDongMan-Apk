package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.ft0;
import android.support.v4.n7;
import android.support.v4.zl;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* loaded from: classes.dex */
public final class IndeterminateDrawable<S extends n7> extends Cfor {

    /* renamed from: import, reason: not valid java name */
    private Cnew<S> f12346import;

    /* renamed from: native, reason: not valid java name */
    private Ctry<ObjectAnimator> f12347native;

    public IndeterminateDrawable(@NonNull Context context, @NonNull n7 n7Var, @NonNull Cnew<S> cnew, @NonNull Ctry<ObjectAnimator> ctry) {
        super(context, n7Var);
        m13804extends(cnew);
        m13803default(ctry);
    }

    @NonNull
    /* renamed from: return, reason: not valid java name */
    public static IndeterminateDrawable<zl> m13801return(@NonNull Context context, @NonNull zl zlVar) {
        return new IndeterminateDrawable<>(context, zlVar, new Cdo(zlVar), new Cif(zlVar));
    }

    @NonNull
    /* renamed from: static, reason: not valid java name */
    public static IndeterminateDrawable<ft0> m13802static(@NonNull Context context, @NonNull ft0 ft0Var) {
        return new IndeterminateDrawable<>(context, ft0Var, new Ccase(ft0Var), ft0Var.f1988else == 0 ? new Celse(ft0Var) : new Cgoto(context, ft0Var));
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: break */
    public /* bridge */ /* synthetic */ boolean mo13791break() {
        return super.mo13791break();
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: catch */
    public /* bridge */ /* synthetic */ boolean mo13792catch() {
        return super.mo13792catch();
    }

    @Override // com.google.android.material.progressindicator.Cfor, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    /* renamed from: default, reason: not valid java name */
    public void m13803default(@NonNull Ctry<ObjectAnimator> ctry) {
        this.f12347native = ctry;
        ctry.m13890try(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        this.f12346import.m13888else(canvas, m13846else());
        this.f12346import.mo13811for(canvas, this.f12379const);
        int i = 0;
        while (true) {
            Ctry<ObjectAnimator> ctry = this.f12347native;
            int[] iArr = ctry.f12431for;
            if (i >= iArr.length) {
                canvas.restore();
                return;
            }
            Cnew<S> cnew = this.f12346import;
            Paint paint = this.f12379const;
            float[] fArr = ctry.f12432if;
            int i2 = i * 2;
            cnew.mo13812if(canvas, paint, fArr[i2], fArr[i2 + 1], iArr[i]);
            i++;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public void m13804extends(@NonNull Cnew<S> cnew) {
        this.f12346import = cnew;
        cnew.m13887case(this);
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f12346import.mo13813new();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f12346import.mo13814try();
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.Cfor, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: native */
    public /* bridge */ /* synthetic */ boolean mo13795native(boolean z, boolean z2, boolean z3) {
        return super.mo13795native(z, z2, z3);
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: public */
    public boolean mo13797public(boolean z, boolean z2, boolean z3) {
        boolean zMo13797public = super.mo13797public(z, z2, z3);
        if (!isRunning()) {
            this.f12347native.mo13827do();
        }
        float fM9323do = this.f12383for.m9323do(this.f12380do.getContentResolver());
        if (z && (z3 || (Build.VERSION.SDK_INT <= 21 && fM9323do > 0.0f))) {
            this.f12347native.mo13828else();
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

    @NonNull
    /* renamed from: switch, reason: not valid java name */
    public Ctry<ObjectAnimator> m13805switch() {
        return this.f12347native;
    }

    @Override // com.google.android.material.progressindicator.Cfor
    /* renamed from: this */
    public /* bridge */ /* synthetic */ boolean mo13798this() {
        return super.mo13798this();
    }

    @NonNull
    /* renamed from: throws, reason: not valid java name */
    public Cnew<S> m13806throws() {
        return this.f12346import;
    }

    @Override // com.google.android.material.progressindicator.Cfor, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }
}
