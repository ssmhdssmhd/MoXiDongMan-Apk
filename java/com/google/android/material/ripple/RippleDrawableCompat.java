package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.no1;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class RippleDrawableCompat extends Drawable implements Shapeable, TintAwareDrawable {

    /* renamed from: do, reason: not valid java name */
    private Cif f12466do;

    @Override // android.graphics.drawable.Drawable
    @NonNull
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public RippleDrawableCompat mutate() {
        this.f12466do = new Cif(this.f12466do);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Cif cif = this.f12466do;
        if (cif.f12468if) {
            cif.f12467do.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f12466do;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f12466do.f12467do.getOpacity();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f12466do.f12467do.getShapeAppearanceModel();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.f12466do.f12467do.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f12466do.f12467do.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zM5295try = no1.m5295try(iArr);
        Cif cif = this.f12466do;
        if (cif.f12468if == zM5295try) {
            return zOnStateChange;
        }
        cif.f12468if = zM5295try;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f12466do.f12467do.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f12466do.f12467do.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f12466do.f12467do.setShapeAppearanceModel(shapeAppearanceModel);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i) {
        this.f12466do.f12467do.setTint(i);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f12466do.f12467do.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f12466do.f12467do.setTintMode(mode);
    }

    public RippleDrawableCompat(ShapeAppearanceModel shapeAppearanceModel) {
        this(new Cif(new MaterialShapeDrawable(shapeAppearanceModel)));
    }

    /* renamed from: com.google.android.material.ripple.RippleDrawableCompat$if, reason: invalid class name */
    public static final class Cif extends Drawable.ConstantState {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        public MaterialShapeDrawable f12467do;

        /* renamed from: if, reason: not valid java name */
        public boolean f12468if;

        public Cif(MaterialShapeDrawable materialShapeDrawable) {
            this.f12467do = materialShapeDrawable;
            this.f12468if = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public RippleDrawableCompat newDrawable() {
            return new RippleDrawableCompat(new Cif(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public Cif(@NonNull Cif cif) {
            this.f12467do = (MaterialShapeDrawable) cif.f12467do.getConstantState().newDrawable();
            this.f12468if = cif.f12468if;
        }
    }

    private RippleDrawableCompat(Cif cif) {
        this.f12466do = cif;
    }
}
