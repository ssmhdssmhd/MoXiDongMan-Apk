package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cfinal;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.throws, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cthrows extends Cfinal {
    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cfinal, com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = m22845case() / 10;
        for (int i = 0; i < 8; i++) {
            canvas.save();
            double d = i;
            Double.isNaN(d);
            Cfinal.Cfor cforM22842class = m22842class(m22845case(), m22850new(), (m22845case() / 2.5f) - fM22845case, 0.7853981633974483d * d);
            canvas.translate(cforM22842class.f18356do, cforM22842class.f18358if);
            float[] fArr = this.f18352for;
            canvas.scale(fArr[i], fArr[i]);
            canvas.rotate(i * 45);
            paint.setAlpha(this.f18353new[i]);
            float f = -fM22845case;
            canvas.drawRoundRect(new RectF(f, f / 1.5f, fM22845case * 1.5f, fM22845case / 1.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}
