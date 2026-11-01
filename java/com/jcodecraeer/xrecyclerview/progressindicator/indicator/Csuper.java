package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.super, reason: invalid class name */
/* loaded from: classes2.dex */
public class Csuper extends Cimport {

    /* renamed from: for, reason: not valid java name */
    public float[] f18402for = new float[3];

    /* renamed from: new, reason: not valid java name */
    public float[] f18403new = new float[3];

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.super$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18404do;

        public Cdo(int i) {
            this.f18404do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Csuper.this.f18402for[this.f18404do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Csuper.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.super$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18406do;

        public Cif(int i) {
            this.f18406do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Csuper.this.f18403new[this.f18406do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Csuper.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        float fM22845case = m22845case() / 5;
        float fM22845case2 = m22845case() / 5;
        for (int i = 0; i < 3; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(m22845case() / 2, m22845case() - fM22845case, fM22845case, m22845case() / 2);
            if (i == 1) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(m22845case() - fM22845case, fM22845case, m22845case() / 2, m22845case() - fM22845case);
            } else if (i == 2) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(fM22845case, m22845case() / 2, m22845case() - fM22845case, fM22845case);
            }
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(fM22845case2, m22850new() - fM22845case2, m22850new() - fM22845case2, fM22845case2);
            if (i == 1) {
                valueAnimatorOfFloat2 = ValueAnimator.ofFloat(m22850new() - fM22845case2, m22850new() - fM22845case2, fM22845case2, m22850new() - fM22845case2);
            } else if (i == 2) {
                valueAnimatorOfFloat2 = ValueAnimator.ofFloat(m22850new() - fM22845case2, fM22845case2, m22850new() - fM22845case2, m22850new() - fM22845case2);
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

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        for (int i = 0; i < 3; i++) {
            canvas.save();
            canvas.translate(this.f18402for[i], this.f18403new[i]);
            canvas.drawCircle(0.0f, 0.0f, m22845case() / 10, paint);
            canvas.restore();
        }
    }
}
