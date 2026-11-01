package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.v4.no1;
import android.support.v4.qx0;
import android.support.v4.sx0;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.google.android.material.button.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: public, reason: not valid java name */
    private static final boolean f11531public;

    /* renamed from: break, reason: not valid java name */
    @Nullable
    private ColorStateList f11532break;

    /* renamed from: case, reason: not valid java name */
    private int f11533case;

    /* renamed from: catch, reason: not valid java name */
    @Nullable
    private ColorStateList f11534catch;

    /* renamed from: class, reason: not valid java name */
    @Nullable
    private ColorStateList f11535class;

    /* renamed from: const, reason: not valid java name */
    @Nullable
    private Drawable f11536const;

    /* renamed from: do, reason: not valid java name */
    private final MaterialButton f11537do;

    /* renamed from: else, reason: not valid java name */
    private int f11538else;

    /* renamed from: for, reason: not valid java name */
    private int f11540for;

    /* renamed from: goto, reason: not valid java name */
    private int f11541goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private ShapeAppearanceModel f11542if;

    /* renamed from: import, reason: not valid java name */
    private LayerDrawable f11543import;

    /* renamed from: native, reason: not valid java name */
    private int f11544native;

    /* renamed from: new, reason: not valid java name */
    private int f11545new;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    private PorterDuff.Mode f11547this;

    /* renamed from: try, reason: not valid java name */
    private int f11549try;

    /* renamed from: while, reason: not valid java name */
    private boolean f11550while;

    /* renamed from: final, reason: not valid java name */
    private boolean f11539final = false;

    /* renamed from: super, reason: not valid java name */
    private boolean f11546super = false;

    /* renamed from: throw, reason: not valid java name */
    private boolean f11548throw = false;

    static {
        f11531public = Build.VERSION.SDK_INT >= 21;
    }

    public Cdo(MaterialButton materialButton, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f11537do = materialButton;
        this.f11542if = shapeAppearanceModel;
    }

    /* renamed from: continue, reason: not valid java name */
    private void m12952continue(@Dimension int i, @Dimension int i2) {
        int paddingStart = ViewCompat.getPaddingStart(this.f11537do);
        int paddingTop = this.f11537do.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f11537do);
        int paddingBottom = this.f11537do.getPaddingBottom();
        int i3 = this.f11549try;
        int i4 = this.f11533case;
        this.f11533case = i2;
        this.f11549try = i;
        if (!this.f11546super) {
            m12957strictfp();
        }
        ViewCompat.setPaddingRelative(this.f11537do, paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    /* renamed from: do, reason: not valid java name */
    private Drawable m12953do() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f11542if);
        materialShapeDrawable.k(this.f11537do.getContext());
        DrawableCompat.setTintList(materialShapeDrawable, this.f11532break);
        PorterDuff.Mode mode = this.f11547this;
        if (mode != null) {
            DrawableCompat.setTintMode(materialShapeDrawable, mode);
        }
        materialShapeDrawable.P(this.f11541goto, this.f11534catch);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f11542if);
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.O(this.f11541goto, this.f11539final ? qx0.m6679new(this.f11537do, R.attr.colorSurface) : 0);
        if (f11531public) {
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f11542if);
            this.f11536const = materialShapeDrawable3;
            DrawableCompat.setTint(materialShapeDrawable3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(no1.m5294new(this.f11535class), m12958transient(new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable})), this.f11536const);
            this.f11543import = rippleDrawable;
            return rippleDrawable;
        }
        RippleDrawableCompat rippleDrawableCompat = new RippleDrawableCompat(this.f11542if);
        this.f11536const = rippleDrawableCompat;
        DrawableCompat.setTintList(rippleDrawableCompat, no1.m5294new(this.f11535class));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable, this.f11536const});
        this.f11543import = layerDrawable;
        return m12958transient(layerDrawable);
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    private MaterialShapeDrawable m12954else(boolean z) {
        LayerDrawable layerDrawable = this.f11543import;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f11531public ? (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.f11543import.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (MaterialShapeDrawable) this.f11543import.getDrawable(!z ? 1 : 0);
    }

    @Nullable
    /* renamed from: final, reason: not valid java name */
    private MaterialShapeDrawable m12955final() {
        return m12954else(true);
    }

    /* renamed from: protected, reason: not valid java name */
    private void m12956protected() {
        MaterialShapeDrawable materialShapeDrawableM12962case = m12962case();
        MaterialShapeDrawable materialShapeDrawableM12955final = m12955final();
        if (materialShapeDrawableM12962case != null) {
            materialShapeDrawableM12962case.P(this.f11541goto, this.f11534catch);
            if (materialShapeDrawableM12955final != null) {
                materialShapeDrawableM12955final.O(this.f11541goto, this.f11539final ? qx0.m6679new(this.f11537do, R.attr.colorSurface) : 0);
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m12957strictfp() {
        this.f11537do.setInternalBackground(m12953do());
        MaterialShapeDrawable materialShapeDrawableM12962case = m12962case();
        if (materialShapeDrawableM12962case != null) {
            materialShapeDrawableM12962case.y(this.f11544native);
        }
    }

    @NonNull
    /* renamed from: transient, reason: not valid java name */
    private InsetDrawable m12958transient(Drawable drawable) {
        return new InsetDrawable(drawable, this.f11540for, this.f11549try, this.f11545new, this.f11533case);
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m12959volatile(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (m12962case() != null) {
            m12962case().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (m12955final() != null) {
            m12955final().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (m12986try() != null) {
            m12986try().setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m12960abstract(@Nullable PorterDuff.Mode mode) {
        if (this.f11547this != mode) {
            this.f11547this = mode;
            if (m12962case() == null || this.f11547this == null) {
                return;
            }
            DrawableCompat.setTintMode(m12962case(), this.f11547this);
        }
    }

    @Nullable
    /* renamed from: break, reason: not valid java name */
    public ColorStateList m12961break() {
        return this.f11534catch;
    }

    @Nullable
    /* renamed from: case, reason: not valid java name */
    public MaterialShapeDrawable m12962case() {
        return m12954else(false);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m12963catch() {
        return this.f11541goto;
    }

    /* renamed from: class, reason: not valid java name */
    public ColorStateList m12964class() {
        return this.f11532break;
    }

    /* renamed from: const, reason: not valid java name */
    public PorterDuff.Mode m12965const() {
        return this.f11547this;
    }

    /* renamed from: default, reason: not valid java name */
    public void m12966default(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f11542if = shapeAppearanceModel;
        m12959volatile(shapeAppearanceModel);
    }

    /* renamed from: extends, reason: not valid java name */
    public void m12967extends(boolean z) {
        this.f11539final = z;
        m12956protected();
    }

    /* renamed from: finally, reason: not valid java name */
    public void m12968finally(@Nullable ColorStateList colorStateList) {
        if (this.f11534catch != colorStateList) {
            this.f11534catch = colorStateList;
            m12956protected();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public int m12969for() {
        return this.f11533case;
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    public ColorStateList m12970goto() {
        return this.f11535class;
    }

    /* renamed from: if, reason: not valid java name */
    public int m12971if() {
        return this.f11538else;
    }

    /* renamed from: import, reason: not valid java name */
    public void m12972import(int i) {
        if (m12962case() != null) {
            m12962case().setTint(i);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m12973interface(int i, int i2) {
        Drawable drawable = this.f11536const;
        if (drawable != null) {
            drawable.setBounds(this.f11540for, this.f11549try, i2 - this.f11545new, i - this.f11533case);
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m12974native() {
        this.f11546super = true;
        this.f11537do.setSupportBackgroundTintList(this.f11532break);
        this.f11537do.setSupportBackgroundTintMode(this.f11547this);
    }

    /* renamed from: new, reason: not valid java name */
    public int m12975new() {
        return this.f11549try;
    }

    /* renamed from: package, reason: not valid java name */
    public void m12976package(int i) {
        if (this.f11541goto != i) {
            this.f11541goto = i;
            m12956protected();
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m12977private(@Nullable ColorStateList colorStateList) {
        if (this.f11532break != colorStateList) {
            this.f11532break = colorStateList;
            if (m12962case() != null) {
                DrawableCompat.setTintList(m12962case(), this.f11532break);
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m12978public(boolean z) {
        this.f11550while = z;
    }

    /* renamed from: return, reason: not valid java name */
    public void m12979return(int i) {
        if (this.f11548throw && this.f11538else == i) {
            return;
        }
        this.f11538else = i;
        this.f11548throw = true;
        m12966default(this.f11542if.m13984switch(i));
    }

    /* renamed from: static, reason: not valid java name */
    public void m12980static(@Dimension int i) {
        m12952continue(this.f11549try, i);
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m12981super() {
        return this.f11546super;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m12982switch(@Dimension int i) {
        m12952continue(i, this.f11533case);
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public ShapeAppearanceModel m12983this() {
        return this.f11542if;
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m12984throw() {
        return this.f11550while;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m12985throws(@Nullable ColorStateList colorStateList) {
        if (this.f11535class != colorStateList) {
            this.f11535class = colorStateList;
            boolean z = f11531public;
            if (z && (this.f11537do.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f11537do.getBackground()).setColor(no1.m5294new(colorStateList));
            } else {
                if (z || !(this.f11537do.getBackground() instanceof RippleDrawableCompat)) {
                    return;
                }
                ((RippleDrawableCompat) this.f11537do.getBackground()).setTintList(no1.m5294new(colorStateList));
            }
        }
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    public Shapeable m12986try() {
        LayerDrawable layerDrawable = this.f11543import;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f11543import.getNumberOfLayers() > 2 ? (Shapeable) this.f11543import.getDrawable(2) : (Shapeable) this.f11543import.getDrawable(1);
    }

    /* renamed from: while, reason: not valid java name */
    public void m12987while(@NonNull TypedArray typedArray) {
        this.f11540for = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetLeft, 0);
        this.f11545new = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetRight, 0);
        this.f11549try = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetTop, 0);
        this.f11533case = typedArray.getDimensionPixelOffset(R.styleable.MaterialButton_android_insetBottom, 0);
        int i = R.styleable.MaterialButton_cornerRadius;
        if (typedArray.hasValue(i)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(i, -1);
            this.f11538else = dimensionPixelSize;
            m12966default(this.f11542if.m13984switch(dimensionPixelSize));
            this.f11548throw = true;
        }
        this.f11541goto = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_strokeWidth, 0);
        this.f11547this = ViewUtils.m13612catch(typedArray.getInt(R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f11532break = sx0.m7649do(this.f11537do.getContext(), typedArray, R.styleable.MaterialButton_backgroundTint);
        this.f11534catch = sx0.m7649do(this.f11537do.getContext(), typedArray, R.styleable.MaterialButton_strokeColor);
        this.f11535class = sx0.m7649do(this.f11537do.getContext(), typedArray, R.styleable.MaterialButton_rippleColor);
        this.f11550while = typedArray.getBoolean(R.styleable.MaterialButton_android_checkable, false);
        this.f11544native = typedArray.getDimensionPixelSize(R.styleable.MaterialButton_elevation, 0);
        int paddingStart = ViewCompat.getPaddingStart(this.f11537do);
        int paddingTop = this.f11537do.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(this.f11537do);
        int paddingBottom = this.f11537do.getPaddingBottom();
        if (typedArray.hasValue(R.styleable.MaterialButton_android_background)) {
            m12974native();
        } else {
            m12957strictfp();
        }
        ViewCompat.setPaddingRelative(this.f11537do, paddingStart + this.f11540for, paddingTop + this.f11549try, paddingEnd + this.f11545new, paddingBottom + this.f11533case);
    }
}
