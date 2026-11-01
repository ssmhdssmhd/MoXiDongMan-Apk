package android.support.v4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public class oh1 extends bh1 {

    /* renamed from: case, reason: not valid java name */
    private int f4614case;

    /* renamed from: else, reason: not valid java name */
    private int f4615else;

    /* renamed from: try, reason: not valid java name */
    private int f4616try;

    public oh1(Drawable drawable, int i, int i2, int i3) {
        super(drawable, i);
        this.f4616try = 0;
        this.f4614case = 0;
        this.f4615else = 0;
        this.f4616try = i2;
        this.f4614case = i3;
    }

    @Override // android.support.v4.bh1, android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        canvas.save();
        canvas.translate(0.0f, this.f4615else);
        super.draw(canvas, charSequence, i, i2, f + this.f4616try, i3, i4, i5, paint);
        canvas.restore();
    }

    @Override // android.support.v4.bh1, android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (this.f4616try == 0 && this.f4614case == 0) {
            return super.getSize(paint, charSequence, i, i2, fontMetricsInt);
        }
        super.getSize(paint, charSequence, i, i2, fontMetricsInt);
        return getDrawable().getIntrinsicWidth() + this.f4616try + this.f4614case;
    }

    public oh1(Drawable drawable, int i, int i2, int i3, int i4) {
        this(drawable, i, i2, i3);
        this.f4615else = i4;
    }
}
