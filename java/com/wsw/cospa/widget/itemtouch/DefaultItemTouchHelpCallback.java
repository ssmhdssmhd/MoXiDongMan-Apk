package com.wsw.cospa.widget.itemtouch;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class DefaultItemTouchHelpCallback extends ItemTouchHelper.Callback {
    private boolean isCanDrag = false;
    private boolean isCanSwipe = false;
    private OnItemTouchCallbackListener onItemTouchCallbackListener;

    public interface OnItemTouchCallbackListener {
        boolean onMove(int i, int i2);

        void onSwiped(int i);

        void onSwiped(RecyclerView.ViewHolder viewHolder, int i);
    }

    public DefaultItemTouchHelpCallback(OnItemTouchCallbackListener onItemTouchCallbackListener) {
        this.onItemTouchCallbackListener = onItemTouchCallbackListener;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        int i = 0;
        if (layoutManager instanceof GridLayoutManager) {
            return ItemTouchHelper.Callback.makeMovementFlags(15, 0);
        }
        if (!(layoutManager instanceof LinearLayoutManager)) {
            return 0;
        }
        int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
        int i2 = 12;
        if (orientation == 0) {
            i2 = 3;
            i = 12;
        } else if (orientation == 1) {
            i = 3;
        } else {
            i2 = 0;
        }
        return ItemTouchHelper.Callback.makeMovementFlags(i, i2);
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
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
        OnItemTouchCallbackListener onItemTouchCallbackListener = this.onItemTouchCallbackListener;
        if (onItemTouchCallbackListener != null) {
            return onItemTouchCallbackListener.onMove(viewHolder.getAdapterPosition(), viewHolder2.getAdapterPosition());
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        OnItemTouchCallbackListener onItemTouchCallbackListener = this.onItemTouchCallbackListener;
        if (onItemTouchCallbackListener != null) {
            onItemTouchCallbackListener.onSwiped(viewHolder.getAdapterPosition());
            this.onItemTouchCallbackListener.onSwiped(viewHolder, i);
        }
    }

    public void setDragEnable(boolean z) {
        this.isCanDrag = z;
    }

    public void setOnItemTouchCallbackListener(OnItemTouchCallbackListener onItemTouchCallbackListener) {
        this.onItemTouchCallbackListener = onItemTouchCallbackListener;
    }

    public void setSwipeEnable(boolean z) {
        this.isCanSwipe = z;
    }
}
