package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.throw, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cthrow extends Cwhile {

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.throw$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18412do;

        public Cdo(int i) {
            this.f18412do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cthrow.this.f18420for[this.f18412do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cthrow.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.throw$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18414do;

        public Cif(int i) {
            this.f18414do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cthrow.this.f18421new[this.f18414do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cthrow.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cwhile, com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        float fM22845case = m22845case() / 6;
        float fM22845case2 = m22845case() / 6;
        for (int i = 0; i < 2; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fM22845case, m22845case() - fM22845case, fM22845case, m22845case() - fM22845case, fM22845case);
            if (i == 1) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(m22845case() - fM22845case, fM22845case, m22845case() - fM22845case, fM22845case, m22845case() - fM22845case);
            }
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(fM22845case2, fM22845case2, m22850new() - fM22845case2, m22850new() - fM22845case2, fM22845case2);
            if (i == 1) {
                valueAnimatorOfFloat2 = ValueAnimator.ofFloat(m22850new() - fM22845case2, m22850new() - fM22845case2, fM22845case2, fM22845case2, m22850new() - fM22845case2);
            }
            valueAnimatorOfFloat.setDuration(2000L);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            valueAnimatorOfFloat2.setDuration(2000L);
            valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat2.setRepeatCount(-1);
            valueAnimatorOfFloat2.addUpdateListener(new Cif(i));
            valueAnimatorOfFloat2.start();
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfFloat2);
        }
        return arrayList;
    }
}
