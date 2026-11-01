package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.k62;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.common.collect.LinkedHashMultimap;

/* loaded from: classes.dex */
public class MaterialCardView extends CardView implements Checkable, Shapeable {

    /* renamed from: break, reason: not valid java name */
    private static final String f11551break = "MaterialCardView";

    /* renamed from: catch, reason: not valid java name */
    private static final String f11553catch = "androidx.cardview.widget.CardView";

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Cdo f11557do;

    /* renamed from: for, reason: not valid java name */
    private boolean f11558for;

    /* renamed from: if, reason: not valid java name */
    private boolean f11559if;

    /* renamed from: new, reason: not valid java name */
    private boolean f11560new;

    /* renamed from: try, reason: not valid java name */
    private OnCheckedChangeListener f11561try;

    /* renamed from: case, reason: not valid java name */
    private static final int[] f11552case = {R.attr.state_checkable};

    /* renamed from: else, reason: not valid java name */
    private static final int[] f11554else = {R.attr.state_checked};

    /* renamed from: goto, reason: not valid java name */
    private static final int[] f11555goto = {com.google.android.material.R.attr.state_dragged};

    /* renamed from: this, reason: not valid java name */
    private static final int f11556this = com.google.android.material.R.style.Widget_MaterialComponents_CardView;

    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialCardView materialCardView, boolean z);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f11557do.m13007catch().getBounds());
        return rectF;
    }

    /* renamed from: if, reason: not valid java name */
    private void m12989if() {
        if (Build.VERSION.SDK_INT > 26) {
            this.f11557do.m13006break();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m12990for() {
        Cdo cdo = this.f11557do;
        return cdo != null && cdo.m13005abstract();
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.f11557do.m13008class();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.f11557do.m13009const();
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.f11557do.m13013final();
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.f11557do.m13024super();
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.f11557do.m13027throw();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.f11557do.m13031while();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f11557do.m13014finally().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f11557do.m13014finally().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f11557do.m13014finally().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f11557do.m13014finally().top;
    }

    @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
    public float getProgress() {
        return this.f11557do.m13021return();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f11557do.m13018native();
    }

    public ColorStateList getRippleColor() {
        return this.f11557do.m13022static();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f11557do.m13025switch();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.f11557do.m13028throws();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.f11557do.m13011default();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.f11557do.m13012extends();
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f11558for;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m12991new() {
        return this.f11560new;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tx0.m8140case(this, this.f11557do.m13007catch());
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (m12990for()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, f11552case);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, f11554else);
        }
        if (m12991new()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, f11555goto);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f11553catch);
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f11553catch);
        accessibilityNodeInfo.setCheckable(m12990for());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f11557do.m13023strictfp(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f11559if) {
            if (!this.f11557do.m13019private()) {
                this.f11557do.m13030volatile(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i) {
        this.f11557do.m13017interface(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.f11557do.m();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.f11557do.m13020protected(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.f11557do.m13029transient(z);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f11558for != z) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.f11557do.m13015implements(drawable);
    }

    public void setCheckedIconMargin(@Dimension int i) {
        this.f11557do.m13016instanceof(i);
    }

    public void setCheckedIconMarginResource(@DimenRes int i) {
        if (i != -1) {
            this.f11557do.m13016instanceof(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        this.f11557do.m13015implements(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setCheckedIconSize(@Dimension int i) {
        this.f11557do.m13026synchronized(i);
    }

    public void setCheckedIconSizeResource(@DimenRes int i) {
        if (i != 0) {
            this.f11557do.m13026synchronized(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.f11557do.a(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        Cdo cdo = this.f11557do;
        if (cdo != null) {
            cdo.k();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.f11557do.h(i, i2, i3, i4);
    }

    public void setDragged(boolean z) {
        if (this.f11560new != z) {
            this.f11560new = z;
            refreshDrawableState();
            m12989if();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f11557do.o();
    }

    public void setOnCheckedChangeListener(@Nullable OnCheckedChangeListener onCheckedChangeListener) {
        this.f11561try = onCheckedChangeListener;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.f11557do.o();
        this.f11557do.l();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f11557do.c(f);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.f11557do.b(f);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.f11557do.d(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i) {
        this.f11557do.d(AppCompatResources.getColorStateList(getContext(), i));
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(shapeAppearanceModel.m13981return(getBoundsAsRectF()));
        }
        this.f11557do.e(shapeAppearanceModel);
    }

    public void setStrokeColor(@ColorInt int i) {
        this.f11557do.f(ColorStateList.valueOf(i));
    }

    public void setStrokeWidth(@Dimension int i) {
        this.f11557do.g(i);
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.f11557do.o();
        this.f11557do.l();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (m12990for() && isEnabled()) {
            this.f11558for = !this.f11558for;
            refreshDrawableState();
            m12989if();
            OnCheckedChangeListener onCheckedChangeListener = this.f11561try;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(this, this.f11558for);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m12992try(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialCardViewStyle);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.f11557do.m13017interface(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f11557do.f(colorStateList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        int i2 = f11556this;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11558for = false;
        this.f11560new = false;
        this.f11559if = true;
        TypedArray typedArrayM4267break = k62.m4267break(getContext(), attributeSet, com.google.android.material.R.styleable.MaterialCardView, i, i2, new int[0]);
        Cdo cdo = new Cdo(this, attributeSet, i, i2);
        this.f11557do = cdo;
        cdo.m13017interface(super.getCardBackgroundColor());
        cdo.h(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        cdo.m13010continue(typedArrayM4267break);
        typedArrayM4267break.recycle();
    }
}
