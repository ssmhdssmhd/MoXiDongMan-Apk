package com.wsw.cospa.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcelable;
import android.support.v4.vv0;
import android.support.v4.zl1;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.core.view.GestureDetectorCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.wsw.cospa.widget.view.FlingRunnable;
import java.lang.reflect.Field;

/* loaded from: classes2.dex */
public class RecyclerViewPager extends RecyclerView implements OnScaleDragGestureListener, GestureDetector.OnDoubleTapListener, FlingRunnable.OnFlingRunningListener {
    private static final float FLING_FACTOR = 0.1f;
    public static final float MAX_SCALE = 3.0f;
    public static final float MIN_SCALE = 1.0f;
    private boolean isDoubleTap;
    public View mCurView;
    private FlingRunnable mCurrentFlingRunnable;
    public int mFirstLeftWhenDragging;
    public int mFirstTopWhenDragging;
    private GestureDetectorCompat mGestureDetector;
    private GlobalLayoutListener mGlobalLayoutListener;
    private boolean mHasCalledOnPageChanged;
    private final Matrix mMatrix;
    public int mMaxLeftWhenDragging;
    public int mMaxTopWhenDragging;
    public int mMinLeftWhenDragging;
    public int mMinTopWhenDragging;
    public boolean mNeedAdjust;
    private OnPageChangedListener mOnPageChangedListener;
    private int mPositionBeforeScroll;
    private int mPositionOnTouchDown;
    private ScaleDragDetector mScaleDragDetector;
    private float mScaleFactor;
    private Float mScrollSpeed;
    private int mSmoothScrollTargetPosition;
    private OnTapGestureListener mTapGestureListener;
    private final Rect mTempRect;
    private final RectF mTempRectF;
    private float mTouchSpan;
    private float mTriggerOffset;
    private RecyclerViewPagerAdapter<?> mViewPagerAdapter;
    private boolean reverseLayout;

