package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v4.ph1;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
public class QMUINotchConsumeLayout extends FrameLayout implements INotchInsetConsumer {
    public QMUINotchConsumeLayout(Context context) {
        this(context, null);
    }

    @Override // com.qmuiteam.qmui.widget.INotchInsetConsumer
    public boolean notifyInsetMaybeChanged() {
        setPadding(ph1.m6060native(this), ph1.m6049default(this), ph1.m6070switch(this), ph1.m6076while(this));
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (ph1.m6059interface()) {
            return;
        }
        notifyInsetMaybeChanged();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (ph1.m6059interface()) {
            return;
        }
        notifyInsetMaybeChanged();
    }

    public QMUINotchConsumeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUINotchConsumeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setFitsSystemWindows(false);
    }
}
