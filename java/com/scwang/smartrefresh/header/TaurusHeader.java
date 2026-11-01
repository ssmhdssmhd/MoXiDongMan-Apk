package com.scwang.smartrefresh.header;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.i02;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* loaded from: classes2.dex */
public class TaurusHeader extends InternalAbstract implements RefreshHeader {
    public static final int a = 300;

    /* renamed from: abstract, reason: not valid java name */
    public static final float f20201abstract = 1.0f;
    public static final int b = 1000;
    public static final int c = 2000;

    /* renamed from: continue, reason: not valid java name */
    public static final float f20202continue = 0.8f;
    public static final int d = 5;

    /* renamed from: finally, reason: not valid java name */
    public static final float f20205finally = 0.5f;

    /* renamed from: implements, reason: not valid java name */
    public static final int f20206implements = 4;

    /* renamed from: instanceof, reason: not valid java name */
    public static final int f20207instanceof = 2;

    /* renamed from: interface, reason: not valid java name */
    public static final int f20208interface = 80;

    /* renamed from: package, reason: not valid java name */
    public static final int f20209package = 1000;

    /* renamed from: private, reason: not valid java name */
    public static final float f20210private = 0.6f;

    /* renamed from: protected, reason: not valid java name */
    public static final int f20211protected = 6;

    /* renamed from: strictfp, reason: not valid java name */
    public static final float f20212strictfp = 1.0f;

    /* renamed from: synchronized, reason: not valid java name */
    public static final int f20214synchronized = 50;

    /* renamed from: transient, reason: not valid java name */
    public static final int f20216transient = 10;

    /* renamed from: break, reason: not valid java name */
    public Animation f20218break;

    /* renamed from: case, reason: not valid java name */
    public Matrix f20219case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f20220catch;

    /* renamed from: class, reason: not valid java name */
    public float f20221class;

    /* renamed from: const, reason: not valid java name */
    public float f20222const;

    /* renamed from: else, reason: not valid java name */
    public float f20223else;

    /* renamed from: final, reason: not valid java name */
    public Random f20224final;

    /* renamed from: goto, reason: not valid java name */
    public int f20225goto;

    /* renamed from: import, reason: not valid java name */
    public boolean f20226import;

    /* renamed from: native, reason: not valid java name */
    public boolean f20227native;

    /* renamed from: new, reason: not valid java name */
    public Drawable f20228new;

    /* renamed from: public, reason: not valid java name */
    public float f20229public;

    /* renamed from: return, reason: not valid java name */
    public int f20230return;

    /* renamed from: static, reason: not valid java name */
    public RefreshKernel f20231static;

    /* renamed from: super, reason: not valid java name */
    public Map<Float, Float> f20232super;

    /* renamed from: this, reason: not valid java name */
    public int f20233this;

    /* renamed from: throw, reason: not valid java name */
    public Paint f20234throw;

    /* renamed from: try, reason: not valid java name */
    public Drawable f20235try;

    /* renamed from: while, reason: not valid java name */
    public float f20236while;

