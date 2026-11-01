package com.henley.shadowlayout;

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
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class ShadowLayout extends ViewGroup {

    /* renamed from: static, reason: not valid java name */
    private static final int f18165static = 8388659;

    /* renamed from: switch, reason: not valid java name */
    private static final int f18166switch = -1;

    /* renamed from: throws, reason: not valid java name */
    private static final int f18167throws = 0;

    /* renamed from: break, reason: not valid java name */
    private int f18168break;

    /* renamed from: case, reason: not valid java name */
    private boolean f18169case;

    /* renamed from: catch, reason: not valid java name */
    private float f18170catch;

    /* renamed from: class, reason: not valid java name */
    private float f18171class;

    /* renamed from: const, reason: not valid java name */
    private float f18172const;

    /* renamed from: do, reason: not valid java name */
    private Drawable f18173do;

    /* renamed from: else, reason: not valid java name */
    private Paint f18174else;

    /* renamed from: final, reason: not valid java name */
    private float f18175final;

    /* renamed from: for, reason: not valid java name */
    private Rect f18176for;

    /* renamed from: goto, reason: not valid java name */
    private int f18177goto;

    /* renamed from: if, reason: not valid java name */
    private Rect f18178if;

    /* renamed from: import, reason: not valid java name */
    private int f18179import;

    /* renamed from: native, reason: not valid java name */
    private int f18180native;

    /* renamed from: new, reason: not valid java name */
    private int f18181new;

    /* renamed from: public, reason: not valid java name */
    private int f18182public;

    /* renamed from: return, reason: not valid java name */
    private int f18183return;

    /* renamed from: super, reason: not valid java name */
    private float f18184super;

    /* renamed from: this, reason: not valid java name */
    private int f18185this;

    /* renamed from: throw, reason: not valid java name */
    private float f18186throw;

    /* renamed from: try, reason: not valid java name */
    private boolean f18187try;

    /* renamed from: while, reason: not valid java name */
    private float f18188while;

    public ShadowLayout(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m22761case() {
        m22763else(this.f18170catch, this.f18171class, this.f18172const, this.f18177goto);
    }

    /* renamed from: do, reason: not valid java name */
    private void m22762do(Canvas canvas) {
        if (this.f18173do != null) {
            if (this.f18169case) {
                this.f18169case = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f18187try) {
                    this.f18178if.set(0, 0, right, bottom);
                } else {
                    this.f18178if.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f18181new, this.f18173do.getIntrinsicWidth(), this.f18173do.getIntrinsicHeight(), this.f18178if, this.f18176for);
                this.f18173do.setBounds(this.f18176for);
            }
            this.f18173do.draw(canvas);
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m22763else(float f, float f2, float f3, int i) {
        this.f18174else.setShadowLayer(f, f2, f3, i);
        invalidate();
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
        Iterator it = Arrays.asList(Integer.valueOf(this.f18180native), Integer.valueOf(this.f18179import), Integer.valueOf(this.f18182public), Integer.valueOf(this.f18183return)).iterator();
        float fMax = 0.0f;
        while (it.hasNext()) {
            fMax = Math.max(fMax, ((Integer) it.next()).intValue());
        }
        return fMax;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    @TargetApi(17)
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m22764if(int i, int i2, int i3, int i4, boolean z) {
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
                Cdo cdo = (Cdo) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i12 = cdo.f18190do;
                if (i12 == -1) {
                    i12 = 8388659;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i12, getLayoutDirection());
                int i13 = i12 & 112;
                int i14 = absoluteGravity & 7;
                if (i14 == 1) {
                    i5 = ((((((paddingRightWithForeground - paddingLeftWithForeground) - measuredWidth) / 2) + paddingLeftWithForeground) + ((ViewGroup.MarginLayoutParams) cdo).leftMargin) - ((ViewGroup.MarginLayoutParams) cdo).rightMargin) + this.f18180native;
                    i6 = this.f18182public;
                } else if (i14 == 3 || i14 != 5) {
                    int i15 = ((ViewGroup.MarginLayoutParams) cdo).leftMargin + paddingLeftWithForeground;
                    int i16 = this.f18180native;
                    i7 = i15 + i16;
                    if (i13 == 16) {
                        i8 = ((((((paddingBottomWithForeground - paddingTopWithForeground) - measuredHeight) / 2) + paddingTopWithForeground) + ((ViewGroup.MarginLayoutParams) cdo).topMargin) - ((ViewGroup.MarginLayoutParams) cdo).bottomMargin) + this.f18179import;
                        i9 = this.f18183return;
                    } else if (i13 == 48 || i13 != 80) {
                        int i17 = ((ViewGroup.MarginLayoutParams) cdo).topMargin + paddingTopWithForeground;
                        int i18 = this.f18179import;
                        i10 = i17 + i18;
                        childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
                    } else {
                        i8 = (paddingBottomWithForeground - measuredHeight) - ((ViewGroup.MarginLayoutParams) cdo).bottomMargin;
                        i9 = this.f18183return;
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
                    i5 = (paddingRightWithForeground - measuredWidth) - ((ViewGroup.MarginLayoutParams) cdo).rightMargin;
                    i6 = this.f18182public;
                }
                i7 = i5 - i6;
                if (i13 == 16) {
                }
                i10 = i8 - i9;
                childAt.layout(i7, i10, measuredWidth + i7, measuredHeight + i10);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m22765try() {
        Drawable drawable = this.f18173do;
        if (drawable != null) {
            if (Build.VERSION.SDK_INT < 21) {
                drawable.setColorFilter(this.f18185this, PorterDuff.Mode.SRC_ATOP);
            } else if (drawable instanceof RippleDrawable) {
                ((RippleDrawable) drawable).setColor(ColorStateList.valueOf(this.f18185this));
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Cdo;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (canvas != null) {
            canvas.save();
            canvas.clipPath(com.henley.shadowlayout.Cdo.m22768do(this.f18180native, this.f18179import, getMeasuredWidth() - this.f18182public, getMeasuredHeight() - this.f18183return, this.f18175final, this.f18184super, this.f18188while, this.f18186throw));
            m22762do(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void drawableHotspotChanged(float f, float f2) {
        Drawable drawable;
        super.drawableHotspotChanged(f, f2);
        if (Build.VERSION.SDK_INT < 21 || (drawable = this.f18173do) == null) {
            return;
        }
        drawable.setHotspot(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f18173do;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f18173do.setState(getDrawableState());
    }

    /* renamed from: for, reason: not valid java name */
    public void m22766for(float f, float f2, float f3, float f4) {
        this.f18175final = f;
        this.f18184super = f2;
        this.f18188while = f3;
        this.f18186throw = f4;
        invalidate();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cdo(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ShadowLayout.class.getName();
    }

    public int getBackgroundColor() {
        return this.f18168break;
    }

    public float getCornerRadiusBL() {
        return this.f18186throw;
    }

    public float getCornerRadiusBR() {
        return this.f18188while;
    }

    public float getCornerRadiusTL() {
        return this.f18175final;
    }

    public float getCornerRadiusTR() {
        return this.f18184super;
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f18173do;
    }

    public int getForegroundColor() {
        return this.f18185this;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f18181new;
    }

    public int getShadowColor() {
        return this.f18177goto;
    }

    public float getShadowDx() {
        return this.f18171class;
    }

    public float getShadowDy() {
        return this.f18172const;
    }

    public int getShadowMarginBottom() {
        return this.f18183return;
    }

    public int getShadowMarginLeft() {
        return this.f18180native;
    }

    public int getShadowMarginRight() {
        return this.f18182public;
    }

    public int getShadowMarginTop() {
        return this.f18179import;
    }

    public float getShadowRadius() {
        return (this.f18170catch <= getShadowMarginMax() || getShadowMarginMax() == 0.0f) ? this.f18170catch : getShadowMarginMax();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f18173do;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m22767new(int i, int i2, int i3, int i4) {
        this.f18180native = i;
        this.f18179import = i2;
        this.f18182public = i3;
        this.f18183return = i4;
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas != null) {
            Path pathM22768do = com.henley.shadowlayout.Cdo.m22768do(this.f18180native, this.f18179import, getMeasuredWidth() - this.f18182public, getMeasuredHeight() - this.f18183return, this.f18175final, this.f18184super, this.f18188while, this.f18186throw);
            canvas.drawPath(pathM22768do, this.f18174else);
            canvas.clipPath(pathM22768do);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        m22764if(i, i2, i3, i4, false);
        if (z) {
            this.f18169case = z;
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
        int iMakeMeasureSpec = z ? View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - this.f18182public) - this.f18180native, 1073741824) : i;
        int iMakeMeasureSpec2 = z2 ? View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f18179import) - this.f18183return, 1073741824) : i2;
        View childAt = getChildAt(0);
        if (childAt.getVisibility() != 8) {
            measureChildWithMargins(childAt, iMakeMeasureSpec, 0, iMakeMeasureSpec2, 0);
            Cdo cdo = (Cdo) childAt.getLayoutParams();
            int iMax2 = z ? Math.max(0, childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) cdo).leftMargin + ((ViewGroup.MarginLayoutParams) cdo).rightMargin) : Math.max(0, childAt.getMeasuredWidth() + this.f18180native + this.f18182public + ((ViewGroup.MarginLayoutParams) cdo).leftMargin + ((ViewGroup.MarginLayoutParams) cdo).rightMargin);
            iMax = z2 ? Math.max(0, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) cdo).topMargin + ((ViewGroup.MarginLayoutParams) cdo).bottomMargin) : Math.max(0, childAt.getMeasuredHeight() + this.f18179import + this.f18183return + ((ViewGroup.MarginLayoutParams) cdo).topMargin + ((ViewGroup.MarginLayoutParams) cdo).bottomMargin);
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
        this.f18169case = true;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f18168break = i;
        invalidate();
    }

    public void setCornerRadiusBL(float f) {
        this.f18186throw = f;
        invalidate();
    }

    public void setCornerRadiusBR(float f) {
        this.f18188while = f;
        invalidate();
    }

    public void setCornerRadiusTL(float f) {
        this.f18175final = f;
        invalidate();
    }

    public void setCornerRadiusTR(float f) {
        this.f18184super = f;
        invalidate();
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f18173do;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f18173do);
        }
        this.f18173do = drawable;
        m22765try();
        if (drawable != null) {
            setWillNotDraw(false);
            drawable.setCallback(this);
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            if (this.f18181new == 119) {
                drawable.getPadding(new Rect());
            }
        }
        requestLayout();
        invalidate();
    }

    public void setForegroundColor(@ColorInt int i) {
        this.f18185this = i;
        m22765try();
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f18181new != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f18181new = i;
            if (i == 119 && this.f18173do != null) {
                this.f18173do.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    public void setShadowColor(@ColorInt int i) {
        this.f18177goto = i;
        m22763else(this.f18170catch, this.f18171class, this.f18172const, i);
    }

    public void setShadowDx(float f) {
        this.f18171class = f;
        m22763else(this.f18170catch, f, this.f18172const, this.f18177goto);
    }

    public void setShadowDy(float f) {
        this.f18172const = f;
        m22763else(this.f18170catch, this.f18171class, f, this.f18177goto);
    }

    public void setShadowMarginBottom(int i) {
        this.f18183return = i;
        m22761case();
    }

    public void setShadowMarginLeft(int i) {
        this.f18180native = i;
        m22761case();
    }

    public void setShadowMarginRight(int i) {
        this.f18182public = i;
        m22761case();
    }

    public void setShadowMarginTop(int i) {
        this.f18179import = i;
        m22761case();
    }

    public void setShadowRadius(float f) {
        if (f > getShadowMarginMax() && getShadowMarginMax() != 0.0f) {
            f = getShadowMarginMax();
        }
        this.f18170catch = f;
        m22763else(f, this.f18171class, this.f18172const, this.f18177goto);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f18173do;
    }

    public ShadowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Cdo(layoutParams);
    }

    public ShadowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18178if = new Rect();
        this.f18176for = new Rect();
        this.f18181new = 119;
        this.f18187try = true;
        this.f18169case = false;
        this.f18174else = new Paint();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ShadowLayout, i, 0);
        this.f18177goto = typedArrayObtainStyledAttributes.getColor(R.styleable.ShadowLayout_shadowColor, ContextCompat.getColor(context, R.color.shadow_view_default_shadow_color));
        this.f18185this = typedArrayObtainStyledAttributes.getColor(R.styleable.ShadowLayout_foregroundColor, ContextCompat.getColor(context, R.color.shadow_view_foreground_color_dark));
        this.f18168break = typedArrayObtainStyledAttributes.getColor(R.styleable.ShadowLayout_backgroundColor, -1);
        this.f18171class = typedArrayObtainStyledAttributes.getFloat(R.styleable.ShadowLayout_shadowDx, 0.0f);
        this.f18172const = typedArrayObtainStyledAttributes.getFloat(R.styleable.ShadowLayout_shadowDy, 1.0f);
        this.f18170catch = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_shadowRadius, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.ShadowLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_shadowMargin, -1);
        if (dimensionPixelSize >= 0) {
            this.f18179import = dimensionPixelSize;
            this.f18180native = dimensionPixelSize;
            this.f18182public = dimensionPixelSize;
            this.f18183return = dimensionPixelSize;
        } else {
            this.f18179import = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_shadowMarginTop, 0);
            this.f18180native = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_shadowMarginLeft, 0);
            this.f18182public = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_shadowMarginRight, 0);
            this.f18183return = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_shadowMarginBottom, 0);
        }
        float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_cornerRadius, -1);
        if (dimensionPixelSize2 >= 0.0f) {
            this.f18175final = dimensionPixelSize2;
            this.f18184super = dimensionPixelSize2;
            this.f18186throw = dimensionPixelSize2;
            this.f18188while = dimensionPixelSize2;
        } else {
            this.f18175final = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_cornerRadiusTL, 0);
            this.f18184super = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_cornerRadiusTR, 0);
            this.f18186throw = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_cornerRadiusBL, 0);
            this.f18188while = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ShadowLayout_cornerRadiusBR, 0);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f18174else.setColor(this.f18168break);
        this.f18174else.setAntiAlias(true);
        this.f18174else.setStyle(Paint.Style.FILL);
        setLayerType(1, null);
        setWillNotDraw(false);
        ViewCompat.setBackground(this, null);
    }

    /* renamed from: com.henley.shadowlayout.ShadowLayout$do, reason: invalid class name */
    public static class Cdo extends ViewGroup.MarginLayoutParams {

        /* renamed from: if, reason: not valid java name */
        public static final int f18189if = -1;

        /* renamed from: do, reason: not valid java name */
        public int f18190do;

        public Cdo(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f18190do = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ShadowLayout_Layout);
            this.f18190do = typedArrayObtainStyledAttributes.getInt(R.styleable.ShadowLayout_Layout_layout_gravity, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public Cdo(int i, int i2) {
            super(i, i2);
            this.f18190do = -1;
        }

        public Cdo(int i, int i2, int i3) {
            super(i, i2);
            this.f18190do = -1;
            this.f18190do = i3;
        }

        public Cdo(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f18190do = -1;
        }

        public Cdo(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f18190do = -1;
        }

        public Cdo(@NonNull Cdo cdo) {
            super((ViewGroup.MarginLayoutParams) cdo);
            this.f18190do = -1;
            this.f18190do = cdo.f18190do;
        }
    }
}
