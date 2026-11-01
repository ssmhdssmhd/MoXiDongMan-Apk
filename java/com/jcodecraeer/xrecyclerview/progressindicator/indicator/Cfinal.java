package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.final, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfinal extends Cimport {

    /* renamed from: case, reason: not valid java name */
    public static final int f18350case = 255;

    /* renamed from: try, reason: not valid java name */
    public static final float f18351try = 1.0f;

    /* renamed from: for, reason: not valid java name */
    public float[] f18352for = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    /* renamed from: new, reason: not valid java name */
    public int[] f18353new = {255, 255, 255, 255, 255, 255, 255, 255};

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.final$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18354do;

        public Cdo(int i) {
            this.f18354do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cfinal.this.f18352for[this.f18354do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cfinal.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.final$for, reason: invalid class name */
    public final class Cfor {

        /* renamed from: do, reason: not valid java name */
        public float f18356do;

        /* renamed from: if, reason: not valid java name */
        public float f18358if;

        public Cfor(float f, float f2) {
            this.f18356do = f;
            this.f18358if = f2;
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.final$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18359do;

        public Cif(int i) {
            this.f18359do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cfinal.this.f18353new[this.f18359do] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Cfinal.this.m22848goto();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public Cfor m22842class(int i, int i2, float f, double d) {
        double d2 = i / 2;
        double d3 = f;
        double dCos = Math.cos(d);
        Double.isNaN(d3);
        Double.isNaN(d2);
        double d4 = i2 / 2;
        double dSin = Math.sin(d);
        Double.isNaN(d3);
        Double.isNaN(d4);
        return new Cfor((float) (d2 + (dCos * d3)), (float) (d4 + (d3 * dSin)));
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        int[] iArr = {0, 120, MountainSceneView.f20267finally, FunGameBattleCityHeader.u, 480, 600, 720, 780, 840};
        for (int i = 0; i < 8; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.4f, 1.0f);
            valueAnimatorOfFloat.setDuration(1000L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(iArr[i]);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 77, 255);
            valueAnimatorOfInt.setDuration(1000L);
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
        float fM22845case = m22845case() / 10;
        for (int i = 0; i < 8; i++) {
            canvas.save();
            double d = i;
            Double.isNaN(d);
            Cfor cforM22842class = m22842class(m22845case(), m22850new(), (m22845case() / 2) - fM22845case, 0.7853981633974483d * d);
            canvas.translate(cforM22842class.f18356do, cforM22842class.f18358if);
            float[] fArr = this.f18352for;
            canvas.scale(fArr[i], fArr[i]);
            paint.setAlpha(this.f18353new[i]);
            canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
            canvas.restore();
        }
    }
}