    /* renamed from: switch, reason: not valid java name */
    public static String[] f20213switch = {"m23.01,81.48c-0.21,-0.3 -0.38,-0.83 -0.38,-1.19 0,-0.55 0.24,-0.78 1.5,-1.48 1.78,-0.97 2.62,-1.94 2.24,-2.57 -0.57,-0.93 -1.97,-1.24 -11.64,-2.59 -5.35,-0.74 -10.21,-1.44 -10.82,-1.54l-1.09,-0.18 1.19,-0.91c0.99,-0.76 1.38,-0.91 2.35,-0.91 0.64,0 6.39,0.33 12.79,0.74 6.39,0.41 12.09,0.71 12.65,0.67l1.03,-0.07 -1.24,-2.19C30.18,66.77 15.91,42 15.13,40.68l-0.51,-0.87 4.19,-1.26c2.3,-0.69 4.27,-1.26 4.37,-1.26 0.1,0 5.95,3.85 13,8.55 14.69,9.81 17.1,11.31 19.7,12.31 4.63,1.78 6.45,1.69 12.94,-0.64 13.18,-4.73 25.22,-9.13 25.75,-9.4 0.69,-0.36 3.6,1.33 -24.38,-14.22L50.73,23.07 46.74,16.42 42.75,9.77 43.63,8.89c0.83,-0.83 0.91,-0.86 1.46,-0.52 0.32,0.2 3.72,3.09 7.55,6.44 3.83,3.34 7.21,6.16 7.5,6.27 0.29,0.11 13.6,2.82 29.58,6.03 15.98,3.21 31.86,6.4 35.3,7.1l6.26,1.26 3.22,-1.13c41.63,-14.63 67.88,-23.23 85.38,-28 14.83,-4.04 23.75,-4.75 32.07,-2.57 7.04,1.84 9.87,4.88 7.71,8.27 -1.6,2.5 -4.6,4.63 -10.61,7.54 -5.94,2.88 -10.22,4.46 -25.4,9.41 -8.15,2.66 -16.66,5.72 -39.01,14.02 -66.79,24.82 -88.49,31.25 -121.66,36.07 -14.56,2.11 -24.17,2.95 -34.08,2.95 -5.43,0 -5.52,-0.01 -5.89,-0.54z"};

    /* renamed from: throws, reason: not valid java name */
    public static int[] f20215throws = {-1};

