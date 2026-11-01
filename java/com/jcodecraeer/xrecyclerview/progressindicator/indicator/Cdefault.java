package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.default, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdefault extends Cimport {

    /* renamed from: case, reason: not valid java name */
    private float f18330case;

    /* renamed from: for, reason: not valid java name */
    private float f18331for;

    /* renamed from: new, reason: not valid java name */
    private int f18332new;

    /* renamed from: try, reason: not valid java name */
    private float f18333try;

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.default$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cdefault.this.f18331for = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cdefault.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.default$for, reason: invalid class name */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cdefault.this.f18333try = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cdefault.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.default$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cdefault.this.f18332new = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Cdefault.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.default$new, reason: invalid class name */
    public class Cnew implements ValueAnimator.AnimatorUpdateListener {
        public Cnew() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cdefault.this.f18330case = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cdefault.this.m22848goto();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m22838throw(Canvas canvas, Paint paint) {
        float fM22845case = m22845case() / 11;
        paint.setAlpha(this.f18332new);
        canvas.drawCircle(this.f18331for, m22850new() / 2, fM22845case, paint);
    }

    /* renamed from: while, reason: not valid java name */
    private void m22839while(Canvas canvas, Paint paint) {
        float fM22845case = m22845case() / 2;
        float fM22850new = m22850new() / 2;
        canvas.save();
        canvas.translate(fM22845case, fM22850new);
        canvas.rotate(this.f18333try);
        paint.setAlpha(255);
        float f = (-fM22845case) / 1.7f;
        float f2 = (-fM22850new) / 1.7f;
        float f3 = fM22845case / 1.7f;
        float f4 = fM22850new / 1.7f;
        canvas.drawArc(new RectF(f, f2, f3, f4), 0.0f, 270.0f, true, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(fM22845case, fM22850new);
        canvas.rotate(this.f18330case);
        paint.setAlpha(255);
        canvas.drawArc(new RectF(f, f2, f3, f4), 90.0f, 270.0f, true, paint);
        canvas.restore();
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(m22845case() - (m22845case() / 11), m22845case() / 2);
        valueAnimatorOfFloat.setDuration(650L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.addUpdateListener(new Cdo());
        valueAnimatorOfFloat.start();
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 122);
        valueAnimatorOfInt.setDuration(650L);
        valueAnimatorOfInt.setRepeatCount(-1);
        valueAnimatorOfInt.addUpdateListener(new Cif());
        valueAnimatorOfInt.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 45.0f, 0.0f);
        valueAnimatorOfFloat2.setDuration(650L);
        valueAnimatorOfFloat2.setRepeatCount(-1);
        valueAnimatorOfFloat2.addUpdateListener(new Cfor());
        valueAnimatorOfFloat2.start();
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, -45.0f, 0.0f);
        valueAnimatorOfFloat3.setDuration(650L);
        valueAnimatorOfFloat3.setRepeatCount(-1);
        valueAnimatorOfFloat3.addUpdateListener(new Cnew());
        valueAnimatorOfFloat3.start();
        arrayList.add(valueAnimatorOfFloat);
        arrayList.add(valueAnimatorOfInt);
        arrayList.add(valueAnimatorOfFloat2);
        arrayList.add(valueAnimatorOfFloat3);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        m22839while(canvas, paint);
        m22838throw(canvas, paint);
    }
}
