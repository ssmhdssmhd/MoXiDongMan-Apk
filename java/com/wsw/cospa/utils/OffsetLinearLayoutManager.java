package com.wsw.cospa.utils;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class OffsetLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: do, reason: not valid java name */
    private Map<Integer, Integer> f22529do;

    public OffsetLinearLayoutManager(Context context) {
        super(context);
        this.f22529do = new HashMap();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        try {
            int iFindFirstVisibleItemPosition = findFirstVisibleItemPosition();
            int iIntValue = -((int) findViewByPosition(iFindFirstVisibleItemPosition).getY());
            for (int i = 0; i < iFindFirstVisibleItemPosition; i++) {
                iIntValue += this.f22529do.get(Integer.valueOf(i)) == null ? 0 : this.f22529do.get(Integer.valueOf(i)).intValue();
            }
            return iIntValue;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.f22529do.put(Integer.valueOf(i), Integer.valueOf(getChildAt(i).getHeight()));
        }
    }
}
