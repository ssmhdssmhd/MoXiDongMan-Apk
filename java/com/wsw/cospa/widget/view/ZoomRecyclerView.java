package com.wsw.cospa.widget.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.wsw.cospa.R;

@SuppressLint({"ClickableViewAccessibility"})
/* loaded from: classes2.dex */
public class ZoomRecyclerView extends RecyclerView {
    private static final float DEFAULT_MAX_SCALE_FACTOR = 2.0f;
    private static final float DEFAULT_MIN_SCALE_FACTOR = 0.5f;
    private static final int DEFAULT_SCALE_DURATION = 300;
    private static final float DEFAULT_SCALE_FACTOR = 1.0f;
    private static final float INVALID_TOUCH_POSITION = -1.0f;
    private static final String PROPERTY_SCALE = "scale";
    private static final String PROPERTY_TRANX = "tranX";
    private static final String PROPERTY_TRANY = "tranY";
    private static final String TAG = "999";
    public boolean isEnableScale;
    public boolean isScaling;
    public int mActivePointerId;
    public float mDefaultScaleFactor;
    public GestureDetectorCompat mGestureDetector;
    public float mLastTouchX;
    public float mLastTouchY;
    public float mMaxScaleFactor;
    public float mMaxTranX;
    public float mMaxTranY;
    public float mMinScaleFactor;
    public ValueAnimator mScaleAnimator;
    public float mScaleCenterX;
    public float mScaleCenterY;
    public ScaleGestureDetector mScaleDetector;
    public int mScaleDuration;
    public float mScaleFactor;
    public float mTranX;
    public float mTranY;
    public float mViewHeight;
    public float mViewWidth;

