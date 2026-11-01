package com.wsw.cospa.widget.scroller;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.scroller.FastScroller;

/* loaded from: classes2.dex */
public class FastScrollView extends FrameLayout {
    private FastScroller fastScroller;
    private RecyclerView recyclerView;

    public FastScrollView(@NonNull Context context) {
        super(context);
        layout(context, null);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
    }

    private void layout(Context context, AttributeSet attributeSet) {
        FastScroller fastScroller = new FastScroller(context, attributeSet);
        this.fastScroller = fastScroller;
        fastScroller.setId(R.id.arg_res_0x7f0901b0);
        RecyclerView recyclerView = new RecyclerView(context, attributeSet);
        this.recyclerView = recyclerView;
        recyclerView.setId(R.id.arg_res_0x7f09035b);
    }

    @NonNull
    public FastScroller getFastScroller() {
        return this.fastScroller;
    }

    @NonNull
    public RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() throws Resources.NotFoundException {
        super.onAttachedToWindow();
        addView(this.recyclerView);
        this.recyclerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.fastScroller.attachRecyclerView(this.recyclerView);
        if (Build.VERSION.SDK_INT >= 21) {
            setNestedScrollingEnabled(true);
        } else if (getParent() instanceof SwipeRefreshLayout) {
            this.fastScroller.setSwipeRefreshLayout((SwipeRefreshLayout) getParent());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.fastScroller.detachRecyclerView();
        removeAllViews();
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        this.recyclerView.setAdapter(adapter);
        if (adapter instanceof FastScroller.SectionIndexer) {
            this.fastScroller.setSectionIndexer((FastScroller.SectionIndexer) adapter);
        } else if (adapter == 0) {
            this.fastScroller.setSectionIndexer(null);
        }
    }

    public void setLayoutManager(@NonNull RecyclerView.LayoutManager layoutManager) {
        this.recyclerView.setLayoutManager(layoutManager);
    }

    public FastScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScrollView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        layout(context, attributeSet);
    }
}
