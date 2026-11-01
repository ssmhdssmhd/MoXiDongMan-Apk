package com.scwang.smartrefresh.layout.util;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.listener.CoordinatorLayoutListener;

/* renamed from: com.scwang.smartrefresh.layout.util.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: com.scwang.smartrefresh.layout.util.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0194do implements AppBarLayout.OnOffsetChangedListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CoordinatorLayoutListener f20671do;

        public C0194do(CoordinatorLayoutListener coordinatorLayoutListener) {
            this.f20671do = coordinatorLayoutListener;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            this.f20671do.onCoordinatorUpdate(i >= 0, appBarLayout.getTotalScrollRange() + i <= 0);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m24480do(View view, RefreshKernel refreshKernel, CoordinatorLayoutListener coordinatorLayoutListener) {
        try {
            if (view instanceof CoordinatorLayout) {
                refreshKernel.getRefreshLayout().setEnableNestedScroll(false);
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt = viewGroup.getChildAt(childCount);
                    if (childAt instanceof AppBarLayout) {
                        ((AppBarLayout) childAt).addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new C0194do(coordinatorLayoutListener));
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
