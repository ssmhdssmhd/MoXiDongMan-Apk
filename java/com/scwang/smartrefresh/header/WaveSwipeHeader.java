package com.scwang.smartrefresh.header;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.support.v4.y02;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.scwang.smartrefresh.header.waveswipe.WaveView;
import com.scwang.smartrefresh.layout.api.RefreshHeader;
import com.scwang.smartrefresh.layout.api.RefreshLayout;
import com.scwang.smartrefresh.layout.internal.InternalAbstract;

/* loaded from: classes2.dex */
public class WaveSwipeHeader extends InternalAbstract implements RefreshHeader {

    /* renamed from: this, reason: not valid java name */
    public static final float f20252this = 0.8f;

    /* renamed from: case, reason: not valid java name */
    public com.scwang.smartrefresh.header.internal.Cdo f20253case;

    /* renamed from: else, reason: not valid java name */
    public ProgressAnimationImageView f20254else;

    /* renamed from: goto, reason: not valid java name */
    public float f20255goto;

    /* renamed from: new, reason: not valid java name */
    public WaveView f20256new;

    /* renamed from: try, reason: not valid java name */
    public qm1 f20257try;

    public class ProgressAnimationImageView extends ImageView {

        /* renamed from: do, reason: not valid java name */
        public Animation.AnimationListener f20258do;

        public ProgressAnimationImageView(Context context) {
            super(context);
            com.scwang.smartrefresh.header.internal.Cdo cdo = new com.scwang.smartrefresh.header.internal.Cdo(WaveSwipeHeader.this);
            WaveSwipeHeader.this.f20253case = cdo;
            cdo.m24364try(0);
            if (WaveSwipeHeader.m24338do()) {
                WaveSwipeHeader.this.f20253case.m24360final(0);
            }
            super.setImageDrawable(WaveSwipeHeader.this.f20253case);
        }

        @Override // android.view.View
        public void onAnimationEnd() {
            super.onAnimationEnd();
            Animation.AnimationListener animationListener = this.f20258do;
            if (animationListener != null) {
                animationListener.onAnimationEnd(getAnimation());
            }
        }

        @Override // android.view.View
        public void onAnimationStart() {
            super.onAnimationStart();
            Animation.AnimationListener animationListener = this.f20258do;
            if (animationListener != null) {
                animationListener.onAnimationStart(getAnimation());
            }
        }

