package android.support.v4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class th1 extends GradientDrawable {

    /* renamed from: do, reason: not valid java name */
    private boolean f6531do = true;

    /* renamed from: for, reason: not valid java name */
    private int f6532for = 0;

    /* renamed from: if, reason: not valid java name */
    private ColorStateList f6533if;

    /* renamed from: new, reason: not valid java name */
    private ColorStateList f6534new;

    /* renamed from: do, reason: not valid java name */
    public static th1 m7896do(Context context, AttributeSet attributeSet, int i) {
        boolean z = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIRoundButton, i, 0);
        ColorStateList colorStateList = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.QMUIRoundButton_qmui_backgroundColor);
        ColorStateList colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(R.styleable.QMUIRoundButton_qmui_borderColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRoundButton_qmui_borderWidth, 0);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIRoundButton_qmui_isRadiusAdjustBounds, false);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRoundButton_qmui_radius, 0);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRoundButton_qmui_radiusTopLeft, 0);
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRoundButton_qmui_radiusTopRight, 0);
        int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRoundButton_qmui_radiusBottomLeft, 0);
        int dimensionPixelSize6 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIRoundButton_qmui_radiusBottomRight, 0);
        typedArrayObtainStyledAttributes.recycle();
        th1 th1Var = new th1();
        th1Var.m7898for(colorStateList);
        th1Var.m7900try(dimensionPixelSize, colorStateList2);
        if (dimensionPixelSize3 > 0 || dimensionPixelSize4 > 0 || dimensionPixelSize5 > 0 || dimensionPixelSize6 > 0) {
            float f = dimensionPixelSize3;
            float f2 = dimensionPixelSize4;
            float f3 = dimensionPixelSize6;
            float f4 = dimensionPixelSize5;
            th1Var.setCornerRadii(new float[]{f, f, f2, f2, f3, f3, f4, f4});
        } else {
            th1Var.setCornerRadius(dimensionPixelSize2);
            if (dimensionPixelSize2 <= 0) {
                z = z2;
            }
        }
        th1Var.m7899new(z);
        return th1Var;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m7897if() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: for, reason: not valid java name */
    public void m7898for(@Nullable ColorStateList colorStateList) {
        if (m7897if()) {
            super.setColor(colorStateList);
        } else {
            this.f6533if = colorStateList;
            setColor(colorStateList != null ? colorStateList.getColorForState(getState(), 0) : 0);
        }
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f6533if;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f6534new) != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* renamed from: new, reason: not valid java name */
    public void m7899new(boolean z) {
        this.f6531do = z;
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f6531do) {
            setCornerRadius(Math.min(rect.width(), rect.height()) / 2);
        }
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f6533if;
        if (colorStateList != null) {
            setColor(colorStateList.getColorForState(iArr, 0));
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.f6534new;
        if (colorStateList2 == null) {
            return zOnStateChange;
        }
        setStroke(this.f6532for, colorStateList2.getColorForState(iArr, 0));
        return true;
    }

    /* renamed from: try, reason: not valid java name */
    public void m7900try(int i, @Nullable ColorStateList colorStateList) {
        if (m7897if()) {
            super.setStroke(i, colorStateList);
            return;
        }
        this.f6532for = i;
        this.f6534new = colorStateList;
        setStroke(i, colorStateList != null ? colorStateList.getColorForState(getState(), 0) : 0);
    }
}
