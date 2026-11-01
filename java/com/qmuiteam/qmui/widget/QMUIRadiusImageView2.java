package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.support.v4.ch1;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.appcompat.widget.AppCompatImageView;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.layout.Cdo;
import com.qmuiteam.qmui.layout.IQMUILayout;

/* loaded from: classes2.dex */
public class QMUIRadiusImageView2 extends AppCompatImageView implements IQMUILayout {

    /* renamed from: const, reason: not valid java name */
    private static final int f19501const = -7829368;

    /* renamed from: break, reason: not valid java name */
    private boolean f19502break;

    /* renamed from: case, reason: not valid java name */
    private int f19503case;

    /* renamed from: catch, reason: not valid java name */
    private ColorFilter f19504catch;

    /* renamed from: class, reason: not valid java name */
    private ColorFilter f19505class;

    /* renamed from: do, reason: not valid java name */
    private Cdo f19506do;

    /* renamed from: else, reason: not valid java name */
    private int f19507else;

    /* renamed from: for, reason: not valid java name */
    private boolean f19508for;

    /* renamed from: goto, reason: not valid java name */
    private int f19509goto;

    /* renamed from: if, reason: not valid java name */
    private ch1 f19510if;

    /* renamed from: new, reason: not valid java name */
    private boolean f19511new;

    /* renamed from: this, reason: not valid java name */
    private int f19512this;

    /* renamed from: try, reason: not valid java name */
    private int f19513try;

