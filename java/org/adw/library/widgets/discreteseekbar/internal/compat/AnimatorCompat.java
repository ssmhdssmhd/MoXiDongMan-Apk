package org.adw.library.widgets.discreteseekbar.internal.compat;

import android.os.Build;

/* loaded from: classes3.dex */
public abstract class AnimatorCompat {

    public interface AnimationFrameUpdateListener {
        void onAnimationFrame(float f);
    }

    /* renamed from: org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat$do, reason: invalid class name */
    public static class Cdo extends AnimatorCompat {

        /* renamed from: do, reason: not valid java name */
        private final AnimationFrameUpdateListener f28369do;

        /* renamed from: if, reason: not valid java name */
        private final float f28370if;

        public Cdo(float f, float f2, AnimationFrameUpdateListener animationFrameUpdateListener) {
            this.f28369do = animationFrameUpdateListener;
            this.f28370if = f2;
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        /* renamed from: do */
        public void mo31764do() {
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        /* renamed from: for */
        public boolean mo31765for() {
            return false;
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        /* renamed from: new */
        public void mo31766new(int i) {
        }

        @Override // org.adw.library.widgets.discreteseekbar.internal.compat.AnimatorCompat
        /* renamed from: try */
        public void mo31767try() {
            this.f28369do.onAnimationFrame(this.f28370if);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static final AnimatorCompat m31763if(float f, float f2, AnimationFrameUpdateListener animationFrameUpdateListener) {
        return Build.VERSION.SDK_INT >= 11 ? new org.adw.library.widgets.discreteseekbar.internal.compat.Cdo(f, f2, animationFrameUpdateListener) : new Cdo(f, f2, animationFrameUpdateListener);
    }

    /* renamed from: do, reason: not valid java name */
    public abstract void mo31764do();

    /* renamed from: for, reason: not valid java name */
    public abstract boolean mo31765for();

    /* renamed from: new, reason: not valid java name */
    public abstract void mo31766new(int i);

    /* renamed from: try, reason: not valid java name */
    public abstract void mo31767try();
}
