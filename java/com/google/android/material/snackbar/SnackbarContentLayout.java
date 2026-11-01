package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.qx0;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {

    /* renamed from: do, reason: not valid java name */
    private TextView f12772do;

    /* renamed from: for, reason: not valid java name */
    private int f12773for;

    /* renamed from: if, reason: not valid java name */
    private Button f12774if;

    /* renamed from: new, reason: not valid java name */
    private int f12775new;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m14221for(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f12772do.getPaddingTop() == i2 && this.f12772do.getPaddingBottom() == i3) {
            return z;
        }
        m14222if(this.f12772do, i2, i3);
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    private static void m14222if(@NonNull View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentIn(int i, int i2) {
        this.f12772do.setAlpha(0.0f);
        long j = i2;
        long j2 = i;
        this.f12772do.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        if (this.f12774if.getVisibility() == 0) {
            this.f12774if.setAlpha(0.0f);
            this.f12774if.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentOut(int i, int i2) {
        this.f12772do.setAlpha(1.0f);
        long j = i2;
        long j2 = i;
        this.f12772do.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        if (this.f12774if.getVisibility() == 0) {
            this.f12774if.setAlpha(1.0f);
            this.f12774if.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m14223do(float f) {
        if (f != 1.0f) {
            this.f12774if.setTextColor(qx0.m6677goto(qx0.m6679new(this, R.attr.colorSurface), this.f12774if.getCurrentTextColor(), f));
        }
    }

    public Button getActionView() {
        return this.f12774if;
    }

    public TextView getMessageView() {
        return this.f12772do;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f12772do = (TextView) findViewById(R.id.snackbar_text);
        this.f12774if = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) throws Resources.NotFoundException {
        super.onMeasure(i, i2);
        if (this.f12773for > 0) {
            int measuredWidth = getMeasuredWidth();
            int i3 = this.f12773for;
            if (measuredWidth > i3) {
                i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                super.onMeasure(i, i2);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z = false;
        boolean z2 = this.f12772do.getLayout().getLineCount() > 1;
        if (!z2 || this.f12775new <= 0 || this.f12774if.getMeasuredWidth() <= this.f12775new) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (m14221for(0, dimensionPixelSize, dimensionPixelSize)) {
                z = true;
            }
        } else if (m14221for(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }

    public void setMaxInlineActionWidth(int i) {
        this.f12775new = i;
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
        this.f12773for = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.f12775new = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }
}