    public QMUIRadiusImageView2(Context context) {
        super(context);
        this.f19508for = false;
        this.f19511new = false;
        this.f19502break = true;
        m23785do(context, null, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private void m23785do(Context context, AttributeSet attributeSet, int i) {
        setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.f19506do = new Cdo(context, attributeSet, i, this);
        setChangeAlphaWhenPress(false);
        setChangeAlphaWhenDisable(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIRadiusImageView2, i, 0);
        this.f19513try = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView2_qmui_border_width, 0);
        this.f19503case = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView2_qmui_border_color, -7829368);
        this.f19507else = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView2_qmui_selected_border_width, this.f19513try);
        this.f19509goto = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView2_qmui_selected_border_color, this.f19503case);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIRadiusImageView2_qmui_selected_mask_color, 0);
        this.f19512this = color;
        if (color != 0) {
            this.f19505class = new PorterDuffColorFilter(this.f19512this, PorterDuff.Mode.DARKEN);
        }
        this.f19502break = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView2_qmui_is_touch_select_mode_enabled, true);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIRadiusImageView2_qmui_is_circle, false);
        this.f19508for = z;
        if (!z) {
            setRadius(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRadiusImageView2_qmui_corner_radius, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private ch1 getAlphaViewHelper() {
        if (this.f19510if == null) {
            this.f19510if = new ch1(this);
        }
        return this.f19510if;
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.f19506do.m23467catch(canvas, getWidth(), getHeight());
        this.f19506do.m23466break(canvas);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m23786for() {
        return this.f19502break;
    }

    public int getBorderColor() {
        return this.f19503case;
    }

    public int getBorderWidth() {
        return this.f19513try;
    }

    public int getCornerRadius() {
        return getRadius();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getHideRadiusSide() {
        return this.f19506do.getHideRadiusSide();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getRadius() {
        return this.f19506do.getRadius();
    }

    public int getSelectedBorderColor() {
        return this.f19509goto;
    }

    public int getSelectedBorderWidth() {
        return this.f19507else;
    }

    public int getSelectedMaskColor() {
        return this.f19512this;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public float getShadowAlpha() {
        return this.f19506do.getShadowAlpha();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getShadowColor() {
        return this.f19506do.getShadowColor();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getShadowElevation() {
        return this.f19506do.getShadowElevation();
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m23787if() {
        return this.f19508for;
    }

    @Override // android.view.View
    public boolean isSelected() {
        return this.f19511new;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int iM23469final = this.f19506do.m23469final(i);
        int iM23468const = this.f19506do.m23468const(i2);
        super.onMeasure(iM23469final, iM23468const);
        int iM23472throw = this.f19506do.m23472throw(iM23469final, getMeasuredWidth());
        int iM23471super = this.f19506do.m23471super(iM23468const, getMeasuredHeight());
        if (iM23469final != iM23472throw || iM23468const != iM23471super) {
            super.onMeasure(iM23472throw, iM23471super);
        }
        if (this.f19508for) {
            int measuredHeight = getMeasuredHeight();
            int measuredWidth = getMeasuredWidth();
            int i3 = measuredWidth / 2;
            if (measuredHeight != measuredWidth) {
                int iMin = Math.min(measuredHeight, measuredWidth);
                i3 = iMin / 2;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            setRadius(i3);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isClickable()) {
            setSelected(false);
            return super.onTouchEvent(motionEvent);
        }
        if (!this.f19502break) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setSelected(true);
        } else if (action == 1 || action == 3 || action == 4 || action == 8) {
            setSelected(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowBottomDivider(int i, int i2, int i3, int i4) {
        this.f19506do.onlyShowBottomDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowLeftDivider(int i, int i2, int i3, int i4) {
        this.f19506do.onlyShowLeftDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowRightDivider(int i, int i2, int i3, int i4) {
        this.f19506do.onlyShowRightDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowTopDivider(int i, int i2, int i3, int i4) {
        this.f19506do.onlyShowTopDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBorderColor(@ColorInt int i) {
        if (this.f19503case != i) {
            this.f19503case = i;
            if (this.f19511new) {
                return;
            }
            this.f19506do.setBorderColor(i);
            invalidate();
        }
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBorderWidth(int i) {
        if (this.f19513try != i) {
            this.f19513try = i;
            if (this.f19511new) {
                return;
            }
            this.f19506do.setBorderWidth(i);
            invalidate();
        }
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBottomDividerAlpha(int i) {
        this.f19506do.setBottomDividerAlpha(i);
        invalidate();
    }

    public void setChangeAlphaWhenDisable(boolean z) {
        getAlphaViewHelper().m928for(z);
    }

    public void setChangeAlphaWhenPress(boolean z) {
        getAlphaViewHelper().m930new(z);
    }

    public void setCircle(boolean z) {
        if (this.f19508for != z) {
            this.f19508for = z;
            requestLayout();
            invalidate();
        }
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f19504catch == colorFilter) {
            return;
        }
        this.f19504catch = colorFilter;
        if (this.f19511new) {
            return;
        }
        super.setColorFilter(colorFilter);
    }

    public void setCornerRadius(int i) {
        setRadius(i);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        getAlphaViewHelper().m927do(this, z);
    }

    @Override // android.widget.ImageView
    public boolean setFrame(int i, int i2, int i3, int i4) {
        return super.setFrame(i, i2, i3, i4);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public boolean setHeightLimit(int i) {
        if (!this.f19506do.setHeightLimit(i)) {
            return true;
        }
        requestLayout();
        invalidate();
        return true;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setHideRadiusSide(int i) {
        this.f19506do.setHideRadiusSide(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setLeftDividerAlpha(int i) {
        this.f19506do.setLeftDividerAlpha(i);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOuterNormalColor(int i) {
        this.f19506do.setOuterNormalColor(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOutlineExcludePadding(boolean z) {
        this.f19506do.setOutlineExcludePadding(z);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOutlineInset(int i, int i2, int i3, int i4) {
        this.f19506do.setOutlineInset(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        getAlphaViewHelper().m929if(this, z);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadius(int i) {
        this.f19506do.setRadius(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, float f) {
        this.f19506do.setRadiusAndShadow(i, i2, f);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRightDividerAlpha(int i) {
        this.f19506do.setRightDividerAlpha(i);
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        if (this.f19511new != z) {
            this.f19511new = z;
            if (z) {
                super.setColorFilter(this.f19505class);
            } else {
                super.setColorFilter(this.f19504catch);
            }
            boolean z2 = this.f19511new;
            int i = z2 ? this.f19507else : this.f19513try;
            int i2 = z2 ? this.f19509goto : this.f19503case;
            this.f19506do.setBorderWidth(i);
            this.f19506do.setBorderColor(i2);
            invalidate();
        }
    }

    public void setSelectedBorderColor(@ColorInt int i) {
        if (this.f19509goto != i) {
            this.f19509goto = i;
            if (this.f19511new) {
                this.f19506do.setBorderColor(i);
                invalidate();
            }
        }
    }

    public void setSelectedBorderWidth(int i) {
        if (this.f19507else != i) {
            this.f19507else = i;
            if (this.f19511new) {
                this.f19506do.setBorderWidth(i);
                invalidate();
            }
        }
    }

    public void setSelectedColorFilter(ColorFilter colorFilter) {
        if (this.f19505class == colorFilter) {
            return;
        }
        this.f19505class = colorFilter;
        if (this.f19511new) {
            super.setColorFilter(colorFilter);
        }
    }

    public void setSelectedMaskColor(@ColorInt int i) {
        if (this.f19512this != i) {
            this.f19512this = i;
            if (i != 0) {
                this.f19505class = new PorterDuffColorFilter(this.f19512this, PorterDuff.Mode.DARKEN);
            } else {
                this.f19505class = null;
            }
            if (this.f19511new) {
                invalidate();
            }
        }
        this.f19512this = i;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowAlpha(float f) {
        this.f19506do.setShadowAlpha(f);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowColor(int i) {
        this.f19506do.setShadowColor(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowElevation(int i) {
        this.f19506do.setShadowElevation(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShowBorderOnlyBeforeL(boolean z) {
        this.f19506do.setShowBorderOnlyBeforeL(z);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setTopDividerAlpha(int i) {
        this.f19506do.setTopDividerAlpha(i);
        invalidate();
    }

    public void setTouchSelectModeEnabled(boolean z) {
        this.f19502break = z;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setUseThemeGeneralShadowElevation() {
        this.f19506do.setUseThemeGeneralShadowElevation();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public boolean setWidthLimit(int i) {
        if (!this.f19506do.setWidthLimit(i)) {
            return true;
        }
        requestLayout();
        invalidate();
        return true;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateBottomDivider(int i, int i2, int i3, int i4) {
        this.f19506do.updateBottomDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateLeftDivider(int i, int i2, int i3, int i4) {
        this.f19506do.updateLeftDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateRightDivider(int i, int i2, int i3, int i4) {
        this.f19506do.updateRightDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateTopDivider(int i, int i2, int i3, int i4) {
        this.f19506do.updateTopDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadius(int i, int i2) {
        this.f19506do.setRadius(i, i2);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, int i3, float f) {
        this.f19506do.setRadiusAndShadow(i, i2, i3, f);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, int i3, int i4, float f) {
        this.f19506do.setRadiusAndShadow(i, i2, i3, i4, f);
    }

    public QMUIRadiusImageView2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19508for = false;
        this.f19511new = false;
        this.f19502break = true;
        m23785do(context, attributeSet, 0);
    }

    public QMUIRadiusImageView2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19508for = false;
        this.f19511new = false;
        this.f19502break = true;
        m23785do(context, attributeSet, i);
    }
}
