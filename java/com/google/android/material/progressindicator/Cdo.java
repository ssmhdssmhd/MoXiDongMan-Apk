package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.v4.qx0;
import android.support.v4.zl;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.common.collect.LinkedHashMultimap;

/* renamed from: com.google.android.material.progressindicator.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo extends Cnew<zl> {

    /* renamed from: case, reason: not valid java name */
    private float f12358case;

    /* renamed from: for, reason: not valid java name */
    private int f12359for;

    /* renamed from: new, reason: not valid java name */
    private float f12360new;

    /* renamed from: try, reason: not valid java name */
    private float f12361try;

    public Cdo(@NonNull zl zlVar) {
        super(zlVar);
        this.f12359for = 1;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m13815goto(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        float f4 = z ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f3);
        float f5 = f / 2.0f;
        float f6 = f4 * f2;
        canvas.drawRect((this.f12358case - f5) + f2, Math.min(0.0f, this.f12359for * f6), (this.f12358case + f5) - f2, Math.max(0.0f, f6 * this.f12359for), paint);
        canvas.translate((this.f12358case - f5) + f2, 0.0f);
        canvas.drawArc(rectF, 180.0f, (-f4) * 90.0f * this.f12359for, true, paint);
        canvas.translate(f - (f2 * 2.0f), 0.0f);
        canvas.drawArc(rectF, 0.0f, f4 * 90.0f * this.f12359for, true, paint);
        canvas.restore();
    }

    /* renamed from: this, reason: not valid java name */
    private int m13816this() {
        S s = this.f12428do;
        return ((zl) s).f8593else + (((zl) s).f8594goto * 2);
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: do */
    public void mo13810do(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        S s = this.f12428do;
        float f2 = (((zl) s).f8593else / 2.0f) + ((zl) s).f8594goto;
        canvas.translate(f2, f2);
        canvas.rotate(-90.0f);
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        this.f12359for = ((zl) this.f12428do).f8595this == 0 ? 1 : -1;
        this.f12360new = ((zl) r5).f4131do * f;
        this.f12361try = ((zl) r5).f4133if * f;
        this.f12358case = (((zl) r5).f8593else - ((zl) r5).f4131do) / 2.0f;
        if ((this.f12429if.mo13792catch() && ((zl) this.f12428do).f4135try == 2) || (this.f12429if.mo13791break() && ((zl) this.f12428do).f4130case == 1)) {
            this.f12358case += ((1.0f - f) * ((zl) this.f12428do).f4131do) / 2.0f;
        } else if ((this.f12429if.mo13792catch() && ((zl) this.f12428do).f4135try == 1) || (this.f12429if.mo13791break() && ((zl) this.f12428do).f4130case == 2)) {
            this.f12358case -= ((1.0f - f) * ((zl) this.f12428do).f4131do) / 2.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: for */
    public void mo13811for(@NonNull Canvas canvas, @NonNull Paint paint) {
        int iM6674do = qx0.m6674do(((zl) this.f12428do).f4134new, this.f12429if.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(iM6674do);
        paint.setStrokeWidth(this.f12360new);
        float f = this.f12358case;
        canvas.drawArc(new RectF(-f, -f, f, f), 0.0f, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: if */
    public void mo13812if(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2, @ColorInt int i) {
        if (f == f2) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f12360new);
        int i2 = this.f12359for;
        float f3 = f * 360.0f * i2;
        float f4 = (f2 >= f ? f2 - f : (f2 + 1.0f) - f) * 360.0f * i2;
        float f5 = this.f12358case;
        canvas.drawArc(new RectF(-f5, -f5, f5, f5), f3, f4, false, paint);
        if (this.f12361try <= 0.0f || Math.abs(f4) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        float f6 = this.f12361try;
        RectF rectF = new RectF(-f6, -f6, f6, f6);
        m13815goto(canvas, paint, this.f12360new, this.f12361try, f3, true, rectF);
        m13815goto(canvas, paint, this.f12360new, this.f12361try, f3 + f4, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: new */
    public int mo13813new() {
        return m13816this();
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: try */
    public int mo13814try() {
        return m13816this();
    }
}
