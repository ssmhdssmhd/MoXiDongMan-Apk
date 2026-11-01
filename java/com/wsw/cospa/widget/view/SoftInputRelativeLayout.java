package com.wsw.cospa.widget.view;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.WindowInsets;
import android.widget.RelativeLayout;

/* loaded from: classes2.dex */
public class SoftInputRelativeLayout extends RelativeLayout {
    private int[] mInsets;

    public SoftInputRelativeLayout(Context context) {
        super(context);
        this.mInsets = new int[4];
    }

    @Override // android.view.View
    public WindowInsets computeSystemWindowInsets(WindowInsets windowInsets, Rect rect) {
        if (Build.VERSION.SDK_INT >= 19) {
            int[] iArr = this.mInsets;
            iArr[0] = rect.left;
            iArr[1] = rect.top;
            iArr[2] = rect.right;
            rect.left = 0;
            rect.top = 0;
            rect.right = 0;
        }
        return super.computeSystemWindowInsets(windowInsets, rect);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT < 20) {
            return windowInsets;
        }
        this.mInsets[0] = windowInsets.getSystemWindowInsetLeft();
        this.mInsets[1] = windowInsets.getSystemWindowInsetTop();
        this.mInsets[2] = windowInsets.getSystemWindowInsetRight();
        return super.onApplyWindowInsets(windowInsets.replaceSystemWindowInsets(0, 0, 0, windowInsets.getSystemWindowInsetBottom()));
    }

    public SoftInputRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInsets = new int[4];
    }
}
