package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor extends Cimport {

    /* renamed from: for, reason: not valid java name */
    public float f18361for = 1.0f;

    /* renamed from: new, reason: not valid java name */
    public float f18362new;

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.for$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cfor.this.f18361for = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cfor.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.for$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cfor.this.f18362new = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cfor.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.6f, 1.0f);
        valueAnimatorOfFloat.setDuration(1000L);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.addUpdateListener(new Cdo());
        valueAnimatorOfFloat.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        valueAnimatorOfFloat2.setDuration(1000L);
        valueAnimatorOfFloat2.setRepeatCount(-1);
        valueAnimatorOfFloat2.addUpdateListener(new Cif());
        valueAnimatorOfFloat2.start();
        arrayList.add(valueAnimatorOfFloat);
        arrayList.add(valueAnimatorOfFloat2);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        float fM22845case = m22845case() / 2;
        float fM22850new = m22850new() / 2;
        canvas.save();
        canvas.translate(fM22845case, fM22850new);
        float f = this.f18361for;
        canvas.scale(f, f);
        canvas.rotate(this.f18362new);
        float[] fArr = {135.0f, -45.0f};
        for (int i = 0; i < 2; i++) {
            canvas.drawArc(new RectF((-fM22845case) + 12.0f, (-fM22850new) + 12.0f, fM22845case - 12.0f, fM22850new - 12.0f), fArr[i], 90.0f, false, paint);
        }
        canvas.restore();
        canvas.translate(fM22845case, fM22850new);
        float f2 = this.f18361for;
        canvas.scale(f2, f2);
        canvas.rotate(-this.f18362new);
        float[] fArr2 = {225.0f, 45.0f};
        for (int i2 = 0; i2 < 2; i2++) {
            canvas.drawArc(new RectF(((-fM22845case) / 1.8f) + 12.0f, ((-fM22850new) / 1.8f) + 12.0f, (fM22845case / 1.8f) - 12.0f, (fM22850new / 1.8f) - 12.0f), fArr2[i2], 90.0f, false, paint);
        }
    }
}
