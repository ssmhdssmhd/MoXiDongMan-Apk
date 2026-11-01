package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.catch, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccatch extends Cimport {

    /* renamed from: for, reason: not valid java name */
    public float[] f18318for = {1.0f, 1.0f, 1.0f};

    /* renamed from: new, reason: not valid java name */
    public int[] f18319new = {255, 255, 255};

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.catch$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18320do;

        public Cdo(int i) {
            this.f18320do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Ccatch.this.f18318for[this.f18320do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Ccatch.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.catch$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18322do;

        public Cif(int i) {
            this.f18322do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Ccatch.this.f18319new[this.f18322do] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Ccatch.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        long[] jArr = {0, 200, 400};
        for (int i = 0; i < 3; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.setStartDelay(jArr[i]);
            valueAnimatorOfFloat.start();
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 0);
            valueAnimatorOfInt.setInterpolator(new LinearInterpolator());
            valueAnimatorOfInt.setDuration(1000L);
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.addUpdateListener(new Cif(i));
            valueAnimatorOfFloat.setStartDelay(jArr[i]);
            valueAnimatorOfInt.start();
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfInt);
        }
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        for (int i = 0; i < 3; i++) {
            paint.setAlpha(this.f18319new[i]);
            float[] fArr = this.f18318for;
            canvas.scale(fArr[i], fArr[i], m22845case() / 2, m22850new() / 2);
            canvas.drawCircle(m22845case() / 2, m22850new() / 2, (m22845case() / 2) - 4.0f, paint);
        }
    }
}