    public class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            float f;
            ZoomRecyclerView zoomRecyclerView = ZoomRecyclerView.this;
            float f2 = zoomRecyclerView.mScaleFactor;
            if (f2 == zoomRecyclerView.mDefaultScaleFactor) {
                zoomRecyclerView.mScaleCenterX = motionEvent.getX();
                ZoomRecyclerView.this.mScaleCenterY = motionEvent.getY();
                f = ZoomRecyclerView.this.mMaxScaleFactor;
            } else {
                zoomRecyclerView.mScaleCenterX = f2 == 1.0f ? motionEvent.getX() : (-zoomRecyclerView.mTranX) / (f2 - 1.0f);
                ZoomRecyclerView zoomRecyclerView2 = ZoomRecyclerView.this;
                float f3 = zoomRecyclerView2.mScaleFactor;
                zoomRecyclerView2.mScaleCenterY = f3 == 1.0f ? motionEvent.getY() : (-zoomRecyclerView2.mTranY) / (f3 - 1.0f);
                f = ZoomRecyclerView.this.mDefaultScaleFactor;
            }
            ZoomRecyclerView.this.zoom(f2, f);
            return super.onDoubleTap(motionEvent);
        }
    }

    public class ScaleListener implements ScaleGestureDetector.OnScaleGestureListener {
        private ScaleListener() {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            ZoomRecyclerView zoomRecyclerView = ZoomRecyclerView.this;
            float f = zoomRecyclerView.mScaleFactor;
            zoomRecyclerView.mScaleFactor = scaleGestureDetector.getScaleFactor() * f;
            ZoomRecyclerView zoomRecyclerView2 = ZoomRecyclerView.this;
            zoomRecyclerView2.mScaleFactor = Math.max(zoomRecyclerView2.mMinScaleFactor, Math.min(zoomRecyclerView2.mScaleFactor, zoomRecyclerView2.mMaxScaleFactor));
            ZoomRecyclerView zoomRecyclerView3 = ZoomRecyclerView.this;
            float f2 = zoomRecyclerView3.mViewWidth;
            float f3 = zoomRecyclerView3.mScaleFactor;
            zoomRecyclerView3.mMaxTranX = f2 - (f2 * f3);
            float f4 = zoomRecyclerView3.mViewHeight;
            zoomRecyclerView3.mMaxTranY = f4 - (f3 * f4);
            zoomRecyclerView3.mScaleCenterX = scaleGestureDetector.getFocusX();
            ZoomRecyclerView.this.mScaleCenterY = scaleGestureDetector.getFocusY();
            ZoomRecyclerView zoomRecyclerView4 = ZoomRecyclerView.this;
            float f5 = zoomRecyclerView4.mScaleCenterX;
            float f6 = zoomRecyclerView4.mScaleFactor;
            zoomRecyclerView4.setTranslateXY(zoomRecyclerView4.mTranX + (f5 * (f - f6)), zoomRecyclerView4.mTranY + (zoomRecyclerView4.mScaleCenterY * (f - f6)));
            ZoomRecyclerView zoomRecyclerView5 = ZoomRecyclerView.this;
            zoomRecyclerView5.isScaling = true;
            zoomRecyclerView5.invalidate();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            ZoomRecyclerView zoomRecyclerView = ZoomRecyclerView.this;
            float f = zoomRecyclerView.mScaleFactor;
            if (f <= zoomRecyclerView.mDefaultScaleFactor) {
                float f2 = (-zoomRecyclerView.mTranX) / (f - 1.0f);
                zoomRecyclerView.mScaleCenterX = f2;
                zoomRecyclerView.mScaleCenterY = (-zoomRecyclerView.mTranY) / (f - 1.0f);
                zoomRecyclerView.mScaleCenterX = Float.isNaN(f2) ? 0.0f : ZoomRecyclerView.this.mScaleCenterX;
                ZoomRecyclerView zoomRecyclerView2 = ZoomRecyclerView.this;
                zoomRecyclerView2.mScaleCenterY = Float.isNaN(zoomRecyclerView2.mScaleCenterY) ? 0.0f : ZoomRecyclerView.this.mScaleCenterY;
                ZoomRecyclerView zoomRecyclerView3 = ZoomRecyclerView.this;
                zoomRecyclerView3.zoom(zoomRecyclerView3.mScaleFactor, zoomRecyclerView3.mDefaultScaleFactor);
            }
            ZoomRecyclerView.this.isScaling = false;
        }
    }

    public ZoomRecyclerView(Context context) {
        super(context);
        this.mActivePointerId = -1;
        this.isScaling = false;
        this.isEnableScale = false;
        init(null);
    }

    private void correctTranslateXY() {
        float[] fArrCorrectTranslateXY = correctTranslateXY(this.mTranX, this.mTranY);
        this.mTranX = fArrCorrectTranslateXY[0];
        this.mTranY = fArrCorrectTranslateXY[1];
    }

    private void init(AttributeSet attributeSet) {
        this.mScaleDetector = new ScaleGestureDetector(getContext(), new ScaleListener());
        this.mGestureDetector = new GestureDetectorCompat(getContext(), new GestureListener());
        if (attributeSet == null) {
            this.mMaxScaleFactor = DEFAULT_MAX_SCALE_FACTOR;
            this.mMinScaleFactor = 0.5f;
            this.mDefaultScaleFactor = 1.0f;
            this.mScaleFactor = 1.0f;
            this.mScaleDuration = 300;
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ZoomRecyclerView, 0, 0);
        this.mMinScaleFactor = typedArrayObtainStyledAttributes.getFloat(2, 0.5f);
        this.mMaxScaleFactor = typedArrayObtainStyledAttributes.getFloat(1, DEFAULT_MAX_SCALE_FACTOR);
        float f = typedArrayObtainStyledAttributes.getFloat(0, 1.0f);
        this.mDefaultScaleFactor = f;
        this.mScaleFactor = f;
        this.mScaleDuration = typedArrayObtainStyledAttributes.getInteger(3, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void newZoomAnimation() {
        ValueAnimator valueAnimator = new ValueAnimator();
        this.mScaleAnimator = valueAnimator;
        valueAnimator.setInterpolator(new DecelerateInterpolator());
        this.mScaleAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.wsw.cospa.widget.view.ZoomRecyclerView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ZoomRecyclerView.this.mScaleFactor = ((Float) valueAnimator2.getAnimatedValue(ZoomRecyclerView.PROPERTY_SCALE)).floatValue();
                ZoomRecyclerView.this.setTranslateXY(((Float) valueAnimator2.getAnimatedValue(ZoomRecyclerView.PROPERTY_TRANX)).floatValue(), ((Float) valueAnimator2.getAnimatedValue(ZoomRecyclerView.PROPERTY_TRANY)).floatValue());
                ZoomRecyclerView.this.invalidate();
            }
        });
        this.mScaleAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.wsw.cospa.widget.view.ZoomRecyclerView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ZoomRecyclerView.this.isScaling = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ZoomRecyclerView.this.isScaling = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ZoomRecyclerView.this.isScaling = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTranslateXY(float f, float f2) {
        this.mTranX = f;
        this.mTranY = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zoom(float f, float f2) {
        if (this.mScaleAnimator == null) {
            newZoomAnimation();
        }
        if (this.mScaleAnimator.isRunning()) {
            return;
        }
        float f3 = this.mViewWidth;
        this.mMaxTranX = f3 - (f3 * f2);
        float f4 = this.mViewHeight;
        this.mMaxTranY = f4 - (f4 * f2);
        float f5 = this.mTranX;
        float f6 = this.mTranY;
        float f7 = f2 - f;
        float[] fArrCorrectTranslateXY = correctTranslateXY(f5 - (this.mScaleCenterX * f7), f6 - (f7 * this.mScaleCenterY));
        this.mScaleAnimator.setValues(PropertyValuesHolder.ofFloat(PROPERTY_SCALE, f, f2), PropertyValuesHolder.ofFloat(PROPERTY_TRANX, f5, fArrCorrectTranslateXY[0]), PropertyValuesHolder.ofFloat(PROPERTY_TRANY, f6, fArrCorrectTranslateXY[1]));
        this.mScaleAnimator.setDuration(this.mScaleDuration);
        this.mScaleAnimator.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"WrongConstant"})
    public void dispatchDraw(@NonNull Canvas canvas) {
        canvas.save();
        canvas.translate(this.mTranX, this.mTranY);
        float f = this.mScaleFactor;
        canvas.scale(f, f);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    public boolean isEnableScale() {
        return this.isEnableScale;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        this.mViewWidth = View.MeasureSpec.getSize(i);
        this.mViewHeight = View.MeasureSpec.getSize(i2);
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00c2  */
    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!this.isEnableScale) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z = this.mGestureDetector.onTouchEvent(motionEvent) || this.mScaleDetector.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            int actionIndex = motionEvent.getActionIndex();
            float x = motionEvent.getX(actionIndex);
            float y = motionEvent.getY(actionIndex);
            this.mLastTouchX = x;
            this.mLastTouchY = y;
            this.mActivePointerId = motionEvent.getPointerId(0);
        } else if (actionMasked == 1) {
            this.mActivePointerId = -1;
            this.mLastTouchX = -1.0f;
            this.mLastTouchY = -1.0f;
        } else if (actionMasked == 2) {
            try {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float y2 = motionEvent.getY(iFindPointerIndex);
                if (!this.isScaling && this.mScaleFactor > 1.0f) {
                    setTranslateXY(this.mTranX + (x2 - this.mLastTouchX), this.mTranY + (y2 - this.mLastTouchY));
                    correctTranslateXY();
                }
                invalidate();
                this.mLastTouchX = x2;
                this.mLastTouchY = y2;
            } catch (Exception unused) {
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY();
                if (!this.isScaling && this.mScaleFactor > 1.0f) {
                    float f = this.mLastTouchX;
                    if (f != -1.0f) {
                        setTranslateXY(this.mTranX + (x3 - f), this.mTranY + (y3 - this.mLastTouchY));
                        correctTranslateXY();
                    }
                }
                invalidate();
                this.mLastTouchX = x3;
                this.mLastTouchY = y3;
            }
        } else if (actionMasked != 3) {
            if (actionMasked == 6) {
                int actionIndex2 = motionEvent.getActionIndex();
                if (motionEvent.getPointerId(actionIndex2) == this.mActivePointerId) {
                    int i = actionIndex2 == 0 ? 1 : 0;
                    this.mLastTouchX = motionEvent.getX(i);
                    this.mLastTouchY = motionEvent.getY(i);
                    this.mActivePointerId = motionEvent.getPointerId(i);
                }
            }
        }
        return super.onTouchEvent(motionEvent) || z;
    }

    public void setEnableScale(boolean z) {
        if (this.isEnableScale == z) {
            return;
        }
        this.isEnableScale = z;
        if (z) {
            return;
        }
        float f = this.mScaleFactor;
        if (f != 1.0f) {
            zoom(f, 1.0f);
        }
    }

    private float[] correctTranslateXY(float f, float f2) {
        if (this.mScaleFactor <= 1.0f) {
            return new float[]{f, f2};
        }
        if (f > 0.0f) {
            f = 0.0f;
        } else {
            float f3 = this.mMaxTranX;
            if (f < f3) {
                f = f3;
            }
        }
        if (f2 > 0.0f) {
            f2 = 0.0f;
        } else {
            float f4 = this.mMaxTranY;
            if (f2 < f4) {
                f2 = f4;
            }
        }
        return new float[]{f, f2};
    }

    public ZoomRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mActivePointerId = -1;
        this.isScaling = false;
        this.isEnableScale = false;
        init(attributeSet);
    }

    public ZoomRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mActivePointerId = -1;
        this.isScaling = false;
        this.isEnableScale = false;
        init(attributeSet);
    }
}
