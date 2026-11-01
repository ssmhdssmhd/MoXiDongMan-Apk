package com.qmuiteam.qmui.alpha;

import android.content.Context;
import android.support.v4.ch1;
import android.util.AttributeSet;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;

/* loaded from: classes2.dex */
public class QMUIAlphaTextView extends QMUISpanTouchFixTextView {

    /* renamed from: new, reason: not valid java name */
    private ch1 f19012new;

    public QMUIAlphaTextView(Context context) {
        super(context);
    }

    private ch1 getAlphaViewHelper() {
        if (this.f19012new == null) {
            this.f19012new = new ch1(this);
        }
        return this.f19012new;
    }

    @Override // com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView
    /* renamed from: do, reason: not valid java name */
    public void mo23440do(boolean z) {
        super.mo23440do(z);
        getAlphaViewHelper().m929if(this, z);
    }

    public void setChangeAlphaWhenDisable(boolean z) {
        getAlphaViewHelper().m928for(z);
    }

    public void setChangeAlphaWhenPress(boolean z) {
        getAlphaViewHelper().m930new(z);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        getAlphaViewHelper().m927do(this, z);
    }

    public QMUIAlphaTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
