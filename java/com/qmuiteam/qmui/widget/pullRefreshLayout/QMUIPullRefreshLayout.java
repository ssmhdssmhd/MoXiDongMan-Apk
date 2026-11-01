package com.qmuiteam.qmui.widget.pullRefreshLayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v4.ih1;
import android.support.v4.sh1;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Scroller;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.CircularProgressDrawable;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.nestedScroll.QMUIContinuousNestedScrollLayout;
import com.qmuiteam.qmui.widget.section.QMUIStickySectionLayout;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public class QMUIPullRefreshLayout extends ViewGroup implements NestedScrollingParent {
    private static final String a = "QMUIPullRefreshLayout";
    private static final int b = -1;
    private static final int c = 1;
    private static final int d = 2;
    private static final int e = 4;
    private static final int f = 8;

    /* renamed from: abstract, reason: not valid java name */
    private float f19881abstract;

    /* renamed from: break, reason: not valid java name */
    private OnChildScrollUpCallback f19882break;

    /* renamed from: case, reason: not valid java name */
    private int f19883case;

    /* renamed from: catch, reason: not valid java name */
    private int f19884catch;

    /* renamed from: class, reason: not valid java name */
    private int f19885class;

    /* renamed from: const, reason: not valid java name */
    private int f19886const;

    /* renamed from: continue, reason: not valid java name */
    private RefreshOffsetCalculator f19887continue;

    /* renamed from: default, reason: not valid java name */
    private boolean f19888default;

    /* renamed from: do, reason: not valid java name */
    private final NestedScrollingParentHelper f19889do;

    /* renamed from: else, reason: not valid java name */
    private int f19890else;

    /* renamed from: extends, reason: not valid java name */
    private float f19891extends;

    /* renamed from: final, reason: not valid java name */
    private boolean f19892final;

    /* renamed from: finally, reason: not valid java name */
    private float f19893finally;

    /* renamed from: for, reason: not valid java name */
    private View f19894for;

    /* renamed from: goto, reason: not valid java name */
    private int f19895goto;

    /* renamed from: if, reason: not valid java name */
    public boolean f19896if;

    /* renamed from: implements, reason: not valid java name */
    private boolean f19897implements;

    /* renamed from: import, reason: not valid java name */
    private int f19898import;

    /* renamed from: instanceof, reason: not valid java name */
    private Runnable f19899instanceof;

    /* renamed from: interface, reason: not valid java name */
    private float f19900interface;

    /* renamed from: native, reason: not valid java name */
    private int f19901native;

    /* renamed from: new, reason: not valid java name */
    private IRefreshView f19902new;

    /* renamed from: package, reason: not valid java name */
    private float f19903package;

    /* renamed from: private, reason: not valid java name */
    private float f19904private;

    /* renamed from: protected, reason: not valid java name */
    private Scroller f19905protected;

    /* renamed from: public, reason: not valid java name */
    private int f19906public;

    /* renamed from: return, reason: not valid java name */
    private boolean f19907return;

    /* renamed from: static, reason: not valid java name */
    private boolean f19908static;

    /* renamed from: strictfp, reason: not valid java name */
    private VelocityTracker f19909strictfp;

    /* renamed from: super, reason: not valid java name */
    private boolean f19910super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f19911switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f19912synchronized;

    /* renamed from: this, reason: not valid java name */
    private OnPullListener f19913this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f19914throw;

    /* renamed from: throws, reason: not valid java name */
    private int f19915throws;

    /* renamed from: transient, reason: not valid java name */
    private int f19916transient;

    /* renamed from: try, reason: not valid java name */
    private View f19917try;

    /* renamed from: volatile, reason: not valid java name */
    private float f19918volatile;

    /* renamed from: while, reason: not valid java name */
    private int f19919while;

    public interface IRefreshView {
        void doRefresh();

        void onPull(int i, int i2, int i3);

        void stop();
    }

    public interface OnChildScrollUpCallback {
        boolean canChildScrollUp(QMUIPullRefreshLayout qMUIPullRefreshLayout, @Nullable View view);
    }

    public interface OnPullListener {
        void onMoveRefreshView(int i);

        void onMoveTarget(int i);

        void onRefresh();
    }

    public interface RefreshOffsetCalculator {
        int calculateRefreshOffset(int i, int i2, int i3, int i4, int i5, int i6);
    }

    public static class RefreshView extends AppCompatImageView implements IRefreshView {

        /* renamed from: case, reason: not valid java name */
        public static final int f19920case = 40;

        /* renamed from: else, reason: not valid java name */
        public static final int f19921else = 56;

        /* renamed from: for, reason: not valid java name */
        private static final int f19922for = 255;

        /* renamed from: new, reason: not valid java name */
        private static final float f19923new = 0.85f;

        /* renamed from: try, reason: not valid java name */
        private static final float f19924try = 0.4f;

        /* renamed from: do, reason: not valid java name */
        private CircularProgressDrawable f19925do;

        /* renamed from: if, reason: not valid java name */
        private int f19926if;

        public RefreshView(Context context) {
            super(context);
            this.f19925do = new CircularProgressDrawable(context);
            setColorSchemeColors(sh1.m7404if(context, R.attr.qmui_config_color_blue));
            this.f19925do.setStyle(0);
            this.f19925do.setAlpha(255);
            this.f19925do.setArrowScale(0.8f);
            setImageDrawable(this.f19925do);
            this.f19926if = (int) (getResources().getDisplayMetrics().density * 40.0f);
        }

        @Override // com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout.IRefreshView
        public void doRefresh() {
            this.f19925do.start();
        }

        @Override // android.widget.ImageView, android.view.View
        public void onMeasure(int i, int i2) {
            int i3 = this.f19926if;
            setMeasuredDimension(i3, i3);
        }

        @Override // com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout.IRefreshView
        public void onPull(int i, int i2, int i3) {
            if (this.f19925do.isRunning()) {
                return;
            }
            float f = i;
            float f2 = i2;
            float f3 = (f19923new * f) / f2;
            float f4 = (f * 0.4f) / f2;
            if (i3 > 0) {
                f4 += (i3 * 0.4f) / f2;
            }
            this.f19925do.setArrowEnabled(true);
            this.f19925do.setStartEndTrim(0.0f, f3);
            this.f19925do.setProgressRotation(f4);
        }

        public void setColorSchemeColors(@ColorInt int... iArr) {
            this.f19925do.setColorSchemeColors(iArr);
        }

        public void setColorSchemeResources(@ColorRes int... iArr) {
            Context context = getContext();
            int[] iArr2 = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                iArr2[i] = ContextCompat.getColor(context, iArr[i]);
            }
            setColorSchemeColors(iArr2);
        }

        public void setSize(int i) {
            if (i == 0 || i == 1) {
                DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                if (i == 0) {
                    this.f19926if = (int) (displayMetrics.density * 56.0f);
                } else {
                    this.f19926if = (int) (displayMetrics.density * 40.0f);
                }
                setImageDrawable(null);
                this.f19925do.setStyle(i);
                setImageDrawable(this.f19925do);
            }
        }

        @Override // com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout.IRefreshView
        public void stop() {
            this.f19925do.stop();
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIPullRefreshLayout qMUIPullRefreshLayout = QMUIPullRefreshLayout.this;
            qMUIPullRefreshLayout.setTargetViewToTop(qMUIPullRefreshLayout.f19894for);
            QMUIPullRefreshLayout.this.m24148switch();
            QMUIPullRefreshLayout.this.f19916transient = 2;
            QMUIPullRefreshLayout.this.invalidate();
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f19928do;

        public Cif(long j) {
            this.f19928do = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            QMUIPullRefreshLayout.this.setToRefreshDirectly(this.f19928do);
        }
    }

    public QMUIPullRefreshLayout(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m24120break() {
        Runnable runnable;
        if (this.f19894for == null) {
            int i = 0;
            while (true) {
                if (i >= getChildCount()) {
                    break;
                }
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f19917try)) {
                    m24140default(childAt);
                    this.f19894for = childAt;
                    break;
                }
                i++;
            }
        }
        if (this.f19894for == null || (runnable = this.f19899instanceof) == null) {
            return;
        }
        this.f19899instanceof = null;
        runnable.run();
    }

    /* renamed from: catch, reason: not valid java name */
    private void m24121catch(int i) {
        m24124final("finishPull: vy = " + i + " ; mTargetCurrentOffset = " + this.f19901native + " ; mTargetRefreshOffset = " + this.f19906public + " ; mTargetInitOffset = " + this.f19898import + " ; mScroller.isFinished() = " + this.f19905protected.isFinished());
        int i2 = i / 1000;
        m24144public(i2, this.f19884catch, this.f19885class, this.f19917try.getHeight(), this.f19901native, this.f19898import, this.f19906public);
        int i3 = this.f19901native;
        int i4 = this.f19906public;
        if (i3 >= i4) {
            if (i2 > 0) {
                this.f19916transient = 6;
                this.f19905protected.fling(0, i3, 0, i2, 0, 0, this.f19898import, Integer.MAX_VALUE);
                invalidate();
                return;
            }
            if (i2 >= 0) {
                if (i3 > i4) {
                    this.f19905protected.startScroll(0, i3, 0, i4 - i3);
                }
                this.f19916transient = 4;
                invalidate();
                return;
            }
            this.f19905protected.fling(0, i3, 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (this.f19905protected.getFinalY() < this.f19898import) {
                this.f19916transient = 8;
            } else if (this.f19905protected.getFinalY() < this.f19906public) {
                int i5 = this.f19898import;
                int i6 = this.f19901native;
                this.f19905protected.startScroll(0, i6, 0, i5 - i6);
            } else {
                int finalY = this.f19905protected.getFinalY();
                int i7 = this.f19906public;
                if (finalY == i7) {
                    this.f19916transient = 4;
                } else {
                    Scroller scroller = this.f19905protected;
                    int i8 = this.f19901native;
                    scroller.startScroll(0, i8, 0, i7 - i8);
                    this.f19916transient = 4;
                }
            }
            invalidate();
            return;
        }
        if (i2 > 0) {
            this.f19905protected.fling(0, i3, 0, i2, 0, 0, this.f19898import, Integer.MAX_VALUE);
            if (this.f19905protected.getFinalY() > this.f19906public) {
                this.f19916transient = 6;
            } else if (this.f19919while < 0 || this.f19905protected.getFinalY() <= this.f19919while) {
                this.f19916transient = 1;
            } else {
                Scroller scroller2 = this.f19905protected;
                int i9 = this.f19901native;
                scroller2.startScroll(0, i9, 0, this.f19906public - i9);
                this.f19916transient = 4;
            }
            invalidate();
            return;
        }
        if (i2 < 0) {
            this.f19916transient = 0;
            this.f19905protected.fling(0, i3, 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
            int finalY2 = this.f19905protected.getFinalY();
            int i10 = this.f19898import;
            if (finalY2 < i10) {
                this.f19916transient = 8;
            } else {
                Scroller scroller3 = this.f19905protected;
                int i11 = this.f19901native;
                scroller3.startScroll(0, i11, 0, i10 - i11);
                this.f19916transient = 0;
            }
            invalidate();
            return;
        }
        int i12 = this.f19898import;
        if (i3 == i12) {
            return;
        }
        int i13 = this.f19919while;
        if (i13 < 0 || i3 < i13) {
            this.f19905protected.startScroll(0, i3, 0, i12 - i3);
            this.f19916transient = 0;
        } else {
            this.f19905protected.startScroll(0, i3, 0, i4 - i3);
            this.f19916transient = 4;
        }
        invalidate();
    }

    /* renamed from: const, reason: not valid java name */
    private boolean m24122const(int i) {
        return (this.f19916transient & i) == i;
    }

    /* renamed from: final, reason: not valid java name */
    private void m24124final(String str) {
    }

    /* renamed from: finally, reason: not valid java name */
    private void m24125finally() {
        VelocityTracker velocityTracker = this.f19909strictfp;
        if (velocityTracker != null) {
            velocityTracker.clear();
            this.f19909strictfp.recycle();
            this.f19909strictfp = null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m24126for(MotionEvent motionEvent) {
        if (this.f19909strictfp == null) {
            this.f19909strictfp = VelocityTracker.obtain();
        }
        this.f19909strictfp.addMovement(motionEvent);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m24127goto(View view) {
        if (view == null) {
            return false;
        }
        if (view instanceof QMUIContinuousNestedScrollLayout) {
            return ((QMUIContinuousNestedScrollLayout) view).getCurrentScroll() > 0;
        }
        if (view instanceof QMUIStickySectionLayout) {
            return m24127goto(((QMUIStickySectionLayout) view).getRecyclerView());
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return ViewCompat.canScrollVertically(view, -1);
        }
        if (!(view instanceof AbsListView)) {
            return ViewCompat.canScrollVertically(view, -1) || view.getScrollY() > 0;
        }
        AbsListView absListView = (AbsListView) view;
        if (absListView.getChildCount() > 0) {
            return absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop();
        }
        return false;
    }

    /* renamed from: import, reason: not valid java name */
    private int m24129import(int i, boolean z) {
        return m24130native(i, z, false);
    }

    /* renamed from: native, reason: not valid java name */
    private int m24130native(int i, boolean z, boolean z2) {
        int iM24150try = m24150try(i, this.f19898import, this.f19906public, this.f19908static);
        int i2 = this.f19901native;
        if (iM24150try == i2 && !z2) {
            return 0;
        }
        int i3 = iM24150try - i2;
        ViewCompat.offsetTopAndBottom(this.f19894for, i3);
        this.f19901native = iM24150try;
        int i4 = this.f19906public;
        int i5 = this.f19898import;
        int i6 = i4 - i5;
        if (z) {
            this.f19902new.onPull(Math.min(iM24150try - i5, i6), i6, this.f19901native - this.f19906public);
        }
        m24146static(this.f19901native);
        OnPullListener onPullListener = this.f19913this;
        if (onPullListener != null) {
            onPullListener.onMoveTarget(this.f19901native);
        }
        if (this.f19887continue == null) {
            this.f19887continue = new com.qmuiteam.qmui.widget.pullRefreshLayout.Cif();
        }
        int iCalculateRefreshOffset = this.f19887continue.calculateRefreshOffset(this.f19884catch, this.f19885class, this.f19917try.getHeight(), this.f19901native, this.f19898import, this.f19906public);
        int i7 = this.f19886const;
        if (iCalculateRefreshOffset != i7) {
            ViewCompat.offsetTopAndBottom(this.f19917try, iCalculateRefreshOffset - i7);
            this.f19886const = iCalculateRefreshOffset;
            m24145return(iCalculateRefreshOffset);
            OnPullListener onPullListener2 = this.f19913this;
            if (onPullListener2 != null) {
                onPullListener2.onMoveRefreshView(this.f19886const);
            }
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    private void m24131new() {
        if (this.f19917try == null) {
            this.f19917try = m24141else();
        }
        View view = this.f19917try;
        if (!(view instanceof IRefreshView)) {
            throw new RuntimeException("refreshView must be a instance of IRefreshView");
        }
        this.f19902new = (IRefreshView) view;
        if (view.getLayoutParams() == null) {
            this.f19917try.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        }
        addView(this.f19917try);
    }

    /* renamed from: package, reason: not valid java name */
    private void m24132package(int i) {
        this.f19916transient = (i ^ (-1)) & this.f19916transient;
    }

    /* renamed from: this, reason: not valid java name */
    private void m24133this() {
        if (m24122const(8)) {
            m24132package(8);
            if (this.f19905protected.getCurrVelocity() > this.f19900interface) {
                m24124final("deliver velocity: " + this.f19905protected.getCurrVelocity());
                View view = this.f19894for;
                if (view instanceof RecyclerView) {
                    ((RecyclerView) view).fling(0, (int) this.f19905protected.getCurrVelocity());
                } else {
                    if (!(view instanceof AbsListView) || Build.VERSION.SDK_INT < 21) {
                        return;
                    }
                    ((AbsListView) view).fling((int) this.f19905protected.getCurrVelocity());
                }
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private void m24134throws(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (motionEvent.getPointerId(actionIndex) == this.f19915throws) {
            this.f19915throws = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private int m24135while(float f2, boolean z) {
        return m24129import((int) (this.f19901native + f2), z);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m24136abstract() {
        setToRefreshDirectly(0L);
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m24137case() {
        OnChildScrollUpCallback onChildScrollUpCallback = this.f19882break;
        return onChildScrollUpCallback != null ? onChildScrollUpCallback.canChildScrollUp(this, this.f19894for) : m24127goto(this.f19894for);
    }

    /* renamed from: class, reason: not valid java name */
    public void m24138class() {
        this.f19896if = false;
        this.f19902new.stop();
        this.f19916transient = 1;
        this.f19905protected.forceFinished(true);
        invalidate();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f19905protected.computeScrollOffset()) {
            int currY = this.f19905protected.getCurrY();
            m24129import(currY, false);
            if (currY <= 0 && m24122const(8)) {
                m24133this();
                this.f19905protected.forceFinished(true);
            }
            invalidate();
            return;
        }
        if (m24122const(1)) {
            m24132package(1);
            int i = this.f19901native;
            int i2 = this.f19898import;
            if (i != i2) {
                this.f19905protected.startScroll(0, i, 0, i2 - i);
            }
            invalidate();
            return;
        }
        if (!m24122const(2)) {
            if (!m24122const(4)) {
                m24133this();
                return;
            }
            m24132package(4);
            m24148switch();
            m24130native(this.f19906public, false, true);
            return;
        }
        m24132package(2);
        int i3 = this.f19901native;
        int i4 = this.f19906public;
        if (i3 != i4) {
            this.f19905protected.startScroll(0, i3, 0, i4 - i3);
        } else {
            m24130native(i4, false, true);
        }
        invalidate();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m24139continue(float f2, float f3) {
        float f4 = f2 - this.f19893finally;
        float f5 = f3 - this.f19891extends;
        if (m24149throw(f4, f5)) {
            int i = this.f19895goto;
            if ((f5 > i || (f5 < (-i) && this.f19901native > this.f19898import)) && !this.f19888default) {
                float f6 = this.f19891extends + i;
                this.f19903package = f6;
                this.f19904private = f6;
                this.f19888default = true;
            }
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m24140default(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 0) {
            if (!this.f19896if && (this.f19916transient & 4) == 0) {
                z = false;
            }
            this.f19897implements = z;
        } else if (this.f19897implements) {
            if (action != 2) {
                this.f19897implements = false;
            } else if (!this.f19896if && this.f19905protected.isFinished() && this.f19916transient == 0) {
                motionEvent.offsetLocation(0.0f, (-this.f19890else) - 1);
                motionEvent.setAction(0);
                super.dispatchTouchEvent(motionEvent);
                this.f19897implements = false;
                motionEvent.setAction(action);
                motionEvent.offsetLocation(0.0f, this.f19890else + 1);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: else, reason: not valid java name */
    public View m24141else() {
        return new RefreshView(getContext());
    }

    /* renamed from: extends, reason: not valid java name */
    public void m24142extends() {
        this.f19912synchronized = true;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f19883case;
        return i3 < 0 ? i2 : i2 == i3 ? i - 1 : i2 > i3 ? i2 - 1 : i2;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f19889do.getNestedScrollAxes();
    }

    public int getRefreshEndOffset() {
        return this.f19885class;
    }

    public int getRefreshInitOffset() {
        return this.f19884catch;
    }

    public float getScrollerFriction() {
        return ViewConfiguration.getScrollFriction();
    }

    public int getTargetInitOffset() {
        return this.f19898import;
    }

    public int getTargetRefreshOffset() {
        return this.f19906public;
    }

    public View getTargetView() {
        return this.f19894for;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m24143private();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0041  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m24120break();
        int action = motionEvent.getAction();
        if (!isEnabled() || m24137case() || this.f19911switch) {
            return false;
        }
        if (action == 0) {
            this.f19888default = false;
            int pointerId = motionEvent.getPointerId(0);
            this.f19915throws = pointerId;
            int iFindPointerIndex = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex < 0) {
                return false;
            }
            this.f19893finally = motionEvent.getX(iFindPointerIndex);
            this.f19891extends = motionEvent.getY(iFindPointerIndex);
        } else if (action == 1) {
            this.f19888default = false;
            this.f19915throws = -1;
        } else if (action == 2) {
            int iFindPointerIndex2 = motionEvent.findPointerIndex(this.f19915throws);
            if (iFindPointerIndex2 < 0) {
                return false;
            }
            m24139continue(motionEvent.getX(iFindPointerIndex2), motionEvent.getY(iFindPointerIndex2));
        } else if (action != 3) {
            if (action == 6) {
                m24134throws(motionEvent);
            }
        }
        return this.f19888default;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        m24120break();
        if (this.f19894for == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingLeft2 = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int paddingTop2 = (measuredHeight - getPaddingTop()) - getPaddingBottom();
        View view = this.f19894for;
        int i5 = this.f19901native;
        view.layout(paddingLeft, paddingTop + i5, paddingLeft2 + paddingLeft, paddingTop + paddingTop2 + i5);
        int measuredWidth2 = this.f19917try.getMeasuredWidth();
        int measuredHeight2 = this.f19917try.getMeasuredHeight();
        int i6 = measuredWidth / 2;
        int i7 = measuredWidth2 / 2;
        int i8 = this.f19886const;
        this.f19917try.layout(i6 - i7, i8, i6 + i7, measuredHeight2 + i8);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        m24120break();
        if (this.f19894for == null) {
            return;
        }
        this.f19894for.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        measureChild(this.f19917try, i, i2);
        this.f19883case = -1;
        int i4 = 0;
        while (true) {
            if (i4 >= getChildCount()) {
                break;
            }
            if (getChildAt(i4) == this.f19917try) {
                this.f19883case = i4;
                break;
            }
            i4++;
        }
        int measuredHeight = this.f19917try.getMeasuredHeight();
        if (this.f19892final && this.f19884catch != (i3 = -measuredHeight)) {
            this.f19884catch = i3;
            this.f19886const = i3;
        }
        if (this.f19914throw) {
            this.f19906public = measuredHeight;
        }
        if (this.f19910super) {
            this.f19885class = (this.f19906public - measuredHeight) / 2;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        try {
            return super.onNestedFling(view, f2, f3, z);
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        m24124final("onNestedPreFling: mTargetCurrentOffset = " + this.f19901native + " ; velocityX = " + f2 + " ; velocityY = " + f3);
        if (this.f19901native <= this.f19898import) {
            return false;
        }
        this.f19911switch = false;
        this.f19888default = false;
        if (this.f19897implements) {
            return true;
        }
        m24121catch((int) (-f3));
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        m24124final("onNestedPreScroll: dx = " + i + " ; dy = " + i2);
        int i3 = this.f19901native;
        int i4 = this.f19898import;
        int i5 = i3 - i4;
        if (i2 <= 0 || i5 <= 0) {
            return;
        }
        if (i2 >= i5) {
            iArr[1] = i5;
            m24129import(i4, true);
        } else {
            iArr[1] = i2;
            m24135while(-i2, true);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m24124final("onNestedScroll: dxConsumed = " + i + " ; dyConsumed = " + i2 + " ; dxUnconsumed = " + i3 + " ; dyUnconsumed = " + i4);
        if (i4 >= 0 || m24137case() || !this.f19905protected.isFinished() || this.f19916transient != 0) {
            return;
        }
        m24135while(-i4, true);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        m24124final("onNestedScrollAccepted: axes = " + i);
        this.f19905protected.abortAnimation();
        this.f19889do.onNestedScrollAccepted(view, view2, i);
        this.f19911switch = true;
        this.f19888default = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        m24124final("onStartNestedScroll: nestedScrollAxes = " + i);
        return (this.f19907return || !isEnabled() || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        m24124final("onStopNestedScroll: mNestedScrollInProgress = " + this.f19911switch);
        this.f19889do.onStopNestedScroll(view);
        if (this.f19911switch) {
            this.f19911switch = false;
            this.f19888default = false;
            if (this.f19897implements) {
                return;
            }
            m24121catch(0);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (!isEnabled() || m24137case() || this.f19911switch) {
            StringBuilder sb = new StringBuilder();
            sb.append("fast end onTouchEvent: isEnabled = ");
            sb.append(isEnabled());
            sb.append("; canChildScrollUp = ");
            sb.append(m24137case());
            sb.append(" ; mNestedScrollInProgress = ");
            sb.append(this.f19911switch);
            return false;
        }
        m24126for(motionEvent);
        if (action != 0) {
            if (action == 1) {
                if (motionEvent.findPointerIndex(this.f19915throws) < 0) {
                    return false;
                }
                if (this.f19888default) {
                    this.f19888default = false;
                    this.f19909strictfp.computeCurrentVelocity(1000, this.f19918volatile);
                    float yVelocity = this.f19909strictfp.getYVelocity(this.f19915throws);
                    m24121catch((int) (Math.abs(yVelocity) >= this.f19900interface ? yVelocity : 0.0f));
                }
                this.f19915throws = -1;
                m24125finally();
                return false;
            }
            if (action == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f19915throws);
                if (iFindPointerIndex < 0) {
                    return false;
                }
                float x = motionEvent.getX(iFindPointerIndex);
                float y = motionEvent.getY(iFindPointerIndex);
                m24139continue(x, y);
                if (this.f19888default) {
                    float f2 = (y - this.f19904private) * this.f19881abstract;
                    if (f2 >= 0.0f) {
                        m24135while(f2, true);
                    } else {
                        float fAbs = Math.abs(f2) - Math.abs(m24135while(f2, true));
                        if (fAbs > 0.0f) {
                            motionEvent.setAction(0);
                            float f3 = this.f19890else + 1;
                            if (fAbs <= f3) {
                                fAbs = f3;
                            }
                            motionEvent.offsetLocation(0.0f, fAbs);
                            super.dispatchTouchEvent(motionEvent);
                            motionEvent.setAction(action);
                            motionEvent.offsetLocation(0.0f, -fAbs);
                            super.dispatchTouchEvent(motionEvent);
                        }
                    }
                    this.f19904private = y;
                }
            } else {
                if (action == 3) {
                    m24125finally();
                    return false;
                }
                if (action == 5) {
                    int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                    if (actionIndex < 0) {
                        return false;
                    }
                    this.f19915throws = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m24134throws(motionEvent);
                }
            }
        } else {
            this.f19888default = false;
            this.f19916transient = 0;
            if (!this.f19905protected.isFinished()) {
                this.f19905protected.abortAnimation();
            }
            this.f19915throws = motionEvent.getPointerId(0);
        }
        return true;
    }

    /* renamed from: private, reason: not valid java name */
    public void m24143private() {
        m24129import(this.f19898import, false);
        this.f19902new.stop();
        this.f19896if = false;
        this.f19905protected.forceFinished(true);
        this.f19916transient = 0;
    }

    /* renamed from: public, reason: not valid java name */
    public void m24144public(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (this.f19912synchronized) {
            super.requestDisallowInterceptTouchEvent(z);
            this.f19912synchronized = false;
        }
        if (Build.VERSION.SDK_INT >= 21 || !(this.f19894for instanceof AbsListView)) {
            View view = this.f19894for;
            if (view == null || ViewCompat.isNestedScrollingEnabled(view)) {
                super.requestDisallowInterceptTouchEvent(z);
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public void m24145return(int i) {
    }

    public void setAutoScrollToRefreshMinOffset(int i) {
        this.f19919while = i;
    }

    public void setChildScrollUpCallback(OnChildScrollUpCallback onChildScrollUpCallback) {
        this.f19882break = onChildScrollUpCallback;
    }

    public void setDisableNestScrollImpl(boolean z) {
        this.f19907return = z;
    }

    public void setDragRate(float f2) {
        this.f19907return = true;
        this.f19881abstract = f2;
    }

    public void setEnableOverPull(boolean z) {
        this.f19908static = z;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        m24143private();
        invalidate();
    }

    public void setOnPullListener(OnPullListener onPullListener) {
        this.f19913this = onPullListener;
    }

    public void setRefreshOffsetCalculator(RefreshOffsetCalculator refreshOffsetCalculator) {
        this.f19887continue = refreshOffsetCalculator;
    }

    public void setTargetRefreshOffset(int i) {
        this.f19914throw = false;
        this.f19906public = i;
    }

    public void setTargetViewToTop(View view) {
        if (view instanceof RecyclerView) {
            ((RecyclerView) view).scrollToPosition(0);
            return;
        }
        if (!(view instanceof AbsListView)) {
            view.scrollTo(0, 0);
            return;
        }
        AbsListView absListView = (AbsListView) view;
        if (Build.VERSION.SDK_INT >= 21) {
            absListView.setSelectionFromTop(0, 0);
        } else {
            absListView.setSelection(0);
        }
    }

    public void setToRefreshDirectly(long j) {
        if (this.f19894for != null) {
            postDelayed(new Cdo(), j);
        } else {
            this.f19899instanceof = new Cif(j);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m24146static(int i) {
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m24147super() {
        return this.f19888default;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m24148switch() {
        if (this.f19896if) {
            return;
        }
        this.f19896if = true;
        this.f19902new.doRefresh();
        OnPullListener onPullListener = this.f19913this;
        if (onPullListener != null) {
            onPullListener.onRefresh();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m24149throw(float f2, float f3) {
        return Math.abs(f3) > Math.abs(f2);
    }

    /* renamed from: try, reason: not valid java name */
    public int m24150try(int i, int i2, int i3, boolean z) {
        int iMax = Math.max(i, i2);
        return !z ? Math.min(iMax, i3) : iMax;
    }

    public QMUIPullRefreshLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUIPullRefreshLayoutStyle);
    }

    public QMUIPullRefreshLayout(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super(context, attributeSet, i);
        this.f19896if = false;
        this.f19883case = -1;
        boolean z = true;
        this.f19892final = true;
        this.f19910super = true;
        this.f19914throw = false;
        this.f19919while = -1;
        this.f19907return = false;
        this.f19908static = true;
        this.f19915throws = -1;
        this.f19881abstract = 0.65f;
        this.f19916transient = 0;
        this.f19897implements = false;
        this.f19899instanceof = null;
        this.f19912synchronized = false;
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f19918volatile = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f19900interface = viewConfiguration.getScaledMinimumFlingVelocity();
        int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.f19890else = scaledTouchSlop;
        this.f19895goto = ih1.m3453protected(context, scaledTouchSlop);
        Scroller scroller = new Scroller(getContext());
        this.f19905protected = scroller;
        scroller.setFriction(getScrollerFriction());
        m24131new();
        ViewCompat.setChildrenDrawingOrderEnabled(this, true);
        this.f19889do = new NestedScrollingParentHelper(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIPullRefreshLayout, i, 0);
        try {
            this.f19884catch = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIPullRefreshLayout_qmui_refresh_init_offset, Integer.MIN_VALUE);
            this.f19885class = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIPullRefreshLayout_qmui_refresh_end_offset, Integer.MIN_VALUE);
            this.f19898import = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIPullRefreshLayout_qmui_target_init_offset, 0);
            this.f19906public = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIPullRefreshLayout_qmui_target_refresh_offset, ih1.m3450new(getContext(), 72));
            this.f19892final = this.f19884catch == Integer.MIN_VALUE || typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIPullRefreshLayout_qmui_auto_calculate_refresh_init_offset, false);
            if (this.f19885class != Integer.MIN_VALUE && !typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIPullRefreshLayout_qmui_auto_calculate_refresh_end_offset, false)) {
                z = false;
            }
            this.f19910super = z;
            this.f19914throw = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIPullRefreshLayout_qmui_equal_target_refresh_offset_to_refresh_view_height, false);
            typedArrayObtainStyledAttributes.recycle();
            this.f19886const = this.f19884catch;
            this.f19901native = this.f19898import;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
