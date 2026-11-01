package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.kh1;
import android.support.v4.zh1;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;
import com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon;

/* loaded from: classes2.dex */
public abstract class QMUIContinuousNestedBottomDelegateLayout extends QMUIFrameLayout implements NestedScrollingChild2, NestedScrollingParent2, IQMUIContinuousNestedBottomView {

    /* renamed from: return, reason: not valid java name */
    public static final String f19106return = "@qmui_scroll_info_bottom_dl_offset";

    /* renamed from: static, reason: not valid java name */
    private static final int f19107static = -1;

    /* renamed from: break, reason: not valid java name */
    private boolean f19108break;

    /* renamed from: case, reason: not valid java name */
    private View f19109case;

    /* renamed from: catch, reason: not valid java name */
    private int f19110catch;

    /* renamed from: class, reason: not valid java name */
    private int f19111class;

    /* renamed from: const, reason: not valid java name */
    private int f19112const;

    /* renamed from: else, reason: not valid java name */
    private zh1 f19113else;

    /* renamed from: final, reason: not valid java name */
    private VelocityTracker f19114final;

    /* renamed from: for, reason: not valid java name */
    private final NestedScrollingParentHelper f19115for;

    /* renamed from: goto, reason: not valid java name */
    private zh1 f19116goto;

    /* renamed from: import, reason: not valid java name */
    private Rect f19117import;

    /* renamed from: native, reason: not valid java name */
    private int f19118native;

    /* renamed from: new, reason: not valid java name */
    private final NestedScrollingChildHelper f19119new;

    /* renamed from: public, reason: not valid java name */
    private Runnable f19120public;

    /* renamed from: super, reason: not valid java name */
    private final Cfor f19121super;

    /* renamed from: this, reason: not valid java name */
    private IQMUIContinuousNestedScrollCommon.OnScrollNotifier f19122this;

    /* renamed from: throw, reason: not valid java name */
    private final int[] f19123throw;

    /* renamed from: try, reason: not valid java name */
    private View f19124try;

