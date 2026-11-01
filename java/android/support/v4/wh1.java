package android.support.v4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class wh1 extends ReplacementSpan {

    /* renamed from: do, reason: not valid java name */
    private int f7524do;

    /* renamed from: for, reason: not valid java name */
    private Paint f7525for;

    /* renamed from: if, reason: not valid java name */
    private int f7526if;

    /* renamed from: new, reason: not valid java name */
    private Typeface f7527new;

    public wh1(int i, int i2) {
        this(i, i2, null);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, @NonNull Paint paint) {
        canvas.drawText(charSequence, i, i2, f, i4 + this.f7526if, this.f7525for);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        Paint paint2 = new Paint(paint);
        this.f7525for = paint2;
        paint2.setTextSize(this.f7524do);
        this.f7525for.setTypeface(this.f7527new);
        if (this.f7524do > paint.getTextSize() && fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = this.f7525for.getFontMetricsInt();
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return (int) this.f7525for.measureText(charSequence, i, i2);
    }

    public wh1(int i, int i2, Typeface typeface) {
        this.f7524do = i;
        this.f7526if = i2;
        this.f7527new = typeface;
    }
}
