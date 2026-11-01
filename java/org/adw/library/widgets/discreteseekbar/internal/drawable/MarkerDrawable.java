package org.adw.library.widgets.discreteseekbar.internal.drawable;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.os.SystemClock;
import android.support.v4.o12;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public class MarkerDrawable extends o12 implements Animatable {

    /* renamed from: return, reason: not valid java name */
    private static final long f28384return = 16;

    /* renamed from: static, reason: not valid java name */
    private static final int f28385static = 250;

    /* renamed from: break, reason: not valid java name */
    private int f28386break;

    /* renamed from: case, reason: not valid java name */
    private Interpolator f28387case;

    /* renamed from: catch, reason: not valid java name */
    private float f28388catch;

    /* renamed from: class, reason: not valid java name */
    private float f28389class;

    /* renamed from: const, reason: not valid java name */
    private int f28390const;

    /* renamed from: else, reason: not valid java name */
    private long f28391else;

    /* renamed from: final, reason: not valid java name */
    private int f28392final;

    /* renamed from: goto, reason: not valid java name */
    private boolean f28393goto;

    /* renamed from: import, reason: not valid java name */
    public Matrix f28394import;

    /* renamed from: native, reason: not valid java name */
    private MarkerAnimationListener f28395native;

    /* renamed from: public, reason: not valid java name */
    private final Runnable f28396public;

    /* renamed from: super, reason: not valid java name */
    private int f28397super;

    /* renamed from: this, reason: not valid java name */
    private boolean f28398this;

    /* renamed from: throw, reason: not valid java name */
    public Path f28399throw;

    /* renamed from: try, reason: not valid java name */
    private float f28400try;

    /* renamed from: while, reason: not valid java name */
    public RectF f28401while;

    public interface MarkerAnimationListener {
        void onClosingComplete();

        void onOpeningComplete();
    }

    /* renamed from: org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long j = jUptimeMillis - MarkerDrawable.this.f28391else;
            if (j < MarkerDrawable.this.f28386break) {
                float interpolation = MarkerDrawable.this.f28387case.getInterpolation(j / MarkerDrawable.this.f28386break);
                MarkerDrawable markerDrawable = MarkerDrawable.this;
                markerDrawable.scheduleSelf(markerDrawable.f28396public, jUptimeMillis + 16);
                MarkerDrawable.this.m31807return(interpolation);
                return;
            }
            MarkerDrawable markerDrawable2 = MarkerDrawable.this;
            markerDrawable2.unscheduleSelf(markerDrawable2.f28396public);
            MarkerDrawable.this.f28398this = false;
            MarkerDrawable.this.m31807return(1.0f);
            MarkerDrawable.this.m31811while();
        }
    }

    public MarkerDrawable(@NonNull ColorStateList colorStateList, int i) {
        super(colorStateList);
        this.f28400try = 0.0f;
        this.f28393goto = false;
        this.f28398this = false;
        this.f28386break = 250;
        this.f28399throw = new Path();
        this.f28401while = new RectF();
        this.f28394import = new Matrix();
        this.f28396public = new Cdo();
        this.f28387case = new AccelerateDecelerateInterpolator();
        this.f28388catch = i;
        this.f28392final = colorStateList.getColorForState(new int[]{R.attr.state_enabled, R.attr.state_pressed}, colorStateList.getDefaultColor());
        this.f28397super = colorStateList.getDefaultColor();
    }

    /* renamed from: final, reason: not valid java name */
    private static int m31805final(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f) + (Color.alpha(i2) * f2)), (int) ((Color.red(i) * f) + (Color.red(i2) * f2)), (int) ((Color.green(i) * f) + (Color.green(i2) * f2)), (int) ((Color.blue(i) * f) + (Color.blue(i2) * f2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public void m31807return(float f) {
        float f2 = this.f28389class;
        this.f28400try = f2 + (((this.f28393goto ? 0.0f : 1.0f) - f2) * f);
        m31808super(getBounds());
        invalidateSelf();
    }

    /* renamed from: super, reason: not valid java name */
    private void m31808super(Rect rect) {
        float f = this.f28400try;
        Path path = this.f28399throw;
        RectF rectF = this.f28401while;
        Matrix matrix = this.f28394import;
        path.reset();
        int iMin = Math.min(rect.width(), rect.height());
        float f2 = this.f28388catch;
        float f3 = f2 + ((iMin - f2) * f);
        float f4 = f3 / 2.0f;
        float f5 = 1.0f - f;
        float f6 = f4 * f5;
        float[] fArr = {f4, f4, f4, f4, f4, f4, f6, f6};
        int i = rect.left;
        int i2 = rect.top;
        rectF.set(i, i2, i + f3, i2 + f3);
        path.addRoundRect(rectF, fArr, Path.Direction.CCW);
        matrix.reset();
        matrix.postRotate(-45.0f, rect.left + f4, rect.top + f4);
        matrix.postTranslate((rect.width() - f3) / 2.0f, 0.0f);
        matrix.postTranslate(0.0f, ((rect.bottom - f3) - this.f28390const) * f5);
        path.transform(matrix);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public void m31811while() {
        MarkerAnimationListener markerAnimationListener = this.f28395native;
        if (markerAnimationListener != null) {
            if (this.f28393goto) {
                markerAnimationListener.onClosingComplete();
            } else {
                markerAnimationListener.onOpeningComplete();
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m31812class() {
        this.f28393goto = true;
        unscheduleSelf(this.f28396public);
        float f = this.f28400try;
        if (f <= 0.0f) {
            m31811while();
            return;
        }
        this.f28398this = true;
        this.f28389class = f;
        this.f28386break = 250 - ((int) ((1.0f - f) * 250.0f));
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.f28391else = jUptimeMillis;
        scheduleSelf(this.f28396public, jUptimeMillis + 16);
    }

    /* renamed from: const, reason: not valid java name */
    public void m31813const() {
        unscheduleSelf(this.f28396public);
        this.f28393goto = false;
        float f = this.f28400try;
        if (f >= 1.0f) {
            m31811while();
            return;
        }
        this.f28398this = true;
        this.f28389class = f;
        this.f28386break = (int) ((1.0f - f) * 250.0f);
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.f28391else = jUptimeMillis;
        scheduleSelf(this.f28396public, jUptimeMillis + 16);
    }

    @Override // android.support.v4.o12
    /* renamed from: do */
    public void mo1690do(Canvas canvas, Paint paint) {
        if (this.f28399throw.isEmpty()) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(m31805final(this.f28392final, this.f28397super, this.f28400try));
        canvas.drawPath(this.f28399throw, paint);
    }

    /* renamed from: import, reason: not valid java name */
    public void m31814import(int i, int i2) {
        this.f28392final = i;
        this.f28397super = i2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f28398this;
    }

    /* renamed from: native, reason: not valid java name */
    public void m31815native(int i) {
        this.f28390const = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m31808super(rect);
    }

    /* renamed from: public, reason: not valid java name */
    public void m31816public(MarkerAnimationListener markerAnimationListener) {
        this.f28395native = markerAnimationListener;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        unscheduleSelf(this.f28396public);
    }

    /* renamed from: throw, reason: not valid java name */
    public Path m31817throw() {
        return this.f28399throw;
    }
}
