package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.v4.sx0;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* renamed from: com.google.android.material.datepicker.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo {

    /* renamed from: case, reason: not valid java name */
    private final ShapeAppearanceModel f11828case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Rect f11829do;

    /* renamed from: for, reason: not valid java name */
    private final ColorStateList f11830for;

    /* renamed from: if, reason: not valid java name */
    private final ColorStateList f11831if;

    /* renamed from: new, reason: not valid java name */
    private final ColorStateList f11832new;

    /* renamed from: try, reason: not valid java name */
    private final int f11833try;

    private Cdo(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, ShapeAppearanceModel shapeAppearanceModel, @NonNull Rect rect) {
        Preconditions.checkArgumentNonnegative(rect.left);
        Preconditions.checkArgumentNonnegative(rect.top);
        Preconditions.checkArgumentNonnegative(rect.right);
        Preconditions.checkArgumentNonnegative(rect.bottom);
        this.f11829do = rect;
        this.f11831if = colorStateList2;
        this.f11830for = colorStateList;
        this.f11832new = colorStateList3;
        this.f11833try = i;
        this.f11828case = shapeAppearanceModel;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static Cdo m13307do(@NonNull Context context, @StyleRes int i) throws Resources.NotFoundException {
        Preconditions.checkArgument(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R.styleable.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListM7649do = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListM7649do2 = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListM7649do3 = sx0.m7649do(context, typedArrayObtainStyledAttributes, R.styleable.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialCalendarItem_itemStrokeWidth, 0);
        ShapeAppearanceModel shapeAppearanceModelM14003const = ShapeAppearanceModel.m13969if(context, typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m14003const();
        typedArrayObtainStyledAttributes.recycle();
        return new Cdo(colorStateListM7649do, colorStateListM7649do2, colorStateListM7649do3, dimensionPixelSize, shapeAppearanceModelM14003const, rect);
    }

    /* renamed from: case, reason: not valid java name */
    public void m13308case(@NonNull TextView textView) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        materialShapeDrawable.setShapeAppearanceModel(this.f11828case);
        materialShapeDrawable2.setShapeAppearanceModel(this.f11828case);
        materialShapeDrawable.z(this.f11830for);
        materialShapeDrawable.P(this.f11833try, this.f11832new);
        textView.setTextColor(this.f11831if);
        Drawable rippleDrawable = Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.f11831if.withAlpha(30), materialShapeDrawable, materialShapeDrawable2) : materialShapeDrawable;
        Rect rect = this.f11829do;
        ViewCompat.setBackground(textView, new InsetDrawable(rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }

    /* renamed from: for, reason: not valid java name */
    public int m13309for() {
        return this.f11829do.left;
    }

    /* renamed from: if, reason: not valid java name */
    public int m13310if() {
        return this.f11829do.bottom;
    }

    /* renamed from: new, reason: not valid java name */
    public int m13311new() {
        return this.f11829do.right;
    }

    /* renamed from: try, reason: not valid java name */
    public int m13312try() {
        return this.f11829do.top;
    }
}
