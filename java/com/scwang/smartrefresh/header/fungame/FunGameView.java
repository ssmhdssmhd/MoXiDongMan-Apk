package com.scwang.smartrefresh.header.fungame;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.i02;
import android.support.v4.qm1;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.header.R;
import com.scwang.smartrefresh.header.fungame.FunGameView;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import com.scwang.smartrefresh.layout.api.RefreshLayout;

/* loaded from: classes2.dex */
public abstract class FunGameView<T extends FunGameView> extends FunGameBase {
    public static final int a = 4;
    public static final float b = 0.161f;

    /* renamed from: implements, reason: not valid java name */
    public static final int f20306implements = 1;

    /* renamed from: instanceof, reason: not valid java name */
    public static final int f20307instanceof = 2;

    /* renamed from: synchronized, reason: not valid java name */
    public static final int f20308synchronized = 3;

    /* renamed from: transient, reason: not valid java name */
    public static final int f20309transient = 0;

    /* renamed from: abstract, reason: not valid java name */
    public int f20310abstract;

    /* renamed from: continue, reason: not valid java name */
    public int f20311continue;

    /* renamed from: default, reason: not valid java name */
    public String f20312default;

    /* renamed from: extends, reason: not valid java name */
    public Paint f20313extends;

    /* renamed from: final, reason: not valid java name */
    public float f20314final;

    /* renamed from: finally, reason: not valid java name */
    public Paint f20315finally;

    /* renamed from: import, reason: not valid java name */
    public String f20316import;

    /* renamed from: interface, reason: not valid java name */
    public int f20317interface;

    /* renamed from: native, reason: not valid java name */
    public String f20318native;

    /* renamed from: package, reason: not valid java name */
    public float f20319package;

    /* renamed from: private, reason: not valid java name */
    public int f20320private;

    /* renamed from: protected, reason: not valid java name */
    public int f20321protected;

    /* renamed from: public, reason: not valid java name */
    public String f20322public;

    /* renamed from: return, reason: not valid java name */
    public int f20323return;

    /* renamed from: static, reason: not valid java name */
    public String f20324static;

    /* renamed from: strictfp, reason: not valid java name */
    public int f20325strictfp;

    /* renamed from: super, reason: not valid java name */
    public View f20326super;

    /* renamed from: switch, reason: not valid java name */
    public String f20327switch;

    /* renamed from: throw, reason: not valid java name */
    public TextView f20328throw;

    /* renamed from: throws, reason: not valid java name */
    public String f20329throws;

    /* renamed from: volatile, reason: not valid java name */
    public int f20330volatile;

    /* renamed from: while, reason: not valid java name */
    public TextView f20331while;

    /* renamed from: com.scwang.smartrefresh.header.fungame.FunGameView$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f20332do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ View f20333for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f20334if;

        public Cdo(View view, View view2, View view3) {
            this.f20332do = view;
            this.f20334if = view2;
            this.f20333for = view3;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f20332do.setVisibility(8);
            this.f20334if.setVisibility(8);
            this.f20333for.setVisibility(8);
            FunGameView.this.m24349goto(1);
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.fungame.FunGameView$if, reason: invalid class name */
    public static /* synthetic */ class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f20336do;

