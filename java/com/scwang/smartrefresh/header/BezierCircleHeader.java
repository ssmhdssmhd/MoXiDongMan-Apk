package com.scwang.smartrefresh.header;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.v4.i02;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;
import com.youth.banner.BannerConfig;

/* loaded from: classes2.dex */
public class BezierCircleHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: switch, reason: not valid java name */
    public static final int f20035switch = 270;

    /* renamed from: break, reason: not valid java name */
    public float f20036break;

    /* renamed from: case, reason: not valid java name */
    public Paint f20037case;

    /* renamed from: catch, reason: not valid java name */
    public float f20038catch;

    /* renamed from: class, reason: not valid java name */
    public float f20039class;

    /* renamed from: const, reason: not valid java name */
    public float f20040const;

    /* renamed from: else, reason: not valid java name */
    public Paint f20041else;

    /* renamed from: final, reason: not valid java name */
    public float f20042final;

    /* renamed from: goto, reason: not valid java name */
    public int f20043goto;

    /* renamed from: import, reason: not valid java name */
    public int f20044import;

    /* renamed from: native, reason: not valid java name */
    public int f20045native;

    /* renamed from: new, reason: not valid java name */
    public Path f20046new;

    /* renamed from: public, reason: not valid java name */
    public boolean f20047public;

    /* renamed from: return, reason: not valid java name */
    public boolean f20048return;

    /* renamed from: static, reason: not valid java name */
    public RefreshKernel f20049static;

    /* renamed from: super, reason: not valid java name */
    public boolean f20050super;

    /* renamed from: this, reason: not valid java name */
    public float f20051this;

    /* renamed from: throw, reason: not valid java name */
    public boolean f20052throw;

    /* renamed from: try, reason: not valid java name */
    public Paint f20053try;

    /* renamed from: while, reason: not valid java name */
    public boolean f20054while;

    /* renamed from: com.scwang.smartrefresh.header.BezierCircleHeader$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: if, reason: not valid java name */
        public float f20058if;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ float f20060try;

        /* renamed from: do, reason: not valid java name */
        public float f20056do = 0.0f;

        /* renamed from: for, reason: not valid java name */
        public float f20057for = 0.0f;

        /* renamed from: new, reason: not valid java name */
        public int f20059new = 0;

        public Cdo(float f) {
            this.f20060try = f;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (this.f20059new == 0 && fFloatValue <= 0.0f) {
                this.f20059new = 1;
                this.f20056do = Math.abs(fFloatValue - BezierCircleHeader.this.f20051this);
            }
            if (this.f20059new == 1) {
                float f = (-fFloatValue) / this.f20060try;
                this.f20057for = f;
                BezierCircleHeader bezierCircleHeader = BezierCircleHeader.this;
                if (f >= bezierCircleHeader.f20038catch) {
                    bezierCircleHeader.f20038catch = f;
                    bezierCircleHeader.f20040const = bezierCircleHeader.f20036break + fFloatValue;
                    this.f20056do = Math.abs(fFloatValue - bezierCircleHeader.f20051this);
                } else {
                    this.f20059new = 2;
                    bezierCircleHeader.f20038catch = 0.0f;
                    bezierCircleHeader.f20052throw = true;
                    bezierCircleHeader.f20054while = true;
                    this.f20058if = bezierCircleHeader.f20040const;
                }
            }
            if (this.f20059new == 2) {
                BezierCircleHeader bezierCircleHeader2 = BezierCircleHeader.this;
                float f2 = bezierCircleHeader2.f20040const;
                float f3 = bezierCircleHeader2.f20036break;
                if (f2 > f3 / 2.0f) {
                    bezierCircleHeader2.f20040const = Math.max(f3 / 2.0f, f2 - this.f20056do);
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    BezierCircleHeader bezierCircleHeader3 = BezierCircleHeader.this;
                    float f4 = bezierCircleHeader3.f20036break / 2.0f;
                    float f5 = this.f20058if;
                    float f6 = (animatedFraction * (f4 - f5)) + f5;
                    if (bezierCircleHeader3.f20040const > f6) {
                        bezierCircleHeader3.f20040const = f6;
                    }
                }
            }
            BezierCircleHeader bezierCircleHeader4 = BezierCircleHeader.this;
            if (bezierCircleHeader4.f20054while && fFloatValue < bezierCircleHeader4.f20051this) {
                bezierCircleHeader4.f20050super = true;
                bezierCircleHeader4.f20054while = false;
                bezierCircleHeader4.f20047public = true;
                bezierCircleHeader4.f20045native = 90;
                bezierCircleHeader4.f20044import = 90;
            }
            if (bezierCircleHeader4.f20048return) {
                return;
            }
            bezierCircleHeader4.f20051this = fFloatValue;
            bezierCircleHeader4.invalidate();
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.BezierCircleHeader$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BezierCircleHeader bezierCircleHeader = BezierCircleHeader.this;
            bezierCircleHeader.f20039class = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            bezierCircleHeader.invalidate();
        }
    }

    public BezierCircleHeader(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m24272case(Canvas canvas, int i, int i2) {
        float fMin = Math.min(this.f20036break, i2);
        if (this.f20051this == 0.0f) {
            canvas.drawRect(0.0f, 0.0f, i, fMin, this.f20053try);
            return;
        }
        this.f20046new.reset();
        float f = i;
        this.f20046new.lineTo(f, 0.0f);
        this.f20046new.lineTo(f, fMin);
        this.f20046new.quadTo(f / 2.0f, (this.f20051this * 2.0f) + fMin, 0.0f, fMin);
        this.f20046new.close();
        canvas.drawPath(this.f20046new, this.f20053try);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24273do(Canvas canvas, int i) {
        if (this.f20052throw) {
            canvas.drawCircle(i / 2.0f, this.f20040const, this.f20042final, this.f20037case);
            float f = this.f20036break;
            m24275if(canvas, i, (this.f20051this + f) / f);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m24274for(Canvas canvas, int i) {
        if (this.f20039class > 0.0f) {
            int color = this.f20041else.getColor();
            if (this.f20039class < 0.3d) {
                float f = i / 2.0f;
                canvas.drawCircle(f, this.f20040const, this.f20042final, this.f20037case);
                float f2 = this.f20042final;
                float strokeWidth = this.f20041else.getStrokeWidth() * 2.0f;
                float f3 = this.f20039class;
                this.f20041else.setColor(ColorUtils.setAlphaComponent(color, (int) ((1.0f - (f3 / 0.3f)) * 255.0f)));
                float f4 = (int) (f2 + (strokeWidth * ((f3 / 0.3f) + 1.0f)));
                float f5 = this.f20040const;
                canvas.drawArc(new RectF(f - f4, f5 - f4, f + f4, f5 + f4), 0.0f, 360.0f, false, this.f20041else);
            }
            this.f20041else.setColor(color);
            float f6 = this.f20039class;
            if (f6 >= 0.3d && f6 < 0.7d) {
                float f7 = (f6 - 0.3f) / 0.4f;
                float f8 = this.f20036break;
                float f9 = (int) ((f8 / 2.0f) + ((f8 - (f8 / 2.0f)) * f7));
                this.f20040const = f9;
                canvas.drawCircle(i / 2.0f, f9, this.f20042final, this.f20037case);
                if (this.f20040const >= this.f20036break - (this.f20042final * 2.0f)) {
                    this.f20054while = true;
                    m24275if(canvas, i, f7);
                }
                this.f20054while = false;
            }
            float f10 = this.f20039class;
            if (f10 < 0.7d || f10 > 1.0f) {
                return;
            }
            float f11 = (f10 - 0.7f) / 0.3f;
            float f12 = i / 2.0f;
            float f13 = this.f20042final;
            this.f20046new.reset();
            this.f20046new.moveTo((int) ((f12 - f13) - ((f13 * 2.0f) * f11)), this.f20036break);
            Path path = this.f20046new;
            float f14 = this.f20036break;
            path.quadTo(f12, f14 - (this.f20042final * (1.0f - f11)), i - r3, f14);
            canvas.drawPath(this.f20046new, this.f20037case);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m24275if(Canvas canvas, int i, float f) {
        if (this.f20054while) {
            float f2 = this.f20036break + this.f20051this;
            float f3 = this.f20040const + ((this.f20042final * f) / 2.0f);
            float f4 = i;
            float f5 = f4 / 2.0f;
            float fSqrt = ((float) Math.sqrt(r2 * r2 * (1.0f - ((f * f) / 4.0f)))) + f5;
            float f6 = this.f20042final;
            float f7 = f5 + (((3.0f * f6) / 4.0f) * (1.0f - f));
            float f8 = f6 + f7;
            this.f20046new.reset();
            this.f20046new.moveTo(fSqrt, f3);
            this.f20046new.quadTo(f7, f2, f8, f2);
            this.f20046new.lineTo(f4 - f8, f2);
            this.f20046new.quadTo(f4 - f7, f2, f4 - fSqrt, f3);
            canvas.drawPath(this.f20046new, this.f20037case);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m24276new(Canvas canvas, int i) {
        if (this.f20050super) {
            float strokeWidth = this.f20042final + (this.f20041else.getStrokeWidth() * 2.0f);
            int i2 = this.f20045native;
            boolean z = this.f20047public;
            int i3 = i2 + (z ? 3 : 10);
            this.f20045native = i3;
            int i4 = this.f20044import + (z ? 10 : 3);
            this.f20044import = i4;
            int i5 = i3 % FunGameBattleCityHeader.u;
            this.f20045native = i5;
            int i6 = i4 % FunGameBattleCityHeader.u;
            this.f20044import = i6;
            int i7 = i6 - i5;
            if (i7 < 0) {
                i7 += FunGameBattleCityHeader.u;
            }
            float f = i / 2.0f;
            float f2 = this.f20040const;
            canvas.drawArc(new RectF(f - strokeWidth, f2 - strokeWidth, f + strokeWidth, f2 + strokeWidth), this.f20045native, i7, false, this.f20041else);
            if (i7 >= 270) {
                this.f20047public = false;
            } else if (i7 <= 10) {
                this.f20047public = true;
            }
            invalidate();
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m24277try(Canvas canvas, int i) {
        float f = this.f20038catch;
        if (f > 0.0f) {
            float f2 = i;
            float f3 = f2 / 2.0f;
            float f4 = this.f20042final;
            float f5 = (f3 - (4.0f * f4)) + (3.0f * f * f4);
            if (f >= 0.9d) {
                canvas.drawCircle(f3, this.f20040const, f4, this.f20037case);
                return;
            }
            this.f20046new.reset();
            this.f20046new.moveTo(f5, this.f20040const);
            Path path = this.f20046new;
            float f6 = this.f20040const;
            path.quadTo(f3, f6 - ((this.f20042final * this.f20038catch) * 2.0f), f2 - f5, f6);
            canvas.drawPath(this.f20046new, this.f20037case);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int i = this.f20043goto;
        RefreshKernel refreshKernel = this.f20049static;
        boolean z = refreshKernel != null && equals(refreshKernel.getRefreshLayout().getRefreshFooter());
        if (z) {
            canvas.save();
            canvas.translate(0.0f, getHeight());
            canvas.scale(1.0f, -1.0f);
        }
        if (isInEditMode()) {
            this.f20052throw = true;
            this.f20050super = true;
            float f = i;
            this.f20036break = f;
            this.f20044import = 270;
            this.f20040const = f / 2.0f;
            this.f20042final = f / 6.0f;
        }
        m24272case(canvas, width, i);
        m24277try(canvas, width);
        m24273do(canvas, width);
        m24276new(canvas, width);
        m24274for(canvas, width);
        if (z) {
            canvas.restore();
        }
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        this.f20052throw = false;
        this.f20050super = false;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new Cif());
        valueAnimatorOfFloat.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfFloat.setDuration(800L);
        valueAnimatorOfFloat.start();
        return BannerConfig.DURATION;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20049static = refreshKernel;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        this.f20043goto = i;
        if (z || this.f20048return) {
            this.f20048return = true;
            this.f20036break = i2;
            this.f20051this = Math.max(i - i2, 0) * 0.8f;
        }
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20048return = false;
        float f = i;
        this.f20036break = f;
        this.f20042final = f / 6.0f;
        DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        float fMin = Math.min(this.f20051this * 0.8f, this.f20036break / 2.0f);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f20051this, 0.0f, -(1.0f * fMin), 0.0f, -(0.4f * fMin), 0.0f);
        valueAnimatorOfFloat.addUpdateListener(new Cdo(fMin));
        valueAnimatorOfFloat.setInterpolator(decelerateInterpolator);
        valueAnimatorOfFloat.setDuration(1000L);
        valueAnimatorOfFloat.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f20053try.setColor(iArr[0]);
            if (iArr.length > 1) {
                this.f20037case.setColor(iArr[1]);
                this.f20041else.setColor(iArr[1]);
            }
        }
    }

    public BezierCircleHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20044import = 90;
        this.f20045native = 90;
        this.f20047public = true;
        this.f20048return = false;
        this.f20654if = y02.f8075case;
        setMinimumHeight(i02.m3194new(100.0f));
        Paint paint = new Paint();
        this.f20053try = paint;
        paint.setColor(-15614977);
        this.f20053try.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f20037case = paint2;
        paint2.setColor(-1);
        this.f20037case.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f20041else = paint3;
        paint3.setAntiAlias(true);
        this.f20041else.setColor(-1);
        this.f20041else.setStyle(Paint.Style.STROKE);
        this.f20041else.setStrokeWidth(i02.m3194new(2.0f));
        this.f20046new = new Path();
    }
}
