package com.scwang.smartrefresh.header;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.support.v4.i02;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.Key;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.header.FalsifyHeader;

/* loaded from: classes2.dex */
public class FlyRefreshHeader extends FalsifyHeader implements RefreshHeader {

    /* renamed from: break, reason: not valid java name */
    public int f20116break;

    /* renamed from: case, reason: not valid java name */
    public AnimatorSet f20117case;

    /* renamed from: catch, reason: not valid java name */
    public float f20118catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f20119class;

    /* renamed from: else, reason: not valid java name */
    public RefreshLayout f20120else;

    /* renamed from: goto, reason: not valid java name */
    public RefreshKernel f20121goto;

    /* renamed from: this, reason: not valid java name */
    public MountainSceneView f20122this;

    /* renamed from: try, reason: not valid java name */
    public View f20123try;

    /* renamed from: com.scwang.smartrefresh.header.FlyRefreshHeader$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FlyRefreshHeader.this.onMoving(true, ((Float) valueAnimator.getAnimatedValue()).floatValue(), 0, 0, 0);
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.FlyRefreshHeader$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AnimatorListenerAdapter f20125do;

        public Cfor(AnimatorListenerAdapter animatorListenerAdapter) {
            this.f20125do = animatorListenerAdapter;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            RefreshLayout refreshLayout = FlyRefreshHeader.this.f20120else;
            if (refreshLayout != null) {
                refreshLayout.setEnableRefresh(true);
            }
            AnimatorListenerAdapter animatorListenerAdapter = this.f20125do;
            if (animatorListenerAdapter != null) {
                animatorListenerAdapter.onAnimationEnd(animator);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = FlyRefreshHeader.this.f20123try;
            if (view != null) {
                view.setRotationY(0.0f);
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.FlyRefreshHeader$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            View view = FlyRefreshHeader.this.f20123try;
            if (view != null) {
                view.setRotationY(180.0f);
            }
        }
    }

    public FlyRefreshHeader(Context context) {
        super(context);
        this.f20116break = 0;
        this.f20119class = false;
    }

    /* renamed from: do, reason: not valid java name */
    public void m24288do() {
        m24290if(null);
    }

    /* renamed from: for, reason: not valid java name */
    public void m24289for(@Nullable MountainSceneView mountainSceneView, @Nullable View view) {
        this.f20123try = view;
        this.f20122this = mountainSceneView;
    }

