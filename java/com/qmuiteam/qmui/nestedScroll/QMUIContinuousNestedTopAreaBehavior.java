package com.qmuiteam.qmui.nestedScroll;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;

/* loaded from: classes2.dex */
public class QMUIContinuousNestedTopAreaBehavior extends QMUIViewOffsetBehavior<View> {

    /* renamed from: final, reason: not valid java name */
    private static final int f19158final = -1;

    /* renamed from: break, reason: not valid java name */
    private VelocityTracker f19159break;

    /* renamed from: case, reason: not valid java name */
    private boolean f19160case;

    /* renamed from: catch, reason: not valid java name */
    private Callback f19161catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f19162class;

    /* renamed from: const, reason: not valid java name */
    private boolean f19163const;

    /* renamed from: else, reason: not valid java name */
    private int f19164else;

    /* renamed from: goto, reason: not valid java name */
    private int f19165goto;

    /* renamed from: new, reason: not valid java name */
    private final Cdo f19166new;

    /* renamed from: this, reason: not valid java name */
    private int f19167this;

    /* renamed from: try, reason: not valid java name */
    private final int[] f19168try;

    public interface Callback {
        void onTopAreaOffset(int i);

        void onTopBehaviorFlingOrScrollEnd();

        void onTopBehaviorFlingOrScrollStart();

        void onTopBehaviorTouchBegin();

        void onTopBehaviorTouchEnd();
    }

    /* renamed from: com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedTopAreaBehavior$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: case, reason: not valid java name */
        private CoordinatorLayout f19169case;

        /* renamed from: do, reason: not valid java name */
        private int f19170do;

        /* renamed from: else, reason: not valid java name */
        private View f19171else;

        /* renamed from: for, reason: not valid java name */
        public Interpolator f19172for;

        /* renamed from: if, reason: not valid java name */
        public OverScroller f19174if;

        /* renamed from: new, reason: not valid java name */
        private boolean f19175new;

        /* renamed from: try, reason: not valid java name */
        private boolean f19176try;

        public Cdo(Context context) {
            Interpolator interpolator = com.qmuiteam.qmui.Cdo.f19013case;
            this.f19172for = interpolator;
            this.f19175new = false;
            this.f19176try = false;
            this.f19174if = new OverScroller(context, interpolator);
        }

        /* renamed from: for, reason: not valid java name */
        private void m23540for() {
            if (QMUIContinuousNestedTopAreaBehavior.this.f19161catch != null && QMUIContinuousNestedTopAreaBehavior.this.f19163const) {
                QMUIContinuousNestedTopAreaBehavior.this.f19161catch.onTopBehaviorFlingOrScrollEnd();
            }
            QMUIContinuousNestedTopAreaBehavior.this.f19163const = false;
        }

        /* renamed from: if, reason: not valid java name */
        private void m23541if() {
            if (this.f19171else != null) {
                this.f19169case.removeCallbacks(this);
                ViewCompat.postOnAnimation(this.f19171else, this);
            }
        }

        /* renamed from: new, reason: not valid java name */
        private void m23542new(CoordinatorLayout coordinatorLayout, View view) {
            QMUIContinuousNestedTopAreaBehavior.this.f19163const = true;
            if (QMUIContinuousNestedTopAreaBehavior.this.f19161catch != null) {
                QMUIContinuousNestedTopAreaBehavior.this.f19161catch.onTopBehaviorFlingOrScrollStart();
            }
            this.f19169case = coordinatorLayout;
            this.f19171else = view;
            this.f19170do = 0;
            Interpolator interpolator = this.f19172for;
            Interpolator interpolator2 = com.qmuiteam.qmui.Cdo.f19013case;
            if (interpolator != interpolator2) {
                this.f19172for = interpolator2;
                this.f19174if = new OverScroller(this.f19169case.getContext(), interpolator2);
            }
        }

        /* renamed from: case, reason: not valid java name */
        public void m23543case(CoordinatorLayout coordinatorLayout, View view, int i, int i2) {
            m23542new(coordinatorLayout, view);
            this.f19174if.startScroll(0, 0, 0, i, i2);
            m23546try();
        }

