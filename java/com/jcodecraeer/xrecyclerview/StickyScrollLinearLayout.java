package com.jcodecraeer.xrecyclerview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import freemarker.core.y4;
import java.util.Objects;

/* loaded from: classes2.dex */
public class StickyScrollLinearLayout extends LinearLayout implements NestedScrollingParent {

    /* renamed from: this, reason: not valid java name */
    private static final String f18225this = "StickyScrollLayout";

    /* renamed from: case, reason: not valid java name */
    private int f18226case;

    /* renamed from: do, reason: not valid java name */
    private View f18227do;

    /* renamed from: else, reason: not valid java name */
    private RecyclerView.LayoutManager f18228else;

    /* renamed from: for, reason: not valid java name */
    private View f18229for;

    /* renamed from: goto, reason: not valid java name */
    private int f18230goto;

    /* renamed from: if, reason: not valid java name */
    private View f18231if;

    /* renamed from: new, reason: not valid java name */
    private OverScroller f18232new;

    /* renamed from: try, reason: not valid java name */
    private VelocityTracker f18233try;

    public interface StickyScrollInitInterface {
        View setContentView();

        View setTabView();

        View setTopView();
    }

    public StickyScrollLinearLayout(Context context) {
        super(context);
        this.f18228else = null;
        this.f18230goto = 1;
        m22782for(context);
    }

    /* renamed from: for, reason: not valid java name */
    private void m22782for(Context context) {
        setOrientation(1);
        this.f18232new = new OverScroller(context);
    }

    private void getTopViewHeight() {
        View view = this.f18227do;
        if (view == null) {
            return;
        }
        this.f18226case = view.getMeasuredHeight();
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    private void m22783new() {
        if (this.f18233try == null) {
            this.f18233try = VelocityTracker.obtain();
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m22784try() {
        this.f18229for.getLayoutParams().height = getMeasuredHeight() - this.f18231if.getMeasuredHeight();
        setMeasuredDimension(getMeasuredWidth(), this.f18227do.getMeasuredHeight() + this.f18231if.getMeasuredHeight() + this.f18229for.getMeasuredHeight());
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f18232new.computeScrollOffset()) {
            scrollTo(0, this.f18232new.getCurrY());
            invalidate();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m22785do() {
        VelocityTracker velocityTracker = this.f18233try;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f18233try = null;
        }
    }

    public View getContentView() {
        return this.f18229for;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return 0;
    }

    /* renamed from: if, reason: not valid java name */
    public void m22786if(int i) {
        this.f18232new.fling(0, getScrollY(), 0, i, 0, 0, 0, this.f18226case);
        invalidate();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f18231if == null || this.f18227do == null || this.f18229for == null) {
            return;
        }
        m22784try();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        if (getScrollY() >= this.f18226case) {
            return false;
        }
        m22786if((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        int iFindFirstCompletelyVisibleItemPosition;
        if (!(view instanceof XRecyclerView)) {
            throw new UnsupportedOperationException("insert your content must is XRecyclerView!");
        }
        RecyclerView.LayoutManager layoutManager = ((RecyclerView) view).getLayoutManager();
        this.f18228else = layoutManager;
        if (layoutManager instanceof GridLayoutManager) {
            iFindFirstCompletelyVisibleItemPosition = ((GridLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            int[] iArr2 = new int[((StaggeredGridLayoutManager) layoutManager).getSpanCount()];
            ((StaggeredGridLayoutManager) this.f18228else).findFirstCompletelyVisibleItemPositions(iArr2);
            iFindFirstCompletelyVisibleItemPosition = iArr2[0];
        } else {
            iFindFirstCompletelyVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstCompletelyVisibleItemPosition();
        }
        if (iFindFirstCompletelyVisibleItemPosition < 0) {
            return;
        }
        int scrollY = getScrollY();
        boolean z = i2 > 0 && scrollY < this.f18226case;
        StringBuilder sb = new StringBuilder();
        sb.append("mTopViewHeight == ");
        sb.append(this.f18226case);
        sb.append("\ndy == ");
        sb.append(i2);
        sb.append("\nscrollY == ");
        sb.append(scrollY);
        sb.append("\nhiddenTop && showTop ");
        sb.append(z);
        if (!z) {
            z = i2 < 0 && scrollY >= 0 && (!ViewCompat.canScrollVertically(view, -1) || iFindFirstCompletelyVisibleItemPosition == this.f18230goto);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mTopViewHeight == ");
            sb2.append(this.f18226case);
            sb2.append("\ndy == ");
            sb2.append(i2);
            sb2.append("\nscrollY == ");
            sb2.append(scrollY);
            sb2.append("\nfirstVisiblePosition ");
            sb2.append(iFindFirstCompletelyVisibleItemPosition);
        }
        if (z) {
            scrollBy(0, i2);
            iArr[1] = i2;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("onNestedScroll ");
        sb.append(i2);
        sb.append(y4.f24312do);
        sb.append(i4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        getTopViewHeight();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("onStartNestedScroll ");
        sb.append(view.toString());
        sb.append("  ");
        sb.append(view2.toString());
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        StringBuilder sb = new StringBuilder();
        sb.append("onStopNestedScroll ");
        sb.append(view.toString());
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.f18226case;
        if (i2 > i3) {
            i2 = i3;
        }
        if (i2 != getScrollY()) {
            super.scrollTo(i, i2);
        }
    }

    public void setInitInterface(@NonNull StickyScrollInitInterface stickyScrollInitInterface) {
        Objects.requireNonNull(stickyScrollInitInterface, "initInterface can not be null!");
        View topView = stickyScrollInitInterface.setTopView();
        this.f18227do = topView;
        if (topView != null) {
            getTopViewHeight();
        }
        this.f18231if = stickyScrollInitInterface.setTabView();
        View contentView = stickyScrollInitInterface.setContentView();
        this.f18229for = contentView;
        if (contentView == null) {
            return;
        }
        m22784try();
        requestLayout();
    }

    public void setTargetFirstVisiblePosition(int i) {
        this.f18230goto = i;
    }

    public StickyScrollLinearLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18228else = null;
        this.f18230goto = 1;
        m22782for(context);
    }
}
