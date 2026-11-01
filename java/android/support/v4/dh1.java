package android.support.v4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class dh1 extends ReplacementSpan {

    /* renamed from: do, reason: not valid java name */
    private int f1046do;

    public dh1(int i) {
        this.f1046do = i;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(@NonNull Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, @NonNull Paint paint) {
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt != null && !gh1.m2686super()) {
            int fontMetricsInt2 = (-this.f1046do) - paint.getFontMetricsInt(fontMetricsInt);
            fontMetricsInt.top = fontMetricsInt2;
            fontMetricsInt.ascent = fontMetricsInt2;
            fontMetricsInt.bottom = 0;
            fontMetricsInt.descent = 0;
        }
        return 0;
    }
}
