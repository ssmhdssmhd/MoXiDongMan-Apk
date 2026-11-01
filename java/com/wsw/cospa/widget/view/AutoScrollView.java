package com.wsw.cospa.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

/* loaded from: classes2.dex */
public class AutoScrollView extends ScrollView {
    private Context mContext;

    public AutoScrollView(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        this.mContext = context;
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().heightPixels / 2, Integer.MIN_VALUE));
    }

    public AutoScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public AutoScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }
}
