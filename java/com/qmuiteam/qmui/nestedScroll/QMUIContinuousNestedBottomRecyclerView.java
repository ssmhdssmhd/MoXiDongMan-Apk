package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon;

/* loaded from: classes2.dex */
public class QMUIContinuousNestedBottomRecyclerView extends RecyclerView implements IQMUIContinuousNestedBottomView {

    /* renamed from: for, reason: not valid java name */
    public static final String f19135for = "@qmui_scroll_info_bottom_rv_pos";

    /* renamed from: new, reason: not valid java name */
    public static final String f19136new = "@qmui_scroll_info_bottom_rv_offset";

    /* renamed from: do, reason: not valid java name */
    private IQMUIContinuousNestedScrollCommon.OnScrollNotifier f19137do;

    /* renamed from: if, reason: not valid java name */
    private final int[] f19138if;

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedBottomRecyclerView$do, reason: invalid class name */
    public class Cdo extends RecyclerView.OnScrollListener {
        public Cdo() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            if (QMUIContinuousNestedBottomRecyclerView.this.f19137do != null) {
                if (i == 0) {
                    QMUIContinuousNestedBottomRecyclerView.this.f19137do.onScrollStateChange(recyclerView, 0);
                } else if (i == 2) {
                    QMUIContinuousNestedBottomRecyclerView.this.f19137do.onScrollStateChange(recyclerView, 2);
                } else if (i == 1) {
                    QMUIContinuousNestedBottomRecyclerView.this.f19137do.onScrollStateChange(recyclerView, 1);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            if (QMUIContinuousNestedBottomRecyclerView.this.f19137do != null) {
                QMUIContinuousNestedBottomRecyclerView.this.f19137do.notify(recyclerView.computeVerticalScrollOffset(), Math.max(0, recyclerView.computeVerticalScrollRange() - recyclerView.getHeight()));
            }
        }
    }

    public QMUIContinuousNestedBottomRecyclerView(@NonNull Context context) {
        super(context);
        this.f19138if = new int[2];
        m23509if();
    }

    /* renamed from: if, reason: not valid java name */
    private void m23509if() {
        setVerticalScrollBarEnabled(false);
        addOnScrollListener(new Cdo());
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public void consumeScroll(int i) {
        if (i == Integer.MIN_VALUE) {
            scrollToPosition(0);
            return;
        }
        boolean z = true;
        if (i == Integer.MAX_VALUE) {
            RecyclerView.Adapter adapter = getAdapter();
            if (adapter != null) {
                scrollToPosition(adapter.getItemCount() - 1);
                return;
            }
            return;
        }
        if (hasNestedScrollingParent(0)) {
            z = false;
        } else {
            startNestedScroll(2, 0);
            int[] iArr = this.f19138if;
            iArr[0] = 0;
            iArr[1] = 0;
            dispatchNestedPreScroll(0, i, iArr, null, 0);
            i -= this.f19138if[1];
        }
        scrollBy(0, i);
        if (z) {
            stopNestedScroll(0);
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public int getContentHeight() {
        if (getAdapter() == null || getLayoutManager() == null) {
            return 0;
        }
        int iComputeVerticalScrollRange = computeVerticalScrollRange();
        if (iComputeVerticalScrollRange > getHeight()) {
            return -1;
        }
        return iComputeVerticalScrollRange;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public int getCurrentScroll() {
        return computeVerticalScrollOffset();
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public int getScrollOffsetRange() {
        return Math.max(0, computeVerticalScrollRange() - getHeight());
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void injectScrollNotifier(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
        this.f19137do = onScrollNotifier;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void restoreScrollInfo(@NonNull Bundle bundle) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(bundle.getInt(f19135for, 0), bundle.getInt(f19136new, 0));
            IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier = this.f19137do;
            if (onScrollNotifier != null) {
                onScrollNotifier.notify(getCurrentScroll(), getScrollOffsetRange());
            }
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void saveScrollInfo(@NonNull Bundle bundle) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
            View viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
            int top = viewFindViewByPosition == null ? 0 : viewFindViewByPosition.getTop();
            bundle.putInt(f19135for, iFindFirstVisibleItemPosition);
            bundle.putInt(f19136new, top);
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public void smoothScrollYBy(int i, int i2) {
        startNestedScroll(2, 1);
        smoothScrollBy(0, i, null);
    }

    public QMUIContinuousNestedBottomRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19138if = new int[2];
        m23509if();
    }

    public QMUIContinuousNestedBottomRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19138if = new int[2];
        m23509if();
    }
}
