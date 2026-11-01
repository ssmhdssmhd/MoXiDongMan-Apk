package com.wsw.cospa.utils;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.ComicShelfGridAdapter;
import com.wsw.cospa.adapter.ComicShelfListAdapter;

/* loaded from: classes2.dex */
public class MyItemTouchHelpCallback extends ItemTouchHelper.Callback {

    /* renamed from: do, reason: not valid java name */
    private OnItemTouchCallbackListener f22526do;

    /* renamed from: if, reason: not valid java name */
    private boolean f22528if = false;

    /* renamed from: for, reason: not valid java name */
    private boolean f22527for = false;

    public interface OnItemTouchCallbackListener {
        boolean onMove(int i, int i2);

        void onRelease();

        void onSwiped(int i);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        if (viewHolder instanceof ComicShelfGridAdapter.ComicViewHolder) {
            ((ComicShelfGridAdapter.ComicViewHolder) viewHolder).itemView.setBackgroundResource(R.color.arg_res_0x7f060362);
        } else if (viewHolder instanceof ComicShelfListAdapter.ComicViewHolder) {
            ((ComicShelfListAdapter.ComicViewHolder) viewHolder).itemView.setBackgroundResource(R.color.arg_res_0x7f060362);
        } else {
            viewHolder.itemView.setBackgroundResource(R.color.arg_res_0x7f060362);
        }
        OnItemTouchCallbackListener onItemTouchCallbackListener = this.f22526do;
        if (onItemTouchCallbackListener != null) {
            onItemTouchCallbackListener.onRelease();
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
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
        return this.f22527for;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return this.f22528if;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
        OnItemTouchCallbackListener onItemTouchCallbackListener = this.f22526do;
        if (onItemTouchCallbackListener != null) {
            return onItemTouchCallbackListener.onMove(viewHolder.getLayoutPosition(), viewHolder2.getLayoutPosition());
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
        super.onSelectedChanged(viewHolder, i);
        if (viewHolder instanceof ComicShelfGridAdapter.ComicViewHolder) {
            ((ComicShelfGridAdapter.ComicViewHolder) viewHolder).itemView.setBackgroundResource(R.color.arg_res_0x7f060362);
        } else if (viewHolder instanceof ComicShelfListAdapter.ComicViewHolder) {
            ((ComicShelfListAdapter.ComicViewHolder) viewHolder).itemView.setBackgroundResource(R.color.arg_res_0x7f060362);
        } else if (viewHolder != null) {
            viewHolder.itemView.setBackgroundResource(R.color.arg_res_0x7f060362);
        }
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        OnItemTouchCallbackListener onItemTouchCallbackListener = this.f22526do;
        if (onItemTouchCallbackListener != null) {
            onItemTouchCallbackListener.onSwiped(viewHolder.getLayoutPosition());
        }
    }

    public void setDragEnable(boolean z) {
        this.f22528if = z;
    }

    public void setOnItemTouchCallbackListener(OnItemTouchCallbackListener onItemTouchCallbackListener) {
        this.f22526do = onItemTouchCallbackListener;
    }

    public void setSwipeEnable(boolean z) {
        this.f22527for = z;
    }
}
