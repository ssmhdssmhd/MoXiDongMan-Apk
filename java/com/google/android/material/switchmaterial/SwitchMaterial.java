package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.k62;
import android.support.v4.qx0;
import android.support.v4.r60;
import android.support.v4.vx0;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes.dex */
public class SwitchMaterial extends SwitchCompat {

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final r60 f12791do;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private ColorStateList f12792for;

    /* renamed from: if, reason: not valid java name */
    @Nullable
    private ColorStateList f12793if;

    /* renamed from: new, reason: not valid java name */
    private boolean f12794new;

    /* renamed from: try, reason: not valid java name */
    private static final int f12790try = R.style.Widget_MaterialComponents_CompoundButton_Switch;

    /* renamed from: case, reason: not valid java name */
    private static final int[][] f12789case = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    public SwitchMaterial(@NonNull Context context) {
        this(context, null);
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() throws Resources.NotFoundException {
        if (this.f12793if == null) {
            int iM6679new = qx0.m6679new(this, R.attr.colorSurface);
            int iM6679new2 = qx0.m6679new(this, R.attr.colorControlActivated);
            float dimension = getResources().getDimension(R.dimen.mtrl_switch_thumb_elevation);
            if (this.f12791do.m6784class()) {
                dimension += ViewUtils.m13623this(this);
            }
            int iM6792try = this.f12791do.m6792try(iM6679new, dimension);
            int[][] iArr = f12789case;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = qx0.m6677goto(iM6679new, iM6679new2, 1.0f);
            iArr2[1] = iM6792try;
            iArr2[2] = qx0.m6677goto(iM6679new, iM6679new2, 0.38f);
            iArr2[3] = iM6792try;
            this.f12793if = new ColorStateList(iArr, iArr2);
        }
        return this.f12793if;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.f12792for == null) {
            int[][] iArr = f12789case;
            int[] iArr2 = new int[iArr.length];
            int iM6679new = qx0.m6679new(this, R.attr.colorSurface);
            int iM6679new2 = qx0.m6679new(this, R.attr.colorControlActivated);
            int iM6679new3 = qx0.m6679new(this, R.attr.colorOnSurface);
            iArr2[0] = qx0.m6677goto(iM6679new, iM6679new2, 0.54f);
            iArr2[1] = qx0.m6677goto(iM6679new, iM6679new3, 0.32f);
            iArr2[2] = qx0.m6677goto(iM6679new, iM6679new2, 0.12f);
            iArr2[3] = qx0.m6677goto(iM6679new, iM6679new3, 0.12f);
            this.f12792for = new ColorStateList(iArr, iArr2);
        }
        return this.f12792for;
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m14243do() {
        return this.f12794new;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f12794new && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f12794new && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f12794new = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.switchStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f12790try;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        this.f12791do = new r60(context2);
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.SwitchMaterial, i, i2, new int[0]);
        this.f12794new = typedArrayM4267break.getBoolean(R.styleable.SwitchMaterial_useMaterialThemeColors, false);
        typedArrayM4267break.recycle();
    }
}
