package com.wsw.cospa.widget.view;

import android.graphics.Matrix;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

/* loaded from: classes2.dex */
class AnimatedScaleRunnable implements Runnable {
    private final float mFocusX;
    private final float mFocusY;
    private final OnScaleDragGestureListener mListener;
    private final Matrix mMatrix;
    private final float mScaleEnd;
    private final float mScaleStart;
    private final View mView;
    private final Interpolator mZoomInterpolator = new AccelerateDecelerateInterpolator();
    private final long mStartTime = System.currentTimeMillis();

    public AnimatedScaleRunnable(float f, float f2, float f3, View view, Matrix matrix, OnScaleDragGestureListener onScaleDragGestureListener) {
        this.mFocusX = f2;
        this.mFocusY = f3;
        this.mScaleStart = ViewUtils.calculateScale(matrix);
        this.mScaleEnd = f;
        this.mView = view;
        this.mMatrix = matrix;
        this.mListener = onScaleDragGestureListener;
    }

    private float interpolate() {
        return this.mZoomInterpolator.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.mStartTime) * 1.0f) / 200.0f));
    }

    @Override // java.lang.Runnable
    public void run() {
        float fInterpolate = interpolate();
        float f = this.mScaleStart;
        this.mListener.onScale((f + ((this.mScaleEnd - f) * fInterpolate)) / ViewUtils.calculateScale(this.mMatrix), this.mFocusX, this.mFocusY);
        if (fInterpolate < 1.0f) {
            ViewUtils.postOnAnimation(this.mView, this);
        }
    }
}
