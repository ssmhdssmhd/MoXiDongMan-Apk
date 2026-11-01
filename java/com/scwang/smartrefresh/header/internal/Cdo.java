package com.scwang.smartrefresh.header.internal;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.scwang.smartrefresh.header.internal.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo extends Drawable implements Animatable {

    /* renamed from: abstract, reason: not valid java name */
    private static final byte f20337abstract = 12;

    /* renamed from: class, reason: not valid java name */
    private static final float f20340class = 1080.0f;

    /* renamed from: const, reason: not valid java name */
    public static final byte f20341const = 0;

    /* renamed from: continue, reason: not valid java name */
    private static final byte f20342continue = 6;

    /* renamed from: default, reason: not valid java name */
    private static final int f20343default = 1332;

    /* renamed from: extends, reason: not valid java name */
    private static final byte f20344extends = 5;

    /* renamed from: final, reason: not valid java name */
    public static final byte f20345final = 1;

    /* renamed from: finally, reason: not valid java name */
    private static final byte f20346finally = 10;

    /* renamed from: import, reason: not valid java name */
    private static final byte f20347import = 56;

    /* renamed from: native, reason: not valid java name */
    private static final float f20348native = 12.5f;

    /* renamed from: package, reason: not valid java name */
    private static final byte f20349package = 5;

    /* renamed from: private, reason: not valid java name */
    private static final float f20350private = 5.0f;

    /* renamed from: public, reason: not valid java name */
    private static final float f20351public = 3.0f;

    /* renamed from: static, reason: not valid java name */
    private static final float f20353static = 0.75f;

    /* renamed from: strictfp, reason: not valid java name */
    private static final float f20354strictfp = 0.8f;

    /* renamed from: super, reason: not valid java name */
    private static final byte f20355super = 40;

    /* renamed from: switch, reason: not valid java name */
    private static final float f20356switch = 0.5f;

    /* renamed from: throw, reason: not valid java name */
    private static final float f20357throw = 8.75f;

    /* renamed from: throws, reason: not valid java name */
    private static final float f20358throws = 0.5f;

    /* renamed from: while, reason: not valid java name */
    private static final float f20359while = 2.5f;

    /* renamed from: case, reason: not valid java name */
    public float f20360case;

    /* renamed from: else, reason: not valid java name */
    private float f20362else;

    /* renamed from: for, reason: not valid java name */
    private float f20363for;

    /* renamed from: goto, reason: not valid java name */
    private float f20364goto;

    /* renamed from: new, reason: not valid java name */
    private View f20366new;

    /* renamed from: this, reason: not valid java name */
    public boolean f20367this;

    /* renamed from: try, reason: not valid java name */
    private Animation f20368try;

    /* renamed from: break, reason: not valid java name */
    private static final Interpolator f20338break = new LinearInterpolator();

    /* renamed from: catch, reason: not valid java name */
    public static final Interpolator f20339catch = new FastOutSlowInInterpolator();

    /* renamed from: return, reason: not valid java name */
    private static final int[] f20352return = {-16777216};

    /* renamed from: do, reason: not valid java name */
    private final List<Animation> f20361do = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private final Cnew f20365if = new Cnew();

    /* renamed from: com.scwang.smartrefresh.header.internal.do$do, reason: invalid class name and collision with other inner class name */
    public class C0191do extends Animation {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cnew f20369do;

        public C0191do(Cnew cnew) {
            this.f20369do = cnew;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            Cdo cdo = Cdo.this;
            if (cdo.f20367this) {
                cdo.m24358do(f, this.f20369do);
                return;
            }
            float fM24361for = cdo.m24361for(this.f20369do);
            Cnew cnew = this.f20369do;
            float f2 = cnew.f20376class;
            float f3 = cnew.f20375catch;
            float f4 = cnew.f20377const;
            Cdo.this.m24357const(f, cnew);
            if (f <= 0.5f) {
                this.f20369do.f20386new = f3 + ((0.8f - fM24361for) * Cdo.f20339catch.getInterpolation(f / 0.5f));
            }
            if (f > 0.5f) {
                this.f20369do.f20395try = f2 + ((0.8f - fM24361for) * Cdo.f20339catch.getInterpolation((f - 0.5f) / 0.5f));
            }
            Cdo.this.m24359else(f4 + (0.25f * f));
            Cdo cdo2 = Cdo.this;
            cdo2.m24362goto((f * 216.0f) + ((cdo2.f20360case / Cdo.f20350private) * Cdo.f20340class));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.scwang.smartrefresh.header.internal.do$for, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cfor {
    }

    /* renamed from: com.scwang.smartrefresh.header.internal.do$if, reason: invalid class name */
    public class Cif implements Animation.AnimationListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cnew f20371do;

        public Cif(Cnew cnew) {
            this.f20371do = cnew;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            this.f20371do.m24367break();
            this.f20371do.m24368case();
            Cnew cnew = this.f20371do;
            cnew.f20386new = cnew.f20395try;
            Cdo cdo = Cdo.this;
            if (!cdo.f20367this) {
                cdo.f20360case = (cdo.f20360case + 1.0f) % Cdo.f20350private;
                return;
            }
            cdo.f20367this = false;
            animation.setDuration(1332L);
            Cdo.this.m24356class(false);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Cdo.this.f20360case = 0.0f;
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.internal.do$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: break, reason: not valid java name */
        public int f20373break;

        /* renamed from: case, reason: not valid java name */
        public float f20374case;

        /* renamed from: catch, reason: not valid java name */
        public float f20375catch;

        /* renamed from: class, reason: not valid java name */
        public float f20376class;

        /* renamed from: const, reason: not valid java name */
        public float f20377const;

        /* renamed from: do, reason: not valid java name */
        public final RectF f20378do = new RectF();

        /* renamed from: else, reason: not valid java name */
        public float f20379else;

        /* renamed from: final, reason: not valid java name */
        public boolean f20380final;

        /* renamed from: for, reason: not valid java name */
        public final Paint f20381for;

        /* renamed from: goto, reason: not valid java name */
        public float f20382goto;

        /* renamed from: if, reason: not valid java name */
        public final Paint f20383if;

        /* renamed from: import, reason: not valid java name */
        public int f20384import;

        /* renamed from: native, reason: not valid java name */
        public int f20385native;

        /* renamed from: new, reason: not valid java name */
        public float f20386new;

        /* renamed from: public, reason: not valid java name */
        public int f20387public;

        /* renamed from: return, reason: not valid java name */
        public final Paint f20388return;

        /* renamed from: static, reason: not valid java name */
        public int f20389static;

        /* renamed from: super, reason: not valid java name */
        public Path f20390super;

        /* renamed from: switch, reason: not valid java name */
        public int f20391switch;

        /* renamed from: this, reason: not valid java name */
        public int[] f20392this;

        /* renamed from: throw, reason: not valid java name */
        public float f20393throw;

        /* renamed from: try, reason: not valid java name */
        public float f20395try;

        /* renamed from: while, reason: not valid java name */
        public double f20396while;

        public Cnew() {
            Paint paint = new Paint();
            this.f20383if = paint;
            Paint paint2 = new Paint();
            this.f20381for = paint2;
            this.f20386new = 0.0f;
            this.f20395try = 0.0f;
            this.f20374case = 0.0f;
            this.f20379else = Cdo.f20350private;
            this.f20382goto = Cdo.f20359while;
            this.f20388return = new Paint(1);
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
        }

        /* renamed from: if, reason: not valid java name */
        private void m24365if(Canvas canvas, float f, float f2, Rect rect) {
            if (this.f20380final) {
                Path path = this.f20390super;
                if (path == null) {
                    Path path2 = new Path();
                    this.f20390super = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float f3 = (((int) this.f20382goto) / 2) * this.f20393throw;
                double dCos = this.f20396while * Math.cos(0.0d);
                double dExactCenterX = rect.exactCenterX();
                Double.isNaN(dExactCenterX);
                float f4 = (float) (dCos + dExactCenterX);
                double dSin = this.f20396while * Math.sin(0.0d);
                double dExactCenterY = rect.exactCenterY();
                Double.isNaN(dExactCenterY);
                float f5 = (float) (dSin + dExactCenterY);
                this.f20390super.moveTo(0.0f, 0.0f);
                this.f20390super.lineTo(this.f20384import * this.f20393throw, 0.0f);
                Path path3 = this.f20390super;
                float f6 = this.f20384import;
                float f7 = this.f20393throw;
                path3.lineTo((f6 * f7) / 2.0f, this.f20385native * f7);
                this.f20390super.offset(f4 - f3, f5);
                this.f20390super.close();
                this.f20381for.setColor(this.f20391switch);
                canvas.rotate((f + f2) - Cdo.f20350private, rect.exactCenterX(), rect.exactCenterY());
                canvas.drawPath(this.f20390super, this.f20381for);
            }
        }

        /* renamed from: new, reason: not valid java name */
        private int m24366new() {
            return (this.f20373break + 1) % this.f20392this.length;
        }

        /* renamed from: break, reason: not valid java name */
        public void m24367break() {
            this.f20375catch = this.f20386new;
            this.f20376class = this.f20395try;
            this.f20377const = this.f20374case;
        }

        /* renamed from: case, reason: not valid java name */
        public void m24368case() {
            m24372goto(m24366new());
        }

        /* renamed from: do, reason: not valid java name */
        public void m24369do(Canvas canvas, Rect rect) {
            RectF rectF = this.f20378do;
            rectF.set(rect);
            float f = this.f20382goto;
            rectF.inset(f, f);
            float f2 = this.f20386new;
            float f3 = this.f20374case;
            float f4 = (f2 + f3) * 360.0f;
            float f5 = ((this.f20395try + f3) * 360.0f) - f4;
            if (f5 != 0.0f) {
                this.f20383if.setColor(this.f20391switch);
                canvas.drawArc(rectF, f4, f5, false, this.f20383if);
            }
            m24365if(canvas, f4, f5, rect);
            if (this.f20387public < 255) {
                this.f20388return.setColor(this.f20389static);
                this.f20388return.setAlpha(255 - this.f20387public);
                canvas.drawCircle(rect.exactCenterX(), rect.exactCenterY(), rect.width() / 2.0f, this.f20388return);
            }
        }

        /* renamed from: else, reason: not valid java name */
        public void m24370else() {
            this.f20375catch = 0.0f;
            this.f20376class = 0.0f;
            this.f20377const = 0.0f;
            this.f20386new = 0.0f;
            this.f20395try = 0.0f;
            this.f20374case = 0.0f;
        }

        /* renamed from: for, reason: not valid java name */
        public int m24371for() {
            return this.f20392this[m24366new()];
        }

        /* renamed from: goto, reason: not valid java name */
        public void m24372goto(int i) {
            this.f20373break = i;
            this.f20391switch = this.f20392this[i];
        }

        /* renamed from: this, reason: not valid java name */
        public void m24373this(int i, int i2) {
            double dCeil;
            float fMin = Math.min(i, i2);
            double d = this.f20396while;
            if (d <= 0.0d || fMin < 0.0f) {
                dCeil = Math.ceil(this.f20379else / 2.0f);
            } else {
                double d2 = fMin / 2.0f;
                Double.isNaN(d2);
                dCeil = d2 - d;
            }
            this.f20382goto = (float) dCeil;
        }

        /* renamed from: try, reason: not valid java name */
        public int m24374try() {
            return this.f20392this[this.f20373break];
        }
    }

    public Cdo(View view) {
        this.f20366new = view;
        m24355case(f20352return);
        m24360final(1);
        m24351catch();
    }

    /* renamed from: catch, reason: not valid java name */
    private void m24351catch() {
        Cnew cnew = this.f20365if;
        C0191do c0191do = new C0191do(cnew);
        c0191do.setRepeatCount(-1);
        c0191do.setRepeatMode(1);
        c0191do.setInterpolator(f20338break);
        c0191do.setAnimationListener(new Cif(cnew));
        this.f20368try = c0191do;
    }

    /* renamed from: if, reason: not valid java name */
    private int m24352if(float f, int i, int i2) {
        return ((((i >> 24) & 255) + ((int) ((((i2 >> 24) & 255) - r0) * f))) << 24) | ((((i >> 16) & 255) + ((int) ((((i2 >> 16) & 255) - r1) * f))) << 16) | ((((i >> 8) & 255) + ((int) ((((i2 >> 8) & 255) - r2) * f))) << 8) | ((i & 255) + ((int) (f * ((i2 & 255) - r8))));
    }

    /* renamed from: this, reason: not valid java name */
    private void m24353this(int i, int i2, float f, float f2, float f3, float f4) {
        float f5 = Resources.getSystem().getDisplayMetrics().density;
        this.f20362else = i * f5;
        this.f20364goto = i2 * f5;
        this.f20365if.m24372goto(0);
        float f6 = f2 * f5;
        this.f20365if.f20383if.setStrokeWidth(f6);
        Cnew cnew = this.f20365if;
        cnew.f20379else = f6;
        cnew.f20396while = f * f5;
        cnew.f20384import = (int) (f3 * f5);
        cnew.f20385native = (int) (f4 * f5);
        cnew.m24373this((int) this.f20362else, (int) this.f20364goto);
        invalidateSelf();
    }

    /* renamed from: break, reason: not valid java name */
    public void m24354break(float f, float f2) {
        Cnew cnew = this.f20365if;
        cnew.f20386new = f;
        cnew.f20395try = f2;
        invalidateSelf();
    }

    /* renamed from: case, reason: not valid java name */
    public void m24355case(@ColorInt int... iArr) {
        Cnew cnew = this.f20365if;
        cnew.f20392this = iArr;
        cnew.m24372goto(0);
    }

    /* renamed from: class, reason: not valid java name */
    public void m24356class(boolean z) {
        Cnew cnew = this.f20365if;
        if (cnew.f20380final != z) {
            cnew.f20380final = z;
            invalidateSelf();
        }
    }

    /* renamed from: const, reason: not valid java name */
    public void m24357const(float f, Cnew cnew) {
        if (f > 0.75f) {
            cnew.f20391switch = m24352if((f - 0.75f) / 0.25f, cnew.m24374try(), cnew.m24371for());
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m24358do(float f, Cnew cnew) {
        m24357const(f, cnew);
        float fFloor = (float) (Math.floor(cnew.f20377const / 0.8f) + 1.0d);
        float fM24361for = m24361for(cnew);
        float f2 = cnew.f20375catch;
        float f3 = cnew.f20376class;
        m24354break(f2 + (((f3 - fM24361for) - f2) * f), f3);
        float f4 = cnew.f20377const;
        m24359else(f4 + ((fFloor - f4) * f));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iSave = canvas.save();
        canvas.rotate(this.f20363for, bounds.exactCenterX(), bounds.exactCenterY());
        this.f20365if.m24369do(canvas, bounds);
        canvas.restoreToCount(iSave);
    }

    /* renamed from: else, reason: not valid java name */
    public void m24359else(float f) {
        this.f20365if.f20374case = f;
        invalidateSelf();
    }

    /* renamed from: final, reason: not valid java name */
    public void m24360final(int i) {
        if (i == 0) {
            m24353this(56, 56, f20348native, 3.0f, 12.0f, 6.0f);
        } else {
            m24353this(40, 40, f20357throw, f20359while, 10.0f, f20350private);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public float m24361for(Cnew cnew) {
        double d = cnew.f20379else;
        double d2 = cnew.f20396while * 6.283185307179586d;
        Double.isNaN(d);
        return (float) Math.toRadians(d / d2);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f20365if.f20387public;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f20364goto;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f20362else;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m24362goto(float f) {
        this.f20363for = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        List<Animation> list = this.f20361do;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animation animation = list.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public void m24363new(float f) {
        Cnew cnew = this.f20365if;
        if (cnew.f20393throw != f) {
            cnew.f20393throw = f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f20365if.f20387public = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f20365if.f20383if.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f20368try.reset();
        this.f20365if.m24367break();
        Cnew cnew = this.f20365if;
        if (cnew.f20395try != cnew.f20386new) {
            this.f20367this = true;
            this.f20368try.setDuration(666L);
            this.f20366new.startAnimation(this.f20368try);
        } else {
            cnew.m24372goto(0);
            this.f20365if.m24370else();
            this.f20368try.setDuration(1332L);
            this.f20366new.startAnimation(this.f20368try);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f20366new.clearAnimation();
        this.f20365if.m24372goto(0);
        this.f20365if.m24370else();
        m24356class(false);
        m24362goto(0.0f);
    }

    /* renamed from: try, reason: not valid java name */
    public void m24364try(@ColorInt int i) {
        this.f20365if.f20389static = i;
    }
}
