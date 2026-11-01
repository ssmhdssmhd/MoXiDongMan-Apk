package com.scwang.smartrefresh.header.flyrefresh;

import android.content.Context;
import android.support.v4.i02;
import android.util.AttributeSet;
import com.scwang.smartrefresh.header.internal.pathview.PathsView;

/* loaded from: classes2.dex */
public class FlyView extends PathsView {
    public FlyView(Context context) {
        this(context, null);
    }

    public FlyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.m24375do(-1);
        if (!this.f20397do.m24394else("M2.01,21L23,12 2.01,3 2,10l15,2 -15,2z")) {
            this.f20397do.m24395for(2, 3, 20, 18);
        }
        int iM3194new = i02.m3194new(25.0f);
        this.f20397do.setBounds(0, 0, iM3194new, iM3194new);
    }
}
