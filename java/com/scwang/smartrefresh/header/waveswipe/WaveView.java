package com.scwang.smartrefresh.header.waveswipe;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.j30;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.BounceInterpolator;
import androidx.annotation.ColorInt;

/* loaded from: classes2.dex */
public class WaveView extends View implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: default, reason: not valid java name */
    public static final int f20437default = 1000;

    /* renamed from: extends, reason: not valid java name */
    public static final float f20438extends = 0.2f;

    /* renamed from: finally, reason: not valid java name */
    public static final int f20439finally = -1728053248;

    /* renamed from: return, reason: not valid java name */
    public static final long f20442return = 500;

    /* renamed from: static, reason: not valid java name */
    public static final long f20443static = 500;

    /* renamed from: switch, reason: not valid java name */
    public static final long f20444switch = 500;

    /* renamed from: throws, reason: not valid java name */
    public static final int f20445throws = 200;

    /* renamed from: break, reason: not valid java name */
    public int f20446break;

    /* renamed from: case, reason: not valid java name */
    public Path f20447case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f20448catch;

    /* renamed from: class, reason: not valid java name */
    public boolean f20449class;

    /* renamed from: const, reason: not valid java name */
    public int f20450const;

    /* renamed from: do, reason: not valid java name */
    public float f20451do;

    /* renamed from: else, reason: not valid java name */
    public RectF f20452else;

    /* renamed from: final, reason: not valid java name */
    public ValueAnimator f20453final;

    /* renamed from: for, reason: not valid java name */
    public Path f20454for;

    /* renamed from: goto, reason: not valid java name */
    public int f20455goto;

    /* renamed from: if, reason: not valid java name */
    public Paint f20456if;

    /* renamed from: import, reason: not valid java name */
    public ValueAnimator f20457import;

    /* renamed from: native, reason: not valid java name */
    public ValueAnimator f20458native;

    /* renamed from: new, reason: not valid java name */
    public Path f20459new;

    /* renamed from: public, reason: not valid java name */
    public ValueAnimator.AnimatorUpdateListener f20460public;

    /* renamed from: super, reason: not valid java name */
    public ValueAnimator f20461super;

    /* renamed from: this, reason: not valid java name */
    public float f20462this;

    /* renamed from: throw, reason: not valid java name */
    public ValueAnimator f20463throw;

    /* renamed from: try, reason: not valid java name */
    public Path f20464try;

    /* renamed from: while, reason: not valid java name */
    public ValueAnimator f20465while;

    /* renamed from: package, reason: not valid java name */
    public static final float[][] f20440package = {new float[]{0.1655f, 0.0f}, new float[]{0.4188f, -0.0109f}, new float[]{0.4606f, -0.0049f}, new float[]{0.4893f, 0.0f}, new float[]{0.4893f, 0.0f}, new float[]{0.5f, 0.0f}};

    /* renamed from: private, reason: not valid java name */
    public static final float[][] f20441private = {new float[]{0.1655f, 0.0f}, new float[]{0.5237f, 0.0553f}, new float[]{0.4557f, 0.0936f}, new float[]{0.3908f, 0.1302f}, new float[]{0.4303f, 0.2173f}, new float[]{0.5f, 0.2173f}};

    /* renamed from: abstract, reason: not valid java name */
    public static final float[][] f20436abstract = {new float[]{0.1655f, 0.0f}, new float[]{0.5909f, 0.0f}, new float[]{0.4557f, 0.1642f}, new float[]{0.3941f, 0.2061f}, new float[]{0.4303f, 0.2889f}, new float[]{0.5f, 0.2889f}};

    /* renamed from: com.scwang.smartrefresh.header.waveswipe.WaveView$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaveView.this.postInvalidate();
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.waveswipe.WaveView$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {
        public Cfor() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            WaveView.this.m24410else();
            WaveView.this.f20448catch = false;
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.waveswipe.WaveView$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaveView.this.f20462this = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            WaveView waveView = WaveView.this;
            if (Build.VERSION.SDK_INT >= 16) {
                waveView.postInvalidateOnAnimation();
            } else {
                waveView.invalidate();
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.waveswipe.WaveView$new, reason: invalid class name */
    public class Cnew implements ValueAnimator.AnimatorUpdateListener {
        public Cnew() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            WaveView.this.f20454for.moveTo(0.0f, 0.0f);
            WaveView waveView = WaveView.this;
            Path path = waveView.f20454for;
            int i = waveView.f20455goto;
            float f = fFloatValue * 0.5f;
            path.quadTo(i * 0.25f, 0.0f, i * 0.333f, f);
            WaveView waveView2 = WaveView.this;
            Path path2 = waveView2.f20454for;
            int i2 = waveView2.f20455goto;
            path2.quadTo(i2 * 0.5f, fFloatValue * 1.4f, i2 * 0.666f, f);
            WaveView waveView3 = WaveView.this;
            Path path3 = waveView3.f20454for;
            int i3 = waveView3.f20455goto;
            path3.quadTo(i3 * 0.75f, 0.0f, i3, 0.0f);
            WaveView.this.postInvalidate();
        }
    }

    public WaveView(Context context) {
        super(context);
        this.f20451do = 100.0f;
        this.f20448catch = false;
        this.f20449class = false;
        this.f20460public = new Cdo();
        float f = getResources().getDisplayMetrics().density;
        Paint paint = new Paint();
        this.f20456if = paint;
        paint.setColor(-14575885);
        this.f20456if.setAntiAlias(true);
        this.f20456if.setStyle(Paint.Style.FILL);
        this.f20456if.setShadowLayer((int) ((f * 2.0f) + 0.5f), 0.0f, 0.0f, f20439finally);
        this.f20454for = new Path();
        this.f20459new = new Path();
        this.f20464try = new Path();
        this.f20447case = new Path();
        m24410else();
        this.f20452else = new RectF();
        setLayerType(1, null);
        getViewTreeObserver().addOnPreDrawListener(this);
    }

    /* renamed from: break, reason: not valid java name */
    public void m24405break() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 1.0f);
        this.f20457import = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1L);
        this.f20457import.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat((this.f20455goto / 1440.0f) * 500.0f, this.f20446break);
        this.f20465while = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(500L);
        this.f20465while.addUpdateListener(new Cif());
        this.f20465while.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f20465while.start();
        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, this.f20446break - this.f20451do);
        this.f20453final = valueAnimatorOfFloat3;
        valueAnimatorOfFloat3.setDuration(500L);
        this.f20453final.addUpdateListener(this.f20460public);
        this.f20453final.start();
        ValueAnimator valueAnimatorOfFloat4 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f20461super = valueAnimatorOfFloat4;
        valueAnimatorOfFloat4.setDuration(500L);
        this.f20461super.addUpdateListener(this.f20460public);
        this.f20461super.setInterpolator(new j30());
        this.f20461super.setStartDelay(500L);
        this.f20461super.start();
        ValueAnimator valueAnimatorOfFloat5 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f20463throw = valueAnimatorOfFloat5;
        valueAnimatorOfFloat5.setDuration(500L);
        this.f20463throw.addUpdateListener(this.f20460public);
        this.f20463throw.setInterpolator(new j30());
        this.f20463throw.setStartDelay(625L);
        this.f20463throw.start();
    }

    /* renamed from: case, reason: not valid java name */
    public void m24406case() {
        ValueAnimator valueAnimator = this.f20458native;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f20458native.cancel();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m24407catch(float f) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Math.min(f, 0.2f) * this.f20455goto, 0.0f);
        this.f20458native = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1000L);
        this.f20458native.addUpdateListener(new Cnew());
        this.f20458native.setInterpolator(new BounceInterpolator());
        this.f20458native.start();
    }

    /* renamed from: class, reason: not valid java name */
    public void m24408class(int i) {
        float f = i;
        if ((this.f20455goto / 1440.0f) * 500.0f > f) {
            return;
        }
        this.f20446break = (int) Math.min(f, getHeight() - this.f20451do);
        if (this.f20448catch) {
            this.f20448catch = false;
            m24416try();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m24409do() {
        if (this.f20457import.isRunning()) {
            return;
        }
        m24405break();
        m24407catch(0.1f);
    }

    /* renamed from: else, reason: not valid java name */
    public void m24410else() {
        this.f20453final = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f20461super = ValueAnimator.ofFloat(0.0f, 0.0f);
        this.f20463throw = ValueAnimator.ofFloat(0.0f, 0.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(-1000.0f, -1000.0f);
        this.f20465while = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(1.0f, 1.0f);
        this.f20457import = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(1L);
        this.f20457import.start();
    }

    /* renamed from: for, reason: not valid java name */
    public void m24411for(float f) {
        m24406case();
        this.f20454for.moveTo(0.0f, 0.0f);
        Path path = this.f20454for;
        int i = this.f20455goto;
        float[][] fArr = f20440package;
        path.cubicTo(fArr[0][0] * i, fArr[0][1], fArr[1][0] * i, (fArr[1][1] + f) * i, fArr[2][0] * i, i * (fArr[2][1] + f));
        Path path2 = this.f20454for;
        int i2 = this.f20455goto;
        path2.cubicTo(i2 * fArr[3][0], i2 * (fArr[3][1] + f), i2 * fArr[4][0], i2 * (fArr[4][1] + f), i2 * fArr[5][0], i2 * (fArr[5][1] + f));
        Path path3 = this.f20454for;
        int i3 = this.f20455goto;
        path3.cubicTo(i3 - (i3 * fArr[4][0]), i3 * (fArr[4][1] + f), i3 - (i3 * fArr[3][0]), i3 * (fArr[3][1] + f), i3 - (i3 * fArr[2][0]), i3 * (fArr[2][1] + f));
        Path path4 = this.f20454for;
        int i4 = this.f20455goto;
        path4.cubicTo(i4 - (i4 * fArr[1][0]), i4 * (fArr[1][1] + f), i4 - (i4 * fArr[0][0]), fArr[0][1], i4, 0.0f);
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            invalidate();
        }
    }

    public float getCurrentCircleCenterY() {
        return this.f20462this;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m24412goto(int i, int i2) {
        this.f20456if.setShadowLayer(i, 0.0f, 0.0f, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public void m24413if(float f, float f2) {
        m24406case();
        this.f20454for.moveTo(0.0f, 0.0f);
        Path path = this.f20454for;
        int i = this.f20455goto;
        float[][] fArr = f20441private;
        float f3 = fArr[0][0] * i;
        float f4 = fArr[0][1] * i;
        float[][] fArr2 = f20440package;
        path.cubicTo(f3, f4, Math.min(fArr2[1][0] + f2, fArr[1][0]) * i, Math.max((fArr2[1][1] + f) - f2, fArr[1][1]) * this.f20455goto, Math.max(fArr2[2][0] - f2, fArr[2][0]) * this.f20455goto, Math.max((fArr2[2][1] + f) - f2, fArr[2][1]) * this.f20455goto);
        Path path2 = this.f20454for;
        float fMax = this.f20455goto * Math.max(fArr2[3][0] - f2, fArr[3][0]);
        float fMin = this.f20455goto * Math.min(fArr2[3][1] + f + f2, fArr[3][1]);
        float fMax2 = this.f20455goto * Math.max(fArr2[4][0] - f2, fArr[4][0]);
        float fMin2 = this.f20455goto * Math.min(fArr2[4][1] + f + f2, fArr[4][1]);
        int i2 = this.f20455goto;
        path2.cubicTo(fMax, fMin, fMax2, fMin2, i2 * fArr[5][0], i2 * Math.min(fArr2[0][1] + f + f2, fArr[5][1]));
        Path path3 = this.f20454for;
        int i3 = this.f20455goto;
        float fMax3 = i3 - (i3 * Math.max(fArr2[4][0] - f2, fArr[4][0]));
        float fMin3 = this.f20455goto * Math.min(fArr2[4][1] + f + f2, fArr[4][1]);
        int i4 = this.f20455goto;
        float fMax4 = i4 - (i4 * Math.max(fArr2[3][0] - f2, fArr[3][0]));
        float fMin4 = this.f20455goto * Math.min(fArr2[3][1] + f + f2, fArr[3][1]);
        int i5 = this.f20455goto;
        path3.cubicTo(fMax3, fMin3, fMax4, fMin4, i5 - (i5 * Math.max(fArr2[2][0] - f2, fArr[2][0])), this.f20455goto * Math.max((fArr2[2][1] + f) - f2, fArr[2][1]));
        Path path4 = this.f20454for;
        int i6 = this.f20455goto;
        float fMin5 = i6 - (i6 * Math.min(fArr2[1][0] + f2, fArr[1][0]));
        float fMax5 = this.f20455goto * Math.max((fArr2[1][1] + f) - f2, fArr[1][1]);
        int i7 = this.f20455goto;
        path4.cubicTo(fMin5, fMax5, i7 - (i7 * fArr[0][0]), i7 * fArr[0][1], i7, 0.0f);
        this.f20462this = (this.f20455goto * Math.min(fArr2[3][1] + f + f2, fArr[3][1])) + this.f20451do;
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            invalidate();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m24414new(float f, float f2, float f3) {
        m24406case();
        this.f20454for.moveTo(0.0f, 0.0f);
        Path path = this.f20454for;
        int i = this.f20455goto;
        float[][] fArr = f20436abstract;
        float f4 = fArr[0][0] * i;
        float f5 = fArr[0][1] * i;
        float[][] fArr2 = f20440package;
        float f6 = fArr2[1][0] + f2;
        float[][] fArr3 = f20441private;
        path.cubicTo(f4, f5, Math.min(Math.min(f6, fArr3[1][0]) + f3, fArr[1][0]) * i, Math.max(Math.max((fArr2[1][1] + f) - f2, fArr3[1][1]) - f3, fArr[1][1]) * this.f20455goto, Math.max(fArr2[2][0] - f2, fArr[2][0]) * this.f20455goto, Math.min(Math.max((fArr2[2][1] + f) - f2, fArr3[2][1]) + f3, fArr[2][1]) * this.f20455goto);
        Path path2 = this.f20454for;
        float fMin = this.f20455goto * Math.min(Math.max(fArr2[3][0] - f2, fArr3[3][0]) + f3, fArr[3][0]);
        float fMin2 = this.f20455goto * Math.min(Math.min(fArr2[3][1] + f + f2, fArr3[3][1]) + f3, fArr[3][1]);
        float fMax = this.f20455goto * Math.max(fArr2[4][0] - f2, fArr[4][0]);
        float fMin3 = this.f20455goto * Math.min(Math.min(fArr2[4][1] + f + f2, fArr3[4][1]) + f3, fArr[4][1]);
        int i2 = this.f20455goto;
        path2.cubicTo(fMin, fMin2, fMax, fMin3, i2 * fArr[5][0], i2 * Math.min(Math.min(fArr2[0][1] + f + f2, fArr3[5][1]) + f3, fArr[5][1]));
        Path path3 = this.f20454for;
        int i3 = this.f20455goto;
        float fMax2 = i3 - (i3 * Math.max(fArr2[4][0] - f2, fArr[4][0]));
        float fMin4 = this.f20455goto * Math.min(Math.min(fArr2[4][1] + f + f2, fArr3[4][1]) + f3, fArr[4][1]);
        int i4 = this.f20455goto;
        float fMin5 = i4 - (i4 * Math.min(Math.max(fArr2[3][0] - f2, fArr3[3][0]) + f3, fArr[3][0]));
        float fMin6 = this.f20455goto * Math.min(Math.min(fArr2[3][1] + f + f2, fArr3[3][1]) + f3, fArr[3][1]);
        int i5 = this.f20455goto;
        path3.cubicTo(fMax2, fMin4, fMin5, fMin6, i5 - (i5 * Math.max(fArr2[2][0] - f2, fArr[2][0])), this.f20455goto * Math.min(Math.max((fArr2[2][1] + f) - f2, fArr3[2][1]) + f3, fArr[2][1]));
        Path path4 = this.f20454for;
        int i6 = this.f20455goto;
        float fMin7 = i6 - (i6 * Math.min(Math.min(fArr2[1][0] + f2, fArr3[1][0]) + f3, fArr[1][0]));
        float fMax3 = this.f20455goto * Math.max(Math.max((fArr2[1][1] + f) - f2, fArr3[1][1]) - f3, fArr[1][1]);
        int i7 = this.f20455goto;
        path4.cubicTo(fMin7, fMax3, i7 - (i7 * fArr[0][0]), i7 * fArr[0][1], i7, 0.0f);
        this.f20462this = (this.f20455goto * Math.min(Math.min(fArr2[3][1] + f + f2, fArr3[3][1]) + f3, fArr[3][1])) + this.f20451do;
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            invalidate();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f20457import;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f20457import.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator2 = this.f20465while;
        if (valueAnimator2 != null) {
            valueAnimator2.end();
            this.f20465while.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator3 = this.f20453final;
        if (valueAnimator3 != null) {
            valueAnimator3.end();
            this.f20453final.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator4 = this.f20458native;
        if (valueAnimator4 != null) {
            valueAnimator4.end();
            this.f20458native.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator5 = this.f20463throw;
        if (valueAnimator5 != null) {
            valueAnimator5.end();
            this.f20463throw.removeAllUpdateListeners();
        }
        ValueAnimator valueAnimator6 = this.f20461super;
        if (valueAnimator6 != null) {
            valueAnimator6.end();
            this.f20461super.removeAllUpdateListeners();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f20454for, this.f20456if);
        if (!isInEditMode()) {
            this.f20454for.rewind();
            this.f20459new.rewind();
            this.f20464try.rewind();
        }
        float fFloatValue = ((Float) this.f20465while.getAnimatedValue()).floatValue();
        float f = this.f20455goto / 2.0f;
        float fFloatValue2 = ((Float) this.f20457import.getAnimatedValue()).floatValue();
        float fFloatValue3 = ((Float) this.f20461super.getAnimatedValue()).floatValue();
        float fFloatValue4 = ((Float) this.f20463throw.getAnimatedValue()).floatValue();
        RectF rectF = this.f20452else;
        float f2 = this.f20451do;
        float f3 = fFloatValue3 + 1.0f;
        float f4 = 1.0f + fFloatValue4;
        rectF.set((f - ((f2 * f3) * fFloatValue2)) + ((f2 * fFloatValue4) / 2.0f), (((f2 * f4) * fFloatValue2) + fFloatValue) - ((f2 * fFloatValue3) / 2.0f), (((f3 * f2) * fFloatValue2) + f) - ((fFloatValue4 * f2) / 2.0f), (fFloatValue - ((f4 * f2) * fFloatValue2)) + ((f2 * fFloatValue3) / 2.0f));
        float fFloatValue5 = ((Float) this.f20453final.getAnimatedValue()).floatValue();
        this.f20459new.moveTo(f, fFloatValue5);
        double dPow = Math.pow(this.f20451do, 2.0d);
        double d = fFloatValue * fFloatValue5;
        Double.isNaN(d);
        double d2 = dPow + d;
        double d3 = fFloatValue;
        double dPow2 = d2 - Math.pow(d3, 2.0d);
        double d4 = fFloatValue5 - fFloatValue;
        Double.isNaN(d4);
        double d5 = dPow2 / d4;
        double d6 = this.f20455goto;
        Double.isNaN(d6);
        double d7 = (d6 * (-2.0d)) / 2.0d;
        Double.isNaN(d3);
        double d8 = -d7;
        double dPow3 = (d7 * d7) - (((Math.pow(d5 - d3, 2.0d) + Math.pow(f, 2.0d)) - Math.pow(this.f20451do, 2.0d)) * 4.0d);
        double dSqrt = (Math.sqrt(dPow3) + d8) / 2.0d;
        double dSqrt2 = (d8 - Math.sqrt(dPow3)) / 2.0d;
        float f5 = (float) d5;
        this.f20459new.lineTo((float) dSqrt, f5);
        this.f20459new.lineTo((float) dSqrt2, f5);
        this.f20459new.close();
        this.f20447case.set(this.f20459new);
        this.f20447case.addOval(this.f20452else, Path.Direction.CCW);
        this.f20464try.addOval(this.f20452else, Path.Direction.CCW);
        canvas.drawPath(this.f20459new, this.f20456if);
        canvas.drawPath(this.f20464try, this.f20456if);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        getViewTreeObserver().removeOnPreDrawListener(this);
        if (!this.f20449class) {
            return false;
        }
        m24408class(this.f20450const);
        return false;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f20455goto = i;
        this.f20451do = i / 14.4f;
        m24408class((int) Math.min(Math.min(i, i2), getHeight() - this.f20451do));
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void setWaveColor(@ColorInt int i) {
        this.f20456if.setColor(i);
        invalidate();
    }

    /* renamed from: this, reason: not valid java name */
    public void m24415this() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.f20457import = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(this.f20460public);
        this.f20457import.setDuration(200L);
        this.f20457import.addListener(new Cfor());
        this.f20457import.start();
    }

    /* renamed from: try, reason: not valid java name */
    public void m24416try() {
        if (this.f20448catch) {
            return;
        }
        this.f20448catch = true;
        int i = this.f20446break;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(i, i);
        this.f20465while = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
        int i2 = this.f20446break;
        float f = this.f20451do;
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(i2 - f, i2 - f);
        this.f20453final = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.start();
        this.f20462this = this.f20446break;
        postInvalidate();
    }
}
