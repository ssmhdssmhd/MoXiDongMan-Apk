package com.wsw.cospa.widget.view;

import androidx.recyclerview.widget.GridLayoutManager;

/* loaded from: classes2.dex */
public class SectionedSpanSizeLookup extends GridLayoutManager.SpanSizeLookup {
    public SectionedRecyclerViewAdapter<?, ?, ?> adapter;
    public GridLayoutManager layoutManager;

    public SectionedSpanSizeLookup(SectionedRecyclerViewAdapter<?, ?, ?> sectionedRecyclerViewAdapter, GridLayoutManager gridLayoutManager) {
        this.adapter = null;
        this.layoutManager = null;
        this.adapter = sectionedRecyclerViewAdapter;
        this.layoutManager = gridLayoutManager;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
    public int getSpanSize(int i) {
        if (this.adapter.isSectionHeaderPosition(i) || this.adapter.isSectionFooterPosition(i)) {
            return this.layoutManager.getSpanCount();
        }
        return 1;
    }
}
