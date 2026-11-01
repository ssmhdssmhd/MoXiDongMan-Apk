package android.support.v4;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public class rf1 extends nb1 implements Animatable, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: try, reason: not valid java name */
    public ValueAnimator f5778try;

    /* renamed from: if, reason: not valid java name */
    public int f5776if = 0;

    /* renamed from: for, reason: not valid java name */
    public int f5775for = 0;

    /* renamed from: new, reason: not valid java name */
    public int f5777new = 0;

    /* renamed from: case, reason: not valid java name */
    public Path f5774case = new Path();

    public rf1() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(30, 3600);
        this.f5778try = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(10000L);
        this.f5778try.setInterpolator(null);
        this.f5778try.setRepeatCount(-1);
        this.f5778try.setRepeatMode(1);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        float f = iWidth;
        float fMax = Math.max(1.0f, f / 22.0f);
        if (this.f5776if != iWidth || this.f5775for != iHeight) {
            this.f5774case.reset();
            float f2 = f - fMax;
            float f3 = iHeight / 2.0f;
            this.f5774case.addCircle(f2, f3, fMax, Path.Direction.CW);
            float f4 = f - (5.0f * fMax);
            this.f5774case.addRect(f4, f3 - fMax, f2, f3 + fMax, Path.Direction.CW);
            this.f5774case.addCircle(f4, f3, fMax, Path.Direction.CW);
            this.f5776if = iWidth;
            this.f5775for = iHeight;
        }
        canvas.save();
        float f5 = f / 2.0f;
        float f6 = iHeight / 2.0f;
        canvas.rotate(this.f5777new, f5, f6);
        for (int i = 0; i < 12; i++) {
            this.f4163do.setAlpha((i + 5) * 17);
            canvas.rotate(30.0f, f5, f6);
            canvas.drawPath(this.f5774case, this.f4163do);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f5778try.isRunning();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f5777new = (((Integer) valueAnimator.getAnimatedValue()).intValue() / 30) * 30;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f5778try.isRunning()) {
            return;
        }
        this.f5778try.addUpdateListener(this);
        this.f5778try.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f5778try.isRunning()) {
            this.f5778try.removeAllListeners();
            this.f5778try.removeAllUpdateListeners();
            this.f5778try.cancel();
        }
    }
}
