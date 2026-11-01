package com.futuremind.recyclerviewfastscroll;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerViewScrollListener extends RecyclerView.OnScrollListener {

    /* renamed from: do, reason: not valid java name */
    private final FastScroller f10917do;

    /* renamed from: if, reason: not valid java name */
    public List<ScrollerListener> f10919if = new ArrayList();

    /* renamed from: for, reason: not valid java name */
    public int f10918for = 0;

    public interface ScrollerListener {
        void onScroll(float f);
    }

    public RecyclerViewScrollListener(FastScroller fastScroller) {
        this.f10917do = fastScroller;
    }

    /* renamed from: do, reason: not valid java name */
    public void m12343do(ScrollerListener scrollerListener) {
        this.f10919if.add(scrollerListener);
    }

    /* renamed from: for, reason: not valid java name */
    public void m12344for(RecyclerView recyclerView) {
        int iComputeHorizontalScrollOffset;
        int iComputeHorizontalScrollExtent;
        int iComputeHorizontalScrollRange;
        if (this.f10917do.m12340const()) {
            iComputeHorizontalScrollOffset = recyclerView.computeVerticalScrollOffset();
            iComputeHorizontalScrollExtent = recyclerView.computeVerticalScrollExtent();
            iComputeHorizontalScrollRange = recyclerView.computeVerticalScrollRange();
        } else {
            iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            iComputeHorizontalScrollExtent = recyclerView.computeHorizontalScrollExtent();
            iComputeHorizontalScrollRange = recyclerView.computeHorizontalScrollRange();
        }
        float f = iComputeHorizontalScrollOffset / (iComputeHorizontalScrollRange - iComputeHorizontalScrollExtent);
        this.f10917do.setScrollerPosition(f);
        m12345if(f);
    }

    /* renamed from: if, reason: not valid java name */
    public void m12345if(float f) {
        Iterator<ScrollerListener> it = this.f10919if.iterator();
        while (it.hasNext()) {
            it.next().onScroll(f);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        if (i == 0 && this.f10918for != 0) {
            this.f10917do.getViewProvider().onScrollFinished();
        } else if (i != 0 && this.f10918for == 0) {
            this.f10917do.getViewProvider().onScrollStarted();
        }
        this.f10918for = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        if (this.f10917do.m12342super()) {
            m12344for(recyclerView);
        }
    }
}
