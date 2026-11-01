package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;

/* loaded from: classes.dex */
public class TabItem extends View {

    /* renamed from: do, reason: not valid java name */
    public final CharSequence f12795do;

    /* renamed from: for, reason: not valid java name */
    public final int f12796for;

    /* renamed from: if, reason: not valid java name */
    public final Drawable f12797if;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TabItem);
        this.f12795do = tintTypedArrayObtainStyledAttributes.getText(R.styleable.TabItem_android_text);
        this.f12797if = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.TabItem_android_icon);
        this.f12796for = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.TabItem_android_layout, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }
}
