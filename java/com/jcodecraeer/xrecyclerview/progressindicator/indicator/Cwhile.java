package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.while, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cwhile extends Cimport {

    /* renamed from: for, reason: not valid java name */
    public float[] f18420for = new float[2];

    /* renamed from: new, reason: not valid java name */
    public float[] f18421new = new float[2];

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.while$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18422do;

        public Cdo(int i) {
            this.f18422do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cwhile.this.f18420for[this.f18422do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cwhile.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.while$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18424do;

        public Cif(int i) {
            this.f18424do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cwhile.this.f18421new[this.f18424do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cwhile.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        float fM22845case = m22845case() / 6;
        float fM22845case2 = m22845case() / 6;
        for (int i = 0; i < 2; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fM22845case, m22845case() - fM22845case, m22845case() / 2, fM22845case);
            if (i == 1) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(m22845case() - fM22845case, fM22845case, m22845case() / 2, m22845case() - fM22845case);
            }
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(fM22845case2, fM22845case2, m22850new() / 2, fM22845case2);
            if (i == 1) {
                valueAnimatorOfFloat2 = ValueAnimator.ofFloat(m22850new() - fM22845case2, m22850new() - fM22845case2, m22850new() / 2, m22850new() - fM22845case2);
            }
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            valueAnimatorOfFloat2.setDuration(1000L);
            valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat2.setRepeatCount(-1);
            valueAnimatorOfFloat2.addUpdateListener(new Cif(i));
            valueAnimatorOfFloat2.start();
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfFloat2);
        }
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        for (int i = 0; i < 2; i++) {
            canvas.save();
            canvas.translate(this.f18420for[i], this.f18421new[i]);
            canvas.drawCircle(0.0f, 0.0f, m22845case() / 10, paint);
            canvas.restore();
        }
    }
}
