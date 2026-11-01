package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes2.dex */
public class QMUIWrapContentScrollView extends QMUIObservableScrollView {

    /* renamed from: for, reason: not valid java name */
    private int f19649for;

    public QMUIWrapContentScrollView(Context context) {
        super(context);
        this.f19649for = 536870911;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = getLayoutParams().height;
        super.onMeasure(i, (i3 <= 0 || i3 > this.f19649for) ? View.MeasureSpec.makeMeasureSpec(this.f19649for, Integer.MIN_VALUE) : View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
    }

    public void setMaxHeight(int i) {
        if (this.f19649for != i) {
            this.f19649for = i;
            requestLayout();
        }
    }

    public QMUIWrapContentScrollView(Context context, int i) {
        super(context);
        this.f19649for = 536870911;
        this.f19649for = i;
    }

    public QMUIWrapContentScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19649for = 536870911;
    }

    public QMUIWrapContentScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19649for = 536870911;
    }
}
