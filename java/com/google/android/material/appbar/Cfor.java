package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* renamed from: com.google.android.material.appbar.for, reason: invalid class name */
/* loaded from: classes.dex */
class Cfor<V extends View> extends CoordinatorLayout.Behavior<V> {
    private int tempLeftRightOffset;
    private int tempTopBottomOffset;
    private Cnew viewOffsetHelper;

    public Cfor() {
        this.tempTopBottomOffset = 0;
        this.tempLeftRightOffset = 0;
    }

    public int getLeftAndRightOffset() {
        Cnew cnew = this.viewOffsetHelper;
        if (cnew != null) {
            return cnew.m12690new();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        Cnew cnew = this.viewOffsetHelper;
        if (cnew != null) {
            return cnew.m12692try();
        }
        return 0;
    }

    public boolean isHorizontalOffsetEnabled() {
        Cnew cnew = this.viewOffsetHelper;
        return cnew != null && cnew.m12682case();
    }

    public boolean isVerticalOffsetEnabled() {
        Cnew cnew = this.viewOffsetHelper;
        return cnew != null && cnew.m12686else();
    }

    public void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        layoutChild(coordinatorLayout, v, i);
        if (this.viewOffsetHelper == null) {
            this.viewOffsetHelper = new Cnew(v);
        }
        this.viewOffsetHelper.m12688goto();
        this.viewOffsetHelper.m12685do();
        int i2 = this.tempTopBottomOffset;
        if (i2 != 0) {
            this.viewOffsetHelper.m12683catch(i2);
            this.tempTopBottomOffset = 0;
        }
        int i3 = this.tempLeftRightOffset;
        if (i3 == 0) {
            return true;
        }
        this.viewOffsetHelper.m12681break(i3);
        this.tempLeftRightOffset = 0;
        return true;
    }

    public void setHorizontalOffsetEnabled(boolean z) {
        Cnew cnew = this.viewOffsetHelper;
        if (cnew != null) {
            cnew.m12691this(z);
        }
    }

    public boolean setLeftAndRightOffset(int i) {
        Cnew cnew = this.viewOffsetHelper;
        if (cnew != null) {
            return cnew.m12681break(i);
        }
        this.tempLeftRightOffset = i;
        return false;
    }

    public boolean setTopAndBottomOffset(int i) {
        Cnew cnew = this.viewOffsetHelper;
        if (cnew != null) {
            return cnew.m12683catch(i);
        }
        this.tempTopBottomOffset = i;
        return false;
    }

    public void setVerticalOffsetEnabled(boolean z) {
        Cnew cnew = this.viewOffsetHelper;
        if (cnew != null) {
            cnew.m12684class(z);
        }
    }

    public Cfor(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tempTopBottomOffset = 0;
        this.tempLeftRightOffset = 0;
    }
}
