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
public class QMUIContinuousNestedTopRecyclerView extends RecyclerView implements IQMUIContinuousNestedTopView {

    /* renamed from: for, reason: not valid java name */
    public static final String f19193for = "@qmui_scroll_info_top_rv_pos";

    /* renamed from: new, reason: not valid java name */
    public static final String f19194new = "@qmui_scroll_info_top_rv_offset";

    /* renamed from: do, reason: not valid java name */
    private IQMUIContinuousNestedScrollCommon.OnScrollNotifier f19195do;

    /* renamed from: if, reason: not valid java name */
    private final int[] f19196if;

    public QMUIContinuousNestedTopRecyclerView(@NonNull Context context) {
        this(context, null);
        m23550do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m23550do() {
        setVerticalScrollBarEnabled(false);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int consumeScroll(int i) {
        if (i == Integer.MIN_VALUE) {
            scrollToPosition(0);
            return Integer.MIN_VALUE;
        }
        boolean z = true;
        if (i == Integer.MAX_VALUE) {
            RecyclerView.Adapter adapter = getAdapter();
            if (adapter != null) {
                scrollToPosition(adapter.getItemCount() - 1);
            }
            return Integer.MAX_VALUE;
        }
        if (hasNestedScrollingParent(0)) {
            z = false;
        } else {
            startNestedScroll(2, 0);
            int[] iArr = this.f19196if;
            iArr[0] = 0;
            iArr[1] = 0;
            dispatchNestedPreScroll(0, i, iArr, null, 0);
            i -= this.f19196if[1];
        }
        scrollBy(0, i);
        if (z) {
            stopNestedScroll(0);
        }
        return 0;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getCurrentScroll() {
        return computeVerticalScrollOffset();
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedTopView
    public int getScrollOffsetRange() {
        return Math.max(0, computeVerticalScrollRange() - getHeight());
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void injectScrollNotifier(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
        this.f19195do = onScrollNotifier;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int i, int i2) {
        super.onScrolled(i, i2);
        IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier = this.f19195do;
        if (onScrollNotifier != null) {
            onScrollNotifier.notify(getCurrentScroll(), getScrollOffsetRange());
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void restoreScrollInfo(@NonNull Bundle bundle) {
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            ((LinearLayoutManager) layoutManager).scrollToPositionWithOffset(bundle.getInt(f19193for, 0), bundle.getInt(f19194new, 0));
            IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier = this.f19195do;
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
            bundle.putInt(f19193for, iFindFirstVisibleItemPosition);
            bundle.putInt(f19194new, top);
        }
    }

    public QMUIContinuousNestedTopRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        m23550do();
    }

    public QMUIContinuousNestedTopRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19196if = new int[2];
        m23550do();
    }
}
