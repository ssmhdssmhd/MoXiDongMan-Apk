package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.support.v4.ih1;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class QMUIProgressBar extends View {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f19440abstract = -16776961;

    /* renamed from: continue, reason: not valid java name */
    public static final int f19441continue = -7829368;

    /* renamed from: extends, reason: not valid java name */
    public static final int f19442extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f19443finally = 1;

    /* renamed from: interface, reason: not valid java name */
    private static final int f19444interface = -1;

    /* renamed from: package, reason: not valid java name */
    public static final int f19445package = 2;

    /* renamed from: private, reason: not valid java name */
    public static final int f19446private = 1000;

    /* renamed from: protected, reason: not valid java name */
    public static int f19447protected = ih1.m3465try(40);

    /* renamed from: strictfp, reason: not valid java name */
    public static final int f19448strictfp = 20;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f19449volatile = -16777216;

    /* renamed from: break, reason: not valid java name */
    private int f19450break;

    /* renamed from: case, reason: not valid java name */
    private int f19451case;

    /* renamed from: catch, reason: not valid java name */
    private int f19452catch;

    /* renamed from: class, reason: not valid java name */
    private long f19453class;

    /* renamed from: const, reason: not valid java name */
    private int f19454const;

    /* renamed from: default, reason: not valid java name */
    private Point f19455default;

    /* renamed from: do, reason: not valid java name */
    public QMUIProgressBarTextGenerator f19456do;

    /* renamed from: else, reason: not valid java name */
    private int f19457else;

    /* renamed from: final, reason: not valid java name */
    private int f19458final;

    /* renamed from: for, reason: not valid java name */
    public RectF f19459for;

    /* renamed from: goto, reason: not valid java name */
    private int f19460goto;

    /* renamed from: if, reason: not valid java name */
    public RectF f19461if;

    /* renamed from: import, reason: not valid java name */
    private Paint f19462import;

    /* renamed from: native, reason: not valid java name */
    private Paint f19463native;

    /* renamed from: new, reason: not valid java name */
    private int f19464new;

    /* renamed from: public, reason: not valid java name */
    private Paint f19465public;

    /* renamed from: return, reason: not valid java name */
    private RectF f19466return;

    /* renamed from: static, reason: not valid java name */
    private String f19467static;

    /* renamed from: super, reason: not valid java name */
    private int f19468super;

    /* renamed from: switch, reason: not valid java name */
    private int f19469switch;

    /* renamed from: this, reason: not valid java name */
    private int f19470this;

    /* renamed from: throw, reason: not valid java name */
    private int f19471throw;

    /* renamed from: throws, reason: not valid java name */
    private int f19472throws;

    /* renamed from: try, reason: not valid java name */
    private int f19473try;

    /* renamed from: while, reason: not valid java name */
    private boolean f19474while;

    public interface QMUIProgressBarTextGenerator {
        String generateText(QMUIProgressBar qMUIProgressBar, int i, int i2);
    }

    public QMUIProgressBar(Context context) {
        super(context);
        this.f19462import = new Paint();
        this.f19463native = new Paint();
        this.f19465public = new Paint(1);
        this.f19466return = new RectF();
        this.f19467static = "";
        m23775this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private int m23767case() {
        return (this.f19464new * this.f19450break) / this.f19470this;
    }

    /* renamed from: do, reason: not valid java name */
    private void m23768do(int i, int i2, boolean z) {
        this.f19463native.setColor(this.f19457else);
        this.f19462import.setColor(this.f19460goto);
        int i3 = this.f19451case;
        if (i3 == 0 || i3 == 2) {
            this.f19463native.setStyle(Paint.Style.FILL);
            this.f19462import.setStyle(Paint.Style.FILL);
        } else {
            this.f19463native.setStyle(Paint.Style.STROKE);
            this.f19463native.setStrokeWidth(this.f19469switch);
            this.f19463native.setAntiAlias(true);
            if (z) {
                this.f19463native.setStrokeCap(Paint.Cap.ROUND);
            }
            this.f19462import.setStyle(Paint.Style.STROKE);
            this.f19462import.setStrokeWidth(this.f19469switch);
            this.f19462import.setAntiAlias(true);
        }
        this.f19465public.setColor(i);
        this.f19465public.setTextSize(i2);
        this.f19465public.setTextAlign(Paint.Align.CENTER);
    }

    /* renamed from: for, reason: not valid java name */
    private void m23769for(Canvas canvas) {
        Point point = this.f19455default;
        canvas.drawCircle(point.x, point.y, this.f19472throws, this.f19462import);
        RectF rectF = this.f19466return;
        Point point2 = this.f19455default;
        int i = point2.x;
        int i2 = this.f19472throws;
        rectF.left = i - i2;
        rectF.right = i + i2;
        int i3 = point2.y;
        rectF.top = i3 - i2;
        rectF.bottom = i3 + i2;
        int i4 = this.f19450break;
        if (i4 > 0) {
            canvas.drawArc(rectF, 270.0f, (i4 * 360.0f) / this.f19470this, false, this.f19463native);
        }
        String str = this.f19467static;
        if (str == null || str.length() <= 0) {
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = this.f19465public.getFontMetricsInt();
        RectF rectF2 = this.f19466return;
        float f = rectF2.top;
        float fHeight = rectF2.height() - fontMetricsInt.bottom;
        int i5 = fontMetricsInt.top;
        canvas.drawText(this.f19467static, this.f19455default.x, (f + ((fHeight + i5) / 2.0f)) - i5, this.f19465public);
    }

    /* renamed from: if, reason: not valid java name */
    private void m23770if() {
        int i = this.f19451case;
        if (i == 0 || i == 2) {
            this.f19461if = new RectF(getPaddingLeft(), getPaddingTop(), this.f19464new + getPaddingLeft(), this.f19473try + getPaddingTop());
            this.f19459for = new RectF();
        } else {
            this.f19472throws = (Math.min(this.f19464new, this.f19473try) - this.f19469switch) / 2;
            this.f19455default = new Point(this.f19464new / 2, this.f19473try / 2);
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m23771new(Canvas canvas) {
        canvas.drawRect(this.f19461if, this.f19462import);
        this.f19459for.set(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + m23767case(), getPaddingTop() + this.f19473try);
        canvas.drawRect(this.f19459for, this.f19463native);
        String str = this.f19467static;
        if (str == null || str.length() <= 0) {
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = this.f19465public.getFontMetricsInt();
        RectF rectF = this.f19461if;
        float f = rectF.top;
        float fHeight = rectF.height() - fontMetricsInt.bottom;
        int i = fontMetricsInt.top;
        canvas.drawText(this.f19467static, this.f19461if.centerX(), (f + ((fHeight + i) / 2.0f)) - i, this.f19465public);
    }

    /* renamed from: try, reason: not valid java name */
    private void m23772try(Canvas canvas) {
        float f = this.f19473try / 2.0f;
        canvas.drawRoundRect(this.f19461if, f, f, this.f19462import);
        this.f19459for.set(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + m23767case(), getPaddingTop() + this.f19473try);
        canvas.drawRoundRect(this.f19459for, f, f, this.f19463native);
        String str = this.f19467static;
        if (str == null || str.length() <= 0) {
            return;
        }
        Paint.FontMetricsInt fontMetricsInt = this.f19465public.getFontMetricsInt();
        RectF rectF = this.f19461if;
        float f2 = rectF.top;
        float fHeight = rectF.height() - fontMetricsInt.bottom;
        int i = fontMetricsInt.top;
        canvas.drawText(this.f19467static, this.f19461if.centerX(), (f2 + ((fHeight + i) / 2.0f)) - i, this.f19465public);
    }

    /* renamed from: else, reason: not valid java name */
    public void m23773else(int i, int i2) {
        this.f19460goto = i;
        this.f19457else = i2;
        this.f19462import.setColor(i);
        this.f19463native.setColor(this.f19457else);
        invalidate();
    }

    public int getMaxValue() {
        return this.f19470this;
    }

    public int getProgress() {
        return this.f19450break;
    }

    public QMUIProgressBarTextGenerator getQMUIProgressBarTextGenerator() {
        return this.f19456do;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23774goto(int i, boolean z) {
        int i2 = this.f19470this;
        if (i > i2 || i < 0) {
            return;
        }
        int i3 = this.f19452catch;
        if (i3 == -1 && this.f19450break == i) {
            return;
        }
        if (i3 == -1 || i3 != i) {
            if (!z) {
                this.f19452catch = -1;
                this.f19450break = i;
                invalidate();
            } else {
                this.f19458final = Math.abs((int) (((this.f19450break - i) * 1000) / i2));
                this.f19453class = System.currentTimeMillis();
                this.f19454const = i - this.f19450break;
                this.f19452catch = i;
                invalidate();
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f19452catch != -1) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f19453class;
            int i = this.f19458final;
            if (jCurrentTimeMillis >= i) {
                this.f19450break = this.f19452catch;
                this.f19452catch = -1;
            } else {
                this.f19450break = (int) (this.f19452catch - ((1.0f - (jCurrentTimeMillis / i)) * this.f19454const));
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
        QMUIProgressBarTextGenerator qMUIProgressBarTextGenerator = this.f19456do;
        if (qMUIProgressBarTextGenerator != null) {
            this.f19467static = qMUIProgressBarTextGenerator.generateText(this, this.f19450break, this.f19470this);
        }
        int i2 = this.f19451case;
        if (((i2 == 0 || i2 == 2) && this.f19461if == null) || (i2 == 1 && this.f19455default == null)) {
            m23770if();
        }
        int i3 = this.f19451case;
        if (i3 == 0) {
            m23771new(canvas);
        } else if (i3 == 2) {
            m23772try(canvas);
        } else {
            m23769for(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f19464new = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        this.f19473try = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        m23770if();
        setMeasuredDimension(this.f19464new, this.f19473try);
    }

    public void setMaxValue(int i) {
        this.f19470this = i;
    }

    public void setProgress(int i) {
        m23774goto(i, true);
    }

    public void setQMUIProgressBarTextGenerator(QMUIProgressBarTextGenerator qMUIProgressBarTextGenerator) {
        this.f19456do = qMUIProgressBarTextGenerator;
    }

    public void setStrokeRoundCap(boolean z) {
        this.f19463native.setStrokeCap(z ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        invalidate();
    }

    public void setTextColor(int i) {
        this.f19465public.setColor(i);
        invalidate();
    }

    public void setTextSize(int i) {
        this.f19465public.setTextSize(i);
        invalidate();
    }

    public void setType(int i) {
        this.f19451case = i;
        m23768do(this.f19471throw, this.f19468super, this.f19474while);
        invalidate();
    }

    /* renamed from: this, reason: not valid java name */
    public void m23775this(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIProgressBar);
        this.f19451case = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIProgressBar_qmui_type, 0);
        this.f19457else = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIProgressBar_qmui_progress_color, f19440abstract);
        this.f19460goto = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUIProgressBar_qmui_background_color, f19441continue);
        this.f19470this = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIProgressBar_qmui_max_value, 100);
        this.f19450break = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIProgressBar_qmui_value, 0);
        this.f19474while = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUIProgressBar_qmui_stroke_round_cap, false);
        this.f19468super = 20;
        int i = R.styleable.QMUIProgressBar_android_textSize;
        if (typedArrayObtainStyledAttributes.hasValue(i)) {
            this.f19468super = typedArrayObtainStyledAttributes.getDimensionPixelSize(i, 20);
        }
        this.f19471throw = -16777216;
        int i2 = R.styleable.QMUIProgressBar_android_textColor;
        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f19471throw = typedArrayObtainStyledAttributes.getColor(i2, -16777216);
        }
        if (this.f19451case == 1) {
            this.f19469switch = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIProgressBar_qmui_stroke_width, f19447protected);
        }
        typedArrayObtainStyledAttributes.recycle();
        m23768do(this.f19471throw, this.f19468super, this.f19474while);
        setProgress(this.f19450break);
    }

    public QMUIProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19462import = new Paint();
        this.f19463native = new Paint();
        this.f19465public = new Paint(1);
        this.f19466return = new RectF();
        this.f19467static = "";
        m23775this(context, attributeSet);
    }

    public QMUIProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19462import = new Paint();
        this.f19463native = new Paint();
        this.f19465public = new Paint(1);
        this.f19466return = new RectF();
        this.f19467static = "";
        m23775this(context, attributeSet);
    }
}