    /* renamed from: default, reason: not valid java name */
    public static String[] f20203default = {"M551.81,1.01A65.42,65.42 0,0 0,504.38 21.5A50.65,50.65 0,0 0,492.4 20A50.65,50.65 0,0 0,441.75 70.65A50.65,50.65 0,0 0,492.4 121.3A50.65,50.65 0,0 0,511.22 117.64A65.42,65.42 0,0 0,517.45 122L586.25,122A65.42,65.42 0,0 0,599.79 110.78A59.79,59.79 0,0 0,607.81 122L696.34,122A59.79,59.79 0,0 0,711.87 81.9A59.79,59.79 0,0 0,652.07 22.11A59.79,59.79 0,0 0,610.93 38.57A65.42,65.42 0,0 0,551.81 1.01zM246.2,1.71A54.87,54.87 0,0 0,195.14 36.64A46.78,46.78 0,0 0,167.77 27.74A46.78,46.78 0,0 0,120.99 74.52A46.78,46.78 0,0 0,167.77 121.3A46.78,46.78 0,0 0,208.92 96.74A54.87,54.87 0,0 0,246.2 111.45A54.87,54.87 0,0 0,268.71 106.54A39.04,39.04 0,0 0,281.09 122L327.6,122A39.04,39.04 0,0 0,343.38 90.7A39.04,39.04 0,0 0,304.34 51.66A39.04,39.04 0,0 0,300.82 51.85A54.87,54.87 0,0 0,246.2 1.71z", "m506.71,31.37a53.11,53.11 0,0 0,-53.11 53.11,53.11 53.11,0 0,0 15.55,37.5h75.12a53.11,53.11 0,0 0,1.88 -2.01,28.49 28.49,0 0,0 0.81,2.01h212.96a96.72,96.72 0,0 0,-87.09 -54.85,96.72 96.72,0 0,0 -73.14,33.52 28.49,28.49 0,0 0,-26.74 -18.74,28.49 28.49,0 0,0 -13.16,3.23 53.11,53.11 0,0 0,0.03 -0.66,53.11 53.11,0 0,0 -53.11,-53.11zM206.23,31.81a53.81,53.81 0,0 0,-49.99 34.03,74.91 74.91,0 0,0 -47.45,-17 74.91,74.91 0,0 0,-73.54 60.82,31.3 31.3,0 0,0 -10.17,-1.73 31.3,31.3 0,0 0,-26.09 14.05L300.86,121.98a37.63,37.63 0,0 0,0.2 -3.85,37.63 37.63,0 0,0 -37.63,-37.63 37.63,37.63 0,0 0,-3.65 0.21,53.81 53.81,0 0,0 -53.54,-48.9z", "m424.05,36.88a53.46,53.46 0,0 0,-40.89 19.02,53.46 53.46,0 0,0 -1.34,1.76 62.6,62.6 0,0 0,-5.39 -0.27,62.6 62.6,0 0,0 -61.36,50.17 62.6,62.6 0,0 0,-0.53 3.51,15.83 15.83,0 0,0 -10.33,-3.84 15.83,15.83 0,0 0,-8.06 2.23,21.1 21.1,0 0,0 -18.31,-10.67 21.1,21.1 0,0 0,-19.47 12.97,21.81 21.81,0 0,0 -6.56,-1.01 21.81,21.81 0,0 0,-19.09 11.32L522.84,122.07a43.61,43.61 0,0 0,-43.11 -37.35,43.61 43.61,0 0,0 -2.57,0.09 53.46,53.46 0,0 0,-53.11 -47.93zM129.08,38.4a50.29,50.29 0,0 0,-50.29 50.29,50.29 50.29,0 0,0 2.37,15.06 15.48,15.83 0,0 0,-5.87 1.68,15.48 15.83,0 0,0 -0.98,0.58 16.53,16.18 0,0 0,-0.19 -0.21,16.53 16.18,0 0,0 -11.86,-4.91 16.53,16.18 0,0 0,-16.38 14.13,20.05 16.18,0 0,0 -14.97,7.04L223.95,122.07a42.56,42.56 0,0 0,1.14 -9.56,42.56 42.56,0 0,0 -42.56,-42.56 42.56,42.56 0,0 0,-6.58 0.54,50.29 50.29,0 0,0 -0,-0.01 50.29,50.29 0,0 0,-46.88 -32.07zM631.67,82.61a64.01,64.01 0,0 0,-44.9 18.42,26.73 26.73,0 0,0 -10.67,-2.24 26.73,26.73 0,0 0,-22.72 12.71,16.88 16.88,0 0,0 -0.25,-0.12 16.88,16.88 0,0 0,-6.57 -1.33,16.88 16.88,0 0,0 -16.15,12.03h160.36a64.01,64.01 0,0 0,-59.1 -39.46z"};

    /* renamed from: extends, reason: not valid java name */
    public static int[] f20204extends = {-1429742351, -571935747, -131587};

    /* renamed from: volatile, reason: not valid java name */
    public static final Interpolator f20217volatile = new AccelerateDecelerateInterpolator();

    /* renamed from: com.scwang.smartrefresh.header.TaurusHeader$do, reason: invalid class name */
    public class Cdo extends Animation {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f20237do;

