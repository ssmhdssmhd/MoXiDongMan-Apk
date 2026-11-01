package com.wsw.cospa.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import org.adw.library.widgets.discreteseekbar.DiscreteSeekBar;

/* loaded from: classes2.dex */
public class ReverseSeekBar extends DiscreteSeekBar {
    private boolean isReverse;

    public ReverseSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isReverse = false;
    }

    @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar
    public boolean isRtl() {
        return this.isReverse;
    }

    public void setReverse(boolean z) {
        this.isReverse = z;
        invalidate();
    }

    public ReverseSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isReverse = false;
    }

    public ReverseSeekBar(Context context) {
        super(context);
        this.isReverse = false;
    }
}
