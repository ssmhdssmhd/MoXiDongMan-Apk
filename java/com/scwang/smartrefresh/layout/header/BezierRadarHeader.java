package com.scwang.smartrefresh.layout.header;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import com.scwang.smartrefresh.layout.R;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class BezierRadarHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: abstract, reason: not valid java name */
    public static final byte f20587abstract = 4;

    /* renamed from: extends, reason: not valid java name */
    public static final byte f20588extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final byte f20589finally = 1;

    /* renamed from: package, reason: not valid java name */
    public static final byte f20590package = 2;

    /* renamed from: private, reason: not valid java name */
    public static final byte f20591private = 3;

    /* renamed from: break, reason: not valid java name */
    public Path f20592break;

    /* renamed from: case, reason: not valid java name */
    public boolean f20593case;

    /* renamed from: catch, reason: not valid java name */
    public Paint f20594catch;

    /* renamed from: class, reason: not valid java name */
    public int f20595class;

    /* renamed from: const, reason: not valid java name */
    public int f20596const;

    /* renamed from: default, reason: not valid java name */
    public RectF f20597default;

    /* renamed from: else, reason: not valid java name */
    public boolean f20598else;

    /* renamed from: final, reason: not valid java name */
    public int f20599final;

    /* renamed from: goto, reason: not valid java name */
    public boolean f20600goto;

    /* renamed from: import, reason: not valid java name */
    public float f20601import;

    /* renamed from: native, reason: not valid java name */
    public float f20602native;

    /* renamed from: new, reason: not valid java name */
    public int f20603new;

    /* renamed from: public, reason: not valid java name */
    public int f20604public;

    /* renamed from: return, reason: not valid java name */
    public float f20605return;

    /* renamed from: static, reason: not valid java name */
    public float f20606static;

    /* renamed from: super, reason: not valid java name */
    public int f20607super;

    /* renamed from: switch, reason: not valid java name */
    public float f20608switch;

    /* renamed from: this, reason: not valid java name */
    public boolean f20609this;

    /* renamed from: throw, reason: not valid java name */
    public float f20610throw;

    /* renamed from: throws, reason: not valid java name */
    public Animator f20611throws;

    /* renamed from: try, reason: not valid java name */
    public int f20612try;

    /* renamed from: while, reason: not valid java name */
    public float f20613while;

    /* renamed from: com.scwang.smartrefresh.layout.header.BezierRadarHeader$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20614do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20614do = iArr;
            try {
                iArr[qm1.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20614do[qm1.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.layout.header.BezierRadarHeader$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public byte f20615do;

        public Cif(byte b) {
            this.f20615do = b;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            byte b = this.f20615do;
            if (b == 0) {
                BezierRadarHeader.this.f20608switch = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (1 == b) {
                BezierRadarHeader bezierRadarHeader = BezierRadarHeader.this;
                if (bezierRadarHeader.f20600goto) {
                    valueAnimator.cancel();
                    return;
                }
                bezierRadarHeader.f20596const = ((Integer) valueAnimator.getAnimatedValue()).intValue() / 2;
            } else if (2 == b) {
                BezierRadarHeader.this.f20610throw = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (3 == b) {
                BezierRadarHeader.this.f20602native = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (4 == b) {
                BezierRadarHeader.this.f20604public = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            }
            BezierRadarHeader.this.invalidate();
        }
    }

    public BezierRadarHeader(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    public BezierRadarHeader m24436case(@ColorRes int i) {
        m24444try(ContextCompat.getColor(getContext(), i));
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = isInEditMode() ? getHeight() : this.f20607super;
        m24442new(canvas, width);
        m24437do(canvas, width, height);
        m24441if(canvas, width, height);
        m24439for(canvas, width, height);
        super.dispatchDraw(canvas);
    }

    /* renamed from: do, reason: not valid java name */
    public void m24437do(Canvas canvas, int i, int i2) {
        if (this.f20610throw > 0.0f) {
            this.f20594catch.setColor(this.f20603new);
            float fM3185break = i02.m3185break(i2);
            float f = i;
            float f2 = 7.0f;
            float f3 = (f * 1.0f) / 7.0f;
            float f4 = this.f20613while;
            float f5 = (f3 * f4) - (f4 > 1.0f ? ((f4 - 1.0f) * f3) / f4 : 0.0f);
            float f6 = i2;
            float f7 = f6 - (f4 > 1.0f ? (((f4 - 1.0f) * f6) / 2.0f) / f4 : 0.0f);
            int i3 = 0;
            while (i3 < 7) {
                float f8 = (i3 + 1.0f) - 4.0f;
                float fAbs = (1.0f - ((Math.abs(f8) / f2) * 2.0f)) * 255.0f;
                Paint paint = this.f20594catch;
                double d = this.f20610throw * fAbs;
                double d2 = fM3185break;
                Double.isNaN(d2);
                double dPow = 1.0d - (1.0d / Math.pow((d2 / 800.0d) + 1.0d, 15.0d));
                Double.isNaN(d);
                paint.setAlpha((int) (d * dPow));
                float f9 = this.f20601import * (1.0f - (1.0f / ((fM3185break / 10.0f) + 1.0f)));
                canvas.drawCircle(((f / 2.0f) - (f9 / 2.0f)) + (f5 * f8), f7 / 2.0f, f9, this.f20594catch);
                i3++;
                f2 = 7.0f;
            }
            this.f20594catch.setAlpha(255);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public BezierRadarHeader m24438else(boolean z) {
        this.f20609this = z;
        if (!z) {
            this.f20599final = -1;
        }
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public void m24439for(Canvas canvas, int i, int i2) {
        if (this.f20602native > 0.0f) {
            this.f20594catch.setColor(this.f20603new);
            canvas.drawCircle(i / 2.0f, i2 / 2.0f, this.f20602native, this.f20594catch);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public BezierRadarHeader m24440goto(@ColorInt int i) {
        this.f20612try = i;
        this.f20593case = true;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public void m24441if(Canvas canvas, int i, int i2) {
        if (this.f20611throws != null || isInEditMode()) {
            float f = this.f20605return;
            float f2 = this.f20608switch;
            float f3 = f * f2;
            float f4 = this.f20606static * f2;
            this.f20594catch.setColor(this.f20603new);
            this.f20594catch.setStyle(Paint.Style.FILL);
            float f5 = i / 2.0f;
            float f6 = i2 / 2.0f;
            canvas.drawCircle(f5, f6, f3, this.f20594catch);
            this.f20594catch.setStyle(Paint.Style.STROKE);
            float f7 = f4 + f3;
            canvas.drawCircle(f5, f6, f7, this.f20594catch);
            this.f20594catch.setColor((this.f20612try & 16777215) | 1426063360);
            this.f20594catch.setStyle(Paint.Style.FILL);
            this.f20597default.set(f5 - f3, f6 - f3, f5 + f3, f3 + f6);
            canvas.drawArc(this.f20597default, 270.0f, this.f20604public, true, this.f20594catch);
            this.f20594catch.setStyle(Paint.Style.STROKE);
            this.f20597default.set(f5 - f7, f6 - f7, f5 + f7, f6 + f7);
            canvas.drawArc(this.f20597default, 270.0f, this.f20604public, false, this.f20594catch);
            this.f20594catch.setStyle(Paint.Style.FILL);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public boolean isSupportHorizontalDrag() {
        return this.f20609this;
    }

    /* renamed from: new, reason: not valid java name */
    public void m24442new(Canvas canvas, int i) {
        this.f20592break.reset();
        this.f20592break.lineTo(0.0f, this.f20595class);
        Path path = this.f20592break;
        int i2 = this.f20599final;
        float f = i2 >= 0 ? i2 : i / 2.0f;
        float f2 = i;
        path.quadTo(f, this.f20596const + r3, f2, this.f20595class);
        this.f20592break.lineTo(f2, 0.0f);
        this.f20594catch.setColor(this.f20612try);
        canvas.drawPath(this.f20592break, this.f20594catch);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.f20611throws;
        if (animator != null) {
            animator.removeAllListeners();
            this.f20611throws.end();
            this.f20611throws = null;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        Animator animator = this.f20611throws;
        if (animator != null) {
            animator.removeAllListeners();
            this.f20611throws.end();
            this.f20611throws = null;
        }
        int width = getWidth();
        int i = this.f20607super;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f20605return, (float) Math.sqrt((width * width) + (i * i)));
        valueAnimatorOfFloat.setDuration(400L);
        valueAnimatorOfFloat.addUpdateListener(new Cif((byte) 3));
        valueAnimatorOfFloat.start();
        return 400;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onHorizontalDrag(float f, int i, int i2) {
        this.f20599final = i;
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        this.f20607super = i;
        if (z || this.f20600goto) {
            this.f20600goto = true;
            this.f20595class = Math.min(i2, i);
            this.f20596const = (int) (Math.max(0, i - i2) * 1.9f);
            this.f20613while = f;
            invalidate();
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20595class = i - 1;
        this.f20600goto = false;
        i02 i02Var = new i02(i02.f2581for);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        valueAnimatorOfFloat.setInterpolator(i02Var);
        valueAnimatorOfFloat.addUpdateListener(new Cif((byte) 2));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(i02Var);
        valueAnimatorOfFloat2.addUpdateListener(new Cif((byte) 0));
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, FunGameBattleCityHeader.u);
        valueAnimatorOfInt.setDuration(720L);
        valueAnimatorOfInt.setRepeatCount(-1);
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(new Cif((byte) 4));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfInt);
        animatorSet.start();
        int i3 = this.f20596const;
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(i3, 0, -((int) (i3 * 0.8f)), 0, -((int) (i3 * 0.4f)), 0);
        valueAnimatorOfInt2.addUpdateListener(new Cif((byte) 1));
        valueAnimatorOfInt2.setInterpolator(new i02(i02.f2581for));
        valueAnimatorOfInt2.setDuration(800L);
        valueAnimatorOfInt2.start();
        this.f20611throws = animatorSet;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        int i = Cdo.f20614do[qm1Var2.ordinal()];
        if (i == 1 || i == 2) {
            this.f20610throw = 1.0f;
            this.f20608switch = 0.0f;
            this.f20602native = 0.0f;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0 && !this.f20593case) {
            m24440goto(iArr[0]);
            this.f20593case = false;
        }
        if (iArr.length <= 1 || this.f20598else) {
            return;
        }
        m24444try(iArr[1]);
        this.f20598else = false;
    }

    /* renamed from: this, reason: not valid java name */
    public BezierRadarHeader m24443this(@ColorRes int i) {
        m24440goto(ContextCompat.getColor(getContext(), i));
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public BezierRadarHeader m24444try(@ColorInt int i) {
        this.f20603new = i;
        this.f20598else = true;
        return this;
    }

    public BezierRadarHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20609this = false;
        this.f20599final = -1;
        this.f20607super = 0;
        this.f20604public = 0;
        this.f20605return = 0.0f;
        this.f20606static = 0.0f;
        this.f20608switch = 0.0f;
        this.f20597default = new RectF(0.0f, 0.0f, 0.0f, 0.0f);
        this.f20654if = y02.f8075case;
        this.f20592break = new Path();
        Paint paint = new Paint();
        this.f20594catch = paint;
        paint.setAntiAlias(true);
        this.f20601import = i02.m3194new(7.0f);
        this.f20605return = i02.m3194new(20.0f);
        this.f20606static = i02.m3194new(7.0f);
        this.f20594catch.setStrokeWidth(i02.m3194new(3.0f));
        setMinimumHeight(i02.m3194new(100.0f));
        if (isInEditMode()) {
            this.f20595class = 1000;
            this.f20608switch = 1.0f;
            this.f20604public = 270;
        } else {
            this.f20608switch = 0.0f;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BezierRadarHeader);
        this.f20609this = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BezierRadarHeader_srlEnableHorizontalDrag, this.f20609this);
        int i = R.styleable.BezierRadarHeader_srlAccentColor;
        m24444try(typedArrayObtainStyledAttributes.getColor(i, -1));
        int i2 = R.styleable.BezierRadarHeader_srlPrimaryColor;
        m24440goto(typedArrayObtainStyledAttributes.getColor(i2, -14540254));
        this.f20598else = typedArrayObtainStyledAttributes.hasValue(i);
        this.f20593case = typedArrayObtainStyledAttributes.hasValue(i2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
