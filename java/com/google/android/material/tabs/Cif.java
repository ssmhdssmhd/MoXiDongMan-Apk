package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.v4.w1;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;
import com.google.common.collect.LinkedHashMultimap;

/* renamed from: com.google.android.material.tabs.if, reason: invalid class name */
/* loaded from: classes.dex */
class Cif {

    /* renamed from: do, reason: not valid java name */
    @Dimension(unit = 0)
    private static final int f12895do = 24;

    /* renamed from: do, reason: not valid java name */
    public static RectF m14360do(TabLayout tabLayout, @Nullable View view) {
        return view == null ? new RectF() : (tabLayout.m14268finally() || !(view instanceof TabLayout.TabView)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : m14361if((TabLayout.TabView) view, 24);
    }

    /* renamed from: if, reason: not valid java name */
    public static RectF m14361if(@NonNull TabLayout.TabView tabView, @Dimension(unit = 0) int i) {
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int iM13624try = (int) ViewUtils.m13624try(tabView.getContext(), i);
        if (contentWidth < iM13624try) {
            contentWidth = iM13624try;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i2 = contentWidth / 2;
        return new RectF(left - i2, top - (contentHeight / 2), i2 + left, top + (left / 2));
    }

    /* renamed from: for */
    public void mo14359for(TabLayout tabLayout, View view, View view2, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @NonNull Drawable drawable) {
        RectF rectFM14360do = m14360do(tabLayout, view);
        RectF rectFM14360do2 = m14360do(tabLayout, view2);
        drawable.setBounds(w1.m9012for((int) rectFM14360do.left, (int) rectFM14360do2.left, f), drawable.getBounds().top, w1.m9012for((int) rectFM14360do.right, (int) rectFM14360do2.right, f), drawable.getBounds().bottom);
    }

    /* renamed from: new, reason: not valid java name */
    public void m14362new(TabLayout tabLayout, View view, @NonNull Drawable drawable) {
        RectF rectFM14360do = m14360do(tabLayout, view);
        drawable.setBounds((int) rectFM14360do.left, drawable.getBounds().top, (int) rectFM14360do.right, drawable.getBounds().bottom);
    }
}
