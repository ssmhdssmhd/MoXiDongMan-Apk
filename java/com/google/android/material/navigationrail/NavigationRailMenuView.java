package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {

    /* renamed from: throws, reason: not valid java name */
    private final FrameLayout.LayoutParams f12301throws;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.f12301throws = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
    }

    /* renamed from: import, reason: not valid java name */
    private int m13753import(int i, int i2, int i3) {
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), i2 / Math.max(1, i3)), 0);
    }

    /* renamed from: native, reason: not valid java name */
    private int m13754native(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        view.measure(i, i2);
        return view.getMeasuredHeight();
    }

    /* renamed from: public, reason: not valid java name */
    private int m13755public(int i, int i2, int i3, View view) {
        m13753import(i, i2, i3);
        int iM13753import = view == null ? m13753import(i, i2, i3) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int iM13754native = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt != view) {
                iM13754native += m13754native(childAt, i, iM13753import);
            }
        }
        return iM13754native;
    }

    /* renamed from: return, reason: not valid java name */
    private int m13756return(int i, int i2, int i3) {
        int iM13754native;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            iM13754native = m13754native(childAt, i, m13753import(i, i2, i3));
            i2 -= iM13754native;
            i3--;
        } else {
            iM13754native = 0;
        }
        return iM13754native + m13755public(i, i2, i3, childAt);
    }

    public int getMenuGravity() {
        return this.f12301throws.gravity;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i6;
                childAt.layout(0, i6, i5, measuredHeight);
                i6 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = getMenu().getVisibleItems().size();
        setMeasuredDimension(View.resolveSizeAndState(View.MeasureSpec.getSize(i), i, 0), View.resolveSizeAndState((size2 <= 1 || !m13720this(getLabelVisibilityMode(), size2)) ? m13755public(i, size, size2, null) : m13756return(i, size, size2), i2, 0));
    }

    public void setMenuGravity(int i) {
        FrameLayout.LayoutParams layoutParams = this.f12301throws;
        if (layoutParams.gravity != i) {
            layoutParams.gravity = i;
            setLayoutParams(layoutParams);
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    /* renamed from: try */
    public NavigationBarItemView mo12847try(@NonNull Context context) {
        return new Cdo(context);
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m13757while() {
        return (this.f12301throws.gravity & 112) == 48;
    }
}
