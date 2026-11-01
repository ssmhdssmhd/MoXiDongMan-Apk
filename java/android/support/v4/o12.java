package android.support.v4;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public abstract class o12 extends Drawable {

    /* renamed from: do, reason: not valid java name */
    private ColorStateList f4401do;

    /* renamed from: for, reason: not valid java name */
    private int f4402for;

    /* renamed from: if, reason: not valid java name */
    private final Paint f4403if;

    /* renamed from: new, reason: not valid java name */
    private int f4404new = 255;

    public o12(@NonNull ColorStateList colorStateList) {
        m5447for(colorStateList);
        this.f4403if = new Paint(1);
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m5446new(int[] iArr) {
        int colorForState = this.f4401do.getColorForState(iArr, this.f4402for);
        if (colorForState == this.f4402for) {
            return false;
        }
        this.f4402for = colorForState;
        invalidateSelf();
        return true;
    }

    /* renamed from: do */
    public abstract void mo1690do(Canvas canvas, Paint paint);

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f4403if.setColor(this.f4402for);
        this.f4403if.setAlpha(m5448if(Color.alpha(this.f4402for)));
        mo1690do(canvas, this.f4403if);
    }

    /* renamed from: for, reason: not valid java name */
    public void m5447for(@NonNull ColorStateList colorStateList) {
        this.f4401do = colorStateList;
        this.f4402for = colorStateList.getDefaultColor();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4404new;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: if, reason: not valid java name */
    public int m5448if(int i) {
        int i2 = this.f4404new;
        return (i * (i2 + (i2 >> 7))) >> 8;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f4401do.isStateful() || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f4404new = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4403if.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m5446new(iArr) || super.setState(iArr);
    }
}
