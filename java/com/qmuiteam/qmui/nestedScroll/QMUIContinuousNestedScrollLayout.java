package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.kh1;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon;
import com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopAreaBehavior;
import com.qmuiteam.qmui.nestedScroll.QMUIDraggableScrollBar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUIContinuousNestedScrollLayout extends CoordinatorLayout implements QMUIContinuousNestedTopAreaBehavior.Callback, QMUIDraggableScrollBar.Callback {

    /* renamed from: super, reason: not valid java name */
    public static final String f19140super = "@qmui_nested_scroll_layout_offset";

    /* renamed from: break, reason: not valid java name */
    private boolean f19141break;

    /* renamed from: case, reason: not valid java name */
    private Runnable f19142case;

    /* renamed from: catch, reason: not valid java name */
    private int f19143catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f19144class;

    /* renamed from: const, reason: not valid java name */
    private float f19145const;

    /* renamed from: do, reason: not valid java name */
    private IQMUIContinuousNestedTopView f19146do;

    /* renamed from: else, reason: not valid java name */
    private boolean f19147else;

    /* renamed from: final, reason: not valid java name */
    private int f19148final;

    /* renamed from: for, reason: not valid java name */
    private QMUIContinuousNestedTopAreaBehavior f19149for;

    /* renamed from: goto, reason: not valid java name */
    private QMUIDraggableScrollBar f19150goto;

    /* renamed from: if, reason: not valid java name */
    private IQMUIContinuousNestedBottomView f19151if;

    /* renamed from: new, reason: not valid java name */
    private QMUIContinuousNestedBottomAreaBehavior f19152new;

    /* renamed from: this, reason: not valid java name */
    private boolean f19153this;

    /* renamed from: try, reason: not valid java name */
    private List<OnScrollListener> f19154try;

    public interface OnScrollListener {
        void onScroll(int i, int i2, int i3, int i4, int i5, int i6);

        void onScrollStateChange(int i, boolean z);
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedScrollLayout$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIContinuousNestedScrollLayout.this.m23518case();
        }
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedScrollLayout$for, reason: invalid class name */
    public class Cfor implements IQMUIContinuousNestedScrollCommon.OnScrollNotifier {
        public Cfor() {
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void notify(int i, int i2) {
            int currentScroll = QMUIContinuousNestedScrollLayout.this.f19146do == null ? 0 : QMUIContinuousNestedScrollLayout.this.f19146do.getCurrentScroll();
            int scrollOffsetRange = QMUIContinuousNestedScrollLayout.this.f19146do == null ? 0 : QMUIContinuousNestedScrollLayout.this.f19146do.getScrollOffsetRange();
            int i3 = QMUIContinuousNestedScrollLayout.this.f19149for == null ? 0 : -QMUIContinuousNestedScrollLayout.this.f19149for.getTopAndBottomOffset();
            QMUIContinuousNestedScrollLayout qMUIContinuousNestedScrollLayout = QMUIContinuousNestedScrollLayout.this;
            qMUIContinuousNestedScrollLayout.m23513goto(currentScroll, scrollOffsetRange, i3, qMUIContinuousNestedScrollLayout.getOffsetRange(), i, i2);
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void onScrollStateChange(View view, int i) {
            QMUIContinuousNestedScrollLayout.this.m23516this(i, false);
        }
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedScrollLayout$if, reason: invalid class name */
    public class Cif implements IQMUIContinuousNestedScrollCommon.OnScrollNotifier {
        public Cif() {
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void notify(int i, int i2) {
            int i3 = QMUIContinuousNestedScrollLayout.this.f19149for == null ? 0 : -QMUIContinuousNestedScrollLayout.this.f19149for.getTopAndBottomOffset();
            int currentScroll = QMUIContinuousNestedScrollLayout.this.f19151if == null ? 0 : QMUIContinuousNestedScrollLayout.this.f19151if.getCurrentScroll();
            int scrollOffsetRange = QMUIContinuousNestedScrollLayout.this.f19151if == null ? 0 : QMUIContinuousNestedScrollLayout.this.f19151if.getScrollOffsetRange();
            QMUIContinuousNestedScrollLayout qMUIContinuousNestedScrollLayout = QMUIContinuousNestedScrollLayout.this;
            qMUIContinuousNestedScrollLayout.m23513goto(i, i2, i3, qMUIContinuousNestedScrollLayout.getOffsetRange(), currentScroll, scrollOffsetRange);
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void onScrollStateChange(View view, int i) {
        }
    }

    public QMUIContinuousNestedScrollLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m23510break() {
        if (this.f19150goto == null) {
            QMUIDraggableScrollBar qMUIDraggableScrollBarM23522else = m23522else(getContext());
            this.f19150goto = qMUIDraggableScrollBarM23522else;
            qMUIDraggableScrollBarM23522else.setEnableFadeInAndOut(this.f19153this);
            this.f19150goto.setCallback(this);
            CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(-2, -1);
            layoutParams.gravity = 5;
            addView(this.f19150goto, layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public void m23513goto(int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.f19141break) {
            m23510break();
            this.f19150goto.setPercent(getCurrentScrollPercent());
            this.f19150goto.m23554do();
        }
        Iterator<OnScrollListener> it = this.f19154try.iterator();
        while (it.hasNext()) {
            it.next().onScroll(i, i2, i3, i4, i5, i6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public void m23516this(int i, boolean z) {
        Iterator<OnScrollListener> it = this.f19154try.iterator();
        while (it.hasNext()) {
            it.next().onScrollStateChange(i, z);
        }
        this.f19143catch = i;
    }

    public void addOnScrollListener(@NonNull OnScrollListener onScrollListener) {
        if (this.f19154try.contains(onScrollListener)) {
            return;
        }
        this.f19154try.add(onScrollListener);
    }

    /* renamed from: case, reason: not valid java name */
    public void m23518case() {
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        if (iQMUIContinuousNestedTopView == null || this.f19151if == null) {
            return;
        }
        int currentScroll = iQMUIContinuousNestedTopView.getCurrentScroll();
        int scrollOffsetRange = this.f19146do.getScrollOffsetRange();
        int i = -this.f19149for.getTopAndBottomOffset();
        int offsetRange = getOffsetRange();
        if (offsetRange <= 0) {
            return;
        }
        if (i >= offsetRange || (i > 0 && this.f19147else)) {
            this.f19146do.consumeScroll(Integer.MAX_VALUE);
            if (this.f19151if.getCurrentScroll() > 0) {
                this.f19149for.setTopAndBottomOffset(-offsetRange);
                return;
            }
            return;
        }
        if (this.f19151if.getCurrentScroll() > 0) {
            this.f19151if.consumeScroll(Integer.MIN_VALUE);
        }
        if (currentScroll >= scrollOffsetRange || i <= 0) {
            return;
        }
        int i2 = scrollOffsetRange - currentScroll;
        if (i >= i2) {
            this.f19146do.consumeScroll(Integer.MAX_VALUE);
            this.f19149for.setTopAndBottomOffset(i2 - i);
        } else {
            this.f19146do.consumeScroll(i);
            this.f19149for.setTopAndBottomOffset(0);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m23519catch() {
        return this.f19147else;
    }

    /* renamed from: class, reason: not valid java name */
    public void m23520class() {
        removeCallbacks(this.f19142case);
        post(this.f19142case);
    }

    /* renamed from: const, reason: not valid java name */
    public void m23521const(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (this.f19149for != null) {
            this.f19149for.setTopAndBottomOffset(kh1.m4405for(-bundle.getInt(f19140super, 0), -getOffsetRange(), 0));
        }
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        if (iQMUIContinuousNestedTopView != null) {
            iQMUIContinuousNestedTopView.restoreScrollInfo(bundle);
        }
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        if (iQMUIContinuousNestedBottomView != null) {
            iQMUIContinuousNestedBottomView.restoreScrollInfo(bundle);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (this.f19143catch != 0) {
                m23528static();
                this.f19144class = true;
                this.f19145const = motionEvent.getY();
                if (this.f19148final < 0) {
                    this.f19148final = ViewConfiguration.get(getContext()).getScaledTouchSlop();
                }
                return true;
            }
        } else if (motionEvent.getAction() == 2 && this.f19144class) {
            if (Math.abs(motionEvent.getY() - this.f19145const) <= this.f19148final) {
                return true;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setAction(0);
            motionEventObtain.offsetLocation(0.0f, this.f19145const - motionEvent.getY());
            super.dispatchTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
        this.f19144class = false;
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: else, reason: not valid java name */
    public QMUIDraggableScrollBar m23522else(Context context) {
        return new QMUIDraggableScrollBar(context);
    }

    /* renamed from: final, reason: not valid java name */
    public void m23523final(@NonNull Bundle bundle) {
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        if (iQMUIContinuousNestedTopView != null) {
            iQMUIContinuousNestedTopView.saveScrollInfo(bundle);
        }
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        if (iQMUIContinuousNestedBottomView != null) {
            iQMUIContinuousNestedBottomView.saveScrollInfo(bundle);
        }
        bundle.putInt(f19140super, getOffsetCurrent());
    }

    public QMUIContinuousNestedBottomAreaBehavior getBottomAreaBehavior() {
        return this.f19152new;
    }

    public IQMUIContinuousNestedBottomView getBottomView() {
        return this.f19151if;
    }

    public int getCurrentScroll() {
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        int currentScroll = (iQMUIContinuousNestedTopView != null ? 0 + iQMUIContinuousNestedTopView.getCurrentScroll() : 0) + getOffsetCurrent();
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        return iQMUIContinuousNestedBottomView != null ? currentScroll + iQMUIContinuousNestedBottomView.getCurrentScroll() : currentScroll;
    }

    public float getCurrentScrollPercent() {
        int scrollRange = getScrollRange();
        if (scrollRange == 0) {
            return 0.0f;
        }
        return (getCurrentScroll() * 1.0f) / scrollRange;
    }

    public int getOffsetCurrent() {
        QMUIContinuousNestedTopAreaBehavior qMUIContinuousNestedTopAreaBehavior = this.f19149for;
        if (qMUIContinuousNestedTopAreaBehavior == null) {
            return 0;
        }
        return -qMUIContinuousNestedTopAreaBehavior.getTopAndBottomOffset();
    }

    public int getOffsetRange() {
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView;
        if (this.f19146do == null || (iQMUIContinuousNestedBottomView = this.f19151if) == null) {
            return 0;
        }
        int contentHeight = iQMUIContinuousNestedBottomView.getContentHeight();
        return contentHeight != -1 ? Math.max(0, (((View) this.f19146do).getHeight() + contentHeight) - getHeight()) : Math.max(0, (((View) this.f19146do).getHeight() + ((View) this.f19151if).getHeight()) - getHeight());
    }

    public int getScrollRange() {
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        int scrollOffsetRange = (iQMUIContinuousNestedTopView != null ? 0 + iQMUIContinuousNestedTopView.getScrollOffsetRange() : 0) + getOffsetRange();
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        return iQMUIContinuousNestedBottomView != null ? scrollOffsetRange + iQMUIContinuousNestedBottomView.getScrollOffsetRange() : scrollOffsetRange;
    }

    public QMUIContinuousNestedTopAreaBehavior getTopAreaBehavior() {
        return this.f19149for;
    }

    public IQMUIContinuousNestedTopView getTopView() {
        return this.f19146do;
    }

    /* renamed from: import, reason: not valid java name */
    public void m23524import() {
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        if (iQMUIContinuousNestedBottomView != null) {
            iQMUIContinuousNestedBottomView.consumeScroll(Integer.MIN_VALUE);
        }
        if (this.f19146do != null) {
            this.f19149for.setTopAndBottomOffset(0);
            this.f19146do.consumeScroll(Integer.MIN_VALUE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: native, reason: not valid java name */
    public void m23525native(View view, @Nullable CoordinatorLayout.LayoutParams layoutParams) {
        if (!(view instanceof IQMUIContinuousNestedBottomView)) {
            throw new IllegalStateException("bottomView must implement from IQMUIContinuousNestedBottomView");
        }
        Object obj = this.f19151if;
        if (obj != null) {
            removeView((View) obj);
        }
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = (IQMUIContinuousNestedBottomView) view;
        this.f19151if = iQMUIContinuousNestedBottomView;
        iQMUIContinuousNestedBottomView.injectScrollNotifier(new Cfor());
        if (layoutParams == null) {
            layoutParams = new CoordinatorLayout.LayoutParams(-1, -1);
        }
        CoordinatorLayout.Behavior behavior = layoutParams.getBehavior();
        if (behavior instanceof QMUIContinuousNestedBottomAreaBehavior) {
            this.f19152new = (QMUIContinuousNestedBottomAreaBehavior) behavior;
        } else {
            QMUIContinuousNestedBottomAreaBehavior qMUIContinuousNestedBottomAreaBehavior = new QMUIContinuousNestedBottomAreaBehavior();
            this.f19152new = qMUIContinuousNestedBottomAreaBehavior;
            layoutParams.setBehavior(qMUIContinuousNestedBottomAreaBehavior);
        }
        addView(view, 0, layoutParams);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIDraggableScrollBar.Callback
    public void onDragEnd() {
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIDraggableScrollBar.Callback
    public void onDragStarted() {
        m23528static();
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIDraggableScrollBar.Callback
    public void onDragToPercent(float f) {
        m23530throw(((int) (getScrollRange() * f)) - getCurrentScroll());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m23520class();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout, androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        super.onNestedScroll(view, i, i2, i3, i4, i5);
        if (i4 <= 0 || getCurrentScroll() < getScrollRange()) {
            return;
        }
        m23528static();
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopAreaBehavior.Callback
    public void onTopAreaOffset(int i) {
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        int currentScroll = iQMUIContinuousNestedTopView == null ? 0 : iQMUIContinuousNestedTopView.getCurrentScroll();
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView2 = this.f19146do;
        int scrollOffsetRange = iQMUIContinuousNestedTopView2 == null ? 0 : iQMUIContinuousNestedTopView2.getScrollOffsetRange();
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        int currentScroll2 = iQMUIContinuousNestedBottomView == null ? 0 : iQMUIContinuousNestedBottomView.getCurrentScroll();
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView2 = this.f19151if;
        m23513goto(currentScroll, scrollOffsetRange, -i, getOffsetRange(), currentScroll2, iQMUIContinuousNestedBottomView2 == null ? 0 : iQMUIContinuousNestedBottomView2.getScrollOffsetRange());
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopAreaBehavior.Callback
    public void onTopBehaviorFlingOrScrollEnd() {
        m23516this(0, true);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopAreaBehavior.Callback
    public void onTopBehaviorFlingOrScrollStart() {
        m23516this(2, true);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopAreaBehavior.Callback
    public void onTopBehaviorTouchBegin() {
        m23516this(1, true);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopAreaBehavior.Callback
    public void onTopBehaviorTouchEnd() {
        m23516this(0, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: public, reason: not valid java name */
    public void m23526public(View view, @Nullable CoordinatorLayout.LayoutParams layoutParams) {
        if (!(view instanceof IQMUIContinuousNestedTopView)) {
            throw new IllegalStateException("topView must implement from IQMUIContinuousNestedTopView");
        }
        Object obj = this.f19146do;
        if (obj != null) {
            removeView((View) obj);
        }
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = (IQMUIContinuousNestedTopView) view;
        this.f19146do = iQMUIContinuousNestedTopView;
        iQMUIContinuousNestedTopView.injectScrollNotifier(new Cif());
        if (layoutParams == null) {
            layoutParams = new CoordinatorLayout.LayoutParams(-1, -2);
        }
        CoordinatorLayout.Behavior behavior = layoutParams.getBehavior();
        if (behavior instanceof QMUIContinuousNestedTopAreaBehavior) {
            this.f19149for = (QMUIContinuousNestedTopAreaBehavior) behavior;
        } else {
            QMUIContinuousNestedTopAreaBehavior qMUIContinuousNestedTopAreaBehavior = new QMUIContinuousNestedTopAreaBehavior(getContext());
            this.f19149for = qMUIContinuousNestedTopAreaBehavior;
            layoutParams.setBehavior(qMUIContinuousNestedTopAreaBehavior);
        }
        this.f19149for.m23538goto(this);
        addView(view, 0, layoutParams);
    }

    public void removeOnScrollListener(OnScrollListener onScrollListener) {
        this.f19154try.remove(onScrollListener);
    }

    /* renamed from: return, reason: not valid java name */
    public void m23527return(int i, int i2) {
        QMUIContinuousNestedTopAreaBehavior qMUIContinuousNestedTopAreaBehavior;
        if (i == 0) {
            return;
        }
        if (i > 0 && (qMUIContinuousNestedTopAreaBehavior = this.f19149for) != null) {
            qMUIContinuousNestedTopAreaBehavior.m23539this(this, (View) this.f19146do, i, i2);
            return;
        }
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        if (iQMUIContinuousNestedBottomView != null) {
            iQMUIContinuousNestedBottomView.smoothScrollYBy(i, i2);
        }
    }

    public void setDraggableScrollBarEnabled(boolean z) {
        if (this.f19141break != z) {
            this.f19141break = z;
            if (z && !this.f19153this) {
                m23510break();
                this.f19150goto.setPercent(getCurrentScrollPercent());
                this.f19150goto.m23554do();
            }
            QMUIDraggableScrollBar qMUIDraggableScrollBar = this.f19150goto;
            if (qMUIDraggableScrollBar != null) {
                qMUIDraggableScrollBar.setVisibility(z ? 0 : 8);
            }
        }
    }

    public void setEnableScrollBarFadeInOut(boolean z) {
        if (this.f19153this != z) {
            this.f19153this = z;
            if (this.f19141break && !z) {
                m23510break();
                this.f19150goto.setPercent(getCurrentScrollPercent());
                this.f19150goto.m23554do();
            }
            QMUIDraggableScrollBar qMUIDraggableScrollBar = this.f19150goto;
            if (qMUIDraggableScrollBar != null) {
                qMUIDraggableScrollBar.setEnableFadeInAndOut(z);
                this.f19150goto.invalidate();
            }
        }
    }

    public void setKeepBottomAreaStableWhenCheckLayout(boolean z) {
        this.f19147else = z;
    }

    /* renamed from: static, reason: not valid java name */
    public void m23528static() {
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        if (iQMUIContinuousNestedBottomView != null) {
            iQMUIContinuousNestedBottomView.stopScroll();
        }
        QMUIContinuousNestedTopAreaBehavior qMUIContinuousNestedTopAreaBehavior = this.f19149for;
        if (qMUIContinuousNestedTopAreaBehavior != null) {
            qMUIContinuousNestedTopAreaBehavior.m23536break();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m23529super() {
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        if (iQMUIContinuousNestedTopView != null) {
            iQMUIContinuousNestedTopView.consumeScroll(Integer.MAX_VALUE);
        }
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
        if (iQMUIContinuousNestedBottomView != null) {
            iQMUIContinuousNestedBottomView.consumeScroll(Integer.MIN_VALUE);
            int contentHeight = this.f19151if.getContentHeight();
            if (contentHeight != -1) {
                this.f19149for.setTopAndBottomOffset((getHeight() - contentHeight) - ((View) this.f19146do).getHeight());
            } else {
                this.f19149for.setTopAndBottomOffset((getHeight() - ((View) this.f19151if).getHeight()) - ((View) this.f19146do).getHeight());
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m23530throw(int i) {
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView;
        QMUIContinuousNestedTopAreaBehavior qMUIContinuousNestedTopAreaBehavior;
        if (i > 0 && (qMUIContinuousNestedTopAreaBehavior = this.f19149for) != null) {
            qMUIContinuousNestedTopAreaBehavior.m23537else(this, (View) this.f19146do, i);
        } else {
            if (i == 0 || (iQMUIContinuousNestedBottomView = this.f19151if) == null) {
                return;
            }
            iQMUIContinuousNestedBottomView.consumeScroll(i);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public void m23531while() {
        IQMUIContinuousNestedTopView iQMUIContinuousNestedTopView = this.f19146do;
        if (iQMUIContinuousNestedTopView != null) {
            iQMUIContinuousNestedTopView.consumeScroll(Integer.MAX_VALUE);
            IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = this.f19151if;
            if (iQMUIContinuousNestedBottomView != null) {
                int contentHeight = iQMUIContinuousNestedBottomView.getContentHeight();
                if (contentHeight == -1) {
                    this.f19149for.setTopAndBottomOffset((getHeight() - ((View) this.f19151if).getHeight()) - ((View) this.f19146do).getHeight());
                } else if (((View) this.f19146do).getHeight() + contentHeight < getHeight()) {
                    this.f19149for.setTopAndBottomOffset(0);
                } else {
                    this.f19149for.setTopAndBottomOffset((getHeight() - contentHeight) - ((View) this.f19146do).getHeight());
                }
            }
        }
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView2 = this.f19151if;
        if (iQMUIContinuousNestedBottomView2 != null) {
            iQMUIContinuousNestedBottomView2.consumeScroll(Integer.MAX_VALUE);
        }
    }

    public QMUIContinuousNestedScrollLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUIContinuousNestedScrollLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19154try = new ArrayList();
        this.f19142case = new Cdo();
        this.f19147else = false;
        this.f19153this = true;
        this.f19141break = false;
        this.f19143catch = 0;
        this.f19144class = false;
        this.f19145const = 0.0f;
        this.f19148final = -1;
    }
}
