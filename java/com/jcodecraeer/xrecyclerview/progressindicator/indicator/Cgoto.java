package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.oc;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.goto, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cgoto extends Cimport {

    /* renamed from: for, reason: not valid java name */
    public float[] f18365for = new float[3];

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.goto$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18366do;

        public Cdo(int i) {
            this.f18366do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cgoto.this.f18365for[this.f18366do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cgoto.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        float fM22845case = (m22845case() - 8.0f) / 6.0f;
        int[] iArr = {70, 140, oc.f4541try};
        for (int i = 0; i < 3; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(m22850new() / 2, (m22850new() / 2) - (2.0f * fM22845case), m22850new() / 2);
            valueAnimatorOfFloat.setDuration(600L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(iArr[i]);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            arrayList.add(valueAnimatorOfFloat);
        }
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = (m22845case() - 8.0f) / 6.0f;
        float f = 2.0f * fM22845case;
        float fM22845case2 = (m22845case() / 2) - (f + 4.0f);
        for (int i = 0; i < 3; i++) {
            canvas.save();
            float f2 = i;
            canvas.translate((f * f2) + fM22845case2 + (f2 * 4.0f), this.f18365for[i]);
            canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
            canvas.restore();
        }
    }
}