        public Cdo(View view) {
            this.f20237do = view;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, @NonNull Transformation transformation) {
            TaurusHeader.this.f20221class = (f / 6.0f) * 80.0f;
            this.f20237do.invalidate();
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.TaurusHeader$for, reason: invalid class name */
    public static /* synthetic */ class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20239do;

        static {
            int[] iArr = new int[Cnew.values().length];
            f20239do = iArr;
            try {
                iArr[Cnew.FIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20239do[Cnew.SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20239do[Cnew.THIRD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20239do[Cnew.FOURTH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.TaurusHeader$if, reason: invalid class name */
    public class Cif extends Animation {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f20240do;

        public Cif(View view) {
            this.f20240do = view;
            super.setDuration(100L);
            super.setInterpolator(new AccelerateInterpolator());
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            if (f == 1.0f) {
                TaurusHeader.this.f20220catch = false;
            }
            TaurusHeader.this.f20229public = f;
            this.f20240do.invalidate();
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.TaurusHeader$new, reason: invalid class name */
    public enum Cnew {
        FIRST,
        SECOND,
        THIRD,
        FOURTH
    }

    public TaurusHeader(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m24329case(Canvas canvas, int i) {
        float f;
        if (this.f20220catch) {
            while (this.f20232super.size() < 10) {
                double d2 = this.f20233this;
                double dRandom = Math.random() * 5.0d;
                Double.isNaN(d2);
                float f2 = (float) (d2 / dRandom);
                float fM24336this = m24336this(1000, 2000);
                if (this.f20232super.size() > 1) {
                    while (true) {
                        f = 0.0f;
                        while (f == 0.0f) {
                            double d3 = this.f20233this;
                            double dRandom2 = Math.random() * 5.0d;
                            Double.isNaN(d3);
                            float f3 = (float) (d3 / dRandom2);
                            Iterator<Map.Entry<Float, Float>> it = this.f20232super.entrySet().iterator();
                            while (it.hasNext()) {
                                if (Math.abs(it.next().getKey().floatValue() - f3) > this.f20233this / 5) {
                                    f = f3;
                                }
                            }
                        }
                    }
                    f2 = f;
                }
                this.f20232super.put(Float.valueOf(f2), Float.valueOf(fM24336this));
                m24337try(canvas, f2, fM24336this, i);
            }
            if (this.f20232super.size() >= 10) {
                for (Map.Entry<Float, Float> entry : this.f20232super.entrySet()) {
                    m24337try(canvas, entry.getKey().floatValue(), entry.getValue().floatValue(), i);
                }
            }
            if (this.f20227native && this.f20226import) {
                this.f20232super.clear();
                this.f20226import = false;
                this.f20236while = m24336this(50, a);
            }
            this.f20222const = this.f20221class;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m24330do(Cnew cnew) {
        int i = Cfor.f20239do[cnew.ordinal()];
        return i != 1 ? (i == 2 || i == 3) ? this.f20221class < ((float) m24333goto(cnew)) : i == 4 && this.f20221class > ((float) m24333goto(Cnew.THIRD)) : this.f20221class < ((float) m24333goto(Cnew.FOURTH));
    }

    /* renamed from: else, reason: not valid java name */
    private float m24331else(Cnew cnew) {
        float fM24333goto;
        float fM24333goto2;
        int i = Cfor.f20239do[cnew.ordinal()];
        if (i == 1) {
            return this.f20221class;
        }
        if (i == 2) {
            Cnew cnew2 = Cnew.FOURTH;
            return m24333goto(cnew2) - (this.f20221class - m24333goto(cnew2));
        }
        if (i == 3) {
            fM24333goto = this.f20221class;
            fM24333goto2 = m24333goto(Cnew.SECOND);
        } else {
            if (i != 4) {
                return 0.0f;
            }
            fM24333goto = m24333goto(Cnew.THIRD);
            fM24333goto2 = this.f20221class - m24333goto(Cnew.FOURTH);
        }
        return fM24333goto - fM24333goto2;
    }

    /* renamed from: for, reason: not valid java name */
    private void m24332for(Canvas canvas, int i, int i2) {
        float fAbs;
        boolean z;
        float f;
        float fM24331else;
        float f2;
        float fM24331else2;
        Matrix matrix = this.f20219case;
        matrix.reset();
        float fMin = Math.min(1.0f, Math.abs(this.f20223else));
        if (isInEditMode()) {
            this.f20233this = i2;
            fMin = 1.0f;
        }
        float f3 = this.f20223else;
        boolean z2 = true;
        if (f3 > 1.0f) {
            fAbs = Math.abs(1.0f - f3);
            z = true;
        } else {
            fAbs = 0.0f;
            z = false;
        }
        float f4 = fMin - 0.5f;
        float f5 = f4 > 0.0f ? 0.8f + ((f4 / 0.5f) * 0.19999999f) : 0.8f;
        int i3 = this.f20233this;
        float f6 = i3 * fMin;
        float fHeight = i3 - (this.f20235try.getBounds().height() / 2);
        if (f6 > fHeight) {
            f = f6 - fHeight;
        } else {
            f = 0.0f;
            z2 = false;
        }
        float fWidth = (i / 2.0f) - (this.f20235try.getBounds().width() / 2.0f);
        float fHeight2 = f6 - (z2 ? (this.f20235try.getBounds().height() / 2.0f) + f : this.f20235try.getBounds().height() / 2.0f);
        float f7 = z ? (fAbs / 4.0f) + f5 : f5;
        float f8 = z ? (fAbs / 2.0f) + f5 : f5;
        if (this.f20220catch && !z) {
            Cnew cnew = Cnew.FIRST;
            if (m24330do(cnew)) {
                fM24331else2 = m24331else(cnew);
            } else {
                Cnew cnew2 = Cnew.SECOND;
                if (m24330do(cnew2)) {
                    fM24331else2 = m24331else(cnew2);
                } else {
                    Cnew cnew3 = Cnew.THIRD;
                    if (m24330do(cnew3)) {
                        fM24331else = m24331else(cnew3);
                    } else {
                        Cnew cnew4 = Cnew.FOURTH;
                        if (m24330do(cnew4)) {
                            fM24331else = m24331else(cnew4);
                        }
                        f8 = f7;
                    }
                    f2 = f5 + ((fM24331else / 80.0f) / 6.0f);
                    f7 = f2;
                    f8 = f7;
                }
            }
            f2 = f5 - ((fM24331else2 / 80.0f) / 8.0f);
            f7 = f2;
            f8 = f7;
        }
        matrix.postScale(f7, f8, this.f20235try.getBounds().width() / 2.0f, 0.0f);
        float f9 = i2 + 2;
        if ((this.f20235try.getBounds().height() * f8) + fHeight2 < f9) {
            fHeight2 = f9 - (f8 * this.f20235try.getBounds().height());
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(fWidth, fHeight2);
        canvas.concat(matrix);
        this.f20235try.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    /* renamed from: goto, reason: not valid java name */
    private int m24333goto(Cnew cnew) {
        int i = Cfor.f20239do[cnew.ordinal()];
        if (i != 2) {
            return i != 3 ? i != 4 ? 0 : 20 : m24333goto(Cnew.FOURTH) * 3;
        }
        return 40;
    }

    /* renamed from: if, reason: not valid java name */
    private void m24334if(Canvas canvas, int i, int i2) {
        float fPow;
        float fM24331else;
        float fM24331else2;
        Matrix matrix = this.f20219case;
        matrix.reset();
        float f = this.f20223else;
        if (isInEditMode()) {
            this.f20233this = i2;
            f = 1.0f;
        }
        if (f > 1.0f) {
            fPow = ((float) (1.0d - Math.pow(100.0d, (-(f - 1.0f)) / 2.0f))) * 20.0f;
            f = 1.0f;
        } else {
            fPow = 0.0f;
        }
        float fWidth = ((i * f) / 2.0f) - (this.f20228new.getBounds().width() / 2.0f);
        float fHeight = (this.f20233this * (1.0f - (f / 2.0f))) - (this.f20228new.getBounds().height() / 2.0f);
        float f2 = this.f20229public;
        if (f2 > 0.0f) {
            fHeight += (0.0f - fHeight) * f2;
            fWidth += ((i + this.f20228new.getBounds().width()) - fWidth) * this.f20229public;
        }
        if (this.f20220catch) {
            Cnew cnew = Cnew.FIRST;
            if (m24330do(cnew)) {
                fM24331else2 = m24331else(cnew);
            } else {
                Cnew cnew2 = Cnew.SECOND;
                if (m24330do(cnew2)) {
                    fM24331else2 = m24331else(cnew2);
                } else {
                    Cnew cnew3 = Cnew.THIRD;
                    if (m24330do(cnew3)) {
                        fM24331else = m24331else(cnew3);
                    } else {
                        Cnew cnew4 = Cnew.FOURTH;
                        if (m24330do(cnew4)) {
                            fM24331else = m24331else(cnew4);
                        }
                    }
                    fHeight += fM24331else;
                }
            }
            fHeight -= fM24331else2;
        }
        if (fPow > 0.0f) {
            matrix.postRotate(fPow, this.f20228new.getBounds().width() / 2.0f, this.f20228new.getBounds().height() / 2.0f);
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(fWidth, fHeight);
        canvas.concat(matrix);
        this.f20228new.draw(canvas);
        canvas.restoreToCount(saveCount);
    }

    /* renamed from: new, reason: not valid java name */
    private void m24335new(Canvas canvas, int i, int i2) {
        float fM24331else;
        float fM24331else2;
        Matrix matrix = this.f20219case;
        matrix.reset();
        Drawable drawable = this.f20235try;
        float fMin = Math.min(1.0f, Math.abs(this.f20223else));
        if (isInEditMode()) {
            this.f20233this = i2;
            fMin = 1.0f;
        }
        float f = fMin - 0.5f;
        float f2 = f > 0.0f ? 0.6f + ((f / 0.5f) * 0.39999998f) : 0.6f;
        float fHeight = this.f20233this * (1.0f - fMin);
        float fWidth = 0.0f - (drawable.getBounds().width() / 2.0f);
        float fWidth2 = i - (drawable.getBounds().width() / 2.0f);
        if (this.f20220catch) {
            Cnew cnew = Cnew.FIRST;
            if (m24330do(cnew)) {
                fWidth -= (m24331else(cnew) * 2.0f) / 4.0f;
                fM24331else2 = m24331else(cnew);
            } else {
                Cnew cnew2 = Cnew.SECOND;
                if (m24330do(cnew2)) {
                    fWidth -= (m24331else(cnew2) * 2.0f) / 4.0f;
                    fM24331else2 = m24331else(cnew2);
                } else {
                    Cnew cnew3 = Cnew.THIRD;
                    if (m24330do(cnew3)) {
                        fWidth -= m24331else(cnew3) / 4.0f;
                        fM24331else2 = m24331else(cnew3) * 2.0f;
                    } else {
                        Cnew cnew4 = Cnew.FOURTH;
                        if (m24330do(cnew4)) {
                            fWidth -= m24331else(cnew4) / 2.0f;
                            fM24331else = (m24331else(cnew4) * 2.0f) / 4.0f;
                            fWidth2 += fM24331else;
                        }
                    }
                }
            }
            fM24331else = fM24331else2 / 2.0f;
            fWidth2 += fM24331else;
        }
        float f3 = i2 + 2;
        float fHeight2 = (((float) drawable.getBounds().height()) * f2) + fHeight < f3 ? f3 - (drawable.getBounds().height() * f2) : fHeight;
        if ((drawable.getBounds().height() * f2) + fHeight < f3) {
            fHeight = f3 - (drawable.getBounds().height() * f2);
        }
        int saveCount = canvas.getSaveCount();
        canvas.save();
        canvas.translate(fWidth, fHeight2);
        matrix.postScale(f2, f2, (drawable.getBounds().width() * 3) / 4.0f, drawable.getBounds().height());
        canvas.concat(matrix);
        drawable.setAlpha(100);
        drawable.draw(canvas);
        drawable.setAlpha(255);
        canvas.restoreToCount(saveCount);
        canvas.save();
        canvas.translate(fWidth2, fHeight);
        matrix.postScale(f2, f2, 0.0f, drawable.getBounds().height());
        canvas.concat(matrix);
        drawable.setAlpha(100);
        drawable.draw(canvas);
        drawable.setAlpha(255);
        canvas.restoreToCount(saveCount);
    }

    /* renamed from: this, reason: not valid java name */
    private float m24336this(int i, int i2) {
        return this.f20224final.nextInt((i2 - i) + 1) + i;
    }

    /* renamed from: try, reason: not valid java name */
    private void m24337try(Canvas canvas, float f, float f2, int i) {
        float f3 = i;
        float f4 = (f3 + f2) / 13.333333f;
        float f5 = this.f20221class;
        if (this.f20222const - f5 > 0.0f) {
            this.f20227native = true;
            f5 = 13.333333f - f5;
        } else {
            this.f20226import = true;
            this.f20227native = false;
        }
        float f6 = (f3 - (f5 * f4)) + f2;
        float f7 = this.f20236while;
        float f8 = f6 - f7;
        canvas.drawLine(f8, f, f8 + f7, f, this.f20234throw);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int i = this.f20225goto;
        RefreshKernel refreshKernel = this.f20231static;
        boolean z = refreshKernel != null && equals(refreshKernel.getRefreshLayout().getRefreshFooter());
        if (z) {
            canvas.save();
            canvas.translate(0.0f, getHeight() - this.f20225goto);
        }
        m24329case(canvas, width);
        m24334if(canvas, width, i);
        m24335new(canvas, width, i);
        m24332for(canvas, width, i);
        if (z) {
            canvas.restore();
        }
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        clearAnimation();
        if (z) {
            startAnimation(new Cif(this));
            return 200;
        }
        this.f20220catch = false;
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20231static = refreshKernel;
        refreshKernel.requestDrawBackgroundFor(this, this.f20230return);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        this.f20225goto = i;
        this.f20223else = f;
        this.f20233this = i2;
        if (z) {
            this.f20229public = 0.0f;
        }
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20220catch = true;
        this.f20229public = 0.0f;
        startAnimation(this.f20218break);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        int i = iArr[0];
        this.f20230return = i;
        RefreshKernel refreshKernel = this.f20231static;
        if (refreshKernel != null) {
            refreshKernel.requestDrawBackgroundFor(this, i);
        }
    }

    public TaurusHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20220catch = false;
        setMinimumHeight(i02.m3194new(100.0f));
        this.f20219case = new Matrix();
        this.f20232super = new HashMap();
        this.f20224final = new Random();
        Paint paint = new Paint();
        this.f20234throw = paint;
        paint.setColor(-1);
        this.f20234throw.setStrokeWidth(i02.m3194new(3.0f));
        this.f20234throw.setAlpha(50);
        this.f20654if = y02.f8075case;
        Cdo cdo = new Cdo(this);
        this.f20218break = cdo;
        cdo.setRepeatCount(-1);
        this.f20218break.setRepeatMode(2);
        this.f20218break.setInterpolator(f20217volatile);
        this.f20218break.setDuration(1000L);
        com.scwang.smartrefresh.header.internal.pathview.Cif cif = new com.scwang.smartrefresh.header.internal.pathview.Cif();
        if (!cif.m24394else(f20213switch)) {
            cif.m24395for(3, 3, 257, 79);
        }
        cif.m24393case(f20215throws);
        com.scwang.smartrefresh.header.internal.pathview.Cif cif2 = new com.scwang.smartrefresh.header.internal.pathview.Cif();
        if (!cif2.m24394else(f20203default)) {
            cif2.m24395for(-1, 1, 761, 121);
        }
        cif2.m24393case(f20204extends);
        this.f20228new = cif;
        this.f20235try = cif2;
        cif.setBounds(0, 0, i02.m3194new(65.0f), i02.m3194new(20.0f));
        this.f20235try.setBounds(0, 0, i02.m3194new(260.0f), i02.m3194new(45.0f));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TaurusHeader);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.TaurusHeader_thPrimaryColor, 0);
        if (color != 0) {
            this.f20230return = color;
        } else {
            this.f20230return = -15614977;
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