        public void setAnimationListener(Animation.AnimationListener animationListener) {
            this.f20258do = animationListener;
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.WaveSwipeHeader$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaveSwipeHeader waveSwipeHeader = WaveSwipeHeader.this;
            waveSwipeHeader.f20254else.setTranslationY(waveSwipeHeader.f20256new.getCurrentCircleCenterY() + (r0.getHeight() / 2.0f));
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.WaveSwipeHeader$for, reason: invalid class name */
    public class Cfor implements Animation.AnimationListener {
        public Cfor() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            WaveSwipeHeader.this.f20253case.stop();
            WaveSwipeHeader.this.f20253case.setAlpha(255);
            WaveSwipeHeader.this.f20256new.m24415this();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.WaveSwipeHeader$if, reason: invalid class name */
    public class Cif extends Animation {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f20262do;

        public Cif(View view) {
            this.f20262do = view;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            float f2 = 1.0f - f;
            this.f20262do.setScaleX(f2);
            this.f20262do.setScaleY(f2);
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.WaveSwipeHeader$new, reason: invalid class name */
    public static /* synthetic */ class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20264do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20264do = iArr;
            try {
                iArr[qm1.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20264do[qm1.PullDownToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20264do[qm1.PullDownCanceled.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20264do[qm1.ReleaseToRefresh.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20264do[qm1.Refreshing.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'SECOND' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.scwang.smartrefresh.header.WaveSwipeHeader$try, reason: invalid class name */
    public static final class Ctry {
        public static final Ctry FIRST;
        public static final Ctry SECOND;
        public static final Ctry THIRD;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Ctry[] f20265do;
        public final float val;

        static {
            Ctry ctry = new Ctry("FIRST", 0, 0.1f);
            FIRST = ctry;
            Ctry ctry2 = new Ctry("SECOND", 1, ctry.val + 0.16f);
            SECOND = ctry2;
            Ctry ctry3 = new Ctry("THIRD", 2, ctry.val + 0.5f);
            THIRD = ctry3;
            f20265do = new Ctry[]{ctry, ctry2, ctry3};
        }

        private Ctry(String str, int i, float f) {
            this.val = f;
        }

        public static Ctry valueOf(String str) {
            return (Ctry) Enum.valueOf(Ctry.class, str);
        }

        public static Ctry[] values() {
            return (Ctry[]) f20265do.clone();
        }
    }

    public WaveSwipeHeader(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m24338do() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        return ((float) displayMetrics.widthPixels) / displayMetrics.density >= 600.0f;
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        ProgressAnimationImageView progressAnimationImageView = this.f20254else;
        Cif cif = new Cif(progressAnimationImageView);
        cif.setDuration(200L);
        this.f20254else.setAnimationListener(new Cfor());
        progressAnimationImageView.clearAnimation();
        progressAnimationImageView.startAnimation(cif);
        return 0;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WaveView waveView = this.f20256new;
        ProgressAnimationImageView progressAnimationImageView = this.f20254else;
        waveView.layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = progressAnimationImageView.getMeasuredWidth();
        progressAnimationImageView.layout((measuredWidth - measuredWidth2) / 2, -progressAnimationImageView.getMeasuredHeight(), (measuredWidth + measuredWidth2) / 2, 0);
        if (isInEditMode()) {
            onMoving(true, 0.99f, i02.m3194new(99.0f), i02.m3194new(100.0f), i02.m3194new(100.0f));
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        WaveView waveView = this.f20256new;
        ProgressAnimationImageView progressAnimationImageView = this.f20254else;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f20253case.getIntrinsicWidth(), 1073741824);
        progressAnimationImageView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        waveView.measure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824));
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onMoving(boolean z, float f, int i, int i2, int i3) {
        if (!z) {
            if (this.f20255goto == 0.0f || this.f20257try != qm1.None) {
                return;
            }
            this.f20253case.m24356class(false);
            this.f20253case.m24359else(0.0f);
            this.f20253case.m24354break(0.0f, 0.0f);
            this.f20256new.m24407catch(this.f20255goto);
            this.f20255goto = 0.0f;
            return;
        }
        if (this.f20257try == qm1.Refreshing) {
            return;
        }
        ProgressAnimationImageView progressAnimationImageView = this.f20254else;
        double dMin = Math.min(1.0f, f);
        Double.isNaN(dMin);
        float fMax = (((float) Math.max(dMin - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float f2 = f > 3.0f ? 2.0f : f > 1.0f ? f - 1.0f : 0.0f;
        float f3 = ((4.0f - f2) * f2) / 8.0f;
        if (f < 1.0f) {
            this.f20253case.m24354break(0.0f, Math.min(0.8f, fMax * 0.8f));
            this.f20253case.m24363new(Math.min(1.0f, fMax));
        }
        this.f20253case.m24359else((((fMax * 0.4f) - 0.25f) + (f3 * 2.0f)) * 0.5f);
        progressAnimationImageView.setTranslationY(this.f20256new.getCurrentCircleCenterY());
        float fMin = (i * 1.0f) / Math.min(getMeasuredWidth(), getMeasuredHeight());
        float f4 = (fMin * (5.0f - (2.0f * fMin))) / 3.5f;
        float f5 = Ctry.FIRST.val;
        float f6 = f4 - f5;
        float f7 = Ctry.SECOND.val;
        float f8 = (f4 - f7) / 5.0f;
        this.f20255goto = f4;
        if (f4 < f5) {
            this.f20256new.m24411for(f4);
        } else if (f4 < f7) {
            this.f20256new.m24413if(f4, f6);
        } else {
            this.f20256new.m24414new(f4, f6, f8);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onReleased(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        this.f20255goto = 0.0f;
        this.f20256new.m24409do();
        this.f20253case.setAlpha(255);
        this.f20253case.start();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 0.0f);
        valueAnimatorOfFloat.setDuration(500L);
        valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new Cdo());
        valueAnimatorOfFloat.start();
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        ProgressAnimationImageView progressAnimationImageView = this.f20254else;
        this.f20257try = qm1Var2;
        int i = Cnew.f20264do[qm1Var2.ordinal()];
        if (i == 2) {
            this.f20253case.m24356class(true);
            progressAnimationImageView.setScaleX(1.0f);
            progressAnimationImageView.setScaleY(1.0f);
            this.f20253case.setAlpha(255);
            return;
        }
        if (i != 3) {
            return;
        }
        this.f20253case.m24356class(false);
        this.f20253case.m24359else(0.0f);
        this.f20253case.m24354break(0.0f, 0.0f);
        this.f20256new.m24407catch(this.f20255goto);
        this.f20255goto = 0.0f;
    }

    public void setColorSchemeColorIds(@IdRes int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = ContextCompat.getColor(context, iArr[1]);
        }
        this.f20253case.m24355case(iArr2);
    }

    public void setColorSchemeColors(int... iArr) {
        this.f20253case.m24355case(iArr);
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f20256new.setWaveColor(iArr[0]);
            if (iArr.length > 1) {
                this.f20253case.m24355case(iArr[1]);
            }
        }
    }

    public WaveSwipeHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f20654if = y02.f8077goto;
        WaveView waveView = new WaveView(context);
        this.f20256new = waveView;
        addView(waveView);
        ProgressAnimationImageView progressAnimationImageView = new ProgressAnimationImageView(context);
        this.f20254else = progressAnimationImageView;
        addView(progressAnimationImageView);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WaveSwipeHeader);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.WaveSwipeHeader_wshPrimaryColor, 0);
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.WaveSwipeHeader_wshAccentColor, 0);
        if (color != 0) {
            this.f20256new.setWaveColor(color);
        }
        if (color2 != 0) {
            this.f20253case.m24355case(color2);
        } else {
            this.f20253case.m24355case(-1);
        }
        int i = R.styleable.WaveSwipeHeader_wshShadowRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i)) {
            this.f20256new.m24412goto(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i, 0), typedArrayObtainStyledAttributes.getColor(R.styleable.WaveSwipeHeader_wshShadowColor, -16777216));
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
