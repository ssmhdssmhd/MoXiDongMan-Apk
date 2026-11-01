package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BottomNavigationMenuView extends NavigationBarMenuView {

    /* renamed from: abstract, reason: not valid java name */
    private int[] f11408abstract;

    /* renamed from: default, reason: not valid java name */
    private final int f11409default;

    /* renamed from: extends, reason: not valid java name */
    private final int f11410extends;

    /* renamed from: finally, reason: not valid java name */
    private final int f11411finally;

    /* renamed from: package, reason: not valid java name */
    private final int f11412package;

    /* renamed from: private, reason: not valid java name */
    private boolean f11413private;

    /* renamed from: throws, reason: not valid java name */
    private final int f11414throws;

    public BottomNavigationMenuView(@NonNull Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        this.f11414throws = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_max_width);
        this.f11409default = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_item_min_width);
        this.f11410extends = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_max_width);
        this.f11411finally = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_active_item_min_width);
        this.f11412package = resources.getDimensionPixelSize(R.dimen.design_bottom_navigation_height);
        this.f11408abstract = new int[5];
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int measuredWidth = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                if (ViewCompat.getLayoutDirection(this) == 1) {
                    int i8 = i5 - measuredWidth;
                    childAt.layout(i8 - childAt.getMeasuredWidth(), 0, i8, i6);
                } else {
                    childAt.layout(measuredWidth, 0, childAt.getMeasuredWidth() + measuredWidth, i6);
                }
                measuredWidth += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        MenuBuilder menu = getMenu();
        int size = View.MeasureSpec.getSize(i);
        int size2 = menu.getVisibleItems().size();
        int childCount = getChildCount();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f11412package, 1073741824);
        if (m13720this(getLabelVisibilityMode(), size2) && m12848while()) {
            View childAt = getChildAt(getSelectedItemPosition());
            int iMax = this.f11411finally;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f11410extends, Integer.MIN_VALUE), iMakeMeasureSpec);
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
            int i3 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int iMin = Math.min(size - (this.f11409default * i3), Math.min(iMax, this.f11410extends));
            int i4 = size - iMin;
            int iMin2 = Math.min(i4 / (i3 == 0 ? 1 : i3), this.f11414throws);
            int i5 = i4 - (i3 * iMin2);
            int i6 = 0;
            while (i6 < childCount) {
                if (getChildAt(i6).getVisibility() != 8) {
                    this.f11408abstract[i6] = i6 == getSelectedItemPosition() ? iMin : iMin2;
                    if (i5 > 0) {
                        int[] iArr = this.f11408abstract;
                        iArr[i6] = iArr[i6] + 1;
                        i5--;
                    }
                } else {
                    this.f11408abstract[i6] = 0;
                }
                i6++;
            }
        } else {
            int iMin3 = Math.min(size / (size2 == 0 ? 1 : size2), this.f11410extends);
            int i7 = size - (size2 * iMin3);
            for (int i8 = 0; i8 < childCount; i8++) {
                if (getChildAt(i8).getVisibility() != 8) {
                    int[] iArr2 = this.f11408abstract;
                    iArr2[i8] = iMin3;
                    if (i7 > 0) {
                        iArr2[i8] = iArr2[i8] + 1;
                        i7--;
                    }
                } else {
                    this.f11408abstract[i8] = 0;
                }
            }
        }
        int measuredWidth = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f11408abstract[i9], 1073741824), iMakeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                measuredWidth += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(measuredWidth, View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), 0), View.resolveSizeAndState(this.f11412package, iMakeMeasureSpec, 0));
    }

    public void setItemHorizontalTranslationEnabled(boolean z) {
        this.f11413private = z;
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    /* renamed from: try, reason: not valid java name */
    public NavigationBarItemView mo12847try(@NonNull Context context) {
        return new BottomNavigationItemView(context);
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m12848while() {
        return this.f11413private;
    }
}
