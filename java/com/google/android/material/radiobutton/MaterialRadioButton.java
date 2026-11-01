package com.google.android.material.radiobutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.support.v4.k62;
import android.support.v4.qx0;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* renamed from: for, reason: not valid java name */
    private static final int f12433for = R.style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* renamed from: new, reason: not valid java name */
    private static final int[][] f12434new = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private ColorStateList f12435do;

    /* renamed from: if, reason: not valid java name */
    private boolean f12436if;

    public MaterialRadioButton(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f12435do == null) {
            int iM6679new = qx0.m6679new(this, R.attr.colorControlActivated);
            int iM6679new2 = qx0.m6679new(this, R.attr.colorOnSurface);
            int iM6679new3 = qx0.m6679new(this, R.attr.colorSurface);
            int[][] iArr = f12434new;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = qx0.m6677goto(iM6679new3, iM6679new, 1.0f);
            iArr2[1] = qx0.m6677goto(iM6679new3, iM6679new2, 0.54f);
            iArr2[2] = qx0.m6677goto(iM6679new3, iM6679new2, 0.38f);
            iArr2[3] = qx0.m6677goto(iM6679new3, iM6679new2, 0.38f);
            this.f12435do = new ColorStateList(iArr, iArr2);
        }
        return this.f12435do;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m13891do() {
        return this.f12436if;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f12436if && CompoundButtonCompat.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f12436if = z;
        if (z) {
            CompoundButtonCompat.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.setButtonTintList(this, null);
        }
    }

    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f12433for;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.MaterialRadioButton, i, i2, new int[0]);
        int i3 = R.styleable.MaterialRadioButton_buttonTint;
        if (typedArrayM4267break.hasValue(i3)) {
            CompoundButtonCompat.setButtonTintList(this, sx0.m7649do(context2, typedArrayM4267break, i3));
        }
        this.f12436if = typedArrayM4267break.getBoolean(R.styleable.MaterialRadioButton_useMaterialThemeColors, false);
        typedArrayM4267break.recycle();
    }
}
