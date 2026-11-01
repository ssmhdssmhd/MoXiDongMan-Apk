package com.wsw.cospa.widget.view;

import android.content.Context;
import android.graphics.RectF;
import android.view.View;
import android.widget.Scroller;

/* loaded from: classes2.dex */
class FlingRunnable implements Runnable {
    private int mCurrentX;
    private int mCurrentY;
    private final OnFlingRunningListener mListener;
    private final Scroller mScroller;
    private final View mView;

    public interface OnFlingRunningListener {
        void onFlingRunning(int i, int i2);
    }

    public FlingRunnable(Context context, OnFlingRunningListener onFlingRunningListener, View view) {
        this.mScroller = new Scroller(context);
        this.mListener = onFlingRunningListener;
        this.mView = view;
    }

    public void cancelFling() {
        this.mScroller.abortAnimation();
    }

    public void fling(RectF rectF, int i, int i2, int i3, int i4) {
        int i5;
        int iRound;
        int i6;
        int iRound2;
        int iRound3 = Math.round(-rectF.left);
        float f = i;
        if (f < rectF.width()) {
            iRound = Math.round(rectF.width() - f);
            i5 = 0;
        } else {
            i5 = iRound3;
            iRound = i5;
        }
        int iRound4 = Math.round(-rectF.top);
        float f2 = i2;
        if (f2 < rectF.height()) {
            iRound2 = Math.round(rectF.height() - f2);
            i6 = 0;
        } else {
            i6 = iRound4;
            iRound2 = i6;
        }
        this.mCurrentX = iRound3;
        this.mCurrentY = iRound4;
        if (iRound3 == iRound && iRound4 == iRound2) {
            return;
        }
        this.mScroller.fling(iRound3, iRound4, i3, i4, i5, iRound, i6, iRound2);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mListener.onFlingRunning(this.mCurrentX - currX, this.mCurrentY - currY);
            this.mCurrentX = currX;
            this.mCurrentY = currY;
            ViewUtils.postOnAnimation(this.mView, this);
        }
    }
}
