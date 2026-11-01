package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.support.v4.k62;
import android.support.v4.qx0;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class MaterialCheckBox extends AppCompatCheckBox {

    /* renamed from: for, reason: not valid java name */
    private static final int f11587for = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* renamed from: new, reason: not valid java name */
    private static final int[][] f11588new = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private ColorStateList f11589do;

    /* renamed from: if, reason: not valid java name */
    private boolean f11590if;

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f11589do == null) {
            int[][] iArr = f11588new;
            int[] iArr2 = new int[iArr.length];
            int iM6679new = qx0.m6679new(this, R.attr.colorControlActivated);
            int iM6679new2 = qx0.m6679new(this, R.attr.colorSurface);
            int iM6679new3 = qx0.m6679new(this, R.attr.colorOnSurface);
            iArr2[0] = qx0.m6677goto(iM6679new2, iM6679new, 1.0f);
            iArr2[1] = qx0.m6677goto(iM6679new2, iM6679new3, 0.54f);
            iArr2[2] = qx0.m6677goto(iM6679new2, iM6679new3, 0.38f);
            iArr2[3] = qx0.m6677goto(iM6679new2, iM6679new3, 0.38f);
            this.f11589do = new ColorStateList(iArr, iArr2);
        }
        return this.f11589do;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m13032do() {
        return this.f11590if;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11590if && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f11590if = z;
        if (z) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f11587for;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.MaterialCheckBox, i, i2, new int[0]);
        int i3 = R.styleable.MaterialCheckBox_buttonTint;
        if (typedArrayM4267break.hasValue(i3)) {
            CompoundButtonCompat.setButtonTintList(this, sx0.m7649do(context2, typedArrayM4267break, i3));
        }
        this.f11590if = typedArrayM4267break.getBoolean(R.styleable.MaterialCheckBox_useMaterialThemeColors, false);
        typedArrayM4267break.recycle();
    }
}
