package com.wsw.cospa.widget.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.MotionEventCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.wsw.cospa.widget.view.FlingRunnable;

/* loaded from: classes2.dex */
public class ZoomableRecyclerView extends RecyclerView implements OnScaleDragGestureListener, FlingRunnable.OnFlingRunningListener, GestureDetector.OnDoubleTapListener {
    public static final float MAX_SCALE = 3.0f;
    public static final float MIN_SCALE = 1.0f;
    private boolean isDoubleTap;
    private boolean isVertical;
    private FlingRunnable mCurrentFlingRunnable;
    private GestureDetectorCompat mGestureDetector;
    private final Matrix mMatrix;
    private ScaleDragDetector mScaleDragDetector;
    private float mScaleFactor;
    private OnTapGestureListener mTapGestureListener;
    private final Rect mTempRect;
    private final RectF mTempRectF;

    public ZoomableRecyclerView(Context context) {
        this(context, null, 0);
    }

    private void cancelFling() {
        FlingRunnable flingRunnable = this.mCurrentFlingRunnable;
        if (flingRunnable != null) {
            flingRunnable.cancelFling();
            this.mCurrentFlingRunnable = null;
        }
    }

    private RectF getDisplayRect(Matrix matrix) {
        getLocalVisibleRect(this.mTempRect);
        this.mTempRectF.set(this.mTempRect);
        matrix.mapRect(this.mTempRectF);
        return this.mTempRectF;
    }

    private void setScale(float f, float f2, float f3) {
        if (f < 1.0f || f > 3.0f) {
            return;
        }
        post(new AnimatedScaleRunnable(f, f2, f3, this, this.mMatrix, this));
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

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        if (!this.isDoubleTap) {
            return false;
        }
        try {
            float fCalculateScale = ViewUtils.calculateScale(this.mMatrix);
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            float f = this.mScaleFactor;
            if (fCalculateScale >= f) {
                f = 1.0f;
            }
            setScale(f, x, y);
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.wsw.cospa.widget.view.OnScaleDragGestureListener
    public void onDrag(float f, float f2) {
        if (this.isVertical) {
            this.mMatrix.postTranslate(f, 0.0f);
        } else {
            this.mMatrix.postTranslate(0.0f, f2);
        }
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
        if (this.isVertical) {
            this.mMatrix.postTranslate(i, 0.0f);
        } else {
            this.mMatrix.postTranslate(0.0f, i2);
        }
        invalidate();
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
        if (MotionEventCompat.getActionMasked(motionEvent) == 0) {
            cancelFling();
        }
        boolean zIsScaling = this.mScaleDragDetector.isScaling();
        this.mScaleDragDetector.onTouchEvent(motionEvent);
        if (!zIsScaling && !this.mScaleDragDetector.isScaling()) {
            super.onTouchEvent(motionEvent);
        }
        this.mGestureDetector.onTouchEvent(motionEvent);
        return true;
    }

    public void setDoubleTap(boolean z) {
        this.isDoubleTap = z;
    }

    public void setScaleFactor(float f) {
        this.mScaleFactor = f;
    }

    public void setTapListenerListener(OnTapGestureListener onTapGestureListener) {
        this.mTapGestureListener = onTapGestureListener;
    }

    public void setVertical(boolean z) {
        this.isVertical = z;
    }

    public ZoomableRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ZoomableRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMatrix = new Matrix();
        this.mTempRectF = new RectF();
        this.mTempRect = new Rect();
        this.mScaleFactor = 2.0f;
        this.isVertical = true;
        this.isDoubleTap = true;
        this.mScaleDragDetector = new ScaleDragDetector(context, this);
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.wsw.cospa.widget.view.ZoomableRecyclerView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (ZoomableRecyclerView.this.mTapGestureListener != null) {
                    ZoomableRecyclerView.this.mTapGestureListener.onLongPress(motionEvent.getRawX(), motionEvent.getRawY());
                }
            }
        });
        this.mGestureDetector = gestureDetectorCompat;
        gestureDetectorCompat.setOnDoubleTapListener(this);
    }
}
