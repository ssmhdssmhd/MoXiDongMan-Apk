package com.qmuiteam.qmui.alpha;

import android.content.Context;
import android.support.v4.ch1;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
public class QMUIAlphaFrameLayout extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    private ch1 f19008do;

    public QMUIAlphaFrameLayout(Context context) {
        super(context);
    }

    private ch1 getAlphaViewHelper() {
        if (this.f19008do == null) {
            this.f19008do = new ch1(this);
        }
        return this.f19008do;
    }

    public void setChangeAlphaWhenDisable(boolean z) {
        getAlphaViewHelper().m928for(z);
    }

    public void setChangeAlphaWhenPress(boolean z) {
        getAlphaViewHelper().m930new(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        getAlphaViewHelper().m927do(this, z);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        getAlphaViewHelper().m929if(this, z);
    }

    public QMUIAlphaFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
