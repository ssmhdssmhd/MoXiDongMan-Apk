package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: com.google.android.material.datepicker.goto, reason: invalid class name */
/* loaded from: classes.dex */
class Cgoto extends LinearLayoutManager {

    /* renamed from: do, reason: not valid java name */
    private static final float f11846do = 100.0f;

    /* renamed from: com.google.android.material.datepicker.goto$do, reason: invalid class name */
    public class Cdo extends LinearSmoothScroller {
        public Cdo(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return 100.0f / displayMetrics.densityDpi;
        }
    }

    public Cgoto(Context context, int i, boolean z) {
        super(context, i, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        Cdo cdo = new Cdo(recyclerView.getContext());
        cdo.setTargetPosition(i);
        startSmoothScroll(cdo);
    }
}
