package com.qmuiteam.qmui.widget.roundwidget;

import android.content.Context;
import android.support.v4.th1;
import android.util.AttributeSet;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.alpha.QMUIAlphaButton;
import com.qmuiteam.qmui.util.Cfor;

/* loaded from: classes2.dex */
public class QMUIRoundButton extends QMUIAlphaButton {
    public QMUIRoundButton(Context context) {
        super(context);
        m24151do(context, null, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24151do(Context context, AttributeSet attributeSet, int i) {
        Cfor.m23634default(this, th1.m7896do(context, attributeSet, i));
        setChangeAlphaWhenDisable(false);
        setChangeAlphaWhenPress(false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public QMUIRoundButton(Context context, AttributeSet attributeSet) {
        int i = R.attr.QMUIButtonStyle;
        super(context, attributeSet, i);
        m24151do(context, attributeSet, i);
    }

    public QMUIRoundButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m24151do(context, attributeSet, i);
    }
}
