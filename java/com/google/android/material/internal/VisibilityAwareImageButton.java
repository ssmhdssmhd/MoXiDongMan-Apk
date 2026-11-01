package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;

@SuppressLint({"AppCompatCustomView"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: do, reason: not valid java name */
    private int f12140do;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m13626do(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f12140do = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f12140do;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m13626do(i, true);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f12140do = getVisibility();
    }
}
