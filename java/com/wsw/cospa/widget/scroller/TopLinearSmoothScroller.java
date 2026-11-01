package com.wsw.cospa.widget.scroller;

import android.content.Context;
import androidx.recyclerview.widget.LinearSmoothScroller;

/* loaded from: classes2.dex */
public class TopLinearSmoothScroller extends LinearSmoothScroller {
    public TopLinearSmoothScroller(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public int getVerticalSnapPreference() {
        return -1;
    }
}
