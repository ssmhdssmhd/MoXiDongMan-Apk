package com.qmuiteam.qmui.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.ih1;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class QMUILoadingView extends View {

    /* renamed from: else, reason: not valid java name */
    private static final int f19428else = 12;

    /* renamed from: goto, reason: not valid java name */
    private static final int f19429goto = 30;

    /* renamed from: case, reason: not valid java name */
    private ValueAnimator.AnimatorUpdateListener f19430case;

    /* renamed from: do, reason: not valid java name */
    private int f19431do;

    /* renamed from: for, reason: not valid java name */
    private int f19432for;

    /* renamed from: if, reason: not valid java name */
    private int f19433if;

    /* renamed from: new, reason: not valid java name */
    private ValueAnimator f19434new;

    /* renamed from: try, reason: not valid java name */
    private Paint f19435try;

    /* renamed from: com.qmuiteam.qmui.widget.QMUILoadingView$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            QMUILoadingView.this.f19432for = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            QMUILoadingView.this.invalidate();
        }
    }

    public QMUILoadingView(Context context) {
        this(context, null);
    }

    /* renamed from: for, reason: not valid java name */
    private void m23759for() {
        Paint paint = new Paint();
        this.f19435try = paint;
        paint.setColor(this.f19433if);
        this.f19435try.setAntiAlias(true);
        this.f19435try.setStrokeCap(Paint.Cap.ROUND);
    }

    /* renamed from: if, reason: not valid java name */
    private void m23760if(Canvas canvas, int i) {
        int i2 = this.f19431do;
        int i3 = i2 / 12;
        int i4 = i2 / 6;
        this.f19435try.setStrokeWidth(i3);
        int i5 = this.f19431do;
        canvas.rotate(i, i5 / 2, i5 / 2);
        int i6 = this.f19431do;
        canvas.translate(i6 / 2, i6 / 2);
        int i7 = 0;
        while (i7 < 12) {
            canvas.rotate(30.0f);
            i7++;
            this.f19435try.setAlpha((int) ((i7 * 255.0f) / 12.0f));
            int i8 = i3 / 2;
            canvas.translate(0.0f, ((-this.f19431do) / 2) + i8);
            canvas.drawLine(0.0f, 0.0f, 0.0f, i4, this.f19435try);
            canvas.translate(0.0f, (this.f19431do / 2) - i8);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m23761new() {
        ValueAnimator valueAnimator = this.f19434new;
        if (valueAnimator != null) {
            if (valueAnimator.isStarted()) {
                return;
            }
            this.f19434new.start();
            return;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 11);
        this.f19434new = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(this.f19430case);
        this.f19434new.setDuration(600L);
        this.f19434new.setRepeatMode(1);
        this.f19434new.setRepeatCount(-1);
        this.f19434new.setInterpolator(new LinearInterpolator());
        this.f19434new.start();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m23761new();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m23762try();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        m23760if(canvas, this.f19432for * 30);
        canvas.restoreToCount(iSaveLayer);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f19431do;
        setMeasuredDimension(i3, i3);
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            m23761new();
        } else {
            m23762try();
        }
    }

    public void setColor(int i) {
        this.f19433if = i;
        this.f19435try.setColor(i);
        invalidate();
    }

    public void setSize(int i) {
        this.f19431do = i;
        requestLayout();
    }

    /* renamed from: try, reason: not valid java name */
    public void m23762try() {
        ValueAnimator valueAnimator = this.f19434new;
        if (valueAnimator != null) {
            valueAnimator.removeUpdateListener(this.f19430case);
            this.f19434new.removeAllUpdateListeners();
            this.f19434new.cancel();
            this.f19434new = null;
        }
    }

    public QMUILoadingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUILoadingStyle);
    }

    public QMUILoadingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19432for = 0;
        this.f19430case = new Cdo();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.QMUILoadingView, i, 0);
        this.f19431do = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUILoadingView_qmui_loading_view_size, ih1.m3450new(context, 32));
        this.f19433if = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUILoadingView_android_color, -1);
        typedArrayObtainStyledAttributes.recycle();
        m23759for();
    }

    public QMUILoadingView(Context context, int i, int i2) {
        super(context);
        this.f19432for = 0;
        this.f19430case = new Cdo();
        this.f19431do = i;
        this.f19433if = i2;
        m23759for();
    }
}
