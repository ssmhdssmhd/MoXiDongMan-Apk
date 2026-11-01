package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;

/* loaded from: classes2.dex */
public class QMUIWrapContentListView extends ListView {

    /* renamed from: do, reason: not valid java name */
    private int f19648do;

    public QMUIWrapContentListView(Context context) {
        super(context);
        this.f19648do = 536870911;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f19648do, Integer.MIN_VALUE));
    }

    public void setMaxHeight(int i) {
        if (this.f19648do != i) {
            this.f19648do = i;
            requestLayout();
        }
    }

    public QMUIWrapContentListView(Context context, int i) {
        super(context);
        this.f19648do = 536870911;
        this.f19648do = i;
    }

    public QMUIWrapContentListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19648do = 536870911;
    }

    public QMUIWrapContentListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19648do = 536870911;
    }
}
