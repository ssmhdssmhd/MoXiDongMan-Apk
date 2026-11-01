package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.const, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cconst extends Ccatch {

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.const$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18326do;

        public Cdo(int i) {
            this.f18326do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cconst.this.f18318for[this.f18326do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cconst.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.const$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18328do;

        public Cif(int i) {
            this.f18328do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cconst.this.f18319new[this.f18328do] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Cconst.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Ccatch, com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
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
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 255);
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
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

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Ccatch, com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(3.0f);
        super.mo458for(canvas, paint);
    }
}
