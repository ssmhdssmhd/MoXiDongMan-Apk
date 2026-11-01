package android.support.v4;

import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public abstract class nb1 extends Drawable {

    /* renamed from: do, reason: not valid java name */
    public Paint f4163do;

    public nb1() {
        Paint paint = new Paint();
        this.f4163do = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f4163do.setAntiAlias(true);
        this.f4163do.setColor(-5592406);
    }

    /* renamed from: do, reason: not valid java name */
    public void m5148do(int i) {
        this.f4163do.setColor(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f4163do.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4163do.setColorFilter(colorFilter);
    }
}
