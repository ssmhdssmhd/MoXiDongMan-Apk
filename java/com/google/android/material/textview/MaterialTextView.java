package com.google.android.material.textview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.px0;
import android.support.v4.sx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m14496do(@NonNull Resources.Theme theme, int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i, R.styleable.MaterialTextAppearance);
        int iM14499new = m14499new(getContext(), typedArrayObtainStyledAttributes, R.styleable.MaterialTextAppearance_android_lineHeight, R.styleable.MaterialTextAppearance_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        if (iM14499new >= 0) {
            setLineHeight(iM14499new);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static int m14497for(@NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaterialTextView, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTextView_android_textAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m14498if(Context context) {
        return px0.m6247if(context, R.attr.textAppearanceLineHeightEnabled, true);
    }

    /* renamed from: new, reason: not valid java name */
    private static int m14499new(@NonNull Context context, @NonNull TypedArray typedArray, @NonNull @StyleableRes int... iArr) {
        int iM7651for = -1;
        for (int i = 0; i < iArr.length && iM7651for < 0; i++) {
            iM7651for = sx0.m7651for(context, typedArray, iArr[i], -1);
        }
        return iM7651for;
    }

    /* renamed from: try, reason: not valid java name */
    private static boolean m14500try(@NonNull Context context, @NonNull Resources.Theme theme, @Nullable AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaterialTextView, i, i2);
        int iM14499new = m14499new(context, typedArrayObtainStyledAttributes, R.styleable.MaterialTextView_android_lineHeight, R.styleable.MaterialTextView_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        return iM14499new != -1;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i) throws Resources.NotFoundException {
        super.setTextAppearance(context, i);
        if (m14498if(context)) {
            m14496do(context.getTheme(), i);
        }
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, android.R.attr.textViewStyle);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MaterialTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) throws Resources.NotFoundException {
        int iM14497for;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        if (m14498if(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (m14500try(context2, theme, attributeSet, i, i2) || (iM14497for = m14497for(theme, attributeSet, i, i2)) == -1) {
                return;
            }
            m14496do(theme, iM14497for);
        }
    }
}
