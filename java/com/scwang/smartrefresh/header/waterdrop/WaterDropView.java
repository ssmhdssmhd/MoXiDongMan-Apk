package com.scwang.smartrefresh.header.waterdrop;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.support.v4.i02;
import android.support.v4.xl;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ColorInt;
import com.qmuiteam.qmui.widget.QMUIProgressBar;
import com.scwang.smartrefresh.header.waveswipe.WaveView;

/* loaded from: classes2.dex */
public class WaterDropView extends View {

    /* renamed from: else, reason: not valid java name */
    public static int f20427else = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f20428goto = 180;

    /* renamed from: case, reason: not valid java name */
    public int f20429case;

    /* renamed from: do, reason: not valid java name */
    public xl f20430do;

    /* renamed from: for, reason: not valid java name */
    public Path f20431for;

    /* renamed from: if, reason: not valid java name */
    public xl f20432if;

    /* renamed from: new, reason: not valid java name */
    public Paint f20433new;

    /* renamed from: try, reason: not valid java name */
    public int f20434try;

    /* renamed from: com.scwang.smartrefresh.header.waterdrop.WaterDropView$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaterDropView.this.m24402for(((Float) valueAnimator.getAnimatedValue()).floatValue());
            WaterDropView.this.postInvalidate();
        }
    }

    public WaterDropView(Context context) {
        super(context);
        this.f20430do = new xl();
        this.f20432if = new xl();
        this.f20431for = new Path();
        Paint paint = new Paint();
        this.f20433new = paint;
        paint.setColor(QMUIProgressBar.f19441continue);
        this.f20433new.setAntiAlias(true);
        this.f20433new.setStyle(Paint.Style.FILL_AND_STROKE);
        Paint paint2 = this.f20433new;
        int iM3194new = i02.m3194new(1.0f);
        f20427else = iM3194new;
        paint2.setStrokeWidth(iM3194new);
        Paint paint3 = this.f20433new;
        int i = f20427else;
        paint3.setShadowLayer(i, i / 2.0f, i, WaveView.f20439finally);
        setLayerType(1, null);
        int i2 = f20427else * 4;
        setPadding(i2, i2, i2, i2);
        this.f20433new.setColor(QMUIProgressBar.f19441continue);
        int iM3194new2 = i02.m3194new(20.0f);
        this.f20434try = iM3194new2;
        this.f20429case = iM3194new2 / 5;
        xl xlVar = this.f20430do;
        xlVar.f7983for = iM3194new2;
        xl xlVar2 = this.f20432if;
        xlVar2.f7983for = iM3194new2;
        int i3 = f20427else;
        xlVar.f7982do = i3 + iM3194new2;
        xlVar.f7984if = i3 + iM3194new2;
        xlVar2.f7982do = i3 + iM3194new2;
        xlVar2.f7984if = i3 + iM3194new2;
    }

    private double getAngle() {
        if (this.f20432if.f7983for > this.f20430do.f7983for) {
            return 0.0d;
        }
        return Math.asin((r3 - r1) / (r0.f7984if - r2.f7984if));
    }

    /* renamed from: if, reason: not valid java name */
    private void m24400if() {
        this.f20431for.reset();
        Path path = this.f20431for;
        xl xlVar = this.f20430do;
        path.addCircle(xlVar.f7982do, xlVar.f7984if, xlVar.f7983for, Path.Direction.CCW);
        if (this.f20432if.f7984if > this.f20430do.f7984if + i02.m3194new(1.0f)) {
            Path path2 = this.f20431for;
            xl xlVar2 = this.f20432if;
            path2.addCircle(xlVar2.f7982do, xlVar2.f7984if, xlVar2.f7983for, Path.Direction.CCW);
            double angle = getAngle();
            xl xlVar3 = this.f20430do;
            double d = xlVar3.f7982do;
            double d2 = xlVar3.f7983for;
            double dCos = Math.cos(angle);
            Double.isNaN(d2);
            Double.isNaN(d);
            float f = (float) (d - (d2 * dCos));
            xl xlVar4 = this.f20430do;
            double d3 = xlVar4.f7984if;
            double d4 = xlVar4.f7983for;
            double dSin = Math.sin(angle);
            Double.isNaN(d4);
            Double.isNaN(d3);
            float f2 = (float) (d3 + (d4 * dSin));
            xl xlVar5 = this.f20430do;
            double d5 = xlVar5.f7982do;
            double d6 = xlVar5.f7983for;
            double dCos2 = Math.cos(angle);
            Double.isNaN(d6);
            Double.isNaN(d5);
            float f3 = (float) (d5 + (d6 * dCos2));
            xl xlVar6 = this.f20432if;
            double d7 = xlVar6.f7982do;
            double d8 = xlVar6.f7983for;
            double dCos3 = Math.cos(angle);
            Double.isNaN(d8);
            Double.isNaN(d7);
            float f4 = (float) (d7 - (d8 * dCos3));
            xl xlVar7 = this.f20432if;
            double d9 = xlVar7.f7984if;
            double d10 = xlVar7.f7983for;
            double dSin2 = Math.sin(angle);
            Double.isNaN(d10);
            Double.isNaN(d9);
            float f5 = (float) (d9 + (d10 * dSin2));
            xl xlVar8 = this.f20432if;
            double d11 = xlVar8.f7982do;
            double d12 = xlVar8.f7983for;
            double dCos4 = Math.cos(angle);
            Double.isNaN(d12);
            Double.isNaN(d11);
            Path path3 = this.f20431for;
            xl xlVar9 = this.f20430do;
            path3.moveTo(xlVar9.f7982do, xlVar9.f7984if);
            this.f20431for.lineTo(f, f2);
            Path path4 = this.f20431for;
            xl xlVar10 = this.f20432if;
            path4.quadTo(xlVar10.f7982do - xlVar10.f7983for, (xlVar10.f7984if + this.f20430do.f7984if) / 2.0f, f4, f5);
            this.f20431for.lineTo((float) (d11 + (d12 * dCos4)), f5);
            Path path5 = this.f20431for;
            xl xlVar11 = this.f20432if;
            path5.quadTo(xlVar11.f7982do + xlVar11.f7983for, (xlVar11.f7984if + f2) / 2.0f, f3, f2);
        }
        this.f20431for.close();
    }

