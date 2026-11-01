package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.k62;
import android.support.v4.sx0;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {

    /* renamed from: import, reason: not valid java name */
    public static final int f11487import = 3;

    /* renamed from: native, reason: not valid java name */
    public static final int f11488native = 4;

    /* renamed from: public, reason: not valid java name */
    public static final int f11489public = 16;

    /* renamed from: return, reason: not valid java name */
    public static final int f11490return = 32;

    /* renamed from: static, reason: not valid java name */
    private static final String f11491static = "MaterialButton";

    /* renamed from: throw, reason: not valid java name */
    public static final int f11494throw = 1;

    /* renamed from: while, reason: not valid java name */
    public static final int f11495while = 2;

    /* renamed from: break, reason: not valid java name */
    @Px
    private int f11496break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private Drawable f11497case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f11498catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f11499class;

    /* renamed from: const, reason: not valid java name */
    private int f11500const;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final com.google.android.material.button.Cdo f11501do;

    /* renamed from: else, reason: not valid java name */
    @Px
    private int f11502else;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private OnPressedChangeListener f11503for;

    /* renamed from: goto, reason: not valid java name */
    @Px
    private int f11504goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final LinkedHashSet<OnCheckedChangeListener> f11505if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private PorterDuff.Mode f11506new;

    /* renamed from: this, reason: not valid java name */
    @Px
    private int f11507this;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private ColorStateList f11508try;

    /* renamed from: final, reason: not valid java name */
    private static final int[] f11486final = {R.attr.state_checkable};

    /* renamed from: super, reason: not valid java name */
    private static final int[] f11492super = {R.attr.state_checked};

    /* renamed from: switch, reason: not valid java name */
    private static final int f11493switch = com.google.android.material.R.style.Widget_MaterialComponents_Button;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialButton materialButton, boolean z);
    }

    public interface OnPressedChangeListener {
        void onPressedChanged(MaterialButton materialButton, boolean z);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f11509do;

        /* renamed from: com.google.android.material.button.MaterialButton$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: do, reason: not valid java name */
        private void m12915do(@NonNull Parcel parcel) {
            this.f11509do = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11509do ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            m12915do(parcel);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.button.MaterialButton$do, reason: invalid class name */
    public @interface Cdo {
    }

    public MaterialButton(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m12905break(int i, int i2) {
        if (this.f11497case == null || getLayout() == null) {
            return;
        }
        if (!m12910new() && !m12908for()) {
            if (m12912try()) {
                this.f11504goto = 0;
                if (this.f11500const == 16) {
                    this.f11507this = 0;
                    m12911this(false);
                    return;
                }
                int intrinsicHeight = this.f11502else;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f11497case.getIntrinsicHeight();
                }
                int textHeight = (((((i2 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f11496break) - getPaddingBottom()) / 2;
                if (this.f11507this != textHeight) {
                    this.f11507this = textHeight;
                    m12911this(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f11507this = 0;
        int i3 = this.f11500const;
        if (i3 == 1 || i3 == 3) {
            this.f11504goto = 0;
            m12911this(false);
            return;
        }
        int intrinsicWidth = this.f11502else;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f11497case.getIntrinsicWidth();
        }
        int textWidth = (((((i - getTextWidth()) - ViewCompat.getPaddingEnd(this)) - intrinsicWidth) - this.f11496break) - ViewCompat.getPaddingStart(this)) / 2;
        if (m12906case() != (this.f11500const == 4)) {
            textWidth = -textWidth;
        }
        if (this.f11504goto != textWidth) {
            this.f11504goto = textWidth;
            m12911this(false);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m12906case() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m12907else() {
        com.google.android.material.button.Cdo cdo = this.f11501do;
        return (cdo == null || cdo.m12981super()) ? false : true;
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m12908for() {
        int i = this.f11500const;
        return i == 3 || i == 4;
    }

    @NonNull
    private String getA11yClassName() {
        return (m12914if() ? CompoundButton.class : Button.class).getName();
    }

    private int getTextHeight() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextWidth() {
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        return Math.min((int) paint.measureText(string), getLayout().getEllipsizedWidth());
    }

    /* renamed from: goto, reason: not valid java name */
    private void m12909goto() {
        if (m12910new()) {
            TextViewCompat.setCompoundDrawablesRelative(this, this.f11497case, null, null, null);
        } else if (m12908for()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, null, this.f11497case, null);
        } else if (m12912try()) {
            TextViewCompat.setCompoundDrawablesRelative(this, null, this.f11497case, null, null);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m12910new() {
        int i = this.f11500const;
        return i == 1 || i == 2;
    }

    /* renamed from: this, reason: not valid java name */
    private void m12911this(boolean z) {
        Drawable drawable = this.f11497case;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f11497case = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.f11508try);
            PorterDuff.Mode mode = this.f11506new;
            if (mode != null) {
                DrawableCompat.setTintMode(this.f11497case, mode);
            }
            int intrinsicWidth = this.f11502else;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f11497case.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f11502else;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f11497case.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f11497case;
            int i = this.f11504goto;
            int i2 = this.f11507this;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
        }
        if (z) {
            m12909goto();
            return;
        }
        Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this);
        boolean z2 = false;
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        if ((m12910new() && drawable3 != this.f11497case) || ((m12908for() && drawable5 != this.f11497case) || (m12912try() && drawable4 != this.f11497case))) {
            z2 = true;
        }
        if (z2) {
            m12909goto();
        }
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m12912try() {
        int i = this.f11500const;
        return i == 16 || i == 32;
    }

    public void addOnCheckedChangeListener(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.f11505if.add(onCheckedChangeListener);
    }

    /* renamed from: do, reason: not valid java name */
    public void m12913do() {
        this.f11505if.clear();
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (m12907else()) {
            return this.f11501do.m12971if();
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f11497case;
    }

    public int getIconGravity() {
        return this.f11500const;
    }

    @Px
    public int getIconPadding() {
        return this.f11496break;
    }

    @Px
    public int getIconSize() {
        return this.f11502else;
    }

    public ColorStateList getIconTint() {
        return this.f11508try;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f11506new;
    }

    @Dimension
    public int getInsetBottom() {
        return this.f11501do.m12969for();
    }

    @Dimension
    public int getInsetTop() {
        return this.f11501do.m12975new();
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (m12907else()) {
            return this.f11501do.m12970goto();
        }
        return null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (m12907else()) {
            return this.f11501do.m12983this();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (m12907else()) {
            return this.f11501do.m12961break();
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (m12907else()) {
            return this.f11501do.m12963catch();
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public ColorStateList getSupportBackgroundTintList() {
        return m12907else() ? this.f11501do.m12964class() : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return m12907else() ? this.f11501do.m12965const() : super.getSupportBackgroundTintMode();
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m12914if() {
        com.google.android.material.button.Cdo cdo = this.f11501do;
        return cdo != null && cdo.m12984throw();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f11498catch;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (m12907else()) {
            tx0.m8140case(this, this.f11501do.m12962case());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (m12914if()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, f11486final);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(iArrOnCreateDrawableState, f11492super);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(m12914if());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        com.google.android.material.button.Cdo cdo;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT != 21 || (cdo = this.f11501do) == null) {
            return;
        }
        cdo.m12973interface(i4 - i2, i3 - i);
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.f11509do);
    }

    @Override // android.widget.TextView, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11509do = this.f11498catch;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m12905break(i, i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        m12905break(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    public void removeOnCheckedChangeListener(@NonNull OnCheckedChangeListener onCheckedChangeListener) {
        this.f11505if.remove(onCheckedChangeListener);
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (m12907else()) {
            this.f11501do.m12972import(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (!m12907else()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
        } else {
            this.f11501do.m12974native();
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (m12907else()) {
            this.f11501do.m12978public(z);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (m12914if() && isEnabled() && this.f11498catch != z) {
            this.f11498catch = z;
            refreshDrawableState();
            if (this.f11499class) {
                return;
            }
            this.f11499class = true;
            Iterator<OnCheckedChangeListener> it = this.f11505if.iterator();
            while (it.hasNext()) {
                it.next().onCheckedChanged(this, this.f11498catch);
            }
            this.f11499class = false;
        }
    }

    public void setCornerRadius(@Px int i) {
        if (m12907else()) {
            this.f11501do.m12979return(i);
        }
    }

    public void setCornerRadiusResource(@DimenRes int i) {
        if (m12907else()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        if (m12907else()) {
            this.f11501do.m12962case().y(f);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.f11497case != drawable) {
            this.f11497case = drawable;
            m12911this(true);
            m12905break(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.f11500const != i) {
            this.f11500const = i;
            m12905break(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i) {
        if (this.f11496break != i) {
            this.f11496break = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(@DrawableRes int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public void setIconSize(@Px int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f11502else != i) {
            this.f11502else = i;
            m12911this(true);
        }
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.f11508try != colorStateList) {
            this.f11508try = colorStateList;
            m12911this(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f11506new != mode) {
            this.f11506new = mode;
            m12911this(false);
        }
    }

    public void setIconTintResource(@ColorRes int i) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setInsetBottom(@Dimension int i) {
        this.f11501do.m12980static(i);
    }

    public void setInsetTop(@Dimension int i) {
        this.f11501do.m12982switch(i);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(@Nullable OnPressedChangeListener onPressedChangeListener) {
        this.f11503for = onPressedChangeListener;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        OnPressedChangeListener onPressedChangeListener = this.f11503for;
        if (onPressedChangeListener != null) {
            onPressedChangeListener.onPressedChanged(this, z);
        }
        super.setPressed(z);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (m12907else()) {
            this.f11501do.m12985throws(colorStateList);
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (m12907else()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (!m12907else()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f11501do.m12966default(shapeAppearanceModel);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (m12907else()) {
            this.f11501do.m12967extends(z);
        }
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (m12907else()) {
            this.f11501do.m12968finally(colorStateList);
        }
    }

    public void setStrokeColorResource(@ColorRes int i) {
        if (m12907else()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public void setStrokeWidth(@Px int i) {
        if (m12907else()) {
            this.f11501do.m12976package(i);
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        if (m12907else()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (m12907else()) {
            this.f11501do.m12977private(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (m12907else()) {
            this.f11501do.m12960abstract(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f11498catch);
    }

    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f11493switch;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11505if = new LinkedHashSet<>();
        this.f11498catch = false;
        this.f11499class = false;
        Context context2 = getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, com.google.android.material.R.styleable.MaterialButton, i, i2, new int[0]);
        this.f11496break = typedArrayM4267break.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconPadding, 0);
        this.f11506new = ViewUtils.m13612catch(typedArrayM4267break.getInt(com.google.android.material.R.styleable.MaterialButton_iconTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f11508try = sx0.m7649do(getContext(), typedArrayM4267break, com.google.android.material.R.styleable.MaterialButton_iconTint);
        this.f11497case = sx0.m7654new(getContext(), typedArrayM4267break, com.google.android.material.R.styleable.MaterialButton_icon);
        this.f11500const = typedArrayM4267break.getInteger(com.google.android.material.R.styleable.MaterialButton_iconGravity, 1);
        this.f11502else = typedArrayM4267break.getDimensionPixelSize(com.google.android.material.R.styleable.MaterialButton_iconSize, 0);
        com.google.android.material.button.Cdo cdo = new com.google.android.material.button.Cdo(this, ShapeAppearanceModel.m13971try(context2, attributeSet, i, i2).m14003const());
        this.f11501do = cdo;
        cdo.m12987while(typedArrayM4267break);
        typedArrayM4267break.recycle();
        setCompoundDrawablePadding(this.f11496break);
        m12911this(this.f11497case != null);
    }
}
