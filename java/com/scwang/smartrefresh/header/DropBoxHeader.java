package com.scwang.smartrefresh.header;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class DropBoxHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: break, reason: not valid java name */
    public int f20086break;

    /* renamed from: case, reason: not valid java name */
    public Ctry f20087case;

    /* renamed from: catch, reason: not valid java name */
    public boolean f20088catch;

    /* renamed from: class, reason: not valid java name */
    public Drawable f20089class;

    /* renamed from: const, reason: not valid java name */
    public Drawable f20090const;

    /* renamed from: else, reason: not valid java name */
    public int f20091else;

    /* renamed from: final, reason: not valid java name */
    public Drawable f20092final;

    /* renamed from: goto, reason: not valid java name */
    public int f20093goto;

    /* renamed from: import, reason: not valid java name */
    public ValueAnimator f20094import;

    /* renamed from: native, reason: not valid java name */
    public qm1 f20095native;

    /* renamed from: new, reason: not valid java name */
    public Path f20096new;

    /* renamed from: public, reason: not valid java name */
    public RefreshKernel f20097public;

    /* renamed from: super, reason: not valid java name */
    public float f20098super;

    /* renamed from: this, reason: not valid java name */
    public int f20099this;

    /* renamed from: throw, reason: not valid java name */
    public float f20100throw;

    /* renamed from: try, reason: not valid java name */
    public Paint f20101try;

    /* renamed from: while, reason: not valid java name */
    public ValueAnimator f20102while;

    /* renamed from: return, reason: not valid java name */
    public static String[] f20082return = {"M3 2h18v20h-18z", "m4,1c-1.105,0 -2,0.895 -2,2v3,11 3,1c0,1.105 0.895,2 2,2h2,12 2c1.105,0 2,-0.895 2,-2v-1,-3 -11,-3c0,-1.105 -0.895,-2 -2,-2h-2,-12 -2zM3.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,3h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,6h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,9h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,12h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,15h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM3.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5zM19.5,18h1c0.276,0 0.5,0.224 0.5,0.5v1c0,0.276 -0.224,0.5 -0.5,0.5h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-1c0,-0.276 0.224,-0.5 0.5,-0.5z"};

    /* renamed from: static, reason: not valid java name */
    public static int[] f20083static = {-1249039, -245496};

    /* renamed from: switch, reason: not valid java name */
    public static String[] f20084switch = {"M49,16.5l-14,-14l-27,0l0,53l41,0z", "m16,23.5h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,21.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z", "m16,15.5h10c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1L16,13.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1z", "M41,29.5L16,29.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z", "M41,37.5L16,37.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z", "M41,45.5L16,45.5c-0.55,0 -1,0.45 -1,1 0,0.55 0.45,1 1,1h25c0.55,0 1,-0.45 1,-1 0,-0.55 -0.45,-1 -1,-1z", "M49,16.5l-14,-14l0,14z"};

    /* renamed from: throws, reason: not valid java name */
    public static int[] f20085throws = {-76695, -2773417};

    /* renamed from: default, reason: not valid java name */
    public static String[] f20080default = {"M6.021,2.188L6.021,11.362C5.46,11.327 4.843,11.414 4.229,11.663C2.624,12.312 1.696,13.729 2.155,14.825C2.62,15.924 4.294,16.284 5.898,15.634C7.131,15.134 7.856,14.184 7.965,13.272L7.958,4.387L15.02,3.028L15.02,9.406C14.422,9.343 13.746,9.432 13.076,9.703C11.471,10.353 10.544,11.77 11.004,12.866C11.467,13.964 13.141,14.325 14.746,13.675C15.979,13.174 16.836,12.224 16.947,11.313L16.958,0.002L6.021,2.188L6.021,2.188Z"};

    /* renamed from: extends, reason: not valid java name */
    public static int[] f20081extends = {-6760607};

    /* renamed from: com.scwang.smartrefresh.header.DropBoxHeader$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBoxHeader dropBoxHeader = DropBoxHeader.this;
            dropBoxHeader.f20100throw = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            dropBoxHeader.invalidate();
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.DropBoxHeader$for, reason: invalid class name */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DropBoxHeader dropBoxHeader = DropBoxHeader.this;
            float f = dropBoxHeader.f20098super;
            if (f < 1.0f || f >= 3.0f) {
                dropBoxHeader.f20098super = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            } else if (f < 2.0f) {
                dropBoxHeader.f20098super = ((Float) valueAnimator.getAnimatedValue()).floatValue() + 1.0f;
            } else if (f < 3.0f) {
                dropBoxHeader.f20098super = ((Float) valueAnimator.getAnimatedValue()).floatValue() + 2.0f;
                DropBoxHeader dropBoxHeader2 = DropBoxHeader.this;
                if (dropBoxHeader2.f20098super == 3.0f) {
                    dropBoxHeader2.f20088catch = true;
                }
            }
            DropBoxHeader.this.invalidate();
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.DropBoxHeader$if, reason: invalid class name */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            DropBoxHeader dropBoxHeader = DropBoxHeader.this;
            if (dropBoxHeader.f20095native != qm1.Refreshing) {
                dropBoxHeader.f20098super = 0.0f;
                return;
            }
            ValueAnimator valueAnimator = dropBoxHeader.f20094import;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.DropBoxHeader$new, reason: invalid class name */
    public class Cnew extends AnimatorListenerAdapter {
        public Cnew() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ValueAnimator valueAnimator = DropBoxHeader.this.f20102while;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.DropBoxHeader$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: case, reason: not valid java name */
        public int f20107case;

        /* renamed from: do, reason: not valid java name */
        public int f20108do;

        /* renamed from: else, reason: not valid java name */
        public int f20109else;

        /* renamed from: for, reason: not valid java name */
        public int f20110for;

        /* renamed from: goto, reason: not valid java name */
        public int f20111goto;

        /* renamed from: if, reason: not valid java name */
        public int f20112if;

        /* renamed from: new, reason: not valid java name */
        public int f20113new;

        /* renamed from: this, reason: not valid java name */
        public int f20114this;

        /* renamed from: try, reason: not valid java name */
        public int f20115try;

        private Ctry() {
        }

        /* renamed from: do, reason: not valid java name */
        public Ctry m24287do(int i, int i2, int i3, int i4) {
            this.f20114this = i3;
            int i5 = i / 2;
            this.f20108do = i5;
            int i6 = i2 - i4;
            this.f20110for = i6;
            this.f20113new = i6 - (i3 * 2);
            double d = i3;
            double dSin = Math.sin(1.0471975511965976d);
            Double.isNaN(d);
            int i7 = i5 - ((int) (d * dSin));
            this.f20115try = i7;
            int i8 = i3 / 2;
            this.f20107case = this.f20113new + i8;
            int i9 = this.f20110for;
            this.f20109else = i9 - i8;
            this.f20111goto = i - i7;
            this.f20112if = i9 - i3;
            return this;
        }

        public /* synthetic */ Ctry(Cdo cdo) {
            this();
        }
    }

    public DropBoxHeader(Context context) {
        this(context, null);
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    private Ctry m24282do(int i, int i2, int i3) {
        return this.f20087case.m24287do(i, i2, i3, i3 / 2);
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    private Path m24283for(Ctry ctry) {
        this.f20096new.reset();
        int i = ((ctry.f20108do - ctry.f20115try) * 4) / 5;
        double d = this.f20100throw;
        Double.isNaN(d);
        double d2 = d * 1.2566370614359172d;
        float f = i;
        double d3 = 1.0471975511965976d - (d2 / 2.0d);
        float fSin = ((float) Math.sin(d3)) * f;
        float fCos = ((float) Math.cos(d3)) * f;
        this.f20096new.moveTo(ctry.f20115try, ctry.f20107case);
        this.f20096new.lineTo(ctry.f20108do, ctry.f20113new);
        this.f20096new.lineTo(ctry.f20108do - fSin, ctry.f20113new - fCos);
        this.f20096new.lineTo(ctry.f20115try - fSin, ctry.f20107case - fCos);
        this.f20096new.close();
        double d4 = d2 + 1.0471975511965976d;
        float fSin2 = ((float) Math.sin(d4)) * f;
        float fCos2 = ((float) Math.cos(d4)) * f;
        this.f20096new.moveTo(ctry.f20115try, ctry.f20107case);
        this.f20096new.lineTo(ctry.f20108do, (ctry.f20110for + ctry.f20113new) / 2.0f);
        this.f20096new.lineTo(ctry.f20108do - fSin2, ((ctry.f20110for + ctry.f20113new) / 2.0f) + fCos2);
        this.f20096new.lineTo(ctry.f20115try - fSin2, ctry.f20107case + fCos2);
        this.f20096new.close();
        float fSin3 = ((float) Math.sin(d3)) * f;
        float fCos3 = ((float) Math.cos(d3)) * f;
        this.f20096new.moveTo(ctry.f20111goto, ctry.f20107case);
        this.f20096new.lineTo(ctry.f20108do, ctry.f20113new);
        this.f20096new.lineTo(ctry.f20108do + fSin3, ctry.f20113new - fCos3);
        this.f20096new.lineTo(ctry.f20111goto + fSin3, ctry.f20107case - fCos3);
        this.f20096new.close();
        float fSin4 = ((float) Math.sin(d4)) * f;
        float fCos4 = f * ((float) Math.cos(d4));
        this.f20096new.moveTo(ctry.f20111goto, ctry.f20107case);
        this.f20096new.lineTo(ctry.f20108do, (ctry.f20110for + ctry.f20113new) / 2.0f);
        this.f20096new.lineTo(ctry.f20108do + fSin4, ((ctry.f20110for + ctry.f20113new) / 2.0f) + fCos4);
        this.f20096new.lineTo(ctry.f20111goto + fSin4, ctry.f20107case + fCos4);
        this.f20096new.close();
        return this.f20096new;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private Path m24284if(Ctry ctry) {
        this.f20096new.reset();
        this.f20096new.moveTo(ctry.f20115try, ctry.f20109else);
        this.f20096new.lineTo(ctry.f20108do, ctry.f20110for);
        this.f20096new.lineTo(ctry.f20111goto, ctry.f20109else);
        Path path = this.f20096new;
        int i = ctry.f20111goto;
        path.quadTo(i + ((ctry.f20114this / 2.0f) * this.f20100throw), ctry.f20112if, i, ctry.f20107case);
        this.f20096new.lineTo(ctry.f20108do, ctry.f20113new);
        this.f20096new.lineTo(ctry.f20115try, ctry.f20107case);
        Path path2 = this.f20096new;
        int i2 = ctry.f20115try;
        path2.quadTo(i2 - ((ctry.f20114this / 2.0f) * this.f20100throw), ctry.f20112if, i2, ctry.f20109else);
        this.f20096new.close();
        return this.f20096new;
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    private Path m24285new(Ctry ctry, int i) {
        this.f20096new.reset();
        this.f20096new.lineTo(0.0f, ctry.f20107case);
        this.f20096new.lineTo(ctry.f20115try, ctry.f20107case);
        this.f20096new.lineTo(ctry.f20108do, ctry.f20112if);
        this.f20096new.lineTo(ctry.f20111goto, ctry.f20107case);
        float f = i;
        this.f20096new.lineTo(f, ctry.f20107case);
        this.f20096new.lineTo(f, 0.0f);
        this.f20096new.close();
        return this.f20096new;
    }

    /* renamed from: try, reason: not valid java name */
    private int m24286try() {
        return this.f20099this / 5;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int i = this.f20091else;
        int iM24286try = m24286try();
        RefreshKernel refreshKernel = this.f20097public;
        boolean z = refreshKernel != null && equals(refreshKernel.getRefreshLayout().getRefreshFooter());
        if (z) {
            canvas.save();
            canvas.translate(0.0f, getHeight() - this.f20091else);
        }
        Ctry ctryM24282do = m24282do(width, i, iM24286try);
        this.f20101try.setColor(ColorUtils.setAlphaComponent(this.f20093goto, 150));
        canvas.drawPath(m24284if(ctryM24282do), this.f20101try);
        this.f20101try.setColor(this.f20093goto);
        canvas.drawPath(m24283for(ctryM24282do), this.f20101try);
        if (isInEditMode()) {
            this.f20098super = 2.5f;
        }
        if (this.f20098super > 0.0f) {
            canvas.clipPath(m24285new(ctryM24282do, width));
            float fMin = Math.min(this.f20098super, 1.0f);
            Rect bounds = this.f20089class.getBounds();
            int i2 = width / 2;
            bounds.offsetTo(i2 - (bounds.width() / 2), ((int) (((ctryM24282do.f20112if - (bounds.height() / 2)) + bounds.height()) * fMin)) - bounds.height());
            this.f20089class.draw(canvas);
            float fMin2 = Math.min(Math.max(this.f20098super - 1.0f, 0.0f), 1.0f);
            Rect bounds2 = this.f20090const.getBounds();
            bounds2.offsetTo(i2 - (bounds2.width() / 2), ((int) (((ctryM24282do.f20112if - (bounds2.height() / 2)) + bounds2.height()) * fMin2)) - bounds2.height());
            this.f20090const.draw(canvas);
            float fMin3 = Math.min(Math.max(this.f20098super - 2.0f, 0.0f), 1.0f);
            Rect bounds3 = this.f20092final.getBounds();
            bounds3.offsetTo(i2 - (bounds3.width() / 2), ((int) (((ctryM24282do.f20112if - (bounds3.height() / 2)) + bounds3.height()) * fMin3)) - bounds3.height());
            this.f20092final.draw(canvas);
            if (this.f20088catch) {
                bounds.offsetTo(i2 - (bounds.width() / 2), ctryM24282do.f20112if - (bounds.height() / 2));
                this.f20089class.draw(canvas);
                bounds2.offsetTo(i2 - (bounds2.width() / 2), ctryM24282do.f20112if - (bounds2.height() / 2));
                this.f20090const.draw(canvas);
                bounds3.offsetTo(i2 - (bounds3.width() / 2), ctryM24282do.f20112if - (bounds3.height() / 2));
                this.f20092final.draw(canvas);
            }
        }
        if (z) {
            canvas.restore();
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f, 0.0f);
        this.f20102while = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(accelerateInterpolator);
        this.f20102while.setDuration(300L);
        this.f20102while.addUpdateListener(new Cdo());
        this.f20102while.addListener(new Cif());
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f20094import = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setInterpolator(accelerateInterpolator);
        this.f20094import.setDuration(300L);
        this.f20094import.addUpdateListener(new Cfor());
        this.f20094import.addListener(new Cnew());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f20102while;
        if (valueAnimator != null) {
            valueAnimator.removeAllUpdateListeners();
            this.f20102while.removeAllListeners();
            this.f20102while = null;
        }
        ValueAnimator valueAnimator2 = this.f20094import;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllUpdateListeners();
            this.f20094import.removeAllListeners();
            this.f20094import = null;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        this.f20098super = 0.0f;
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20097public = refreshKernel;
        this.f20099this = i;
        refreshKernel.requestDrawBackgroundFor(this, this.f20086break);
        int iM24286try = m24286try();
        this.f20089class.setBounds(0, 0, iM24286try, iM24286try);
        this.f20090const.setBounds(0, 0, iM24286try, iM24286try);
        this.f20092final.setBounds(0, 0, iM24286try, iM24286try);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        this.f20091else = i;
        if (!z || this.f20095native != qm1.Refreshing) {
            this.f20100throw = (Math.max(0, i - i2) * 1.0f) / i3;
        }
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        ValueAnimator valueAnimator = this.f20094import;
        if (valueAnimator != null) {
            valueAnimator.start();
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        this.f20095native = qm1Var2;
        if (qm1Var2 == qm1.None) {
            this.f20088catch = false;
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            int i = iArr[0];
            this.f20086break = i;
            RefreshKernel refreshKernel = this.f20097public;
            if (refreshKernel != null) {
                refreshKernel.requestDrawBackgroundFor(this, i);
            }
            if (iArr.length > 1) {
                this.f20093goto = iArr[1];
            }
        }
    }

    public DropBoxHeader(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20096new = new Path();
        this.f20101try = new Paint();
        this.f20087case = new Ctry(null);
        this.f20101try.setAntiAlias(true);
        this.f20093goto = -9524737;
        this.f20086break = -14141883;
        setMinimumHeight(i02.m3194new(150.0f));
        this.f20654if = y02.f8075case;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DropBoxHeader);
        int i = R.styleable.DropBoxHeader_dhDrawable1;
        if (typedArrayObtainStyledAttributes.hasValue(i)) {
            this.f20089class = typedArrayObtainStyledAttributes.getDrawable(i);
        } else {
            com.scwang.smartrefresh.header.internal.pathview.Cif cif = new com.scwang.smartrefresh.header.internal.pathview.Cif();
            cif.m24393case(f20083static);
            if (!cif.m24394else(f20082return)) {
                cif.m24395for(2, 1, 20, 22);
            }
            this.f20089class = cif;
        }
        int i2 = R.styleable.DropBoxHeader_dhDrawable2;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f20090const = typedArrayObtainStyledAttributes.getDrawable(i2);
        } else {
            com.scwang.smartrefresh.header.internal.pathview.Cif cif2 = new com.scwang.smartrefresh.header.internal.pathview.Cif();
            cif2.m24393case(f20085throws);
            if (!cif2.m24394else(f20084switch)) {
                cif2.m24395for(8, 3, 41, 53);
            }
            this.f20090const = cif2;
        }
        int i3 = R.styleable.DropBoxHeader_dhDrawable3;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            this.f20092final = typedArrayObtainStyledAttributes.getDrawable(i3);
        } else {
            com.scwang.smartrefresh.header.internal.pathview.Cif cif3 = new com.scwang.smartrefresh.header.internal.pathview.Cif();
            cif3.m24393case(f20081extends);
            if (!cif3.m24394else(f20080default)) {
                cif3.m24395for(2, 0, 15, 16);
            }
            this.f20092final = cif3;
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
