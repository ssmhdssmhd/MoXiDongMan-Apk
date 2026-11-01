package com.scwang.smartrefresh.header;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import com.scwang.smartrefresh.header.material.CircleImageView;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class MaterialHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: import, reason: not valid java name */
    public static final float f20128import = 0.8f;

    /* renamed from: native, reason: not valid java name */
    @VisibleForTesting
    public static final int f20129native = 40;

    /* renamed from: public, reason: not valid java name */
    @VisibleForTesting
    public static final int f20130public = 56;

    /* renamed from: super, reason: not valid java name */
    public static final int f20131super = 0;

    /* renamed from: throw, reason: not valid java name */
    public static final int f20132throw = 1;

    /* renamed from: while, reason: not valid java name */
    public static final int f20133while = -328966;

    /* renamed from: break, reason: not valid java name */
    public Path f20134break;

    /* renamed from: case, reason: not valid java name */
    public ImageView f20135case;

    /* renamed from: catch, reason: not valid java name */
    public Paint f20136catch;

    /* renamed from: class, reason: not valid java name */
    public qm1 f20137class;

    /* renamed from: const, reason: not valid java name */
    public boolean f20138const;

    /* renamed from: else, reason: not valid java name */
    public com.scwang.smartrefresh.header.internal.Cdo f20139else;

    /* renamed from: final, reason: not valid java name */
    public boolean f20140final;

    /* renamed from: goto, reason: not valid java name */
    public int f20141goto;

    /* renamed from: new, reason: not valid java name */
    public boolean f20142new;

    /* renamed from: this, reason: not valid java name */
    public int f20143this;

    /* renamed from: try, reason: not valid java name */
    public int f20144try;

    /* renamed from: com.scwang.smartrefresh.header.MaterialHeader$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20145do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20145do = iArr;
            try {
                iArr[qm1.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20145do[qm1.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20145do[qm1.ReleaseToRefresh.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20145do[qm1.Refreshing.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MaterialHeader(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.f20138const) {
            this.f20134break.reset();
            this.f20134break.lineTo(0.0f, this.f20143this);
            this.f20134break.quadTo(getMeasuredWidth() / 2.0f, this.f20143this + (this.f20141goto * 1.9f), getMeasuredWidth(), this.f20143this);
            this.f20134break.lineTo(getMeasuredWidth(), 0.0f);
            canvas.drawPath(this.f20134break, this.f20136catch);
        }
        super.dispatchDraw(canvas);
    }

    /* renamed from: do, reason: not valid java name */
    public MaterialHeader m24309do(@ColorInt int... iArr) {
        this.f20139else.m24355case(iArr);
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public MaterialHeader m24310for(boolean z) {
        this.f20138const = z;
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public MaterialHeader m24311if(@ColorRes int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = ContextCompat.getColor(context, iArr[i]);
        }
        return m24309do(iArr2);
    }

    /* renamed from: new, reason: not valid java name */
    public MaterialHeader m24312new(int i) {
        if (i != 0 && i != 1) {
            return this;
        }
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        if (i == 0) {
            this.f20144try = (int) (displayMetrics.density * 56.0f);
        } else {
            this.f20144try = (int) (displayMetrics.density * 40.0f);
        }
        this.f20135case.setImageDrawable(null);
        this.f20139else.m24360final(i);
        this.f20135case.setImageDrawable(this.f20139else);
        return this;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        ImageView imageView = this.f20135case;
        this.f20139else.stop();
        imageView.animate().scaleX(0.0f).scaleY(0.0f);
        this.f20142new = true;
        return 0;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        if (!this.f20138const) {
            refreshKernel.requestDefaultTranslationContentFor(this, false);
        }
        if (isInEditMode()) {
            int i3 = i / 2;
            this.f20143this = i3;
            this.f20141goto = i3;
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        if (getChildCount() == 0) {
            return;
        }
        ImageView imageView = this.f20135case;
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = imageView.getMeasuredWidth();
        int measuredHeight = imageView.getMeasuredHeight();
        if (!isInEditMode() || (i5 = this.f20143this) <= 0) {
            int i6 = measuredWidth / 2;
            int i7 = measuredWidth2 / 2;
            imageView.layout(i6 - i7, -measuredHeight, i6 + i7, 0);
            return;
        }
        int i8 = i5 - (measuredHeight / 2);
        int i9 = measuredWidth / 2;
        int i10 = measuredWidth2 / 2;
        imageView.layout(i9 - i10, i8, i9 + i10, measuredHeight + i8);
        this.f20139else.m24356class(true);
        this.f20139else.m24354break(0.0f, 0.8f);
        this.f20139else.m24363new(1.0f);
        imageView.setAlpha(1.0f);
        imageView.setVisibility(0);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        this.f20135case.measure(View.MeasureSpec.makeMeasureSpec(this.f20144try, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f20144try, 1073741824));
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        qm1 qm1Var = this.f20137class;
        qm1 qm1Var2 = qm1.Refreshing;
        if (qm1Var == qm1Var2) {
            return;
        }
        if (this.f20138const) {
            this.f20143this = Math.min(i, i2);
            this.f20141goto = Math.max(0, i - i2);
            postInvalidate();
        }
        if (z || !(this.f20139else.isRunning() || this.f20142new)) {
            if (this.f20137class != qm1Var2) {
                float f2 = i2;
                double dMin = Math.min(1.0f, Math.abs((i * 1.0f) / f2));
                Double.isNaN(dMin);
                float fMax = (((float) Math.max(dMin - 0.4d, 0.0d)) * 5.0f) / 3.0f;
                double dMax = Math.max(0.0f, Math.min(Math.abs(i) - i2, f2 * 2.0f) / f2) / 4.0f;
                double dPow = Math.pow(dMax, 2.0d);
                Double.isNaN(dMax);
                this.f20139else.m24356class(true);
                this.f20139else.m24354break(0.0f, Math.min(0.8f, fMax * 0.8f));
                this.f20139else.m24363new(Math.min(1.0f, fMax));
                this.f20139else.m24359else((((fMax * 0.4f) - 0.25f) + (((float) (dMax - dPow)) * 2.0f * 2.0f)) * 0.5f);
            }
            ImageView imageView = this.f20135case;
            float f3 = i;
            imageView.setTranslationY(Math.min(f3, (f3 / 2.0f) + (this.f20144try / 2.0f)));
            imageView.setAlpha(Math.min(1.0f, (f3 * 4.0f) / this.f20144try));
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20139else.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        ImageView imageView = this.f20135case;
        this.f20137class = qm1Var2;
        if (Cdo.f20145do[qm1Var2.ordinal()] != 2) {
            return;
        }
        this.f20142new = false;
        imageView.setVisibility(0);
        imageView.setTranslationY(0.0f);
        imageView.setScaleX(1.0f);
        imageView.setScaleY(1.0f);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f20136catch.setColor(iArr[0]);
        }
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i) {
        this.f20135case.setBackgroundColor(i);
        this.f20139else.m24364try(i);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i) {
        setProgressBackgroundColorSchemeColor(ContextCompat.getColor(getContext(), i));
    }

    public void sethScrollableWhenRefreshing(boolean z) {
        this.f20140final = z;
    }

    public MaterialHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20138const = false;
        this.f20140final = true;
        this.f20654if = y02.f8077goto;
        setMinimumHeight(i02.m3194new(100.0f));
        com.scwang.smartrefresh.header.internal.Cdo cdo = new com.scwang.smartrefresh.header.internal.Cdo(this);
        this.f20139else = cdo;
        cdo.m24364try(f20133while);
        this.f20139else.setAlpha(255);
        this.f20139else.m24355case(-16737844, -48060, -10053376, -5609780, -30720);
        CircleImageView circleImageView = new CircleImageView(context, f20133while);
        this.f20135case = circleImageView;
        circleImageView.setImageDrawable(this.f20139else);
        this.f20135case.setAlpha(0.0f);
        addView(this.f20135case);
        this.f20144try = (int) (getResources().getDisplayMetrics().density * 40.0f);
        this.f20134break = new Path();
        Paint paint = new Paint();
        this.f20136catch = paint;
        paint.setAntiAlias(true);
        this.f20136catch.setStyle(Paint.Style.FILL);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialHeader);
        this.f20138const = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialHeader_mhShowBezierWave, this.f20138const);
        this.f20140final = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaterialHeader_mhScrollableWhenRefreshing, this.f20140final);
        this.f20136catch.setColor(typedArrayObtainStyledAttributes.getColor(R.styleable.MaterialHeader_mhPrimaryColor, -15614977));
        int i = R.styleable.MaterialHeader_mhShadowRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i)) {
            this.f20136catch.setShadowLayer(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i, 0), 0.0f, 0.0f, typedArrayObtainStyledAttributes.getColor(R.styleable.MaterialHeader_mhShadowColor, -16777216));
            setLayerType(1, null);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
