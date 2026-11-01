package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.return, reason: invalid class name */
/* loaded from: classes2.dex */
public class Creturn extends Cimport {

    /* renamed from: new, reason: not valid java name */
    public static final float f18396new = 1.0f;

    /* renamed from: for, reason: not valid java name */
    public float[] f18397for = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.return$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18398do;

        public Cdo(int i) {
            this.f18398do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Creturn.this.f18397for[this.f18398do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Creturn.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        long[] jArr = {1260, 430, 1010, 730};
        long[] jArr2 = {770, 290, 280, 740};
        for (int i = 0; i < 4; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.4f, 1.0f);
            valueAnimatorOfFloat.setDuration(jArr[i]);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(jArr2[i]);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            arrayList.add(valueAnimatorOfFloat);
        }
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = m22845case() / 9;
        float fM22850new = m22850new() / 2;
        for (int i = 0; i < 4; i++) {
            canvas.save();
            float f = fM22845case / 2.0f;
            canvas.translate((((i * 2) + 2) * fM22845case) - f, fM22850new);
            float[] fArr = this.f18397for;
            canvas.scale(fArr[i], fArr[i]);
            canvas.drawRoundRect(new RectF((-fM22845case) / 2.0f, (-m22850new()) / 2.5f, f, m22850new() / 2.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}
