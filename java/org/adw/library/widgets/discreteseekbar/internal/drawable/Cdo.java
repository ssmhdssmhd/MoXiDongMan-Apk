package org.adw.library.widgets.discreteseekbar.internal.drawable;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.os.SystemClock;
import android.support.v4.o12;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;

/* renamed from: org.adw.library.widgets.discreteseekbar.internal.drawable.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends o12 implements Animatable {

    /* renamed from: import, reason: not valid java name */
    private static final long f28403import = 16;

    /* renamed from: native, reason: not valid java name */
    private static final int f28404native = 250;

    /* renamed from: public, reason: not valid java name */
    private static final float f28405public = 0.0f;

    /* renamed from: return, reason: not valid java name */
    private static final float f28406return = 1.0f;

    /* renamed from: break, reason: not valid java name */
    private int f28407break;

    /* renamed from: case, reason: not valid java name */
    private Interpolator f28408case;

    /* renamed from: catch, reason: not valid java name */
    private float f28409catch;

    /* renamed from: class, reason: not valid java name */
    private int f28410class;

    /* renamed from: const, reason: not valid java name */
    private int f28411const;

    /* renamed from: else, reason: not valid java name */
    private long f28412else;

    /* renamed from: final, reason: not valid java name */
    private int f28413final;

    /* renamed from: goto, reason: not valid java name */
    private boolean f28414goto;

    /* renamed from: super, reason: not valid java name */
    private int f28415super;

    /* renamed from: this, reason: not valid java name */
    private boolean f28416this;

    /* renamed from: throw, reason: not valid java name */
    private int f28417throw;

    /* renamed from: try, reason: not valid java name */
    private float f28418try;

    /* renamed from: while, reason: not valid java name */
    private final Runnable f28419while;

    /* renamed from: org.adw.library.widgets.discreteseekbar.internal.drawable.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0383do implements Runnable {
        public RunnableC0383do() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j = jUptimeMillis - Cdo.this.f28412else;
            if (j < Cdo.this.f28407break) {
                float interpolation = Cdo.this.f28408case.getInterpolation(j / Cdo.this.f28407break);
                Cdo cdo = Cdo.this;
                cdo.scheduleSelf(cdo.f28419while, jUptimeMillis + 16);
                Cdo.this.m31825throw(interpolation);
                return;
            }
            Cdo cdo2 = Cdo.this;
            cdo2.unscheduleSelf(cdo2.f28419while);
            Cdo.this.f28416this = false;
            Cdo.this.m31825throw(1.0f);
        }
    }

    public Cdo(@NonNull ColorStateList colorStateList) {
        super(colorStateList);
        this.f28418try = 0.0f;
        this.f28414goto = false;
        this.f28416this = false;
        this.f28407break = 250;
        this.f28419while = new RunnableC0383do();
        this.f28408case = new AccelerateDecelerateInterpolator();
        m31829super(colorStateList);
    }

    /* renamed from: const, reason: not valid java name */
    private int m31820const(int i) {
        return (i * 100) >> 8;
    }

    /* renamed from: final, reason: not valid java name */
    private static int m31822final(int i, int i2) {
        return Color.argb((Color.alpha(i2) * (i + (i >> 7))) >> 8, Color.red(i2), Color.green(i2), Color.blue(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public void m31825throw(float f) {
        float f2 = this.f28409catch;
        this.f28418try = f2 + (((this.f28414goto ? 0.0f : 1.0f) - f2) * f);
        invalidateSelf();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m31827catch() {
        unscheduleSelf(this.f28419while);
        float f = this.f28418try;
        if (f > 0.0f) {
            this.f28414goto = true;
            this.f28416this = true;
            this.f28409catch = f;
            this.f28407break = (int) ((1.0f - ((f - 1.0f) / (-1.0f))) * 250.0f);
            long jUptimeMillis = SystemClock.uptimeMillis();
            this.f28412else = jUptimeMillis;
            scheduleSelf(this.f28419while, jUptimeMillis + 16);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m31828class() {
        unscheduleSelf(this.f28419while);
        float f = this.f28418try;
        if (f < 1.0f) {
            this.f28414goto = false;
            this.f28416this = true;
            this.f28409catch = f;
            this.f28407break = (int) ((1.0f - ((f - 0.0f) / 1.0f)) * 250.0f);
            long jUptimeMillis = SystemClock.uptimeMillis();
            this.f28412else = jUptimeMillis;
            scheduleSelf(this.f28419while, jUptimeMillis + 16);
        }
    }

    @Override // android.support.v4.o12
    /* renamed from: do */
    public void mo1690do(Canvas canvas, Paint paint) {
        Rect bounds = getBounds();
        int iMin = Math.min(bounds.width(), bounds.height());
        float f = this.f28418try;
        int i = this.f28415super;
        int i2 = this.f28417throw;
        float f2 = iMin / 2;
        float f3 = f2 * f;
        if (f > 0.0f) {
            if (i2 != 0) {
                paint.setColor(i2);
                paint.setAlpha(m31820const(Color.alpha(i2)));
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), f2, paint);
            }
            if (i != 0) {
                paint.setColor(i);
                paint.setAlpha(m5448if(Color.alpha(i)));
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), f3, paint);
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f28416this;
    }

    @Override // android.support.v4.o12, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        boolean z = false;
        for (int i : getState()) {
            if (i == 16842919) {
                z = true;
            }
        }
        super.setState(iArr);
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        for (int i2 : iArr) {
            if (i2 == 16842908) {
                z4 = true;
            } else if (i2 == 16842919) {
                z3 = true;
            } else if (i2 == 16842910) {
                z2 = false;
            }
        }
        if (z2) {
            unscheduleSelf(this.f28419while);
            this.f28415super = this.f28413final;
            this.f28417throw = 0;
            this.f28418try = 0.5f;
            invalidateSelf();
        } else if (z3) {
            m31828class();
            int i3 = this.f28410class;
            this.f28417throw = i3;
            this.f28415super = i3;
        } else if (z) {
            int i4 = this.f28410class;
            this.f28417throw = i4;
            this.f28415super = i4;
            m31827catch();
        } else if (z4) {
            this.f28415super = this.f28411const;
            this.f28417throw = 0;
            this.f28418try = 1.0f;
            invalidateSelf();
        } else {
            this.f28415super = 0;
            this.f28417throw = 0;
            this.f28418try = 0.0f;
            invalidateSelf();
        }
        return true;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
    }

    /* renamed from: super, reason: not valid java name */
    public void m31829super(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f28411const = colorStateList.getColorForState(new int[]{R.attr.state_enabled, R.attr.state_focused}, defaultColor);
        this.f28410class = colorStateList.getColorForState(new int[]{R.attr.state_enabled, R.attr.state_pressed}, defaultColor);
        this.f28413final = colorStateList.getColorForState(new int[]{-16842910}, defaultColor);
        this.f28411const = m31822final(130, this.f28411const);
        this.f28410class = m31822final(130, this.f28410class);
        this.f28413final = m31822final(130, this.f28413final);
    }
}
