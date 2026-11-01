package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.native, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cnative extends Cimport {

    /* renamed from: try, reason: not valid java name */
    public float f18379try;

    /* renamed from: for, reason: not valid java name */
    public float[] f18377for = new float[2];

    /* renamed from: new, reason: not valid java name */
    public float[] f18378new = new float[2];

    /* renamed from: case, reason: not valid java name */
    public float f18376case = 1.0f;

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.native$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18380do;

        public Cdo(int i) {
            this.f18380do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cnative.this.f18377for[this.f18380do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cnative.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.native$for, reason: invalid class name */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cnative.this.f18376case = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cnative.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.native$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18383do;

        public Cif(int i) {
            this.f18383do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cnative.this.f18378new[this.f18383do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cnative.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.native$new, reason: invalid class name */
    public class Cnew implements ValueAnimator.AnimatorUpdateListener {
        public Cnew() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cnative.this.f18379try = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cnative.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        float fM22845case = m22845case() / 5;
        float fM22850new = m22850new() / 5;
        for (int i = 0; i < 2; i++) {
            this.f18377for[i] = fM22845case;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fM22845case, m22845case() - fM22845case, m22845case() - fM22845case, fM22845case, fM22845case);
            if (i == 1) {
                valueAnimatorOfFloat = ValueAnimator.ofFloat(m22845case() - fM22845case, fM22845case, fM22845case, m22845case() - fM22845case, m22845case() - fM22845case);
            }
            valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat.setDuration(1600L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            this.f18378new[i] = fM22850new;
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(fM22850new, fM22850new, m22850new() - fM22850new, m22850new() - fM22850new, fM22850new);
            if (i == 1) {
                valueAnimatorOfFloat2 = ValueAnimator.ofFloat(m22850new() - fM22850new, m22850new() - fM22850new, fM22850new, fM22850new, m22850new() - fM22850new);
            }
            valueAnimatorOfFloat2.setDuration(1600L);
            valueAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            valueAnimatorOfFloat2.setRepeatCount(-1);
            valueAnimatorOfFloat2.addUpdateListener(new Cif(i));
            valueAnimatorOfFloat2.start();
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfFloat2);
        }
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f, 0.5f, 1.0f);
        valueAnimatorOfFloat3.setDuration(1600L);
        valueAnimatorOfFloat3.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat3.setRepeatCount(-1);
        valueAnimatorOfFloat3.addUpdateListener(new Cfor());
        valueAnimatorOfFloat3.start();
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f, 540.0f, 720.0f);
        valueAnimatorOfFloat4.setDuration(1600L);
        valueAnimatorOfFloat4.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat4.setRepeatCount(-1);
        valueAnimatorOfFloat4.addUpdateListener(new Cnew());
        valueAnimatorOfFloat4.start();
        arrayList.add(valueAnimatorOfFloat3);
        arrayList.add(valueAnimatorOfFloat4);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = m22845case() / 5;
        float fM22850new = m22850new() / 5;
        for (int i = 0; i < 2; i++) {
            canvas.save();
            canvas.translate(this.f18377for[i], this.f18378new[i]);
            canvas.rotate(this.f18379try);
            float f = this.f18376case;
            canvas.scale(f, f);
            canvas.drawRect(new RectF((-fM22845case) / 2.0f, (-fM22850new) / 2.0f, fM22845case / 2.0f, fM22850new / 2.0f), paint);
            canvas.restore();
        }
    }
}
