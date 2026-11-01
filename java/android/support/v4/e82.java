package android.support.v4;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class e82 extends o12 {

    /* renamed from: try, reason: not valid java name */
    private RectF f1290try;

    public e82(@NonNull ColorStateList colorStateList) {
        super(colorStateList);
        this.f1290try = new RectF();
    }

    @Override // android.support.v4.o12
    /* renamed from: do, reason: not valid java name */
    public void mo1690do(Canvas canvas, Paint paint) {
        this.f1290try.set(getBounds());
        canvas.drawOval(this.f1290try, paint);
    }
}
