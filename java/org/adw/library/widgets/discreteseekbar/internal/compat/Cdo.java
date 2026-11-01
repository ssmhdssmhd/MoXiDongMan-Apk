package org.adw.library.widgets.discreteseekbar.internal.compat;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat;

@TargetApi(11)
/* renamed from: org.adw.library.widgets.discreteseekbar.internal.compat.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends AnimatorCompat {

    /* renamed from: do, reason: not valid java name */
    public ValueAnimator f28371do;

    /* renamed from: org.adw.library.widgets.discreteseekbar.internal.compat.do$do, reason: invalid class name and collision with other inner class name */
    public class C0381do implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AnimatorCompat.AnimationFrameUpdateListener f28372do;

        public C0381do(AnimatorCompat.AnimationFrameUpdateListener animationFrameUpdateListener) {
            this.f28372do = animationFrameUpdateListener;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f28372do.onAnimationFrame(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public Cdo(float f, float f2, AnimatorCompat.AnimationFrameUpdateListener animationFrameUpdateListener) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        this.f28371do = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new C0381do(animationFrameUpdateListener));
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    /* renamed from: do */
    public void mo31764do() {
        this.f28371do.cancel();
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    /* renamed from: for */
    public boolean mo31765for() {
        return this.f28371do.isRunning();
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    /* renamed from: new */
    public void mo31766new(int i) {
        this.f28371do.setDuration(i);
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
    /* renamed from: try */
    public void mo31767try() {
        this.f28371do.start();
    }
}
