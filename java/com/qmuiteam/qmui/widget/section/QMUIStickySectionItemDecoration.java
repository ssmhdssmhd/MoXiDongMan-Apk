package com.qmuiteam.qmui.widget.section;

import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter;
import com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter.ViewHolder;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class QMUIStickySectionItemDecoration<VH extends QMUIStickySectionAdapter.ViewHolder> extends RecyclerView.ItemDecoration {

    /* renamed from: do, reason: not valid java name */
    private Callback<VH> f19977do;

    /* renamed from: if, reason: not valid java name */
    private VH f19979if;

    /* renamed from: new, reason: not valid java name */
    private WeakReference<ViewGroup> f19980new;

    /* renamed from: for, reason: not valid java name */
    private int f19978for = -1;

    /* renamed from: try, reason: not valid java name */
    private int f19981try = 0;

    public interface Callback<ViewHolder extends QMUIStickySectionAdapter.ViewHolder> {
        void bindViewHolder(ViewHolder viewholder, int i);

        ViewHolder createViewHolder(ViewGroup viewGroup, int i);

        int getItemViewType(int i);

        int getRelativeStickyItemPosition(int i);

        boolean isHeaderItem(int i);

        void onHeaderVisibilityChanged(boolean z);

        void registerAdapterDataObserver(RecyclerView.AdapterDataObserver adapterDataObserver);
    }

    /* renamed from: com.qmuiteam.qmui.widget.section.QMUIStickySectionItemDecoration$do, reason: invalid class name */
    public class Cdo extends RecyclerView.AdapterDataObserver {
        public Cdo() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            super.onItemRangeChanged(i, i2);
            if (QMUIStickySectionItemDecoration.this.f19978for < i || QMUIStickySectionItemDecoration.this.f19978for >= i + i2 || QMUIStickySectionItemDecoration.this.f19979if == null || QMUIStickySectionItemDecoration.this.f19980new.get() == null) {
                return;
            }
            QMUIStickySectionItemDecoration qMUIStickySectionItemDecoration = QMUIStickySectionItemDecoration.this;
            qMUIStickySectionItemDecoration.m24230else((ViewGroup) qMUIStickySectionItemDecoration.f19980new.get(), QMUIStickySectionItemDecoration.this.f19979if, QMUIStickySectionItemDecoration.this.f19978for);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            super.onItemRangeRemoved(i, i2);
            if (QMUIStickySectionItemDecoration.this.f19978for < i || QMUIStickySectionItemDecoration.this.f19978for >= i + i2) {
                return;
            }
            QMUIStickySectionItemDecoration.this.f19978for = -1;
            QMUIStickySectionItemDecoration.this.m24227break(false);
        }
    }

    public QMUIStickySectionItemDecoration(ViewGroup viewGroup, @NonNull Callback<VH> callback) {
        this.f19977do = callback;
        this.f19980new = new WeakReference<>(viewGroup);
        this.f19977do.registerAdapterDataObserver(new Cdo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public void m24227break(boolean z) {
        ViewGroup viewGroup = this.f19980new.get();
        if (viewGroup == null) {
            return;
        }
        viewGroup.setVisibility(z ? 0 : 8);
        this.f19977do.onHeaderVisibilityChanged(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public void m24230else(ViewGroup viewGroup, VH vh, int i) {
        this.f19977do.bindViewHolder(vh, i);
        viewGroup.removeAllViews();
        viewGroup.addView(vh.itemView);
    }

    /* renamed from: goto, reason: not valid java name */
    private VH m24232goto(RecyclerView recyclerView, int i, int i2) {
        VH vh = (VH) this.f19977do.createViewHolder(recyclerView, i2);
        vh.f19969for = true;
        return vh;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        ViewGroup viewGroup = this.f19980new.get();
        if (viewGroup == null || recyclerView.getChildCount() == 0 || recyclerView.getAdapter() == null) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            m24227break(false);
            return;
        }
        int iFindFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        if (iFindFirstVisibleItemPosition == -1) {
            m24227break(false);
            return;
        }
        int relativeStickyItemPosition = this.f19977do.getRelativeStickyItemPosition(iFindFirstVisibleItemPosition);
        if (relativeStickyItemPosition == -1) {
            m24227break(false);
            return;
        }
        int itemViewType = this.f19977do.getItemViewType(relativeStickyItemPosition);
        if (itemViewType == -1) {
            m24227break(false);
            return;
        }
        VH vh = this.f19979if;
        if (vh == null || vh.getItemViewType() != itemViewType) {
            this.f19979if = (VH) m24232goto(recyclerView, relativeStickyItemPosition, itemViewType);
        }
        if (this.f19978for != relativeStickyItemPosition) {
            this.f19978for = relativeStickyItemPosition;
            m24230else(viewGroup, this.f19979if, relativeStickyItemPosition);
        }
        m24227break(true);
        View viewFindChildViewUnder = recyclerView.findChildViewUnder(recyclerView.getWidth() / 2, viewGroup.getHeight() - 1);
        if (viewFindChildViewUnder == null) {
            int top = recyclerView.getTop();
            this.f19981try = top;
            ViewCompat.offsetTopAndBottom(viewGroup, top - viewGroup.getTop());
            return;
        }
        int childAdapterPosition = recyclerView.getChildAdapterPosition(viewFindChildViewUnder);
        if (!this.f19977do.isHeaderItem(childAdapterPosition) || childAdapterPosition <= 0) {
            int top2 = recyclerView.getTop();
            this.f19981try = top2;
            ViewCompat.offsetTopAndBottom(viewGroup, top2 - viewGroup.getTop());
        } else {
            int top3 = (viewFindChildViewUnder.getTop() + recyclerView.getTop()) - viewGroup.getHeight();
            this.f19981try = top3;
            ViewCompat.offsetTopAndBottom(viewGroup, top3 - viewGroup.getTop());
        }
    }

    /* renamed from: this, reason: not valid java name */
    public int m24236this() {
        return this.f19981try;
    }
}
