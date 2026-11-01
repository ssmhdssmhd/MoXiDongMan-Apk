package com.qmuiteam.qmui.layout;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import com.qmuiteam.qmui.alpha.QMUIAlphaLinearLayout;

/* loaded from: classes2.dex */
public class QMUILinearLayout extends QMUIAlphaLinearLayout implements IQMUILayout {

    /* renamed from: if, reason: not valid java name */
    private Cdo f19021if;

    public QMUILinearLayout(Context context) {
        super(context);
        m23443do(context, null, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private void m23443do(Context context, AttributeSet attributeSet, int i) {
        this.f19021if = new Cdo(context, attributeSet, i, this);
        setChangeAlphaWhenPress(false);
        setChangeAlphaWhenDisable(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.f19021if.m23467catch(canvas, getWidth(), getHeight());
        this.f19021if.m23466break(canvas);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getHideRadiusSide() {
        return this.f19021if.getHideRadiusSide();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getRadius() {
        return this.f19021if.getRadius();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public float getShadowAlpha() {
        return this.f19021if.getShadowAlpha();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getShadowColor() {
        return this.f19021if.getShadowColor();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public int getShadowElevation() {
        return this.f19021if.getShadowElevation();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int iM23469final = this.f19021if.m23469final(i);
        int iM23468const = this.f19021if.m23468const(i2);
        super.onMeasure(iM23469final, iM23468const);
        int iM23472throw = this.f19021if.m23472throw(iM23469final, getMeasuredWidth());
        int iM23471super = this.f19021if.m23471super(iM23468const, getMeasuredHeight());
        if (iM23469final == iM23472throw && iM23468const == iM23471super) {
            return;
        }
        super.onMeasure(iM23472throw, iM23471super);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowBottomDivider(int i, int i2, int i3, int i4) {
        this.f19021if.onlyShowBottomDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowLeftDivider(int i, int i2, int i3, int i4) {
        this.f19021if.onlyShowLeftDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowRightDivider(int i, int i2, int i3, int i4) {
        this.f19021if.onlyShowRightDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void onlyShowTopDivider(int i, int i2, int i3, int i4) {
        this.f19021if.onlyShowTopDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBorderColor(@ColorInt int i) {
        this.f19021if.setBorderColor(i);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBorderWidth(int i) {
        this.f19021if.setBorderWidth(i);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setBottomDividerAlpha(int i) {
        this.f19021if.setBottomDividerAlpha(i);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public boolean setHeightLimit(int i) {
        if (!this.f19021if.setHeightLimit(i)) {
            return true;
        }
        requestLayout();
        invalidate();
        return true;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setHideRadiusSide(int i) {
        this.f19021if.setHideRadiusSide(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setLeftDividerAlpha(int i) {
        this.f19021if.setLeftDividerAlpha(i);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOuterNormalColor(int i) {
        this.f19021if.setOuterNormalColor(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOutlineExcludePadding(boolean z) {
        this.f19021if.setOutlineExcludePadding(z);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setOutlineInset(int i, int i2, int i3, int i4) {
        this.f19021if.setOutlineInset(i, i2, i3, i4);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadius(int i) {
        this.f19021if.setRadius(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, float f) {
        this.f19021if.setRadiusAndShadow(i, i2, f);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRightDividerAlpha(int i) {
        this.f19021if.setRightDividerAlpha(i);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowAlpha(float f) {
        this.f19021if.setShadowAlpha(f);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowColor(int i) {
        this.f19021if.setShadowColor(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShadowElevation(int i) {
        this.f19021if.setShadowElevation(i);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setShowBorderOnlyBeforeL(boolean z) {
        this.f19021if.setShowBorderOnlyBeforeL(z);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setTopDividerAlpha(int i) {
        this.f19021if.setTopDividerAlpha(i);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setUseThemeGeneralShadowElevation() {
        this.f19021if.setUseThemeGeneralShadowElevation();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public boolean setWidthLimit(int i) {
        if (!this.f19021if.setWidthLimit(i)) {
            return true;
        }
        requestLayout();
        invalidate();
        return true;
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateBottomDivider(int i, int i2, int i3, int i4) {
        this.f19021if.updateBottomDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateLeftDivider(int i, int i2, int i3, int i4) {
        this.f19021if.updateLeftDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateRightDivider(int i, int i2, int i3, int i4) {
        this.f19021if.updateRightDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void updateTopDivider(int i, int i2, int i3, int i4) {
        this.f19021if.updateTopDivider(i, i2, i3, i4);
        invalidate();
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadius(int i, int i2) {
        this.f19021if.setRadius(i, i2);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, int i3, float f) {
        this.f19021if.setRadiusAndShadow(i, i2, i3, f);
    }

    public QMUILinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23443do(context, attributeSet, 0);
    }

    @Override // com.qmuiteam.qmui.layout.IQMUILayout
    public void setRadiusAndShadow(int i, int i2, int i3, int i4, float f) {
        this.f19021if.setRadiusAndShadow(i, i2, i3, i4, f);
    }

    public QMUILinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m23443do(context, attributeSet, i);
    }
}
