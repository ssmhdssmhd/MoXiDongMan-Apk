package com.wsw.cospa.widget.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.wsw.cospa.R;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ShadowLayout extends ViewGroup {
    private static final int DEFAULT_CHILD_GRAVITY = 8388659;
    private static final int SIZE_DEFAULT = 0;
    private static final int SIZE_UNSET = -1;
    private int backgroundColor;
    private Paint bgPaint;
    private float cornerRadiusBL;
    private float cornerRadiusBR;
    private float cornerRadiusTL;
    private float cornerRadiusTR;
    private int foregroundColor;
    private boolean foregroundDrawBoundsChanged;
    private int foregroundDrawGravity;
    private boolean foregroundDrawInPadding;
    private Drawable foregroundDrawable;
    private Rect overlayBounds;
    private Rect selfBounds;
    private int shadowColor;
    private float shadowDx;
    private float shadowDy;
    private int shadowMarginBottom;
    private int shadowMarginLeft;
    private int shadowMarginRight;
    private int shadowMarginTop;
    private float shadowRadius;

    public ShadowLayout(Context context) {
        this(context, null);
    }

    private void drawForeground(Canvas canvas) {
        if (this.foregroundDrawable != null) {
            if (this.foregroundDrawBoundsChanged) {
                this.foregroundDrawBoundsChanged = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.foregroundDrawInPadding) {
                    this.selfBounds.set(0, 0, right, bottom);
                } else {
                    this.selfBounds.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.foregroundDrawGravity, this.foregroundDrawable.getIntrinsicWidth(), this.foregroundDrawable.getIntrinsicHeight(), this.selfBounds, this.overlayBounds);
                this.foregroundDrawable.setBounds(this.overlayBounds);
            }
            this.foregroundDrawable.draw(canvas);
        }
    }

    private int getPaddingBottomWithForeground() {
        return getPaddingBottom();
    }

    private int getPaddingLeftWithForeground() {
        return getPaddingLeft();
    }

    private int getPaddingRightWithForeground() {
        return getPaddingRight();
    }

    private int getPaddingTopWithForeground() {
        return getPaddingTop();
    }

    private float getShadowMarginMax() {
        Iterator it = Arrays.asList(Integer.valueOf(this.shadowMarginLeft), Integer.valueOf(this.shadowMarginTop), Integer.valueOf(this.shadowMarginRight), Integer.valueOf(this.shadowMarginBottom)).iterator();
        float fMax = 0.0f;
        while (it.hasNext()) {
            fMax = Math.max(fMax, ((Integer) it.next()).intValue());
        }
        return fMax;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    @TargetApi(17)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void layoutChildren(int i, int i2, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int childCount = getChildCount();
        int paddingLeftWithForeground = getPaddingLeftWithForeground();
        int paddingRightWithForeground = (i3 - i) - getPaddingRightWithForeground();
        int paddingTopWithForeground = getPaddingTopWithForeground();
        int paddingBottomWithForeground = (i4 - i2) - getPaddingBottomWithForeground();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i12 = layoutParams.gravity;
                if (i12 == -1) {
                    i12 = 8388659;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i12, getLayoutDirection());
                int i13 = i12 & 112;
                int i14 = absoluteGravity & 7;
                if (i14 == 1) {
                    i5 = ((((((paddingRightWithForeground - paddingLeftWithForeground) - measuredWidth) / 2) + paddingLeftWithForeground) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + this.shadowMarginLeft;
                    i6 = this.shadowMarginRight;
                } else if (i14 == 3 || i14 != 5) {
                    int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeftWithForeground;
                    int i16 = this.shadowMarginLeft;
                    i7 = i15 + i16;
                    if (i13 == 16) {
                        i8 = ((((((paddingBottomWithForeground - paddingTopWithForeground) - measuredHeight) / 2) + paddingTopWithForeground) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + this.shadowMarginTop;
                        i9 = this.shadowMarginBottom;
                    } else if (i13 == 48 || i13 != 80) {
                        int i17 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTopWithForeground;
                        int i18 = this.shadowMarginTop;
                        i10 = i17 + i18;
                        childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                    } else {
                        i8 = (paddingBottomWithForeground - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        i9 = this.shadowMarginBottom;
                    }
                    i10 = i8 - i9;
                    childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                } else if (z) {
                    i7 = 0;
                    if (i13 == 16) {
                    }
                    i10 = i8 - i9;
                    childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                } else {
                    i5 = (paddingRightWithForeground - measuredWidth) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    i6 = this.shadowMarginRight;
                }
                i7 = i5 - i6;
                if (i13 == 16) {
                }
                i10 = i8 - i9;
                childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
            }
        }
    }

    private void updateForegroundColor() {
        Drawable drawable = this.foregroundDrawable;
        if (drawable != null) {
            if (Build.VERSION.SDK_INT < 21) {
                drawable.setColorFilter(this.foregroundColor, PorterDuff.Mode.SRC_ATOP);
            } else if (drawable instanceof RippleDrawable) {
                ((RippleDrawable) drawable).setColor(ColorStateList.valueOf(this.foregroundColor));
            }
        }
    }

    private void updatePaintShadow() {
        updatePaintShadow(this.shadowRadius, this.shadowDx, this.shadowDy, this.shadowColor);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (canvas != null) {
            canvas.save();
            canvas.clipPath(ShapeUtils.roundedRect(this.shadowMarginLeft, this.shadowMarginTop, getMeasuredWidth() - this.shadowMarginRight, getMeasuredHeight() - this.shadowMarginBottom, this.cornerRadiusTL, this.cornerRadiusTR, this.cornerRadiusBR, this.cornerRadiusBL));
            drawForeground(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        Drawable drawable;
        super.drawableHotspotChanged(f, f2);
        if (Build.VERSION.SDK_INT < 21 || (drawable = this.foregroundDrawable) == null) {
            return;
        }
        drawable.setHotspot(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.foregroundDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.foregroundDrawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ShadowLayout.class.getName();
    }

    public int getBackgroundColor() {
        return this.backgroundColor;
    }

    public float getCornerRadiusBL() {
        return this.cornerRadiusBL;
    }

    public float getCornerRadiusBR() {
        return this.cornerRadiusBR;
    }

    public float getCornerRadiusTL() {
        return this.cornerRadiusTL;
    }

    public float getCornerRadiusTR() {
        return this.cornerRadiusTR;
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.foregroundDrawable;
    }

    public int getForegroundColor() {
        return this.foregroundColor;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.foregroundDrawGravity;
    }

    public int getShadowColor() {
        return this.shadowColor;
    }

    public float getShadowDx() {
        return this.shadowDx;
    }

    public float getShadowDy() {
        return this.shadowDy;
    }

    public int getShadowMarginBottom() {
        return this.shadowMarginBottom;
    }

    public int getShadowMarginLeft() {
        return this.shadowMarginLeft;
    }

    public int getShadowMarginRight() {
        return this.shadowMarginRight;
    }

    public int getShadowMarginTop() {
        return this.shadowMarginTop;
    }

    public float getShadowRadius() {
        return (this.shadowRadius <= getShadowMarginMax() || getShadowMarginMax() == 0.0f) ? this.shadowRadius : getShadowMarginMax();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.foregroundDrawable;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas != null) {
            Path pathRoundedRect = ShapeUtils.roundedRect(this.shadowMarginLeft, this.shadowMarginTop, getMeasuredWidth() - this.shadowMarginRight, getMeasuredHeight() - this.shadowMarginBottom, this.cornerRadiusTL, this.cornerRadiusTR, this.cornerRadiusBR, this.cornerRadiusBL);
            canvas.drawPath(pathRoundedRect, this.bgPaint);
            canvas.clipPath(pathRoundedRect);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        layoutChildren(i, i2, i3, i4, false);
        if (z) {
            this.foregroundDrawBoundsChanged = z;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int iMax;
        int iCombineMeasuredStates;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int i3 = 0;
        setMeasuredDimension(ViewGroup.getDefaultSize(0, i), ViewGroup.getDefaultSize(0, i2));
        boolean z = layoutParams.width == -1;
        boolean z2 = layoutParams.height == -1;
        int iMakeMeasureSpec = z ? View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - this.shadowMarginRight) - this.shadowMarginLeft, 1073741824) : i;
        int iMakeMeasureSpec2 = z2 ? View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.shadowMarginTop) - this.shadowMarginBottom, 1073741824) : i2;
        View childAt = getChildAt(0);
        if (childAt.getVisibility() != 8) {
            measureChildWithMargins(childAt, iMakeMeasureSpec, 0, iMakeMeasureSpec2, 0);
            LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
            int iMax2 = z ? Math.max(0, childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin) : Math.max(0, childAt.getMeasuredWidth() + this.shadowMarginLeft + this.shadowMarginRight + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
            iMax = z2 ? Math.max(0, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) : Math.max(0, childAt.getMeasuredHeight() + this.shadowMarginTop + this.shadowMarginBottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
            int i4 = iMax2;
            iCombineMeasuredStates = View.combineMeasuredStates(0, childAt.getMeasuredState());
            i3 = i4;
        } else {
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        int paddingLeft = i3 + getPaddingLeft() + getPaddingRight();
        int iMax3 = Math.max(iMax + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight());
        int iMax4 = Math.max(paddingLeft, getSuggestedMinimumWidth());
        Drawable foreground = getForeground();
        if (foreground != null) {
            iMax3 = Math.max(iMax3, foreground.getMinimumHeight());
            iMax4 = Math.max(iMax4, foreground.getMinimumWidth());
        }
        if (!z) {
            i = iMakeMeasureSpec;
        }
        int iResolveSizeAndState = View.resolveSizeAndState(iMax4, i, iCombineMeasuredStates);
        if (!z2) {
            i2 = iMakeMeasureSpec2;
        }
        setMeasuredDimension(iResolveSizeAndState, View.resolveSizeAndState(iMax3, i2, iCombineMeasuredStates << 16));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.foregroundDrawBoundsChanged = true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
        invalidate();
    }

    public void setCornerRadius(float f, float f2, float f3, float f4) {
        this.cornerRadiusTL = f;
        this.cornerRadiusTR = f2;
        this.cornerRadiusBR = f3;
        this.cornerRadiusBL = f4;
        invalidate();
    }

    public void setCornerRadiusBL(float f) {
        this.cornerRadiusBL = f;
        invalidate();
    }

    public void setCornerRadiusBR(float f) {
        this.cornerRadiusBR = f;
        invalidate();
    }

    public void setCornerRadiusTL(float f) {
        this.cornerRadiusTL = f;
        invalidate();
    }

    public void setCornerRadiusTR(float f) {
        this.cornerRadiusTR = f;
        invalidate();
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.foregroundDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.foregroundDrawable);
        }
        this.foregroundDrawable = drawable;
        updateForegroundColor();
        if (drawable != null) {
            setWillNotDraw(false);
            drawable.setCallback(this);
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            if (this.foregroundDrawGravity == 119) {
                drawable.getPadding(new Rect());
            }
        }
        requestLayout();
        invalidate();
    }

    public void setForegroundColor(@ColorInt int i) {
        this.foregroundColor = i;
        updateForegroundColor();
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.foregroundDrawGravity != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.foregroundDrawGravity = i;
            if (i == 119 && this.foregroundDrawable != null) {
                this.foregroundDrawable.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    public void setShadowColor(@ColorInt int i) {
        this.shadowColor = i;
        updatePaintShadow(this.shadowRadius, this.shadowDx, this.shadowDy, i);
    }

    public void setShadowDx(float f) {
        this.shadowDx = f;
        updatePaintShadow(this.shadowRadius, f, this.shadowDy, this.shadowColor);
    }

    public void setShadowDy(float f) {
        this.shadowDy = f;
        updatePaintShadow(this.shadowRadius, this.shadowDx, f, this.shadowColor);
    }

    public void setShadowMargin(int i, int i2, int i3, int i4) {
        this.shadowMarginLeft = i;
        this.shadowMarginTop = i2;
        this.shadowMarginRight = i3;
        this.shadowMarginBottom = i4;
        requestLayout();
        invalidate();
    }

    public void setShadowMarginBottom(int i) {
        this.shadowMarginBottom = i;
        updatePaintShadow();
    }

    public void setShadowMarginLeft(int i) {
        this.shadowMarginLeft = i;
        updatePaintShadow();
    }

    public void setShadowMarginRight(int i) {
        this.shadowMarginRight = i;
        updatePaintShadow();
    }

    public void setShadowMarginTop(int i) {
        this.shadowMarginTop = i;
        updatePaintShadow();
    }

    public void setShadowRadius(float f) {
        if (f > getShadowMarginMax() && getShadowMarginMax() != 0.0f) {
            f = getShadowMarginMax();
        }
        this.shadowRadius = f;
        updatePaintShadow(f, this.shadowDx, this.shadowDy, this.shadowColor);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.foregroundDrawable;
    }

    public ShadowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void updatePaintShadow(float f, float f2, float f3, int i) {
        this.bgPaint.setShadowLayer(f, f2, f3, i);
        invalidate();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.selfBounds = new Rect();
        this.overlayBounds = new Rect();
        this.foregroundDrawGravity = 119;
        this.foregroundDrawInPadding = true;
        this.foregroundDrawBoundsChanged = false;
        this.bgPaint = new Paint();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ShadowLayout, i, 0);
        this.shadowColor = typedArrayObtainStyledAttributes.getColor(8, ContextCompat.getColor(context, R.color.arg_res_0x7f0602ca));
        this.foregroundColor = typedArrayObtainStyledAttributes.getColor(7, ContextCompat.getColor(context, R.color.arg_res_0x7f0602cb));
        this.backgroundColor = typedArrayObtainStyledAttributes.getColor(1, -1);
        this.shadowDx = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        this.shadowDy = typedArrayObtainStyledAttributes.getFloat(10, 1.0f);
        this.shadowRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, -1);
        if (dimensionPixelSize >= 0) {
            this.shadowMarginTop = dimensionPixelSize;
            this.shadowMarginLeft = dimensionPixelSize;
            this.shadowMarginRight = dimensionPixelSize;
            this.shadowMarginBottom = dimensionPixelSize;
        } else {
            this.shadowMarginTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(15, 0);
            this.shadowMarginLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, 0);
            this.shadowMarginRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(14, 0);
            this.shadowMarginBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        }
        float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        if (dimensionPixelSize2 >= 0.0f) {
            this.cornerRadiusTL = dimensionPixelSize2;
            this.cornerRadiusTR = dimensionPixelSize2;
            this.cornerRadiusBL = dimensionPixelSize2;
            this.cornerRadiusBR = dimensionPixelSize2;
        } else {
            this.cornerRadiusTL = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
            this.cornerRadiusTR = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
            this.cornerRadiusBL = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
            this.cornerRadiusBR = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.bgPaint.setColor(this.backgroundColor);
        this.bgPaint.setAntiAlias(true);
        this.bgPaint.setStyle(Paint.Style.FILL);
        setLayerType(1, null);
        setWillNotDraw(false);
        ViewCompat.setBackground(this, null);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public static final int UNSPECIFIED_GRAVITY = -1;
        public int gravity;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ShadowLayout_lay);
            this.gravity = typedArrayObtainStyledAttributes.getInt(0, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.gravity = -1;
            this.gravity = i3;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.gravity = layoutParams.gravity;
        }
    }
}
