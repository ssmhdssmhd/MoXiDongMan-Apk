package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.static, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cstatic extends Cpublic {

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.static$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18400do;

        public Cdo(int i) {
            this.f18400do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cstatic.this.f18393for[this.f18400do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cstatic.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cpublic, com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        long[] jArr = {500, 250, 0, 250, 500};
        for (int i = 0; i < 5; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            valueAnimatorOfFloat.setDuration(900L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(jArr[i]);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            arrayList.add(valueAnimatorOfFloat);
        }
        return arrayList;
    }
}
