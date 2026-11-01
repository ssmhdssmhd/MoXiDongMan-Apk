package com.qmuiteam.qmui.widget.roundwidget;

import android.content.Context;
import android.support.v4.th1;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.util.Cfor;

/* loaded from: classes2.dex */
public class QMUIRoundRelativeLayout extends RelativeLayout {
    public QMUIRoundRelativeLayout(Context context) {
        super(context);
        m24154do(context, null, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24154do(Context context, AttributeSet attributeSet, int i) {
        Cfor.m23634default(this, th1.m7896do(context, attributeSet, i));
    }

    public QMUIRoundRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m24154do(context, attributeSet, R.attr.QMUIButtonStyle);
    }

    public QMUIRoundRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m24154do(context, attributeSet, i);
    }
}