        static {
            int[] iArr = new int[qm1.values().length];
            f20336do = iArr;
            try {
                iArr[qm1.PullDownToRefresh.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20336do[qm1.ReleaseToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FunGameView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20314final = 1.0f;
        this.f20310abstract = 0;
        this.f20321protected = -10461088;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FunGameView);
        this.f20316import = getResources().getString(R.string.fgh_mask_bottom);
        this.f20318native = getResources().getString(R.string.fgh_mask_top_pull);
        this.f20322public = getResources().getString(R.string.fgh_mask_top_release);
        int i2 = R.styleable.FunGameView_fghMaskTextTop;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            String string = typedArrayObtainStyledAttributes.getString(i2);
            this.f20322public = string;
            this.f20318native = string;
        }
        int i3 = R.styleable.FunGameView_fghMaskTextTopPull;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            this.f20318native = typedArrayObtainStyledAttributes.getString(i3);
        }
        int i4 = R.styleable.FunGameView_fghMaskTextTopRelease;
        if (typedArrayObtainStyledAttributes.hasValue(i4)) {
            this.f20322public = typedArrayObtainStyledAttributes.getString(i4);
        }
        int i5 = R.styleable.FunGameView_fghMaskTextBottom;
        if (typedArrayObtainStyledAttributes.hasValue(i5)) {
            this.f20316import = typedArrayObtainStyledAttributes.getString(i5);
        }
        int iApplyDimension = (int) TypedValue.applyDimension(2, 16.0f, getResources().getDisplayMetrics());
        int i6 = (iApplyDimension * 14) / 16;
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FunGameView_fghMaskTextSizeTop, iApplyDimension);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.FunGameView_fghMaskTextSizeBottom, i6);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        this.f20326super = relativeLayout2;
        relativeLayout2.setBackgroundColor(-12961222);
        this.f20328throw = m24350new(context, this.f20318native, dimensionPixelSize, 80);
        this.f20331while = m24350new(context, this.f20316import, dimensionPixelSize2, 48);
        if (!isInEditMode()) {
            int iM3194new = i02.m3194new(100.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, iM3194new);
            addView(this.f20326super, layoutParams);
            addView(relativeLayout, layoutParams);
            this.f20323return = (int) (iM3194new * 0.5f);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, this.f20323return);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, this.f20323return);
            layoutParams3.topMargin = iM3194new - this.f20323return;
            relativeLayout.addView(this.f20328throw, layoutParams2);
            relativeLayout.addView(this.f20331while, layoutParams3);
        }
        this.f20314final = Math.max(1, i02.m3194new(0.5f));
        Paint paint = new Paint(1);
        this.f20313extends = paint;
        paint.setStrokeWidth(this.f20314final);
        this.f20319package = this.f20314final;
        TextPaint textPaint = new TextPaint(1);
        this.f20315finally = textPaint;
        textPaint.setColor(-4078910);
        this.f20324static = context.getString(R.string.fgh_text_game_over);
        this.f20327switch = context.getString(R.string.fgh_text_loading);
        this.f20329throws = context.getString(R.string.fgh_text_loading_finish);
        this.f20312default = context.getString(R.string.fgh_text_loading_failed);
        this.f20317interface = typedArrayObtainStyledAttributes.getColor(R.styleable.FunGameView_fghBackColor, 0);
        this.f20311continue = typedArrayObtainStyledAttributes.getColor(R.styleable.FunGameView_fghLeftColor, -16777216);
        this.f20330volatile = typedArrayObtainStyledAttributes.getColor(R.styleable.FunGameView_fghMiddleColor, -16777216);
        this.f20325strictfp = typedArrayObtainStyledAttributes.getColor(R.styleable.FunGameView_fghRightColor, -5921371);
        int i7 = R.styleable.FunGameView_fghTextGameOver;
        if (typedArrayObtainStyledAttributes.hasValue(i7)) {
            this.f20324static = typedArrayObtainStyledAttributes.getString(i7);
        }
        int i8 = R.styleable.FunGameView_fghTextLoading;
        if (typedArrayObtainStyledAttributes.hasValue(i8)) {
            this.f20327switch = typedArrayObtainStyledAttributes.getString(i8);
        }
        int i9 = R.styleable.FunGameView_fghTextLoadingFinished;
        if (typedArrayObtainStyledAttributes.hasValue(i9)) {
            this.f20329throws = typedArrayObtainStyledAttributes.getString(i9);
        }
        int i10 = R.styleable.FunGameView_fghTextLoadingFailed;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            this.f20312default = typedArrayObtainStyledAttributes.getString(i10);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    /* renamed from: else, reason: not valid java name */
    private void m24346else(Canvas canvas, int i, int i2) {
        int i3 = this.f20310abstract;
        if (i3 == 0 || i3 == 1) {
            this.f20315finally.setTextSize(i02.m3194new(25.0f));
            m24347this(canvas, this.f20327switch, i, i2);
            return;
        }
        if (i3 == 2) {
            this.f20315finally.setTextSize(i02.m3194new(25.0f));
            m24347this(canvas, this.f20324static, i, i2);
        } else if (i3 == 3) {
            this.f20315finally.setTextSize(i02.m3194new(20.0f));
            m24347this(canvas, this.f20329throws, i, i2);
        } else {
            if (i3 != 4) {
                return;
            }
            this.f20315finally.setTextSize(i02.m3194new(20.0f));
            m24347this(canvas, this.f20312default, i, i2);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m24347this(Canvas canvas, String str, int i, int i2) {
        canvas.drawText(str, (i - this.f20315finally.measureText(str)) * 0.5f, (i2 * 0.5f) - ((this.f20315finally.ascent() + this.f20315finally.descent()) * 0.5f), this.f20315finally);
    }

    /* renamed from: try, reason: not valid java name */
    private void m24348try(Canvas canvas, int i, int i2) {
        this.f20313extends.setColor(this.f20317interface);
        float f = i;
        float f2 = i2;
        canvas.drawRect(0.0f, 0.0f, f, f2, this.f20313extends);
        this.f20313extends.setColor(this.f20321protected);
        canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f20313extends);
        float f3 = this.f20314final;
        canvas.drawLine(0.0f, f2 - f3, f, f2 - f3, this.f20313extends);
    }

    /* renamed from: break */
    public abstract void mo24291break();

    /* renamed from: case */
    public abstract void mo24292case(Canvas canvas, int i, int i2);

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        int width = getWidth();
        int i = this.f20305try;
        m24348try(canvas, width, i);
        m24346else(canvas, width, i);
        mo24292case(canvas, width, i);
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase
    /* renamed from: do */
    public void mo24343do(float f, int i, int i2, int i3) {
        float fMax = Math.max(i, 0);
        float f2 = (this.f20305try - (this.f20314final * 2.0f)) - this.f20320private;
        if (fMax > f2) {
            fMax = f2;
        }
        this.f20319package = fMax;
        postInvalidate();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m24349goto(int i) {
        this.f20310abstract = i;
        if (i == 0) {
            mo24291break();
        }
        postInvalidate();
    }

    /* renamed from: new, reason: not valid java name */
    public TextView m24350new(Context context, String str, int i, int i2) {
        TextView textView = new TextView(context);
        textView.setTextColor(-16777216);
        textView.setGravity(i2 | 1);
        textView.setTextSize(0, i);
        textView.setText(str);
        textView.setBackgroundColor(-1);
        return textView;
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public int onFinish(@NonNull RefreshLayout refreshLayout, boolean z) {
        if (this.f20296break) {
            m24349goto(z ? 3 : 4);
        } else {
            m24349goto(0);
            TextView textView = this.f20328throw;
            TextView textView2 = this.f20331while;
            View view = this.f20326super;
            textView.setTranslationY(textView.getTranslationY() + this.f20323return);
            textView2.setTranslationY(textView2.getTranslationY() - this.f20323return);
            view.setAlpha(1.0f);
            textView.setVisibility(0);
            textView2.setVisibility(0);
            view.setVisibility(0);
        }
        return super.onFinish(refreshLayout, z);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        if (this.f20305try != i && !isInEditMode()) {
            TextView textView = this.f20328throw;
            TextView textView2 = this.f20331while;
            this.f20323return = (int) (i * 0.5f);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) textView.getLayoutParams();
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) textView2.getLayoutParams();
            int i3 = this.f20323return;
            layoutParams2.height = i3;
            layoutParams.height = i3;
            layoutParams2.topMargin = i - i3;
            textView.setLayoutParams(layoutParams);
            textView2.setLayoutParams(layoutParams2);
        }
        super.onInitialized(refreshKernel, i, i2);
        m24349goto(0);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onStartAnimator(@NonNull RefreshLayout refreshLayout, int i, int i2) {
        super.onStartAnimator(refreshLayout, i, i2);
        TextView textView = this.f20328throw;
        View view = this.f20326super;
        TextView textView2 = this.f20331while;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(textView, "translationY", textView.getTranslationY(), -this.f20323return)).with(ObjectAnimator.ofFloat(textView2, "translationY", textView2.getTranslationY(), this.f20323return)).with(ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), 0.0f));
        animatorSet.addListener(new Cdo(textView, textView2, view));
        animatorSet.setDuration(800L);
        animatorSet.setStartDelay(200L);
        animatorSet.start();
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.listener.OnStateChangedListener
    public void onStateChanged(@NonNull RefreshLayout refreshLayout, @NonNull qm1 qm1Var, @NonNull qm1 qm1Var2) {
        super.onStateChanged(refreshLayout, qm1Var, qm1Var2);
        int i = Cif.f20336do[qm1Var2.ordinal()];
        if (i == 1) {
            this.f20328throw.setText(this.f20318native);
        } else {
            if (i != 2) {
                return;
            }
            this.f20328throw.setText(this.f20322public);
        }
    }

    @Override // com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        super.setPrimaryColors(iArr);
        if (iArr.length > 0) {
            this.f20328throw.setTextColor(iArr[0]);
            this.f20331while.setTextColor(iArr[0]);
            int i = iArr[0];
            this.f20317interface = i;
            this.f20321protected = i;
            if (i == 0 || i == -1) {
                this.f20321protected = -10461088;
            }
            if (iArr.length > 1) {
                TextView textView = this.f20328throw;
                TextView textView2 = this.f20331while;
                this.f20326super.setBackgroundColor(iArr[1]);
                textView.setBackgroundColor(iArr[1]);
                textView2.setBackgroundColor(iArr[1]);
                this.f20330volatile = iArr[1];
                this.f20311continue = ColorUtils.setAlphaComponent(iArr[1], 225);
                this.f20325strictfp = ColorUtils.setAlphaComponent(iArr[1], 200);
                this.f20315finally.setColor(ColorUtils.setAlphaComponent(iArr[1], 150));
            }
        }
    }
}
