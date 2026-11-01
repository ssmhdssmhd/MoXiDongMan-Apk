package cc.shinichi.library.view.helper;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import cc.shinichi.library.R;
import cc.shinichi.library.view.photoview.PhotoView;

/* loaded from: classes.dex */
public class FingerDragHelper extends LinearLayout {

    /* renamed from: class, reason: not valid java name */
    private static final int f8840class = 500;

    /* renamed from: const, reason: not valid java name */
    private static final long f8841const = 200;

    /* renamed from: break, reason: not valid java name */
    private onAlphaChangedListener f8843break;

    /* renamed from: case, reason: not valid java name */
    private boolean f8844case;

    /* renamed from: do, reason: not valid java name */
    private SubsamplingScaleImageViewDragClose f8845do;

    /* renamed from: else, reason: not valid java name */
    private int f8846else;

    /* renamed from: for, reason: not valid java name */
    private float f8847for;

    /* renamed from: goto, reason: not valid java name */
    private int f8848goto;

    /* renamed from: if, reason: not valid java name */
    private PhotoView f8849if;

    /* renamed from: new, reason: not valid java name */
    private float f8850new;

    /* renamed from: this, reason: not valid java name */
    private int f8851this;

    /* renamed from: try, reason: not valid java name */
    private float f8852try;

    /* renamed from: catch, reason: not valid java name */
    private static final String f8839catch = FingerDragHelper.class.getSimpleName();

    /* renamed from: final, reason: not valid java name */
    private static int f8842final = 500;