        /* renamed from: do, reason: not valid java name */
        public void m23544do(CoordinatorLayout coordinatorLayout, View view, int i) {
            m23542new(coordinatorLayout, view);
            this.f19174if.fling(0, 0, 0, i, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            m23546try();
        }

        /* renamed from: else, reason: not valid java name */
        public void m23545else() {
            View view = this.f19171else;
            if (view != null) {
                view.removeCallbacks(this);
            }
            this.f19174if.abortAnimation();
            this.f19171else = null;
            this.f19169case = null;
            m23540for();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f19176try = false;
            boolean z = true;
            this.f19175new = true;
            OverScroller overScroller = this.f19174if;
            if (overScroller.computeScrollOffset()) {
                int currY = overScroller.getCurrY();
                int i = currY - this.f19170do;
                this.f19170do = currY;
                CoordinatorLayout coordinatorLayout = this.f19169case;
                if (coordinatorLayout != null && this.f19171else != null) {
                    if (coordinatorLayout instanceof QMUIContinuousNestedScrollLayout) {
                        QMUIContinuousNestedScrollLayout qMUIContinuousNestedScrollLayout = (QMUIContinuousNestedScrollLayout) coordinatorLayout;
                        if ((i > 0 && qMUIContinuousNestedScrollLayout.getCurrentScroll() >= qMUIContinuousNestedScrollLayout.getScrollRange()) || (i < 0 && qMUIContinuousNestedScrollLayout.getCurrentScroll() <= 0)) {
                            z = false;
                        }
                    }
                    if (z) {
                        QMUIContinuousNestedTopAreaBehavior.this.m23537else(this.f19169case, this.f19171else, i);
                        m23546try();
                    } else {
                        this.f19174if.abortAnimation();
                    }
                }
            }
            this.f19175new = false;
            if (this.f19176try) {
                m23541if();
                return;
            }
            this.f19169case = null;
            this.f19171else = null;
            m23540for();
        }

        /* renamed from: try, reason: not valid java name */
        public void m23546try() {
            if (this.f19175new) {
                this.f19176try = true;
            } else {
                m23541if();
            }
        }
    }

