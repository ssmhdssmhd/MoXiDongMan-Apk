package com.qmuiteam.qmui.widget.roundwidget;

import android.content.Context;
import android.support.v4.th1;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.qmuiteam.qmui.util.Cfor;

/* loaded from: classes2.dex */
public class QMUIRoundFrameLayout extends FrameLayout {
    public QMUIRoundFrameLayout(Context context) {
        super(context);
        m24152do(context, null, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24152do(Context context, AttributeSet attributeSet, int i) {
        Cfor.m23634default(this, th1.m7896do(context, attributeSet, i));
    }

    public QMUIRoundFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m24152do(context, attributeSet, 0);
    }

    public QMUIRoundFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m24152do(context, attributeSet, i);
    }
}