    /* renamed from: if, reason: not valid java name */
    public void m24290if(AnimatorListenerAdapter animatorListenerAdapter) {
        if (this.f20123try == null || !this.f20119class || this.f20120else == null) {
            return;
        }
        AnimatorSet animatorSet = this.f20117case;
        if (animatorSet != null) {
            animatorSet.end();
            this.f20123try.clearAnimation();
        }
        this.f20119class = false;
        this.f20120else.finishRefresh(0);
        int i = -this.f20123try.getRight();
        int i2 = -i02.m3194new(10.0f);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(800L);
        View view = this.f20123try;
        float f = i;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", view.getTranslationX(), f);
        View view2 = this.f20123try;
        float f2 = i2;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, "translationY", view2.getTranslationY(), f2);
        objectAnimatorOfFloat2.setInterpolator(PathInterpolatorCompat.create(0.1f, 1.0f));
        View view3 = this.f20123try;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view3, Key.ROTATION, view3.getRotation(), 0.0f);
        View view4 = this.f20123try;
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view4, "rotationX", view4.getRotationX(), 30.0f);
        objectAnimatorOfFloat3.setInterpolator(new AccelerateInterpolator());
        View view5 = this.f20123try;
        float[] fArr = {view5.getScaleX(), 0.9f};
        View view6 = this.f20123try;
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, ObjectAnimator.ofFloat(view5, "scaleX", fArr), ObjectAnimator.ofFloat(view6, "scaleY", view6.getScaleY(), 0.9f));
        animatorSet2.addListener(new Cif());
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.setDuration(800L);
        animatorSet3.setInterpolator(new DecelerateInterpolator());
        animatorSet3.playTogether(ObjectAnimator.ofFloat(this.f20123try, "translationX", f, 0.0f), ObjectAnimator.ofFloat(this.f20123try, "translationY", f2, 0.0f), ObjectAnimator.ofFloat(this.f20123try, "rotationX", 30.0f, 0.0f), ObjectAnimator.ofFloat(this.f20123try, "scaleX", 0.9f, 1.0f), ObjectAnimator.ofFloat(this.f20123try, "scaleY", 0.9f, 1.0f));
        animatorSet3.setStartDelay(100L);
        animatorSet3.addListener(new Cfor(animatorListenerAdapter));
        AnimatorSet animatorSet4 = new AnimatorSet();
        this.f20117case = animatorSet4;
        animatorSet4.playSequentially(animatorSet2, animatorSet3);
        this.f20117case.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        if (this.f20119class) {
            m24288do();
        }
        return super.onFinish(refreshLayout, z);
    }

    @Override // com.scwang.smartrefresh.layout.header.FalsifyHeader, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20121goto = refreshKernel;
        RefreshLayout refreshLayout = refreshKernel.getRefreshLayout();
        this.f20120else = refreshLayout;
        refreshLayout.setEnableOverScrollDrag(false);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        if (z || !this.f20119class) {
            if (i < 0) {
                if (this.f20116break <= 0) {
                    return;
                }
                i = 0;
                f = 0.0f;
            }
            this.f20116break = i;
            this.f20118catch = f;
            MountainSceneView mountainSceneView = this.f20122this;
            if (mountainSceneView != null) {
                mountainSceneView.m24342for(f);
                this.f20122this.postInvalidate();
            }
            View view = this.f20123try;
            if (view != null) {
                int i4 = i2 + i3;
                if (i4 > 0) {
                    view.setRotation((i * (-45.0f)) / i4);
                } else {
                    view.setRotation(f * (-45.0f));
                }
            }
        }
    }

    @Override // com.scwang.smartrefresh.layout.header.FalsifyHeader, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20121goto.animSpinner(0);
        float f = this.f20118catch;
        if (f > 0.0f) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 0.0f);
            valueAnimatorOfFloat.setDuration(300L);
            valueAnimatorOfFloat.addUpdateListener(new Cdo());
            valueAnimatorOfFloat.start();
            this.f20118catch = 0.0f;
        }
        if (this.f20123try == null || this.f20119class) {
            return;
        }
        AnimatorSet animatorSet = this.f20117case;
        if (animatorSet != null) {
            animatorSet.end();
            this.f20123try.clearAnimation();
        }
        this.f20119class = true;
        refreshLayout.setEnableRefresh(false);
        int width = ((View) this.f20120else).getWidth() - this.f20123try.getLeft();
        int i3 = ((-(this.f20123try.getTop() - this.f20116break)) * 2) / 3;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f20123try, "translationX", 0.0f, width);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f20123try, "translationY", 0.0f, i3);
        objectAnimatorOfFloat2.setInterpolator(PathInterpolatorCompat.create(0.7f, 1.0f));
        View view = this.f20123try;
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, Key.ROTATION, view.getRotation(), 0.0f);
        objectAnimatorOfFloat3.setInterpolator(new DecelerateInterpolator());
        View view2 = this.f20123try;
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view2, "rotationX", view2.getRotationX(), 50.0f);
        objectAnimatorOfFloat4.setInterpolator(new DecelerateInterpolator());
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(800L);
        View view3 = this.f20123try;
        float[] fArr = {view3.getScaleX(), 0.5f};
        View view4 = this.f20123try;
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4, ObjectAnimator.ofFloat(view3, "scaleX", fArr), ObjectAnimator.ofFloat(view4, "scaleY", view4.getScaleY(), 0.5f));
        this.f20117case = animatorSet2;
        animatorSet2.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        MountainSceneView mountainSceneView;
        if (iArr.length <= 0 || (mountainSceneView = this.f20122this) == null) {
            return;
        }
        mountainSceneView.setPrimaryColor(iArr[0]);
    }

    public FlyRefreshHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20116break = 0;
        this.f20119class = false;
    }
}