    /* renamed from: while, reason: not valid java name */
    private final int[] f19125while;

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedBottomDelegateLayout$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIContinuousNestedBottomDelegateLayout.this.m23503try();
        }
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedBottomDelegateLayout$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private int f19128do;

        /* renamed from: for, reason: not valid java name */
        public Interpolator f19129for;

        /* renamed from: if, reason: not valid java name */
        public OverScroller f19130if;

        /* renamed from: new, reason: not valid java name */
        private boolean f19131new;

        /* renamed from: try, reason: not valid java name */
        private boolean f19132try;

        public Cfor() {
            Interpolator interpolator = com.qmuiteam.qmui.Cdo.f19013case;
            this.f19129for = interpolator;
            this.f19131new = false;
            this.f19132try = false;
            this.f19130if = new OverScroller(QMUIContinuousNestedBottomDelegateLayout.this.getContext(), interpolator);
        }

        /* renamed from: if, reason: not valid java name */
        private void m23504if() {
            QMUIContinuousNestedBottomDelegateLayout.this.removeCallbacks(this);
            ViewCompat.postOnAnimation(QMUIContinuousNestedBottomDelegateLayout.this, this);
        }

        /* renamed from: do, reason: not valid java name */
        public void m23505do(int i) {
            QMUIContinuousNestedBottomDelegateLayout.this.startNestedScroll(2, 1);
            this.f19128do = 0;
            Interpolator interpolator = this.f19129for;
            Interpolator interpolator2 = com.qmuiteam.qmui.Cdo.f19013case;
            if (interpolator != interpolator2) {
                this.f19129for = interpolator2;
                this.f19130if = new OverScroller(QMUIContinuousNestedBottomDelegateLayout.this.getContext(), interpolator2);
            }
            this.f19130if.fling(0, 0, 0, i, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            m23506for();
        }

        /* renamed from: for, reason: not valid java name */
        public void m23506for() {
            if (this.f19131new) {
                this.f19132try = true;
            } else {
                m23504if();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public void m23507new() {
            QMUIContinuousNestedBottomDelegateLayout.this.removeCallbacks(this);
            this.f19130if.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f19132try = false;
            this.f19131new = true;
            OverScroller overScroller = this.f19130if;
            if (overScroller.computeScrollOffset()) {
                int currY = overScroller.getCurrY();
                int i = currY - this.f19128do;
                this.f19128do = currY;
                IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = (IQMUIContinuousNestedBottomView) QMUIContinuousNestedBottomDelegateLayout.this.f19109case;
                if (i <= 0 || iQMUIContinuousNestedBottomView.getCurrentScroll() < iQMUIContinuousNestedBottomView.getScrollOffsetRange()) {
                    if (!QMUIContinuousNestedBottomDelegateLayout.this.f19119new.hasNestedScrollingParent(1)) {
                        QMUIContinuousNestedBottomDelegateLayout.this.startNestedScroll(2, 1);
                    }
                    QMUIContinuousNestedBottomDelegateLayout.this.consumeScroll(i);
                    m23506for();
                } else {
                    m23507new();
                }
            }
            this.f19131new = false;
            if (this.f19132try) {
                m23504if();
            } else {
                QMUIContinuousNestedBottomDelegateLayout.this.stopNestedScroll(1);
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedBottomDelegateLayout$if, reason: invalid class name */
    public class Cif implements IQMUIContinuousNestedScrollCommon.OnScrollNotifier {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ IQMUIContinuousNestedScrollCommon.OnScrollNotifier f19133do;

        public Cif(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
            this.f19133do = onScrollNotifier;
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void notify(int i, int i2) {
            this.f19133do.notify(i - QMUIContinuousNestedBottomDelegateLayout.this.f19124try.getTop(), i2 + QMUIContinuousNestedBottomDelegateLayout.this.f19124try.getHeight());
        }

        @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon.OnScrollNotifier
        public void onScrollStateChange(View view, int i) {
            this.f19133do.onScrollStateChange(view, i);
        }
    }

    public QMUIContinuousNestedBottomDelegateLayout(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m23494case() {
        if (this.f19114final == null) {
            this.f19114final = VelocityTracker.obtain();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m23495else(int i, int i2) {
        com.qmuiteam.qmui.util.Cfor.m23630catch(this, this.f19124try, this.f19117import);
        return this.f19117import.contains(i, i2);
    }

    private int getMiniOffset() {
        int contentHeight = ((IQMUIContinuousNestedBottomView) this.f19109case).getContentHeight();
        int headerStickyHeight = ((-this.f19124try.getHeight()) - ((FrameLayout.LayoutParams) this.f19124try.getLayoutParams()).bottomMargin) + getHeaderStickyHeight();
        return contentHeight != -1 ? Math.min(headerStickyHeight + (this.f19109case.getHeight() - contentHeight), 0) : headerStickyHeight;
    }

    /* renamed from: goto, reason: not valid java name */
    private int m23497goto(int i) {
        int iMin = i > 0 ? Math.min(this.f19124try.getTop() - getMiniOffset(), i) : i < 0 ? Math.max(this.f19124try.getTop() - ((FrameLayout.LayoutParams) this.f19124try.getLayoutParams()).topMargin, i) : 0;
        if (iMin != 0) {
            zh1 zh1Var = this.f19113else;
            zh1Var.m10204catch(zh1Var.m10211new() - iMin);
            zh1 zh1Var2 = this.f19116goto;
            zh1Var2.m10204catch(zh1Var2.m10211new() - iMin);
        }
        this.f19122this.notify(-this.f19113else.m10211new(), this.f19124try.getHeight() + ((IQMUIContinuousNestedBottomView) this.f19109case).getScrollOffsetRange());
        return i - iMin;
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public abstract View m23500break();

    /* renamed from: catch, reason: not valid java name */
    public void m23501catch() {
        removeCallbacks(this.f19120public);
        post(this.f19120public);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public void consumeScroll(int i) {
        if (i == Integer.MAX_VALUE) {
            m23497goto(i);
            ((IQMUIContinuousNestedBottomView) this.f19109case).consumeScroll(Integer.MAX_VALUE);
        } else if (i != Integer.MIN_VALUE) {
            ((IQMUIContinuousNestedBottomView) this.f19109case).consumeScroll(i);
        } else {
            ((IQMUIContinuousNestedBottomView) this.f19109case).consumeScroll(Integer.MIN_VALUE);
            m23497goto(i);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f19119new.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f19119new.dispatchNestedPreFling(f, f2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f19119new.dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return this.f19119new.dispatchNestedScroll(i, i2, i3, i4, iArr, i5);
    }

    public int getContentBottomMargin() {
        return 0;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public int getContentHeight() {
        int contentHeight = ((IQMUIContinuousNestedBottomView) this.f19109case).getContentHeight();
        if (contentHeight == -1 || contentHeight > this.f19109case.getHeight()) {
            return -1;
        }
        int contentBottomMargin = getContentBottomMargin();
        if (this.f19124try.getHeight() + contentHeight + contentBottomMargin > getHeight()) {
            return -1;
        }
        return this.f19124try.getHeight() + contentHeight + contentBottomMargin;
    }

    public View getContentView() {
        return this.f19109case;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public int getCurrentScroll() {
        return (-this.f19113else.m10211new()) + ((IQMUIContinuousNestedBottomView) this.f19109case).getCurrentScroll();
    }

    public int getHeaderHeightLayoutParam() {
        return -2;
    }

    public int getHeaderStickyHeight() {
        return 0;
    }

    public View getHeaderView() {
        return this.f19124try;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f19115for.getNestedScrollAxes();
    }

    public int getOffsetCurrent() {
        return -this.f19113else.m10211new();
    }

    public int getOffsetRange() {
        return -getMiniOffset();
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public int getScrollOffsetRange() {
        if (getContentHeight() != -1) {
            return 0;
        }
        return (this.f19124try.getHeight() - getHeaderStickyHeight()) + ((IQMUIContinuousNestedBottomView) this.f19109case).getScrollOffsetRange();
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i) {
        return this.f19119new.hasNestedScrollingParent(i);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void injectScrollNotifier(IQMUIContinuousNestedScrollCommon.OnScrollNotifier onScrollNotifier) {
        this.f19122this = onScrollNotifier;
        KeyEvent.Callback callback = this.f19109case;
        if (callback instanceof IQMUIContinuousNestedBottomView) {
            ((IQMUIContinuousNestedBottomView) callback).injectScrollNotifier(new Cif(onScrollNotifier));
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f19119new.isNestedScrollingEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x007e  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f19112const < 0) {
            this.f19112const = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.f19108break) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f19121super.m23507new();
            this.f19108break = false;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (m23495else(x, y)) {
                this.f19111class = y;
                this.f19110catch = motionEvent.getPointerId(0);
                startNestedScroll(2, 0);
            }
        } else if (actionMasked == 1) {
            this.f19108break = false;
            this.f19110catch = -1;
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int i = this.f19110catch;
            if (i != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y2 - this.f19111class) > this.f19112const) {
                    this.f19108break = true;
                    this.f19111class = y2;
                }
            }
        } else if (actionMasked != 3) {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                return (actionIndex == 0 || m23495else((int) motionEvent.getX(), (int) motionEvent.getY()) || !m23495else((int) motionEvent.getX(actionIndex), (int) motionEvent.getY(actionIndex))) ? false : true;
            }
        }
        return this.f19108break;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.f19124try;
        view.layout(0, 0, view.getMeasuredWidth(), this.f19124try.getMeasuredHeight());
        int bottom = this.f19124try.getBottom();
        View view2 = this.f19109case;
        view2.layout(0, bottom, view2.getMeasuredWidth(), this.f19109case.getMeasuredHeight() + bottom);
        this.f19113else.m10207else();
        this.f19116goto.m10207else();
        m23501catch();
    }

    @Override // com.qmuiteam.qmui.layout.QMUIFrameLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f19109case.measure(i, View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i2) - getHeaderStickyHeight()) - getContentBottomMargin(), 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        this.f19121super.m23505do((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        dispatchNestedPreScroll(i, i2, iArr, null, i3);
        int i4 = i2 - iArr[1];
        if (i4 > 0) {
            iArr[1] = iArr[1] + (i4 - m23497goto(i4));
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        int iM23497goto = m23497goto(i4);
        dispatchNestedScroll(0, i4 - iM23497goto, 0, iM23497goto, null, i5);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i, int i2) {
        this.f19115for.onNestedScrollAccepted(view, view2, i, i2);
        startNestedScroll(2, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return onStartNestedScroll(view, view2, i, 0);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View view, int i) {
        this.f19115for.onStopNestedScroll(view, i);
        stopNestedScroll(i);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f19112const < 0) {
            this.f19112const = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 0) {
            this.f19118native = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(0.0f, this.f19118native);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f19114final;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEventObtain);
                    this.f19114final.computeCurrentVelocity(1000);
                    this.f19121super.m23505do(-((int) (this.f19114final.getYVelocity(this.f19110catch) + 0.5f)));
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f19110catch);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y = (int) motionEvent.getY(iFindPointerIndex);
                int i = this.f19111class - y;
                if (!this.f19108break) {
                    int iAbs = Math.abs(i);
                    int i2 = this.f19112const;
                    if (iAbs > i2) {
                        this.f19108break = true;
                        i = i > 0 ? i - i2 : i + i2;
                    }
                }
                if (this.f19108break) {
                    this.f19111class = y;
                    if (i < 0 && ((IQMUIContinuousNestedBottomView) this.f19109case).getCurrentScroll() > 0) {
                        return true;
                    }
                    int[] iArr = this.f19123throw;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    if (dispatchNestedPreScroll(0, i, iArr, this.f19125while)) {
                        i -= this.f19123throw[1];
                        this.f19111class = y - this.f19125while[1];
                        motionEventObtain.offsetLocation(0.0f, r1[1]);
                        this.f19118native += this.f19125while[1];
                    }
                    int iM23497goto = m23497goto(i);
                    if (dispatchNestedScroll(0, i - iM23497goto, 0, iM23497goto, this.f19125while, 0)) {
                        this.f19111class = y - this.f19125while[1];
                        motionEventObtain.offsetLocation(0.0f, r1[1]);
                        this.f19118native += this.f19125while[1];
                    }
                }
            } else if (actionMasked == 3) {
            }
            this.f19108break = false;
            this.f19110catch = -1;
            VelocityTracker velocityTracker2 = this.f19114final;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f19114final = null;
            }
            stopNestedScroll(0);
        } else {
            this.f19121super.m23507new();
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (!m23495else(x, y2)) {
                return false;
            }
            this.f19111class = y2;
            this.f19110catch = motionEvent.getPointerId(0);
            m23494case();
            startNestedScroll(2, 0);
        }
        VelocityTracker velocityTracker3 = this.f19114final;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void restoreScrollInfo(@NonNull Bundle bundle) {
        int iM4405for = kh1.m4405for(bundle.getInt(f19106return, 0), getMiniOffset(), 0);
        this.f19113else.m10204catch(iM4405for);
        this.f19116goto.m10204catch(iM4405for);
        KeyEvent.Callback callback = this.f19109case;
        if (callback != null) {
            ((IQMUIContinuousNestedBottomView) callback).restoreScrollInfo(bundle);
        }
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedScrollCommon
    public void saveScrollInfo(@NonNull Bundle bundle) {
        bundle.putInt(f19106return, this.f19113else.m10211new());
        KeyEvent.Callback callback = this.f19109case;
        if (callback != null) {
            ((IQMUIContinuousNestedBottomView) callback).saveScrollInfo(bundle);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        this.f19119new.setNestedScrollingEnabled(z);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public void smoothScrollYBy(int i, int i2) {
        ((IQMUIContinuousNestedBottomView) this.f19109case).smoothScrollYBy(i, i2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i, int i2) {
        return this.f19119new.startNestedScroll(i, i2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i) {
        this.f19119new.stopNestedScroll(i);
    }

    @Override // com.qmuiteam.qmui.nestedScroll.IQMUIContinuousNestedBottomView
    public void stopScroll() {
        ((IQMUIContinuousNestedBottomView) this.f19109case).stopScroll();
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public abstract View m23502this();

    /* renamed from: try, reason: not valid java name */
    public void m23503try() {
        int offsetCurrent = getOffsetCurrent();
        int offsetRange = getOffsetRange();
        IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = (IQMUIContinuousNestedBottomView) this.f19109case;
        if (offsetCurrent >= offsetRange || iQMUIContinuousNestedBottomView.getCurrentScroll() <= 0) {
            return;
        }
        iQMUIContinuousNestedBottomView.consumeScroll(Integer.MIN_VALUE);
    }

    public QMUIContinuousNestedBottomDelegateLayout(Context context, AttributeSet attributeSet) {
        this(context, null, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return dispatchNestedPreScroll(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return dispatchNestedScroll(i, i2, i3, i4, iArr, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return startNestedScroll(i, 0);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public QMUIContinuousNestedBottomDelegateLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19110catch = -1;
        this.f19112const = -1;
        this.f19123throw = new int[2];
        this.f19125while = new int[2];
        this.f19117import = new Rect();
        this.f19118native = 0;
        this.f19120public = new Cdo();
        this.f19115for = new NestedScrollingParentHelper(this);
        this.f19119new = new NestedScrollingChildHelper(this);
        ViewCompat.setNestedScrollingEnabled(this, true);
        this.f19124try = m23500break();
        View viewM23502this = m23502this();
        this.f19109case = viewM23502this;
        if (viewM23502this instanceof IQMUIContinuousNestedBottomView) {
            addView(this.f19124try, new FrameLayout.LayoutParams(-1, getHeaderHeightLayoutParam()));
            addView(this.f19109case, new FrameLayout.LayoutParams(-1, -1));
            this.f19113else = new zh1(this.f19124try);
            this.f19116goto = new zh1(this.f19109case);
            this.f19121super = new Cfor();
            return;
        }
        throw new IllegalStateException("the view create by onCreateContentView() should implement from IQMUIContinuousNestedBottomView");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        onNestedScroll(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(view, i, i2, iArr, 0);
    }
}
