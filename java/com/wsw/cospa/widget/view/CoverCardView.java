package com.wsw.cospa.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.cardview.widget.CardView;

/* loaded from: classes2.dex */
public class CoverCardView extends CardView {
    public CoverCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i) * 7) / 5, 1073741824));
    }
}
