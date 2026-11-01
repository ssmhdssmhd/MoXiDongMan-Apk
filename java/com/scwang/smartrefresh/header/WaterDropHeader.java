package com.scwang.smartrefresh.header;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.rf1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.header.waterdrop.WaterDropView;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class WaterDropHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: this, reason: not valid java name */
    public static final float f20243this = 0.8f;

    /* renamed from: case, reason: not valid java name */
    public WaterDropView f20244case;

    /* renamed from: else, reason: not valid java name */
    public rf1 f20245else;

    /* renamed from: goto, reason: not valid java name */
    public com.scwang.smartrefresh.header.internal.Cdo f20246goto;

    /* renamed from: new, reason: not valid java name */
    public qm1 f20247new;

    /* renamed from: try, reason: not valid java name */
    public ImageView f20248try;

    /* renamed from: com.scwang.smartrefresh.header.WaterDropHeader$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f20249do;

        public Cdo(View view) {
            this.f20249do = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f20249do.setVisibility(8);
            this.f20249do.setAlpha(1.0f);
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.WaterDropHeader$if, reason: invalid class name */
    public static /* synthetic */ class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20251do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20251do = iArr;
            try {
                iArr[qm1.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20251do[qm1.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20251do[qm1.PullDownCanceled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20251do[qm1.ReleaseToRefresh.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20251do[qm1.Refreshing.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20251do[qm1.RefreshFinish.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public WaterDropHeader(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        WaterDropView waterDropView = this.f20244case;
        rf1 rf1Var = this.f20245else;
        if (this.f20247new == qm1.Refreshing) {
            canvas.save();
            canvas.translate((getWidth() / 2.0f) - (rf1Var.getBounds().width() / 2.0f), (this.f20244case.getMaxCircleRadius() + waterDropView.getPaddingTop()) - (rf1Var.getBounds().height() / 2.0f));
            rf1Var.draw(canvas);
            canvas.restore();
        }
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        invalidate();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        this.f20245else.stop();
        return 0;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageView imageView = this.f20248try;
        WaterDropView waterDropView = this.f20244case;
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = waterDropView.getMeasuredWidth();
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = i5 - i6;
        waterDropView.layout(i7, 0, i7 + measuredWidth2, waterDropView.getMeasuredHeight() + 0);
        int measuredWidth3 = imageView.getMeasuredWidth();
        int measuredHeight = imageView.getMeasuredHeight();
        int i8 = measuredWidth3 / 2;
        int i9 = i5 - i8;
        int bottom = i6 - i8;
        int i10 = (measuredWidth2 - measuredWidth3) / 2;
        if (bottom + measuredHeight > waterDropView.getBottom() - i10) {
            bottom = (waterDropView.getBottom() - i10) - measuredHeight;
        }
        imageView.layout(i9, bottom, measuredWidth3 + i9, measuredHeight + bottom);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ImageView imageView = this.f20248try;
        WaterDropView waterDropView = this.f20244case;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        imageView.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        waterDropView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), Integer.MIN_VALUE), i2);
        super.setMeasuredDimension(View.resolveSize(Math.max(imageView.getMeasuredWidth(), waterDropView.getMeasuredWidth()), i), View.resolveSize(Math.max(imageView.getMeasuredHeight(), waterDropView.getMeasuredHeight()), i2));
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        qm1 qm1Var;
        if (z || ((qm1Var = this.f20247new) != qm1.Refreshing && qm1Var != qm1.RefreshReleased)) {
            WaterDropView waterDropView = this.f20244case;
            waterDropView.m24404try(Math.max(i, 0), i3 + i2);
            waterDropView.postInvalidate();
        }
        if (z) {
            float f2 = i2;
            double dMin = Math.min(1.0f, Math.abs((i * 1.0f) / f2));
            Double.isNaN(dMin);
            float fMax = (((float) Math.max(dMin - 0.4d, 0.0d)) * 5.0f) / 3.0f;
            double dMax = Math.max(0.0f, Math.min(Math.abs(i) - i2, f2 * 2.0f) / f2) / 4.0f;
            double dPow = Math.pow(dMax, 2.0d);
            Double.isNaN(dMax);
            this.f20246goto.m24356class(true);
            this.f20246goto.m24354break(0.0f, Math.min(0.8f, fMax * 0.8f));
            this.f20246goto.m24363new(Math.min(1.0f, fMax));
            this.f20246goto.m24359else((((0.4f * fMax) - 0.25f) + (((float) (dMax - dPow)) * 2.0f * 2.0f)) * 0.5f);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        ImageView imageView = this.f20248try;
        WaterDropView waterDropView = this.f20244case;
        this.f20245else.start();
        imageView.setVisibility(8);
        this.f20244case.m24401do().start();
        waterDropView.animate().setDuration(150L).alpha(0.0f).setListener(new Cdo(waterDropView));
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        WaterDropView waterDropView = this.f20244case;
        ImageView imageView = this.f20248try;
        this.f20247new = qm1Var2;
        int i = Cif.f20251do[qm1Var2.ordinal()];
        if (i == 1) {
            waterDropView.setVisibility(0);
            imageView.setVisibility(0);
            return;
        }
        if (i == 2) {
            waterDropView.setVisibility(0);
            imageView.setVisibility(0);
        } else if (i == 4) {
            waterDropView.setVisibility(0);
            imageView.setVisibility(0);
        } else {
            if (i != 6) {
                return;
            }
            waterDropView.setVisibility(8);
            imageView.setVisibility(8);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f20244case.setIndicatorColor(iArr[0]);
        }
    }

    public WaterDropHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        for (y02 y02Var : y02.f8079this) {
            if (y02Var.f8082for) {
                this.f20654if = y02Var;
            }
        }
        WaterDropView waterDropView = new WaterDropView(context);
        this.f20244case = waterDropView;
        waterDropView.m24403new(0);
        addView(this.f20244case, -1, -1);
        rf1 rf1Var = new rf1();
        this.f20245else = rf1Var;
        rf1Var.setCallback(this);
        rf1Var.setBounds(0, 0, i02.m3194new(20.0f), i02.m3194new(20.0f));
        this.f20248try = new ImageView(context);
        com.scwang.smartrefresh.header.internal.Cdo cdo = new com.scwang.smartrefresh.header.internal.Cdo(this.f20248try);
        this.f20246goto = cdo;
        cdo.m24364try(-1);
        this.f20246goto.setAlpha(255);
        this.f20246goto.m24355case(-1, -16737844, -48060, -10053376, -5609780, -30720);
        this.f20248try.setImageDrawable(this.f20246goto);
        addView(this.f20248try, i02.m3194new(30.0f), i02.m3194new(30.0f));
    }
}