    public QMUIContinuousNestedTopAreaBehavior(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private View m23532case(CoordinatorLayout coordinatorLayout) {
        for (int i = 0; i < coordinatorLayout.getChildCount(); i++) {
            View childAt = coordinatorLayout.getChildAt(i);
            if (childAt instanceof IQMUIContinuousNestedBottomView) {
                return childAt;
            }
        }
        return null;
    }

    private void ensureVelocityTracker() {
        if (this.f19159break == null) {
            this.f19159break = VelocityTracker.obtain();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m23536break() {
        this.f19166new.m23545else();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: else, reason: not valid java name */
    public void m23537else(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        int[] iArr = this.f19168try;
        iArr[0] = 0;
        iArr[1] = 0;
        onNestedPreScroll(coordinatorLayout, view, view, 0, i, iArr, 0);
        int iConsumeScroll = i - this.f19168try[1];
        if (view instanceof IQMUIContinuousNestedTopView) {
            iConsumeScroll = ((IQMUIContinuousNestedTopView) view).consumeScroll(iConsumeScroll);
        }
        int i2 = iConsumeScroll;
        onNestedScroll(coordinatorLayout, view, view, 0, i - i2, 0, i2, 0);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23538goto(Callback callback) {
        this.f19161catch = callback;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0085  */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f19167this < 0) {
            this.f19167this = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.f19160case) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f19166new.m23545else();
            this.f19162class = true;
            this.f19160case = false;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (coordinatorLayout.isPointInChildBounds(view, x, y)) {
                this.f19165goto = y;
                this.f19164else = motionEvent.getPointerId(0);
                ensureVelocityTracker();
            }
        } else if (actionMasked == 1) {
            this.f19162class = false;
            this.f19160case = false;
            this.f19164else = -1;
            VelocityTracker velocityTracker = this.f19159break;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f19159break = null;
            }
        } else if (actionMasked == 2) {
            int i = this.f19164else;
            if (i != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i)) != -1) {
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y2 - this.f19165goto) > this.f19167this) {
                    this.f19160case = true;
                    this.f19165goto = y2;
                    Callback callback = this.f19161catch;
                    if (callback != null) {
                        callback.onTopBehaviorTouchBegin();
                    }
                }
            }
        } else if (actionMasked != 3) {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                return (actionIndex == 0 || coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY()) || !coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(actionIndex), (int) motionEvent.getY(actionIndex))) ? false : true;
            }
        }
        VelocityTracker velocityTracker2 = this.f19159break;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return this.f19160case;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
        int i5 = view.getLayoutParams().height;
        int size = View.MeasureSpec.getSize(i3);
        if (i5 != -1) {
            coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE), i4);
            return true;
        }
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE), i4);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, int i, int i2, @NonNull int[] iArr, int i3) {
        int height;
        int height2;
        if (view2.getParent() != coordinatorLayout) {
            return;
        }
        if (view2 == view) {
            if (i2 < 0) {
                if (view.getTop() <= i2) {
                    setTopAndBottomOffset((view.getTop() - i2) - m23557if());
                    iArr[1] = iArr[1] + i2;
                    return;
                } else {
                    if (view.getTop() < 0) {
                        int top = view.getTop();
                        setTopAndBottomOffset(0 - m23557if());
                        iArr[1] = iArr[1] + top;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i2 <= 0 || !(view2 instanceof IQMUIContinuousNestedBottomView)) {
            return;
        }
        int contentHeight = ((IQMUIContinuousNestedBottomView) view2).getContentHeight();
        if (contentHeight != -1) {
            height = coordinatorLayout.getHeight() - contentHeight;
            height2 = view.getHeight();
        } else {
            height = coordinatorLayout.getHeight() - view.getHeight();
            height2 = view2.getHeight();
        }
        int i4 = height - height2;
        if (view.getTop() - i2 >= i4) {
            setTopAndBottomOffset((view.getTop() - i2) - m23557if());
            iArr[1] = iArr[1] + i2;
        } else if (view.getTop() > i4) {
            int top2 = view.getTop() - i4;
            setTopAndBottomOffset(i4);
            iArr[1] = iArr[1] + top2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, int i, int i2, int i3, int i4, int i5) {
        if (view2.getParent() != coordinatorLayout) {
            return;
        }
        boolean z = false;
        if (view2 != view) {
            if (i4 < 0) {
                if (view.getTop() <= i4) {
                    setTopAndBottomOffset((view.getTop() - i4) - m23557if());
                    return;
                }
                if (view.getTop() < 0) {
                    int top = view.getTop();
                    setTopAndBottomOffset(0 - m23557if());
                    if (i4 != Integer.MIN_VALUE) {
                        i2 = i4 - top;
                    }
                    i4 = i2;
                }
                if (view instanceof IQMUIContinuousNestedTopView) {
                    ((IQMUIContinuousNestedTopView) view).consumeScroll(i4);
                    return;
                }
                return;
            }
            return;
        }
        if (i4 > 0) {
            View viewM23532case = m23532case(coordinatorLayout);
            if (viewM23532case == 0 || viewM23532case.getVisibility() == 8) {
                int height = coordinatorLayout.getHeight();
                if (view2.getBottom() - height >= i4) {
                    setTopAndBottomOffset((view2.getTop() - i4) - m23557if());
                    return;
                } else {
                    if (view2.getBottom() - height > 0) {
                        setTopAndBottomOffset((view2.getTop() - (view2.getBottom() - height)) - m23557if());
                        return;
                    }
                    return;
                }
            }
            IQMUIContinuousNestedBottomView iQMUIContinuousNestedBottomView = (IQMUIContinuousNestedBottomView) viewM23532case;
            int contentHeight = iQMUIContinuousNestedBottomView.getContentHeight();
            int height2 = coordinatorLayout.getHeight();
            if (contentHeight != -1) {
                height2 = (coordinatorLayout.getHeight() + viewM23532case.getHeight()) - contentHeight;
            } else {
                z = true;
            }
            if (viewM23532case.getBottom() - height2 > i4) {
                setTopAndBottomOffset((view2.getTop() - i4) - m23557if());
                return;
            }
            if (viewM23532case.getBottom() - height2 > 0) {
                int bottom = viewM23532case.getBottom() - height2;
                setTopAndBottomOffset((view2.getTop() - bottom) - m23557if());
                if (i4 != Integer.MAX_VALUE) {
                    i4 -= bottom;
                }
            }
            if (z) {
                iQMUIContinuousNestedBottomView.consumeScroll(i4);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, @NonNull View view3, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        if (this.f19167this < 0) {
            this.f19167this = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                this.f19162class = false;
                Callback callback = this.f19161catch;
                if (callback != null) {
                    callback.onTopBehaviorTouchEnd();
                }
                VelocityTracker velocityTracker = this.f19159break;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.f19159break.computeCurrentVelocity(1000);
                    this.f19166new.m23544do(coordinatorLayout, view, -((int) (this.f19159break.getYVelocity(this.f19164else) + 0.5f)));
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f19164else);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y = (int) motionEvent.getY(iFindPointerIndex);
                int i = this.f19165goto - y;
                if (!this.f19160case && Math.abs(i) > this.f19167this) {
                    this.f19160case = true;
                    Callback callback2 = this.f19161catch;
                    if (callback2 != null) {
                        callback2.onTopBehaviorTouchBegin();
                    }
                    i = i > 0 ? i - this.f19167this : i + this.f19167this;
                }
                if (this.f19160case) {
                    this.f19165goto = y;
                    m23537else(coordinatorLayout, view, i);
                }
            } else if (actionMasked == 3) {
            }
            if (this.f19162class) {
                this.f19162class = false;
                Callback callback3 = this.f19161catch;
                if (callback3 != null) {
                    callback3.onTopBehaviorTouchEnd();
                }
            }
            this.f19160case = false;
            this.f19164else = -1;
            VelocityTracker velocityTracker2 = this.f19159break;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f19159break = null;
            }
        } else {
            this.f19166new.m23545else();
            this.f19162class = true;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            if (!coordinatorLayout.isPointInChildBounds(view, x, y2)) {
                return false;
            }
            this.f19165goto = y2;
            this.f19164else = motionEvent.getPointerId(0);
            ensureVelocityTracker();
        }
        VelocityTracker velocityTracker3 = this.f19159break;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    @Override // com.qmuiteam.qmui.nestedScroll.QMUIViewOffsetBehavior
    public boolean setTopAndBottomOffset(int i) {
        boolean topAndBottomOffset = super.setTopAndBottomOffset(i);
        Callback callback = this.f19161catch;
        if (callback != null) {
            callback.onTopAreaOffset(i);
        }
        return topAndBottomOffset;
    }

    /* renamed from: this, reason: not valid java name */
    public void m23539this(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2) {
        this.f19166new.m23543case(coordinatorLayout, view, i, i2);
    }

    public QMUIContinuousNestedTopAreaBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19168try = new int[2];
        this.f19164else = -1;
        this.f19167this = -1;
        this.f19162class = false;
        this.f19163const = false;
        this.f19166new = new Cdo(context);
    }
}
