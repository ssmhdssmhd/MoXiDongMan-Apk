package com.qmuiteam.qmui.alpha;

import android.content.Context;
import android.support.v4.ch1;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageButton;

/* loaded from: classes2.dex */
public class QMUIAlphaImageButton extends AppCompatImageButton {

    /* renamed from: do, reason: not valid java name */
    private ch1 f19009do;

    public QMUIAlphaImageButton(Context context) {
        super(context);
    }

    private ch1 getAlphaViewHelper() {
        if (this.f19009do == null) {
            this.f19009do = new ch1(this);
        }
        return this.f19009do;
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

    public QMUIAlphaImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QMUIAlphaImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
