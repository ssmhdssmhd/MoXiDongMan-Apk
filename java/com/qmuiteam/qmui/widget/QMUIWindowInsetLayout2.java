package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.util.Cnew;

/* loaded from: classes2.dex */
public class QMUIWindowInsetLayout2 extends ConstraintLayout implements IWindowInsetLayout {

    /* renamed from: do, reason: not valid java name */
    public Cnew f19647do;

    public QMUIWindowInsetLayout2(Context context) {
        this(context, null);
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets19(Rect rect) {
        return this.f19647do.m23693else(this, rect);
    }

    @Override // com.qmuiteam.qmui.widget.IWindowInsetLayout
    public boolean applySystemWindowInsets21(Object obj) {
        return this.f19647do.m23695goto(this, obj);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        int i = Build.VERSION.SDK_INT;
        return (i < 19 || i >= 21) ? super.fitSystemWindows(rect) : applySystemWindowInsets19(rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ViewCompat.requestApplyInsets(this);
    }

    public QMUIWindowInsetLayout2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUIWindowInsetLayout2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19647do = new Cnew(this, this);
    }
}
