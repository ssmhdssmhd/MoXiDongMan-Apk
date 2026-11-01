package com.qmuiteam.qmui.widget.roundwidget;

import android.content.Context;
import android.support.v4.th1;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.util.Cfor;

/* loaded from: classes2.dex */
public class QMUIRoundLinearLayout extends LinearLayout {
    public QMUIRoundLinearLayout(Context context) {
        super(context);
        m24153do(context, null, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24153do(Context context, AttributeSet attributeSet, int i) {
        Cfor.m23634default(this, th1.m7896do(context, attributeSet, 0));
    }

    public QMUIRoundLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m24153do(context, attributeSet, R.attr.QMUIButtonStyle);
    }

    public QMUIRoundLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m24153do(context, attributeSet, i);
    }
}