    /* renamed from: cc.shinichi.library.view.helper.FingerDragHelper$case, reason: invalid class name */
    public class Ccase implements Animator.AnimatorListener {
        public Ccase() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (FingerDragHelper.this.f8844case) {
                FingerDragHelper.this.f8850new = 0.0f;
                FingerDragHelper.this.invalidate();
                FingerDragHelper.this.m10556const();
            }
            FingerDragHelper.this.f8844case = false;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            FingerDragHelper.this.f8844case = true;
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.FingerDragHelper$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            cc.shinichi.library.view.nine.Cdo.m10688throws(FingerDragHelper.this, -((int) ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.FingerDragHelper$for, reason: invalid class name */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            cc.shinichi.library.view.nine.Cdo.m10688throws(FingerDragHelper.this, -((int) ((Float) valueAnimator.getAnimatedValue()).floatValue()));
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.FingerDragHelper$if, reason: invalid class name */
    public class Cif implements Animator.AnimatorListener {
        public Cif() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FingerDragHelper.this.m10556const();
            Activity activity = (Activity) FingerDragHelper.this.getContext();
            activity.finish();
            activity.overridePendingTransition(FingerDragHelper.this.f8846else, FingerDragHelper.this.f8848goto);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: cc.shinichi.library.view.helper.FingerDragHelper$new, reason: invalid class name */
    public class Cnew implements Animator.AnimatorListener {
        public Cnew() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FingerDragHelper.this.m10556const();
            ((Activity) FingerDragHelper.this.getContext()).finish();
            ((Activity) FingerDragHelper.this.getContext()).overridePendingTransition(FingerDragHelper.this.f8846else, FingerDragHelper.this.f8848goto);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface onAlphaChangedListener {
        void onTranslationYChanged(MotionEvent motionEvent, float f);
    }

    /* renamed from: cc.shinichi.library.view.helper.FingerDragHelper$try, reason: invalid class name */
    public class Ctry implements ValueAnimator.AnimatorUpdateListener {
        public Ctry() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (FingerDragHelper.this.f8844case) {
                FingerDragHelper.this.f8850new = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                FingerDragHelper fingerDragHelper = FingerDragHelper.this;
                fingerDragHelper.f8852try = fingerDragHelper.f8850new;
                FingerDragHelper fingerDragHelper2 = FingerDragHelper.this;
                cc.shinichi.library.view.nine.Cdo.m10688throws(fingerDragHelper2, -((int) fingerDragHelper2.f8850new));
            }
        }
    }

    public FingerDragHelper(Context context) {
        this(context, null);
    }

    /* renamed from: break, reason: not valid java name */
    private void m10552break() {
        this.f8851this = ViewConfiguration.getTouchSlop();
    }

    /* renamed from: catch, reason: not valid java name */
    private void m10554catch() {
        if (cc.shinichi.library.Cdo.m10382break().m10407public()) {
            if (Math.abs(this.f8850new) > 500.0f) {
                m10565this(this.f8850new);
                return;
            } else {
                m10559final();
                return;
            }
        }
        float f = this.f8850new;
        if (f > 500.0f) {
            m10565this(f);
        } else {
            m10559final();
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m10555class(MotionEvent motionEvent) {
        float rawY = (motionEvent.getRawY() - this.f8847for) + this.f8852try;
        this.f8850new = rawY;
        onAlphaChangedListener onalphachangedlistener = this.f8843break;
        if (onalphachangedlistener != null) {
            onalphachangedlistener.onTranslationYChanged(motionEvent, rawY);
        }
        cc.shinichi.library.view.nine.Cdo.m10688throws(this, -((int) this.f8850new));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public void m10556const() {
        onAlphaChangedListener onalphachangedlistener = this.f8843break;
        if (onalphachangedlistener != null) {
            onalphachangedlistener.onTranslationYChanged(null, this.f8850new);
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m10559final() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f8850new, 0.0f);
        valueAnimatorOfFloat.setDuration(f8841const);
        valueAnimatorOfFloat.addUpdateListener(new Ctry());
        valueAnimatorOfFloat.addListener(new Ccase());
        valueAnimatorOfFloat.start();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f8845do = (SubsamplingScaleImageViewDragClose) getChildAt(0);
        this.f8849if = (PhotoView) getChildAt(1);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & motionEvent.getActionMasked();
        if (action == 0) {
            this.f8847for = motionEvent.getRawY();
        } else if (action != 2) {
            return false;
        }
        if (!cc.shinichi.library.Cdo.m10382break().m10402native()) {
            return false;
        }
        PhotoView photoView = this.f8849if;
        if (photoView == null || photoView.getVisibility() != 0) {
            SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8845do;
            if (subsamplingScaleImageViewDragClose == null || subsamplingScaleImageViewDragClose.getVisibility() != 0 || this.f8845do.getScale() > this.f8845do.getMinScale() + 0.001f) {
                return false;
            }
            if ((this.f8845do.getMaxTouchCount() != 0 && this.f8845do.getMaxTouchCount() != 1) || Math.abs(motionEvent.getRawY() - this.f8847for) <= this.f8851this * 2 || !this.f8845do.f8873goto) {
                return false;
            }
        } else {
            if (this.f8849if.getScale() > this.f8849if.getMinimumScale() + 0.001f) {
                return false;
            }
            if ((this.f8849if.getMaxTouchCount() != 0 && this.f8849if.getMaxTouchCount() != 1) || Math.abs(motionEvent.getRawY() - this.f8847for) <= this.f8851this * 2) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & motionEvent.getActionMasked();
        if (action != 0) {
            if (action == 1) {
                m10554catch();
            } else if (action == 2) {
            }
            return true;
        }
        this.f8847for = motionEvent.getRawY();
        if (cc.shinichi.library.Cdo.m10382break().m10402native()) {
            PhotoView photoView = this.f8849if;
            if (photoView == null || photoView.getVisibility() != 0) {
                SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8845do;
                if (subsamplingScaleImageViewDragClose != null && subsamplingScaleImageViewDragClose.getVisibility() == 0) {
                    m10555class(motionEvent);
                }
            } else {
                m10555class(motionEvent);
            }
        }
        return true;
    }

    public void setOnAlphaChangeListener(onAlphaChangedListener onalphachangedlistener) {
        this.f8843break = onalphachangedlistener;
    }

    /* renamed from: this, reason: not valid java name */
    public void m10565this(float f) {
        if (f > 0.0f) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f8850new, getHeight());
            valueAnimatorOfFloat.addUpdateListener(new Cdo());
            valueAnimatorOfFloat.addListener(new Cif());
            valueAnimatorOfFloat.setDuration(f8841const);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.start();
            return;
        }
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.f8850new, -getHeight());
        valueAnimatorOfFloat2.addUpdateListener(new Cfor());
        valueAnimatorOfFloat2.addListener(new Cnew());
        valueAnimatorOfFloat2.setDuration(f8841const);
        valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat2.start();
    }

    public FingerDragHelper(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FingerDragHelper(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8844case = false;
        this.f8846else = R.anim.fade_in_150;
        this.f8848goto = R.anim.fade_out_150;
        m10552break();
    }
}
