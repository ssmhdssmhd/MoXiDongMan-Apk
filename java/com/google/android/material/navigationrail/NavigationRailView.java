package com.google.android.material.navigationrail;

import android.content.Context;
import android.support.v4.k62;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
import com.google.android.material.navigation.NavigationBarView;

/* loaded from: classes.dex */
public class NavigationRailView extends NavigationBarView {

    /* renamed from: super, reason: not valid java name */
    public static final int f12302super = 49;

    /* renamed from: throw, reason: not valid java name */
    public static final int f12303throw = 7;

    /* renamed from: while, reason: not valid java name */
    private static final int f12304while = 49;

    /* renamed from: const, reason: not valid java name */
    private final int f12305const;

    /* renamed from: final, reason: not valid java name */
    @Nullable
    private View f12306final;

    public NavigationRailView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: final, reason: not valid java name */
    private boolean m13758final() {
        View view = this.f12306final;
        return (view == null || view.getVisibility() == 8) ? false : true;
    }

    private NavigationRailMenuView getNavigationRailMenuView() {
        return (NavigationRailMenuView) getMenuView();
    }

    /* renamed from: super, reason: not valid java name */
    private int m13759super(int i) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        if (View.MeasureSpec.getMode(i) == 1073741824 || suggestedMinimumWidth <= 0) {
            return i;
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), suggestedMinimumWidth + getPaddingLeft() + getPaddingRight()), 1073741824);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m13760catch(@LayoutRes int i) {
        m13761class(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, false));
    }

    /* renamed from: class, reason: not valid java name */
    public void m13761class(@NonNull View view) {
        m13763throw();
        this.f12306final = view;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        layoutParams.topMargin = this.f12305const;
        addView(view, 0, layoutParams);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public NavigationRailMenuView mo12852try(@NonNull Context context) {
        return new NavigationRailMenuView(context);
    }

    @Nullable
    public View getHeaderView() {
        return this.f12306final;
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    public int getMaxItemCount() {
        return 7;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        NavigationRailMenuView navigationRailMenuView = getNavigationRailMenuView();
        int i5 = 0;
        if (m13758final()) {
            int bottom = this.f12306final.getBottom() + this.f12305const;
            int top = navigationRailMenuView.getTop();
            if (top < bottom) {
                i5 = bottom - top;
            }
        } else if (navigationRailMenuView.m13757while()) {
            i5 = this.f12305const;
        }
        if (i5 > 0) {
            navigationRailMenuView.layout(navigationRailMenuView.getLeft(), navigationRailMenuView.getTop() + i5, navigationRailMenuView.getRight(), navigationRailMenuView.getBottom() + i5);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int iM13759super = m13759super(i);
        super.onMeasure(iM13759super, i2);
        if (m13758final()) {
            measureChild(getNavigationRailMenuView(), iM13759super, View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - this.f12306final.getMeasuredHeight()) - this.f12305const, Integer.MIN_VALUE));
        }
    }

    public void setMenuGravity(int i) {
        getNavigationRailMenuView().setMenuGravity(i);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m13763throw() {
        View view = this.f12306final;
        if (view != null) {
            removeView(view);
            this.f12306final = null;
        }
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f12305const = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        TintTypedArray tintTypedArrayM4269catch = k62.m4269catch(getContext(), attributeSet, R.styleable.NavigationRailView, i, i2, new int[0]);
        int resourceId = tintTypedArrayM4269catch.getResourceId(R.styleable.NavigationRailView_headerLayout, 0);
        if (resourceId != 0) {
            m13760catch(resourceId);
        }
        setMenuGravity(tintTypedArrayM4269catch.getInt(R.styleable.NavigationRailView_menuGravity, 49));
        tintTypedArrayM4269catch.recycle();
    }
}
