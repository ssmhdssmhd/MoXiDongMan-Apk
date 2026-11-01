package com.wsw.cospa.widget.view;

import android.content.Context;
import android.util.ArrayMap;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;

/* loaded from: classes2.dex */
public class PreCacheLayoutManager extends LinearLayoutManager {
    private Map<Integer, Integer> heightMap;
    private int mExtraSpace;

    public PreCacheLayoutManager(Context context) {
        super(context);
        this.mExtraSpace = 0;
        this.heightMap = new ArrayMap();
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
                iIntValue += this.heightMap.get(Integer.valueOf(i)) == null ? 0 : this.heightMap.get(Integer.valueOf(i)).intValue();
            }
            return iIntValue;
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int getExtraLayoutSpace(RecyclerView.State state) {
        int i;
        int height;
        if (this.mExtraSpace <= 0) {
            return 0;
        }
        if (getOrientation() == 0) {
            i = this.mExtraSpace;
            height = getWidth();
        } else {
            i = this.mExtraSpace;
            height = getHeight();
        }
        return i * height;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        super.onLayoutChildren(recycler, state);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.heightMap.put(Integer.valueOf(i), Integer.valueOf(getChildAt(i).getHeight()));
        }
    }

    public void setExtraSpace(int i) {
        this.mExtraSpace = i;
    }

    public PreCacheLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.mExtraSpace = 0;
        this.heightMap = new ArrayMap();
    }
}
