package com.scwang.smartrefresh.layout.footer;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.i02;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.layout.R;
import com.scwang.smartrefresh.layout.api.RefreshFooter;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class BallPulseFooter extends InternalAbstract implements RefreshFooter {

    /* renamed from: break, reason: not valid java name */
    public long f20561break;

    /* renamed from: case, reason: not valid java name */
    public Paint f20562case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f20563catch;

    /* renamed from: class, reason: not valid java name */
    public TimeInterpolator f20564class;

    /* renamed from: else, reason: not valid java name */
    public int f20565else;

    /* renamed from: goto, reason: not valid java name */
    public int f20566goto;

    /* renamed from: new, reason: not valid java name */
    public boolean f20567new;

    /* renamed from: this, reason: not valid java name */
    public float f20568this;

    /* renamed from: try, reason: not valid java name */
    public boolean f20569try;

    public BallPulseFooter(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int height = getHeight();
        float fMin = Math.min(width, height);
        float f = this.f20568this;
        float f2 = (fMin - (f * 2.0f)) / 6.0f;
        float f3 = f2 * 2.0f;
        float f4 = (width / 2.0f) - (f + f3);
        float f5 = height / 2.0f;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i = 0;
        while (i < 3) {
            int i2 = i + 1;
            float interpolation = this.f20564class.getInterpolation((jCurrentTimeMillis - this.f20561break) - (i2 * 120) > 0 ? (r10 % 750) / 750.0f : 0.0f);
            canvas.save();
            float f6 = i;
            canvas.translate((f3 * f6) + f4 + (this.f20568this * f6), f5);
            if (interpolation < 0.5d) {
                float f7 = 1.0f - ((interpolation * 2.0f) * 0.7f);
                canvas.scale(f7, f7);
            } else {
                float f8 = ((interpolation * 2.0f) * 0.7f) - 0.4f;
                canvas.scale(f8, f8);
            }
            canvas.drawCircle(0.0f, 0.0f, f2, this.f20562case);
            canvas.restore();
            i = i2;
        }
        super.dispatchDraw(canvas);
        if (this.f20563catch) {
            invalidate();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public BallPulseFooter m24433do(@ColorInt int i) {
        this.f20566goto = i;
        this.f20569try = true;
        if (this.f20563catch) {
            this.f20562case.setColor(i);
        }
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public BallPulseFooter m24434for(y02 y02Var) {
        this.f20654if = y02Var;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public BallPulseFooter m24435if(@ColorInt int i) {
        this.f20565else = i;
        this.f20567new = true;
        if (!this.f20563catch) {
            this.f20562case.setColor(i);
        }
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        this.f20563catch = false;
        this.f20561break = 0L;
        this.f20562case.setColor(this.f20565else);
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        if (this.f20563catch) {
            return;
        }
        invalidate();
        this.f20563catch = true;
        this.f20561break = System.currentTimeMillis();
        this.f20562case.setColor(this.f20566goto);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (!this.f20569try && iArr.length > 1) {
            m24433do(iArr[0]);
            this.f20569try = false;
        }
        if (this.f20567new) {
            return;
        }
        if (iArr.length > 1) {
            m24435if(iArr[1]);
        } else if (iArr.length > 0) {
            m24435if(ColorUtils.compositeColors(-1711276033, iArr[0]));
        }
        this.f20567new = false;
    }

    public BallPulseFooter(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20565else = -1118482;
        this.f20566goto = -1615546;
        this.f20561break = 0L;
        this.f20563catch = false;
        this.f20564class = new AccelerateDecelerateInterpolator();
        setMinimumHeight(i02.m3194new(60.0f));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BallPulseFooter);
        Paint paint = new Paint();
        this.f20562case = paint;
        paint.setColor(-1);
        this.f20562case.setStyle(Paint.Style.FILL);
        this.f20562case.setAntiAlias(true);
        y02 y02Var = y02.f8078new;
        this.f20654if = y02Var;
        this.f20654if = y02.f8079this[typedArrayObtainStyledAttributes.getInt(R.styleable.BallPulseFooter_srlClassicsSpinnerStyle, y02Var.f8081do)];
        int i = R.styleable.BallPulseFooter_srlNormalColor;
        if (typedArrayObtainStyledAttributes.hasValue(i)) {
            m24435if(typedArrayObtainStyledAttributes.getColor(i, 0));
        }
        int i2 = R.styleable.BallPulseFooter_srlAnimatingColor;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            m24433do(typedArrayObtainStyledAttributes.getColor(i2, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f20568this = i02.m3194new(4.0f);
    }
}