    /* renamed from: do, reason: not valid java name */
    public ValueAnimator m24401do() {
        ValueAnimator duration = ValueAnimator.ofFloat(1.0f, 0.001f).setDuration(180L);
        duration.setInterpolator(new DecelerateInterpolator());
        duration.addUpdateListener(new Cdo());
        return duration;
    }

    /* renamed from: for, reason: not valid java name */
    public void m24402for(float f) {
        int i = this.f20434try;
        double d = i;
        double d2 = f;
        Double.isNaN(d2);
        double d3 = i;
        Double.isNaN(d3);
        Double.isNaN(d);
        float f2 = ((this.f20429case - i) * f) + i;
        float f3 = f * 4.0f * i;
        xl xlVar = this.f20430do;
        xlVar.f7983for = (float) (d - ((d2 * 0.25d) * d3));
        xl xlVar2 = this.f20432if;
        xlVar2.f7983for = f2;
        xlVar2.f7984if = xlVar.f7984if + f3;
    }

    public xl getBottomCircle() {
        return this.f20432if;
    }

    public int getIndicatorColor() {
        return this.f20433new.getColor();
    }

    public int getMaxCircleRadius() {
        return this.f20434try;
    }

    public xl getTopCircle() {
        return this.f20430do;
    }

    /* renamed from: new, reason: not valid java name */
    public void m24403new(int i) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i2 = this.f20434try;
        float f = (i2 * 2) + paddingTop + paddingBottom;
        float f2 = i;
        if (f2 < f) {
            xl xlVar = this.f20430do;
            xlVar.f7983for = i2;
            xl xlVar2 = this.f20432if;
            xlVar2.f7983for = i2;
            xlVar2.f7984if = xlVar.f7984if;
            return;
        }
        float f3 = i2 - this.f20429case;
        float fMax = Math.max(0.0f, f2 - f);
        double d = f3;
        double dPow = 1.0d - Math.pow(100.0d, (-fMax) / i02.m3194new(200.0f));
        Double.isNaN(d);
        float f4 = (float) (d * dPow);
        xl xlVar3 = this.f20430do;
        int i3 = this.f20434try;
        xlVar3.f7983for = i3 - (f4 / 4.0f);
        xl xlVar4 = this.f20432if;
        float f5 = i3 - f4;
        xlVar4.f7983for = f5;
        xlVar4.f7984if = ((i - paddingTop) - paddingBottom) - f5;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        canvas.save();
        float f = height;
        float f2 = this.f20430do.f7983for;
        float f3 = paddingTop;
        float f4 = paddingBottom;
        if (f <= (f2 * 2.0f) + f3 + f4) {
            canvas.translate(paddingLeft, (f - (f2 * 2.0f)) - f4);
            xl xlVar = this.f20430do;
            canvas.drawCircle(xlVar.f7982do, xlVar.f7984if, xlVar.f7983for, this.f20433new);
        } else {
            canvas.translate(paddingLeft, f3);
            m24400if();
            canvas.drawPath(this.f20431for, this.f20433new);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m24403new(getHeight());
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f20434try;
        int i4 = f20427else;
        xl xlVar = this.f20432if;
        super.setMeasuredDimension(((i3 + i4) * 2) + getPaddingLeft() + getPaddingRight(), View.resolveSize(((int) Math.ceil(xlVar.f7984if + xlVar.f7983for + (i4 * 2))) + getPaddingTop() + getPaddingBottom(), i2));
    }

    public void setIndicatorColor(@ColorInt int i) {
        this.f20433new.setColor(i);
    }

    /* renamed from: try, reason: not valid java name */
    public void m24404try(int i, int i2) {
    }
}
