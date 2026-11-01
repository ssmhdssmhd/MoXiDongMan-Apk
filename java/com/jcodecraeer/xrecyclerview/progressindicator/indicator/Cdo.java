package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends Cimport {

    /* renamed from: case, reason: not valid java name */
    public static final int f18338case = 255;

    /* renamed from: try, reason: not valid java name */
    public static final float f18339try = 1.0f;

    /* renamed from: for, reason: not valid java name */
    private float[] f18340for = {1.0f, 1.0f, 1.0f};

    /* renamed from: new, reason: not valid java name */
    public int[] f18341new = {255, 255, 255};

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.do$do, reason: invalid class name and collision with other inner class name */
    public class C0173do implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18342do;

        public C0173do(int i) {
            this.f18342do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cdo.this.f18340for[this.f18342do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cdo.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.do$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18344do;

        public Cif(int i) {
            this.f18344do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cdo.this.f18341new[this.f18344do] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Cdo.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        int[] iArr = {350, 0, 350};
        for (int i = 0; i < 3; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.75f, 1.0f);
            valueAnimatorOfFloat.setDuration(700L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(iArr[i]);
            valueAnimatorOfFloat.addUpdateListener(new C0173do(i));
            valueAnimatorOfFloat.start();
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 51, 255);
            valueAnimatorOfInt.setDuration(700L);
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.setStartDelay(iArr[i]);
            valueAnimatorOfInt.addUpdateListener(new Cif(i));
            valueAnimatorOfInt.start();
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfInt);
        }
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = (m22845case() - 8.0f) / 6.0f;
        float f = 2.0f * fM22845case;
        float fM22845case2 = (m22845case() / 2) - (f + 4.0f);
        float fM22850new = m22850new() / 2;
        for (int i = 0; i < 3; i++) {
            canvas.save();
            float f2 = i;
            canvas.translate((f * f2) + fM22845case2 + (f2 * 4.0f), fM22850new);
            float[] fArr = this.f18340for;
            canvas.scale(fArr[i], fArr[i]);
            paint.setAlpha(this.f18341new[i]);
            canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
            canvas.restore();
        }
    }
}
