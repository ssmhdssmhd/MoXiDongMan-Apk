package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif extends Cimport {

    /* renamed from: for, reason: not valid java name */
    public float f18368for = 1.0f;

    /* renamed from: new, reason: not valid java name */
    public float f18369new;

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.if$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cif.this.f18368for = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cif.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.if$if, reason: invalid class name and collision with other inner class name */
    public class C0174if implements ValueAnimator.AnimatorUpdateListener {
        public C0174if() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cif.this.f18369new = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cif.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.6f, 0.5f, 1.0f);
        valueAnimatorOfFloat.setDuration(750L);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.addUpdateListener(new Cdo());
        valueAnimatorOfFloat.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        valueAnimatorOfFloat2.setDuration(750L);
        valueAnimatorOfFloat2.setRepeatCount(-1);
        valueAnimatorOfFloat2.addUpdateListener(new C0174if());
        valueAnimatorOfFloat2.start();
        arrayList.add(valueAnimatorOfFloat);
        arrayList.add(valueAnimatorOfFloat2);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(3.0f);
        float fM22845case = m22845case() / 2;
        float fM22850new = m22850new() / 2;
        canvas.translate(fM22845case, fM22850new);
        float f = this.f18368for;
        canvas.scale(f, f);
        canvas.rotate(this.f18369new);
        canvas.drawArc(new RectF((-fM22845case) + 12.0f, (-fM22850new) + 12.0f, (fM22845case + 0.0f) - 12.0f, (fM22850new + 0.0f) - 12.0f), -45.0f, 270.0f, false, paint);
    }
}
