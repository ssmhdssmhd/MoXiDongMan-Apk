package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.a82;
import android.support.v4.k62;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {

    /* renamed from: new, reason: not valid java name */
    private static final int f11251new = R.style.Widget_MaterialComponents_Toolbar;

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private Integer f11252do;

    /* renamed from: for, reason: not valid java name */
    private boolean f11253for;

    /* renamed from: if, reason: not valid java name */
    private boolean f11254if;

    public MaterialToolbar(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m12668case() {
        if (this.f11254if || this.f11253for) {
            TextView textViewM71else = a82.m71else(this);
            TextView textViewM75try = a82.m75try(this);
            if (textViewM71else == null && textViewM75try == null) {
                return;
            }
            Pair<Integer, Integer> pairM12669do = m12669do(textViewM71else, textViewM75try);
            if (this.f11254if && textViewM71else != null) {
                m12672try(textViewM71else, pairM12669do);
            }
            if (!this.f11253for || textViewM75try == null) {
                return;
            }
            m12672try(textViewM75try, pairM12669do);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private Pair<Integer, Integer> m12669do(@Nullable TextView textView, @Nullable TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    private Drawable m12670else(@Nullable Drawable drawable) {
        if (drawable == null || this.f11252do == null) {
            return drawable;
        }
        Drawable drawableWrap = DrawableCompat.wrap(drawable);
        DrawableCompat.setTint(drawableWrap, this.f11252do.intValue());
        return drawableWrap;
    }

    /* renamed from: if, reason: not valid java name */
    private void m12671if(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.z(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            materialShapeDrawable.k(context);
            materialShapeDrawable.y(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m12672try(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i += iMax;
            i2 -= iMax;
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i, view.getTop(), i2, view.getBottom());
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m12673for() {
        return this.f11253for;
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m12674new() {
        return this.f11254if;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tx0.m8145try(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws NoSuchFieldException {
        super.onLayout(z, i, i2, i3, i4);
        m12668case();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        tx0.m8144new(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(m12670else(drawable));
    }

    public void setNavigationIconTint(@ColorInt int i) {
        this.f11252do = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.f11253for != z) {
            this.f11253for = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.f11254if != z) {
            this.f11254if = z;
            requestLayout();
        }
    }

    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialToolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f11251new;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.MaterialToolbar, i, i2, new int[0]);
        int i3 = R.styleable.MaterialToolbar_navigationIconTint;
        if (typedArrayM4267break.hasValue(i3)) {
            setNavigationIconTint(typedArrayM4267break.getColor(i3, -1));
        }
        this.f11254if = typedArrayM4267break.getBoolean(R.styleable.MaterialToolbar_titleCentered, false);
        this.f11253for = typedArrayM4267break.getBoolean(R.styleable.MaterialToolbar_subtitleCentered, false);
        typedArrayM4267break.recycle();
        m12671if(context2);
    }
}
