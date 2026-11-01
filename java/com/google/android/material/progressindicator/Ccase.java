package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.ft0;
import android.support.v4.qx0;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.common.collect.LinkedHashMultimap;

/* renamed from: com.google.android.material.progressindicator.case, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccase extends Cnew<ft0> {

    /* renamed from: for, reason: not valid java name */
    private float f12355for;

    /* renamed from: new, reason: not valid java name */
    private float f12356new;

    /* renamed from: try, reason: not valid java name */
    private float f12357try;

    public Ccase(@NonNull ft0 ft0Var) {
        super(ft0Var);
        this.f12355for = 300.0f;
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m13809goto(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        canvas.save();
        canvas.translate(f3, 0.0f);
        if (!z) {
            canvas.rotate(180.0f);
        }
        float f4 = ((-f) / 2.0f) + f2;
        float f5 = (f / 2.0f) - f2;
        canvas.drawRect(-f2, f4, 0.0f, f5, paint);
        canvas.save();
        canvas.translate(0.0f, f4);
        canvas.drawArc(rectF, 180.0f, 90.0f, true, paint);
        canvas.restore();
        canvas.translate(0.0f, f5);
        canvas.drawArc(rectF, 180.0f, -90.0f, true, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: do, reason: not valid java name */
    public void mo13810do(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.f12355for = clipBounds.width();
        float f2 = ((ft0) this.f12428do).f4131do;
        canvas.translate(clipBounds.left + (clipBounds.width() / 2.0f), clipBounds.top + (clipBounds.height() / 2.0f) + Math.max(0.0f, (clipBounds.height() - ((ft0) this.f12428do).f4131do) / 2.0f));
        if (((ft0) this.f12428do).f1990this) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f12429if.mo13792catch() && ((ft0) this.f12428do).f4135try == 1) || (this.f12429if.mo13791break() && ((ft0) this.f12428do).f4130case == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f12429if.mo13792catch() || this.f12429if.mo13791break()) {
            canvas.translate(0.0f, (((ft0) this.f12428do).f4131do * (f - 1.0f)) / 2.0f);
        }
        float f3 = this.f12355for;
        canvas.clipRect((-f3) / 2.0f, (-f2) / 2.0f, f3 / 2.0f, f2 / 2.0f);
        S s = this.f12428do;
        this.f12356new = ((ft0) s).f4131do * f;
        this.f12357try = ((ft0) s).f4133if * f;
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: for, reason: not valid java name */
    public void mo13811for(@NonNull Canvas canvas, @NonNull Paint paint) {
        int iM6674do = qx0.m6674do(((ft0) this.f12428do).f4134new, this.f12429if.getAlpha());
        float f = ((-this.f12355for) / 2.0f) + this.f12357try;
        float f2 = -f;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(iM6674do);
        float f3 = this.f12356new;
        canvas.drawRect(f, (-f3) / 2.0f, f2, f3 / 2.0f, paint);
        float f4 = this.f12357try;
        RectF rectF = new RectF(-f4, -f4, f4, f4);
        m13809goto(canvas, paint, this.f12356new, this.f12357try, f, true, rectF);
        m13809goto(canvas, paint, this.f12356new, this.f12357try, f2, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: if, reason: not valid java name */
    public void mo13812if(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2, @ColorInt int i) {
        if (f == f2) {
            return;
        }
        float f3 = this.f12355for;
        float f4 = this.f12357try;
        float f5 = ((-f3) / 2.0f) + f4 + ((f3 - (f4 * 2.0f)) * f);
        float f6 = ((-f3) / 2.0f) + f4 + ((f3 - (f4 * 2.0f)) * f2);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i);
        float f7 = this.f12356new;
        canvas.drawRect(f5, (-f7) / 2.0f, f6, f7 / 2.0f, paint);
        float f8 = this.f12357try;
        RectF rectF = new RectF(-f8, -f8, f8, f8);
        m13809goto(canvas, paint, this.f12356new, this.f12357try, f5, true, rectF);
        m13809goto(canvas, paint, this.f12356new, this.f12357try, f6, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: new, reason: not valid java name */
    public int mo13813new() {
        return ((ft0) this.f12428do).f4131do;
    }

    @Override // com.google.android.material.progressindicator.Cnew
    /* renamed from: try, reason: not valid java name */
    public int mo13814try() {
        return -1;
    }
}
