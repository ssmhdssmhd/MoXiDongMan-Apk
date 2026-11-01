package com.wsw.cospa.widget.itemtouch;

import android.graphics.Canvas;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* loaded from: classes2.dex */
public class ItemTouchHelperCallback extends ItemTouchHelper.Callback {
    private float ALPHA_FULL = 1.0f;
    private boolean isCanDrag = false;
    private boolean isCanSwipe = false;
    private ItemTouchHelperAdapter itemTouchHelperAdapter;

    public ItemTouchHelperCallback(ItemTouchHelperAdapter itemTouchHelperAdapter) {
        this.itemTouchHelperAdapter = itemTouchHelperAdapter;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        return ((recyclerView.getLayoutManager() instanceof GridLayoutManager) || (recyclerView.getLayoutManager() instanceof StaggeredGridLayoutManager)) ? ItemTouchHelper.Callback.makeMovementFlags(15, 0) : ItemTouchHelper.Callback.makeMovementFlags(3, 48);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isItemViewSwipeEnabled() {
        return this.isCanSwipe;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return this.isCanDrag;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        if (i != 1) {
            super.onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, z);
            return;
        }
        viewHolder.itemView.setAlpha(this.ALPHA_FULL - (Math.abs(f) / viewHolder.itemView.getWidth()));
        viewHolder.itemView.setTranslationX(f);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        if (viewHolder.getItemViewType() != viewHolder2.getItemViewType()) {
            return false;
        }
        this.itemTouchHelperAdapter.onItemMove(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        this.itemTouchHelperAdapter.onItemDismiss(viewHolder.getAdapterPosition());
    }

    public void setDragEnable(boolean z) {
        this.isCanDrag = z;
    }

    public void setSwipeEnable(boolean z) {
        this.isCanSwipe = z;
    }
}
