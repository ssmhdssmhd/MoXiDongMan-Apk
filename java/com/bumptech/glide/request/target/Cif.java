package com.bumptech.glide.request.target;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.cf1;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* renamed from: com.bumptech.glide.request.target.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif extends Drawable {

    /* renamed from: case, reason: not valid java name */
    private boolean f10416case;

    /* renamed from: do, reason: not valid java name */
    private final Matrix f10417do;

    /* renamed from: for, reason: not valid java name */
    private final RectF f10418for;

    /* renamed from: if, reason: not valid java name */
    private final RectF f10419if;

    /* renamed from: new, reason: not valid java name */
    private Drawable f10420new;

    /* renamed from: try, reason: not valid java name */
    private Cdo f10421try;

    /* renamed from: com.bumptech.glide.request.target.if$do, reason: invalid class name */
    public static final class Cdo extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        private final Drawable.ConstantState f10422do;

        /* renamed from: for, reason: not valid java name */
        public final int f10423for;

        /* renamed from: if, reason: not valid java name */
        public final int f10424if;

        public Cdo(Cdo cdo) {
            this(cdo.f10422do, cdo.f10424if, cdo.f10423for);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new Cif(this, this.f10422do.newDrawable());
        }

        public Cdo(Drawable.ConstantState constantState, int i, int i2) {
            this.f10422do = constantState;
            this.f10424if = i;
            this.f10423for = i2;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new Cif(this, this.f10422do.newDrawable(resources));
        }
    }

    public Cif(Drawable drawable, int i, int i2) {
        this(new Cdo(drawable.getConstantState(), i, i2), drawable);
    }

    /* renamed from: do, reason: not valid java name */
    private void m12003do() {
        this.f10417do.setRectToRect(this.f10419if, this.f10418for, Matrix.ScaleToFit.CENTER);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f10420new.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.concat(this.f10417do);
        this.f10420new.draw(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(19)
    public int getAlpha() {
        return this.f10420new.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.Callback getCallback() {
        return this.f10420new.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f10420new.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f10421try;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f10420new.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f10421try.f10423for;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f10421try.f10424if;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f10420new.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f10420new.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f10420new.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        return this.f10420new.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        this.f10420new.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.f10416case && super.mutate() == this) {
            this.f10420new = this.f10420new.mutate();
            this.f10421try = new Cdo(this.f10421try);
            this.f10416case = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(@NonNull Runnable runnable, long j) {
        super.scheduleSelf(runnable, j);
        this.f10420new.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f10420new.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.f10418for.set(i, i2, i3, i4);
        m12003do();
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f10420new.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, @NonNull PorterDuff.Mode mode) {
        this.f10420new.setColorFilter(i, mode);
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public void setDither(boolean z) {
        this.f10420new.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f10420new.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return this.f10420new.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(@NonNull Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f10420new.unscheduleSelf(runnable);
    }

    public Cif(Cdo cdo, Drawable drawable) {
        this.f10421try = (Cdo) cf1.m900new(cdo);
        this.f10420new = (Drawable) cf1.m900new(drawable);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f10417do = new Matrix();
        this.f10419if = new RectF(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this.f10418for = new RectF();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f10420new.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(@NonNull Rect rect) {
        super.setBounds(rect);
        this.f10418for.set(rect);
        m12003do();
    }
}
