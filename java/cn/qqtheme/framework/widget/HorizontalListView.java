package cn.qqtheme.framework.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class HorizontalListView extends AdapterView<ListAdapter> {

    /* renamed from: break, reason: not valid java name */
    private Queue<View> f9219break;

    /* renamed from: case, reason: not valid java name */
    private int f9220case;

    /* renamed from: catch, reason: not valid java name */
    private AdapterView.OnItemSelectedListener f9221catch;

    /* renamed from: class, reason: not valid java name */
    private AdapterView.OnItemClickListener f9222class;

    /* renamed from: const, reason: not valid java name */
    private AdapterView.OnItemLongClickListener f9223const;

    /* renamed from: do, reason: not valid java name */
    public ListAdapter f9224do;

    /* renamed from: else, reason: not valid java name */
    private int f9225else;

    /* renamed from: final, reason: not valid java name */
    private boolean f9226final;

    /* renamed from: for, reason: not valid java name */
    private int f9227for;

    /* renamed from: goto, reason: not valid java name */
    public Scroller f9228goto;

    /* renamed from: if, reason: not valid java name */
    private int f9229if;

    /* renamed from: new, reason: not valid java name */
    public int f9230new;

    /* renamed from: super, reason: not valid java name */
    private DataSetObserver f9231super;

    /* renamed from: this, reason: not valid java name */
    private GestureDetector f9232this;

    /* renamed from: throw, reason: not valid java name */
    private GestureDetector.OnGestureListener f9233throw;

    /* renamed from: try, reason: not valid java name */
    public int f9234try;

    /* renamed from: cn.qqtheme.framework.widget.HorizontalListView$do, reason: invalid class name */
    public class Cdo extends DataSetObserver {
        public Cdo() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            synchronized (HorizontalListView.this) {
                HorizontalListView.this.f9226final = true;
            }
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            HorizontalListView.this.m11021throw();
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }
    }

    /* renamed from: cn.qqtheme.framework.widget.HorizontalListView$for, reason: invalid class name */
    public class Cfor extends GestureDetector.SimpleOnGestureListener {
        public Cfor() {
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m11026do(MotionEvent motionEvent, View view) {
            Rect rect = new Rect();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i = iArr[0];
            int width = view.getWidth() + i;
            int i2 = iArr[1];
            rect.set(i, i2, width, view.getHeight() + i2);
            return rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return HorizontalListView.this.m11023class(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return HorizontalListView.this.m11024const(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            int childCount = HorizontalListView.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = HorizontalListView.this.getChildAt(i);
                if (m11026do(motionEvent, childAt)) {
                    if (HorizontalListView.this.f9223const != null) {
                        AdapterView.OnItemLongClickListener onItemLongClickListener = HorizontalListView.this.f9223const;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i2 = horizontalListView.f9229if + 1 + i;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemLongClickListener.onItemLongClick(horizontalListView, childAt, i2, horizontalListView2.f9224do.getItemId(horizontalListView2.f9229if + 1 + i));
                        return;
                    }
                    return;
                }
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            HorizontalListView horizontalListView;
            synchronized (HorizontalListView.this) {
                horizontalListView = HorizontalListView.this;
                horizontalListView.f9234try += (int) f;
            }
            horizontalListView.requestLayout();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            int i = 0;
            while (true) {
                if (i >= HorizontalListView.this.getChildCount()) {
                    break;
                }
                View childAt = HorizontalListView.this.getChildAt(i);
                if (m11026do(motionEvent, childAt)) {
                    if (HorizontalListView.this.f9222class != null) {
                        AdapterView.OnItemClickListener onItemClickListener = HorizontalListView.this.f9222class;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i2 = horizontalListView.f9229if + 1 + i;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemClickListener.onItemClick(horizontalListView, childAt, i2, horizontalListView2.f9224do.getItemId(horizontalListView2.f9229if + 1 + i));
                    }
                    if (HorizontalListView.this.f9221catch != null) {
                        AdapterView.OnItemSelectedListener onItemSelectedListener = HorizontalListView.this.f9221catch;
                        HorizontalListView horizontalListView3 = HorizontalListView.this;
                        int i3 = horizontalListView3.f9229if + 1 + i;
                        HorizontalListView horizontalListView4 = HorizontalListView.this;
                        onItemSelectedListener.onItemSelected(horizontalListView3, childAt, i3, horizontalListView4.f9224do.getItemId(horizontalListView4.f9229if + 1 + i));
                    }
                } else {
                    i++;
                }
            }
            return true;
        }
    }

    /* renamed from: cn.qqtheme.framework.widget.HorizontalListView$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HorizontalListView.this.requestLayout();
        }
    }

    /* renamed from: cn.qqtheme.framework.widget.HorizontalListView$new, reason: invalid class name */
    public static class Cnew extends ScrollView {

        /* renamed from: do, reason: not valid java name */
        private GestureDetector f9238do;

        /* renamed from: cn.qqtheme.framework.widget.HorizontalListView$new$do, reason: invalid class name */
        public class Cdo extends GestureDetector.SimpleOnGestureListener {
            private Cdo() {
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return Math.abs(f2) > Math.abs(f);
            }

            public /* synthetic */ Cdo(Cnew cnew, Cdo cdo) {
                this();
            }
        }

        public Cnew(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9238do = new GestureDetector(context, new Cdo(this, null));
            setFadingEdgeLength(0);
        }

        @Override // android.widget.ScrollView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(motionEvent) && this.f9238do.onTouchEvent(motionEvent);
        }
    }

    public HorizontalListView(Context context) {
        super(context);
        this.f9229if = -1;
        this.f9227for = 0;
        this.f9220case = Integer.MAX_VALUE;
        this.f9225else = 0;
        this.f9219break = new LinkedList();
        this.f9226final = false;
        this.f9231super = new Cdo();
        this.f9233throw = new Cfor();
        m11011catch();
    }

    /* renamed from: break, reason: not valid java name */
    private void m11009break(int i, int i2) {
        while (i + i2 < getWidth() && this.f9227for < this.f9224do.getCount()) {
            View view = this.f9224do.getView(this.f9227for, this.f9219break.poll(), this);
            m11013else(view, -1);
            i += view.getMeasuredWidth();
            if (this.f9227for == this.f9224do.getCount() - 1) {
                this.f9220case = (this.f9230new + i) - getWidth();
            }
            if (this.f9220case < 0) {
                this.f9220case = 0;
            }
            this.f9227for++;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private synchronized void m11011catch() {
        this.f9229if = -1;
        this.f9227for = 0;
        this.f9225else = 0;
        this.f9230new = 0;
        this.f9234try = 0;
        this.f9220case = Integer.MAX_VALUE;
        this.f9228goto = new Scroller(getContext());
        this.f9232this = new GestureDetector(getContext(), this.f9233throw);
    }

    /* renamed from: else, reason: not valid java name */
    private void m11013else(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -1);
        }
        addViewInLayout(view, i, layoutParams, true);
        view.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
    }

    /* renamed from: final, reason: not valid java name */
    private void m11014final(int i) {
        if (getChildCount() > 0) {
            int paddingRight = this.f9225else + i;
            this.f9225else = paddingRight;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                int measuredWidth = childAt.getMeasuredWidth();
                childAt.layout(paddingRight, 0, paddingRight + measuredWidth, childAt.getMeasuredHeight());
                paddingRight += measuredWidth + childAt.getPaddingRight();
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m11016goto(int i) {
        View childAt = getChildAt(getChildCount() - 1);
        m11009break(childAt != null ? childAt.getRight() : 0, i);
        View childAt2 = getChildAt(0);
        m11020this(childAt2 != null ? childAt2.getLeft() : 0, i);
    }

    /* renamed from: super, reason: not valid java name */
    private void m11019super(int i) {
        View childAt = getChildAt(0);
        while (childAt != null && childAt.getRight() + i <= 0) {
            this.f9225else += childAt.getMeasuredWidth();
            this.f9219break.offer(childAt);
            removeViewInLayout(childAt);
            this.f9229if++;
            childAt = getChildAt(0);
        }
        View childAt2 = getChildAt(getChildCount() - 1);
        while (childAt2 != null && childAt2.getLeft() + i >= getWidth()) {
            this.f9219break.offer(childAt2);
            removeViewInLayout(childAt2);
            this.f9227for--;
            childAt2 = getChildAt(getChildCount() - 1);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m11020this(int i, int i2) {
        int i3;
        while (i + i2 > 0 && (i3 = this.f9229if) >= 0) {
            View view = this.f9224do.getView(i3, this.f9219break.poll(), this);
            m11013else(view, 0);
            i -= view.getMeasuredWidth();
            this.f9229if--;
            this.f9225else -= view.getMeasuredWidth();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public synchronized void m11021throw() {
        m11011catch();
        removeAllViewsInLayout();
        requestLayout();
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m11023class(MotionEvent motionEvent) {
        this.f9228goto.forceFinished(true);
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m11024const(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        synchronized (this) {
            this.f9228goto.fling(this.f9234try, 0, (int) (-f), 0, 0, this.f9220case, 0, 0);
        }
        requestLayout();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f9232this.onTouchEvent(motionEvent) | super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.AdapterView
    @Deprecated
    public final View getSelectedView() {
        return null;
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    @SuppressLint({"DrawAllocation"})
    public synchronized void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f9224do == null) {
            return;
        }
        if (this.f9226final) {
            int i5 = this.f9230new;
            m11011catch();
            removeAllViewsInLayout();
            this.f9234try = i5;
            this.f9226final = false;
        }
        if (this.f9228goto.computeScrollOffset()) {
            this.f9234try = this.f9228goto.getCurrX();
        }
        if (this.f9234try <= 0) {
            this.f9234try = 0;
            this.f9228goto.forceFinished(true);
        }
        int i6 = this.f9234try;
        int i7 = this.f9220case;
        if (i6 >= i7) {
            this.f9234try = i7;
            this.f9228goto.forceFinished(true);
        }
        int i8 = this.f9230new - this.f9234try;
        m11019super(i8);
        m11016goto(i8);
        m11014final(i8);
        this.f9230new = this.f9234try;
        if (!this.f9228goto.isFinished()) {
            post(new Cif());
        }
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f9222class = onItemClickListener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f9223const = onItemLongClickListener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f9221catch = onItemSelectedListener;
    }

    @Override // android.widget.AdapterView
    @Deprecated
    public final void setSelection(int i) {
    }

    /* renamed from: while, reason: not valid java name */
    public synchronized void m11025while(int i) {
        Scroller scroller = this.f9228goto;
        int i2 = this.f9234try;
        scroller.startScroll(i2, 0, i - i2, 0);
        requestLayout();
    }

    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.f9224do;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.f9224do;
        if (listAdapter2 != null) {
            listAdapter2.unregisterDataSetObserver(this.f9231super);
        }
        this.f9224do = listAdapter;
        listAdapter.registerDataSetObserver(this.f9231super);
        m11021throw();
    }

    public HorizontalListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9229if = -1;
        this.f9227for = 0;
        this.f9220case = Integer.MAX_VALUE;
        this.f9225else = 0;
        this.f9219break = new LinkedList();
        this.f9226final = false;
        this.f9231super = new Cdo();
        this.f9233throw = new Cfor();
        m11011catch();
    }
}