    public class GlobalLayoutListener implements ViewTreeObserver.OnGlobalLayoutListener {
        private GlobalLayoutListener() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            RecyclerViewPager.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (RecyclerViewPager.this.mSmoothScrollTargetPosition < 0 || RecyclerViewPager.this.mSmoothScrollTargetPosition >= RecyclerViewPager.this.getItemCount() || RecyclerViewPager.this.mOnPageChangedListener == null) {
                return;
            }
            RecyclerViewPager.this.mOnPageChangedListener.OnPageChanged(RecyclerViewPager.this.mPositionBeforeScroll, RecyclerViewPager.this.getCurrentPosition());
        }
    }

    public interface OnPageChangedListener {
        void OnPageChanged(int i, int i2);
    }

    public RecyclerViewPager(Context context) {
        this(context, null);
    }

    private RectF getDisplayRect(Matrix matrix) {
        getLocalVisibleRect(this.mTempRect);
        this.mTempRectF.set(this.mTempRect);
        matrix.mapRect(this.mTempRectF);
        return this.mTempRectF;
    }

    private int getFlingCount(int i, int i2) {
        if (i == 0) {
            return 0;
        }
        double d = i > 0 ? 1 : -1;
        double dCeil = Math.ceil((((i * r0) * 0.1f) / i2) - this.mTriggerOffset);
        Double.isNaN(d);
        return (int) (d * dCeil);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getItemCount() {
        RecyclerViewPagerAdapter<?> recyclerViewPagerAdapter = this.mViewPagerAdapter;
        if (recyclerViewPagerAdapter == null) {
            return 0;
        }
        return recyclerViewPagerAdapter.getItemCount();
    }

    private int safeTargetPosition(int i, int i2) {
        if (i < 0) {
            return 0;
        }
        return i >= i2 ? i2 - 1 : i;
    }

    private void setScale(float f, float f2, float f3) {
        if (f < 1.0f || f > 3.0f) {
            return;
        }
        post(new AnimatedScaleRunnable(f, f2, f3, this, this.mMatrix, this));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void adjustPositionX(int i) {
        View viewM10240do;
        if (this.reverseLayout) {
            i *= -1;
        }
        if (getChildCount() > 0) {
            int iM10242if = zl1.m10242if(this);
            int iMax = Math.max(-1, Math.min(1, getFlingCount(i, (getWidth() - getPaddingLeft()) - getPaddingRight())));
            int iMin = Math.min(Math.max(iMax == 0 ? iM10242if : this.mPositionOnTouchDown + iMax, 0), getItemCount() - 1);
            if (iMin == iM10242if && this.mPositionOnTouchDown == iM10242if && (viewM10240do = zl1.m10240do(this)) != null) {
                float f = this.mTouchSpan;
                float width = viewM10240do.getWidth();
                float f2 = this.mTriggerOffset;
                if (f <= width * f2 * f2 || iMin == 0) {
                    if (this.mTouchSpan < viewM10240do.getWidth() * (-this.mTriggerOffset) && iMin != getItemCount() - 1) {
                        iMin = !this.reverseLayout ? iMin + 1 : iMin - 1;
                    }
                } else if (!this.reverseLayout) {
                }
            }
            startSmoothScroll(safeTargetPosition(iMin, getItemCount()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void adjustPositionY(int i) {
        View viewM10241for;
        if (this.reverseLayout) {
            i *= -1;
        }
        if (getChildCount() > 0) {
            int iM10243new = zl1.m10243new(this);
            int iMax = Math.max(-1, Math.min(1, getFlingCount(i, (getHeight() - getPaddingTop()) - getPaddingBottom())));
            int iMin = Math.min(Math.max(iMax == 0 ? iM10243new : this.mPositionOnTouchDown + iMax, 0), getItemCount() - 1);
            if (iMin == iM10243new && this.mPositionOnTouchDown == iM10243new && (viewM10241for = zl1.m10241for(this)) != null) {
                if (this.mTouchSpan <= viewM10241for.getHeight() * this.mTriggerOffset || iMin == 0) {
                    if (this.mTouchSpan < viewM10241for.getHeight() * (-this.mTriggerOffset) && iMin != getItemCount() - 1) {
                        iMin = !this.reverseLayout ? iMin + 1 : iMin - 1;
                    }
                } else if (!this.reverseLayout) {
                }
            }
            startSmoothScroll(safeTargetPosition(iMin, getItemCount()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkBounds() {
        float f;
        float f2;
        float viewWidth;
        float f3;
        RectF displayRect = getDisplayRect(this.mMatrix);
        float fHeight = displayRect.height();
        float fWidth = displayRect.width();
        float viewHeight = ViewUtils.getViewHeight(this);
        float f4 = 0.0f;
        if (fHeight > viewHeight) {
            float f5 = displayRect.top;
            if (f5 > 0.0f) {
                f2 = -f5;
            } else {
                f = displayRect.bottom;
                if (f >= viewHeight) {
                    f2 = 0.0f;
                }
            }
            viewWidth = ViewUtils.getViewWidth(this);
            if (fWidth <= viewWidth) {
                float f6 = displayRect.left;
                if (f6 > 0.0f) {
                    f4 = -f6;
                } else {
                    f3 = displayRect.right;
                    if (f3 < viewWidth) {
                    }
                }
                this.mMatrix.postTranslate(f4, f2);
            }
            viewWidth = (viewWidth - fWidth) / 2.0f;
            f3 = displayRect.left;
            f4 = viewWidth - f3;
            this.mMatrix.postTranslate(f4, f2);
        }
        viewHeight = (viewHeight - fHeight) / 2.0f;
        f = displayRect.top;
        f2 = viewHeight - f;
        viewWidth = ViewUtils.getViewWidth(this);
        if (fWidth <= viewWidth) {
        }
        f4 = viewWidth - f3;
        this.mMatrix.postTranslate(f4, f2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.concat(this.mMatrix);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && getLayoutManager() != null) {
            this.mPositionOnTouchDown = getLayoutManager().canScrollHorizontally() ? zl1.m10242if(this) : zl1.m10243new(this);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @NonNull
    public RecyclerViewPagerAdapter ensureRecyclerViewPagerAdapter(RecyclerView.Adapter adapter) {
        return adapter instanceof RecyclerViewPagerAdapter ? (RecyclerViewPagerAdapter) adapter : new RecyclerViewPagerAdapter(this, adapter);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i, int i2) {
        boolean zFling = super.fling((int) (i * 0.1f), (int) (i2 * 0.1f));
        if (zFling) {
            if (getLayoutManager().canScrollHorizontally()) {
                adjustPositionX(i);
            } else {
                adjustPositionY(i2);
            }
        }
        return zFling;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public RecyclerView.Adapter getAdapter() {
        RecyclerViewPagerAdapter<?> recyclerViewPagerAdapter = this.mViewPagerAdapter;
        if (recyclerViewPagerAdapter != null) {
            return recyclerViewPagerAdapter.mAdapter;
        }
        return null;
    }

    public int getCurrentPosition() {
        int iM10242if = getLayoutManager().canScrollHorizontally() ? zl1.m10242if(this) : zl1.m10243new(this);
        return iM10242if < 0 ? this.mSmoothScrollTargetPosition : iM10242if;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        if (this.isDoubleTap) {
            try {
                float fCalculateScale = ViewUtils.calculateScale(this.mMatrix);
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                float f = this.mScaleFactor;
                if (fCalculateScale >= f) {
                    f = 1.0f;
                }
                setScale(f, x, y);
            } catch (Exception unused) {
            }
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.wsw.cospa.widget.view.OnScaleDragGestureListener
    public void onDrag(float f, float f2) {
        this.mMatrix.postTranslate(f, 0.0f);
        checkBounds();
        invalidate();
    }

    @Override // com.wsw.cospa.widget.view.OnScaleDragGestureListener
    public void onFling(float f, float f2, float f3, float f4) {
        checkBounds();
        RectF displayRect = getDisplayRect(this.mMatrix);
        FlingRunnable flingRunnable = new FlingRunnable(getContext(), this, this);
        this.mCurrentFlingRunnable = flingRunnable;
        flingRunnable.fling(displayRect, ViewUtils.getViewWidth(this), ViewUtils.getViewHeight(this), (int) f3, (int) f4);
        post(this.mCurrentFlingRunnable);
    }

    @Override // com.wsw.cospa.widget.view.FlingRunnable.OnFlingRunningListener
    public void onFlingRunning(int i, int i2) {
        this.mMatrix.postTranslate(i, 0.0f);
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        try {
            return super.onInterceptHoverEvent(motionEvent);
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        try {
            Field declaredField = parcelable.getClass().getDeclaredField("mLayoutState");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(parcelable);
            Field declaredField2 = obj.getClass().getDeclaredField("mAnchorOffset");
            Field declaredField3 = obj.getClass().getDeclaredField("mAnchorPosition");
            declaredField3.setAccessible(true);
            declaredField2.setAccessible(true);
            if (declaredField2.getInt(obj) > 0) {
                declaredField3.set(obj, Integer.valueOf(declaredField3.getInt(obj) - 1));
            } else if (declaredField2.getInt(obj) < 0) {
                declaredField3.set(obj, Integer.valueOf(declaredField3.getInt(obj) + 1));
            }
            declaredField2.setInt(obj, 0);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // com.wsw.cospa.widget.view.OnScaleDragGestureListener
    public void onScale(float f, float f2, float f3) {
        if (ViewUtils.calculateScale(this.mMatrix) < 3.0f || f < 1.0f) {
            this.mMatrix.postScale(f, f, f2, f3);
            checkBounds();
            invalidate();
        }
    }

    @Override // com.wsw.cospa.widget.view.OnScaleDragGestureListener
    public void onScaleEnd() {
        if (ViewUtils.calculateScale(this.mMatrix) < 1.0f) {
            checkBounds();
            RectF displayRect = getDisplayRect(this.mMatrix);
            post(new AnimatedScaleRunnable(1.0f, displayRect.centerX(), displayRect.centerY(), this, this.mMatrix, this));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0115  */
    @Override // androidx.recyclerview.widget.RecyclerView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onScrollStateChanged(int i) {
        super.onScrollStateChanged(i);
        if (i == 1) {
            this.mNeedAdjust = true;
            View viewM10240do = getLayoutManager().canScrollHorizontally() ? zl1.m10240do(this) : zl1.m10241for(this);
            this.mCurView = viewM10240do;
            if (viewM10240do != null) {
                if (this.mHasCalledOnPageChanged) {
                    this.mPositionBeforeScroll = getChildLayoutPosition(viewM10240do);
                    this.mHasCalledOnPageChanged = false;
                }
                this.mFirstLeftWhenDragging = this.mCurView.getLeft();
                this.mFirstTopWhenDragging = this.mCurView.getTop();
            } else {
                this.mPositionBeforeScroll = -1;
            }
            this.mTouchSpan = 0.0f;
            return;
        }
        if (i == 2) {
            this.mNeedAdjust = false;
            if (this.mCurView == null) {
                this.mTouchSpan = 0.0f;
            } else if (getLayoutManager().canScrollHorizontally()) {
                this.mTouchSpan = this.mCurView.getLeft() - this.mFirstLeftWhenDragging;
            } else {
                this.mTouchSpan = this.mCurView.getTop() - this.mFirstTopWhenDragging;
            }
            this.mCurView = null;
            return;
        }
        if (i == 0) {
            if (this.mNeedAdjust) {
                int iM10242if = getLayoutManager().canScrollHorizontally() ? zl1.m10242if(this) : zl1.m10243new(this);
                View view = this.mCurView;
                if (view != null) {
                    iM10242if = getChildAdapterPosition(view);
                    if (getLayoutManager().canScrollHorizontally()) {
                        float left = this.mCurView.getLeft() - this.mFirstLeftWhenDragging;
                        if (left <= this.mCurView.getWidth() * this.mTriggerOffset || this.mCurView.getLeft() < this.mMaxLeftWhenDragging) {
                            if (left < this.mCurView.getWidth() * (-this.mTriggerOffset) && this.mCurView.getLeft() <= this.mMinLeftWhenDragging) {
                                iM10242if = !this.reverseLayout ? iM10242if + 1 : iM10242if - 1;
                            }
                        } else if (!this.reverseLayout) {
                        }
                    } else {
                        float top = this.mCurView.getTop() - this.mFirstTopWhenDragging;
                        if (top <= this.mCurView.getHeight() * this.mTriggerOffset || this.mCurView.getTop() < this.mMaxTopWhenDragging) {
                            if (top < this.mCurView.getHeight() * (-this.mTriggerOffset) && this.mCurView.getTop() <= this.mMinTopWhenDragging) {
                                if (!this.reverseLayout) {
                                }
                            }
                        } else if (!this.reverseLayout) {
                        }
                    }
                }
                startSmoothScroll(safeTargetPosition(iM10242if, getItemCount()));
                this.mCurView = null;
            } else {
                int i2 = this.mSmoothScrollTargetPosition;
                int i3 = this.mPositionBeforeScroll;
                if (i2 != i3) {
                    OnPageChangedListener onPageChangedListener = this.mOnPageChangedListener;
                    if (onPageChangedListener != null) {
                        onPageChangedListener.OnPageChanged(i3, getCurrentPosition());
                    }
                    this.mHasCalledOnPageChanged = true;
                    this.mPositionBeforeScroll = this.mSmoothScrollTargetPosition;
                }
            }
            this.mMaxLeftWhenDragging = Integer.MIN_VALUE;
            this.mMinLeftWhenDragging = Integer.MAX_VALUE;
            this.mMaxTopWhenDragging = Integer.MIN_VALUE;
            this.mMinTopWhenDragging = Integer.MAX_VALUE;
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        OnTapGestureListener onTapGestureListener = this.mTapGestureListener;
        if (onTapGestureListener == null) {
            return false;
        }
        onTapGestureListener.onSingleTap(motionEvent.getRawX(), motionEvent.getRawY());
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        View view;
        if (motionEvent.getAction() == 2 && (view = this.mCurView) != null) {
            this.mMaxLeftWhenDragging = Math.max(view.getLeft(), this.mMaxLeftWhenDragging);
            this.mMaxTopWhenDragging = Math.max(this.mCurView.getTop(), this.mMaxTopWhenDragging);
            this.mMinLeftWhenDragging = Math.min(this.mCurView.getLeft(), this.mMinLeftWhenDragging);
            this.mMinTopWhenDragging = Math.min(this.mCurView.getTop(), this.mMinTopWhenDragging);
        }
        boolean zIsScaling = this.mScaleDragDetector.isScaling();
        this.mScaleDragDetector.onTouchEvent(motionEvent);
        if (!zIsScaling && !this.mScaleDragDetector.isScaling()) {
            super.onTouchEvent(motionEvent);
        }
        this.mGestureDetector.onTouchEvent(motionEvent);
        return true;
    }

    public void refreshPosition() {
        int currentPosition = getCurrentPosition();
        int i = this.mPositionBeforeScroll;
        if (i != -1) {
            this.mPositionBeforeScroll = i + currentPosition;
        }
        this.mPositionOnTouchDown += currentPosition;
        this.mSmoothScrollTargetPosition += currentPosition;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i) {
        this.mPositionBeforeScroll = getCurrentPosition();
        this.mSmoothScrollTargetPosition = i;
        vv0.m8965if("RecyclerViewPager", "scrollToPosition position : " + i);
        super.scrollToPosition(i);
        int i2 = this.mSmoothScrollTargetPosition;
        if (i2 < 0 || i2 >= getItemCount() || this.mSmoothScrollTargetPosition == this.mPositionBeforeScroll || this.mOnPageChangedListener == null) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.mGlobalLayoutListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerViewPagerAdapter<?> recyclerViewPagerAdapterEnsureRecyclerViewPagerAdapter = ensureRecyclerViewPagerAdapter(adapter);
        this.mViewPagerAdapter = recyclerViewPagerAdapterEnsureRecyclerViewPagerAdapter;
        super.setAdapter(recyclerViewPagerAdapterEnsureRecyclerViewPagerAdapter);
    }

    public void setDoubleTap(boolean z) {
        this.isDoubleTap = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        super.setLayoutManager(layoutManager);
        if (layoutManager instanceof LinearLayoutManager) {
            this.reverseLayout = ((LinearLayoutManager) layoutManager).getReverseLayout();
        }
    }

    public void setOnPageChangedListener(OnPageChangedListener onPageChangedListener) {
        this.mOnPageChangedListener = onPageChangedListener;
    }

    public void setScaleFactor(float f) {
        this.mScaleFactor = f;
    }

    public void setScrollSpeed(float f) {
        this.mScrollSpeed = Float.valueOf(f);
    }

    public void setTapListenerListener(OnTapGestureListener onTapGestureListener) {
        this.mTapGestureListener = onTapGestureListener;
    }

    public void setTriggerOffset(float f) {
        this.mTriggerOffset = f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollToPosition(int i) {
        if (this.mPositionBeforeScroll < 0) {
            this.mPositionBeforeScroll = getCurrentPosition();
        }
        startSmoothScroll(i);
        int i2 = this.mSmoothScrollTargetPosition;
        if (i2 < 0 || i2 >= getItemCount() || this.mSmoothScrollTargetPosition == this.mPositionBeforeScroll || this.mOnPageChangedListener == null) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.mGlobalLayoutListener);
    }

    public void startSmoothScroll(int i) {
        this.mSmoothScrollTargetPosition = i;
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(getContext()) { // from class: com.wsw.cospa.widget.view.RecyclerViewPager.2
            @Override // androidx.recyclerview.widget.LinearSmoothScroller
            public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                return (RecyclerViewPager.this.getContext().getResources().getDisplayMetrics().density * RecyclerViewPager.this.mScrollSpeed.floatValue()) / displayMetrics.density;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public PointF computeScrollVectorForPosition(int i2) {
                if (getLayoutManager() == null) {
                    return null;
                }
                vv0.m8965if("RecyclerViewPager", "computeScrollVectorForPosition position : " + i2);
                return ((LinearLayoutManager) getLayoutManager()).computeScrollVectorForPosition(i2);
            }
        };
        vv0.m8965if("RecyclerViewPager", "startSmoothScroll position : " + i);
        linearSmoothScroller.setTargetPosition(i);
        if (i == -1) {
            return;
        }
        getLayoutManager().startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void swapAdapter(RecyclerView.Adapter adapter, boolean z) {
        RecyclerViewPagerAdapter<?> recyclerViewPagerAdapterEnsureRecyclerViewPagerAdapter = ensureRecyclerViewPagerAdapter(adapter);
        this.mViewPagerAdapter = recyclerViewPagerAdapterEnsureRecyclerViewPagerAdapter;
        super.swapAdapter(recyclerViewPagerAdapterEnsureRecyclerViewPagerAdapter, z);
    }

    public RecyclerViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerViewPager(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMaxLeftWhenDragging = Integer.MIN_VALUE;
        this.mMinLeftWhenDragging = Integer.MAX_VALUE;
        this.mMaxTopWhenDragging = Integer.MIN_VALUE;
        this.mMinTopWhenDragging = Integer.MAX_VALUE;
        this.mGlobalLayoutListener = new GlobalLayoutListener();
        this.mSmoothScrollTargetPosition = -1;
        this.mPositionBeforeScroll = -1;
        this.mTriggerOffset = 0.05f;
        this.mPositionOnTouchDown = -1;
        this.mHasCalledOnPageChanged = true;
        this.reverseLayout = false;
        this.mMatrix = new Matrix();
        this.mTempRectF = new RectF();
        this.mTempRect = new Rect();
        this.mScaleFactor = 2.0f;
        this.isDoubleTap = true;
        this.mScaleDragDetector = new ScaleDragDetector(context, this);
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.wsw.cospa.widget.view.RecyclerViewPager.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (RecyclerViewPager.this.mTapGestureListener != null) {
                    RecyclerViewPager.this.mTapGestureListener.onLongPress(motionEvent.getRawX(), motionEvent.getRawY());
                }
            }
        });
        this.mGestureDetector = gestureDetectorCompat;
        gestureDetectorCompat.setOnDoubleTapListener(this);
        setNestedScrollingEnabled(false);
    }
}
