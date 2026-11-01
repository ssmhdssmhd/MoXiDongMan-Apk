package com.wsw.cospa.widget.view;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;

/* loaded from: classes2.dex */
public abstract class SectionedRecyclerViewAdapter<H extends RecyclerView.ViewHolder, VH extends RecyclerView.ViewHolder, F extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    public static final int TYPE_ITEM = -3;
    public static final int TYPE_SECTION_FOOTER = -2;
    public static final int TYPE_SECTION_HEADER = -1;
    private int[] sectionForPosition = null;
    private int[] positionWithinSection = null;
    private boolean[] isHeader = null;
    private boolean[] isFooter = null;
    private int count = 0;

    public class SectionDataObserver extends RecyclerView.AdapterDataObserver {
        public SectionDataObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            SectionedRecyclerViewAdapter.this.setupIndices();
        }
    }

    public SectionedRecyclerViewAdapter() {
        registerAdapterDataObserver(new SectionDataObserver());
    }

    private void allocateAuxiliaryArrays(int i) {
        this.sectionForPosition = new int[i];
        this.positionWithinSection = new int[i];
        this.isHeader = new boolean[i];
        this.isFooter = new boolean[i];
    }

    private int countItems() {
        int sectionCount = getSectionCount();
        int itemCountForSection = 0;
        for (int i = 0; i < sectionCount; i++) {
            itemCountForSection += getItemCountForSection(i) + 1 + (hasFooterInSection(i) ? 1 : 0);
        }
        return itemCountForSection;
    }

    private void precomputeIndices() {
        int sectionCount = getSectionCount();
        int i = 0;
        for (int i2 = 0; i2 < sectionCount; i2++) {
            setPrecomputedItem(i, true, false, i2, 0);
            i++;
            for (int i3 = 0; i3 < getItemCountForSection(i2); i3++) {
                setPrecomputedItem(i, false, false, i2, i3);
                i++;
            }
            if (hasFooterInSection(i2)) {
                setPrecomputedItem(i, false, true, i2, 0);
                i++;
            }
        }
    }

    private void setPrecomputedItem(int i, boolean z, boolean z2, int i2, int i3) {
        this.isHeader[i] = z;
        this.isFooter[i] = z2;
        this.sectionForPosition[i] = i2;
        this.positionWithinSection[i] = i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupIndices() {
        int iCountItems = countItems();
        this.count = iCountItems;
        allocateAuxiliaryArrays(iCountItems);
        precomputeIndices();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.count;
    }

    public abstract int getItemCountForSection(int i);

    public int getItemPosition(int i) {
        return this.positionWithinSection[i];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (this.sectionForPosition == null) {
            setupIndices();
        }
        int i2 = this.sectionForPosition[i];
        return isSectionHeaderPosition(i) ? getSectionHeaderViewType(i2) : isSectionFooterPosition(i) ? getSectionFooterViewType(i2) : getSectionItemViewType(i2, this.positionWithinSection[i]);
    }

    public abstract int getSectionCount();

    public int getSectionFooterViewType(int i) {
        return -2;
    }

    public int getSectionHeaderViewType(int i) {
        return -1;
    }

    public int getSectionItemViewType(int i, int i2) {
        return -3;
    }

    public abstract boolean hasFooterInSection(int i);

    public boolean isSectionFooterPosition(int i) {
        if (this.isFooter == null) {
            setupIndices();
        }
        return this.isFooter[i];
    }

    public boolean isSectionFooterViewType(int i) {
        return i == -2;
    }

    public boolean isSectionHeaderPosition(int i) {
        if (this.isHeader == null) {
            setupIndices();
        }
        return this.isHeader[i];
    }

    public boolean isSectionHeaderViewType(int i) {
        return i == -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        setupIndices();
    }

    public abstract void onBindItemViewHolder(VH vh, int i, int i2);

    public abstract void onBindSectionFooterViewHolder(F f, int i);

    public abstract void onBindSectionHeaderViewHolder(H h, int i);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int i2 = this.sectionForPosition[i];
        int i3 = this.positionWithinSection[i];
        if (isSectionHeaderPosition(i)) {
            onBindSectionHeaderViewHolder(viewHolder, i2);
        } else if (isSectionFooterPosition(i)) {
            onBindSectionFooterViewHolder(viewHolder, i2);
        } else {
            onBindItemViewHolder(viewHolder, i2, i3);
        }
    }

    public abstract VH onCreateItemViewHolder(ViewGroup viewGroup, int i);

    public abstract F onCreateSectionFooterViewHolder(ViewGroup viewGroup, int i);

    public abstract H onCreateSectionHeaderViewHolder(ViewGroup viewGroup, int i);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return isSectionHeaderViewType(i) ? onCreateSectionHeaderViewHolder(viewGroup, i) : isSectionFooterViewType(i) ? onCreateSectionFooterViewHolder(viewGroup, i) : onCreateItemViewHolder(viewGroup, i);
    }
}
