package android.support.v4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;

/* loaded from: classes2.dex */
public class bh1 extends ImageSpan {

    /* renamed from: new, reason: not valid java name */
    public static final int f438new = -100;

    /* renamed from: do, reason: not valid java name */
    private float f439do;

    /* renamed from: for, reason: not valid java name */
    private int f440for;

    /* renamed from: if, reason: not valid java name */
    private boolean f441if;

    public bh1(Drawable drawable, int i) {
        super(drawable, i);
        this.f439do = -1.0f;
        this.f441if = false;
    }

    /* renamed from: do, reason: not valid java name */
    public void m542do(boolean z) {
        this.f441if = z;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        if (((ImageSpan) this).mVerticalAlignment != -100) {
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            return;
        }
        Drawable drawable = getDrawable();
        canvas.save();
        int i6 = paint.getFontMetricsInt().top;
        canvas.translate(f, i4 + i6 + (((r5.bottom - i6) - (drawable.getBounds().bottom - drawable.getBounds().top)) / 2));
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (this.f441if) {
            this.f440for = getDrawable().getBounds().right;
        } else {
            this.f440for = super.getSize(paint, charSequence, i, i2, fontMetricsInt);
        }
        if (this.f439do > 0.0f) {
            this.f440for = (int) (paint.measureText("子") * this.f439do);
        }
        return this.f440for;
    }

    public bh1(Drawable drawable, int i, float f) {
        this(drawable, i);
        if (f >= 0.0f) {
            this.f439do = f;
        }
    }
}
