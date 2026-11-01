package com.wsw.cospa.widget.behavior;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.appbar.AppBarLayout;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class AppBarLayoutOverScrollViewBehavior extends AppBarLayout.Behavior {
    private static final String TAG = "overScroll";
    private static final float TARGET_HEIGHT = 500.0f;
    private boolean isAnimate;
    private int mLastBottom;
    private float mLastScale;
    private int mParentHeight;
    private View mTargetImageView;
    private int mTargetImageViewHeight;
    private View mTargetLabelView;
    private float mTotalDy;

    public AppBarLayoutOverScrollViewBehavior() {
    }

    private void initialImage(AppBarLayout appBarLayout) {
        appBarLayout.setClipChildren(false);
        this.mParentHeight = appBarLayout.getHeight();
        this.mTargetImageViewHeight = this.mTargetImageView.getHeight();
    }

    private void recovery(final AppBarLayout appBarLayout) {
        if (this.mTotalDy > 0.0f) {
            this.mTotalDy = 0.0f;
            if (this.isAnimate) {
                ValueAnimator duration = ValueAnimator.ofFloat(this.mLastScale, 1.0f).setDuration(200L);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.wsw.cospa.widget.behavior.AppBarLayoutOverScrollViewBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        ViewCompat.setScaleX(AppBarLayoutOverScrollViewBehavior.this.mTargetImageView, fFloatValue);
                        ViewCompat.setScaleY(AppBarLayoutOverScrollViewBehavior.this.mTargetImageView, fFloatValue);
                        if (AppBarLayoutOverScrollViewBehavior.this.mTargetLabelView != null) {
                            ViewCompat.setScaleX(AppBarLayoutOverScrollViewBehavior.this.mTargetLabelView, fFloatValue);
                            ViewCompat.setScaleY(AppBarLayoutOverScrollViewBehavior.this.mTargetLabelView, fFloatValue);
                        }
                        appBarLayout.setBottom((int) (AppBarLayoutOverScrollViewBehavior.this.mLastBottom - ((AppBarLayoutOverScrollViewBehavior.this.mLastBottom - AppBarLayoutOverScrollViewBehavior.this.mParentHeight) * valueAnimator.getAnimatedFraction())));
                    }
                });
                duration.start();
                return;
            }
            ViewCompat.setScaleX(this.mTargetImageView, 1.0f);
            ViewCompat.setScaleY(this.mTargetImageView, 1.0f);
            View view = this.mTargetLabelView;
            if (view != null) {
                ViewCompat.setScaleX(view, 1.0f);
                ViewCompat.setScaleY(this.mTargetLabelView, 1.0f);
            }
            appBarLayout.setBottom(this.mParentHeight);
        }
    }

    private void scale(AppBarLayout appBarLayout, View view, int i) {
        float f = this.mTotalDy + (-i);
        this.mTotalDy = f;
        float fMin = Math.min(f, TARGET_HEIGHT);
        this.mTotalDy = fMin;
        float fMax = Math.max(1.0f, (fMin / TARGET_HEIGHT) + 1.0f);
        this.mLastScale = fMax;
        ViewCompat.setScaleX(this.mTargetImageView, fMax);
        ViewCompat.setScaleY(this.mTargetImageView, this.mLastScale);
        View view2 = this.mTargetLabelView;
        if (view2 != null) {
            ViewCompat.setScaleX(view2, this.mLastScale);
            ViewCompat.setScaleY(this.mTargetLabelView, this.mLastScale);
        }
        int i2 = this.mParentHeight + ((int) ((this.mTargetImageViewHeight / 2) * (this.mLastScale - 1.0f)));
        this.mLastBottom = i2;
        appBarLayout.setBottom(i2);
        view.setScrollY(0);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, com.google.android.material.appbar.Cdo, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, com.google.android.material.appbar.Cdo, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(coordinatorLayout, view, motionEvent);
    }

    public AppBarLayoutOverScrollViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, com.google.android.material.appbar.Cfor, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
        boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, appBarLayout, i);
        if (this.mTargetImageView == null && CartoonApplication.m24690do() != null) {
            View viewFindViewWithTag = coordinatorLayout.findViewWithTag(CartoonApplication.m24690do().getString(R.string.arg_res_0x7f1100a6));
            this.mTargetImageView = viewFindViewWithTag;
            if (viewFindViewWithTag != null) {
                initialImage(appBarLayout);
            }
        }
        if (this.mTargetLabelView == null && CartoonApplication.m24690do() != null) {
            this.mTargetLabelView = coordinatorLayout.findViewWithTag(CartoonApplication.m24690do().getString(R.string.arg_res_0x7f1100a7));
        }
        return zOnLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedFling(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f, float f2, boolean z) {
        return super.onNestedFling(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, f, f2, z);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f, float f2) {
        if (f2 > 100.0f) {
            this.isAnimate = false;
        }
        return super.onNestedPreFling(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, f, f2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr) {
        if (this.mTargetImageView == null || ((i2 >= 0 || appBarLayout.getBottom() < this.mParentHeight) && (i2 <= 0 || appBarLayout.getBottom() <= this.mParentHeight))) {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr);
        } else {
            scale(appBarLayout, view, i2);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4) {
        super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i) {
        super.onNestedScrollAccepted(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i) {
        this.isAnimate = true;
        return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
        recovery(appBarLayout);
        super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view);
    }
}
