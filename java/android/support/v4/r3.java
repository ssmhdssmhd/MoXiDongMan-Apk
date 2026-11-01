package android.support.v4;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class r3 extends nb1 {

    /* renamed from: if, reason: not valid java name */
    private int f5591if = 0;

    /* renamed from: for, reason: not valid java name */
    private int f5590for = 0;

    /* renamed from: new, reason: not valid java name */
    private Path f5592new = new Path();

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (this.f5591if != iWidth || this.f5590for != iHeight) {
            this.f5592new.reset();
            float f = (iWidth * 30) / 225;
            float f2 = f * 0.70710677f;
            float f3 = f / 0.70710677f;
            float f4 = iWidth;
            float f5 = f4 / 2.0f;
            float f6 = iHeight;
            this.f5592new.moveTo(f5, f6);
            float f7 = f6 / 2.0f;
            this.f5592new.lineTo(0.0f, f7);
            float f8 = f7 - f2;
            this.f5592new.lineTo(f2, f8);
            float f9 = f / 2.0f;
            float f10 = f5 - f9;
            float f11 = (f6 - f3) - f9;
            this.f5592new.lineTo(f10, f11);
            this.f5592new.lineTo(f10, 0.0f);
            float f12 = f5 + f9;
            this.f5592new.lineTo(f12, 0.0f);
            this.f5592new.lineTo(f12, f11);
            this.f5592new.lineTo(f4 - f2, f8);
            this.f5592new.lineTo(f4, f7);
            this.f5592new.close();
            this.f5591if = iWidth;
            this.f5590for = iHeight;
        }
        canvas.drawPath(this.f5592new, this.f4163do);
    }
}
