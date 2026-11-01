package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.um1;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;

/* renamed from: com.google.android.material.timepicker.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor extends ConstraintLayout {

    /* renamed from: new, reason: not valid java name */
    private static final String f13167new = "skip";

    /* renamed from: do, reason: not valid java name */
    private final Runnable f13168do;

    /* renamed from: for, reason: not valid java name */
    private MaterialShapeDrawable f13169for;

    /* renamed from: if, reason: not valid java name */
    private int f13170if;

    /* renamed from: com.google.android.material.timepicker.for$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cfor.this.m14612try();
        }
    }

    public Cfor(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m14608case() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f13168do);
            handler.post(this.f13168do);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private Drawable m14609do() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f13169for = materialShapeDrawable;
        materialShapeDrawable.w(new um1(0.5f));
        this.f13169for.z(ColorStateList.valueOf(-1));
        return this.f13169for;
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m14610new(View view) {
        return f13167new.equals(view.getTag());
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            view.setId(ViewCompat.generateViewId());
        }
        m14608case();
    }

    /* renamed from: for */
    public void mo14518for(@Dimension int i) {
        this.f13170if = i;
        m14612try();
    }

    @Dimension
    /* renamed from: if, reason: not valid java name */
    public int m14611if() {
        return this.f13170if;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m14612try();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        m14608case();
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        this.f13169for.z(ColorStateList.valueOf(i));
    }

    /* renamed from: try, reason: not valid java name */
    public void m14612try() {
        int childCount = getChildCount();
        int i = 1;
        for (int i2 = 0; i2 < childCount; i2++) {
            if (m14610new(getChildAt(i2))) {
                i++;
            }
        }
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(this);
        float f = 0.0f;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int id = childAt.getId();
            int i4 = R.id.circle_center;
            if (id != i4 && !m14610new(childAt)) {
                constraintSet.constrainCircle(childAt.getId(), i4, this.f13170if, f);
                f += 360.0f / (childCount - i);
            }
        }
        constraintSet.applyTo(this);
    }

    public Cfor(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Cfor(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        ViewCompat.setBackground(this, m14609do());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadialViewGroup, i, 0);
        this.f13170if = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f13168do = new Cdo();
        typedArrayObtainStyledAttributes.recycle();
    }
}
