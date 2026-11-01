package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public class ha0 extends Drawable {

    /* renamed from: do, reason: not valid java name */
    private final Paint f2347do = new Paint(2);

    /* renamed from: for, reason: not valid java name */
    private int f2348for = 255;

    /* renamed from: if, reason: not valid java name */
    private Bitmap f2349if;

    /* renamed from: new, reason: not valid java name */
    private int f2350new;

    /* renamed from: try, reason: not valid java name */
    private int f2351try;

    public ha0(Bitmap bitmap) {
        m2973if(bitmap);
    }

    /* renamed from: do, reason: not valid java name */
    public Bitmap m2972do() {
        return this.f2349if;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Bitmap bitmap = this.f2349if;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.f2349if, (Rect) null, getBounds(), this.f2347do);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2348for;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2351try;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2350new;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f2351try;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f2350new;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: if, reason: not valid java name */
    public void m2973if(Bitmap bitmap) {
        this.f2349if = bitmap;
        if (bitmap != null) {
            this.f2350new = bitmap.getWidth();
            this.f2351try = this.f2349if.getHeight();
        } else {
            this.f2351try = 0;
            this.f2350new = 0;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f2348for = i;
        this.f2347do.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2347do.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f2347do.setFilterBitmap(z);
    }
}
