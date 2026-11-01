package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.support.v4.ih1;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.qmuiteam.qmui.R;

/* loaded from: classes2.dex */
public class QMUIFontFitTextView extends TextView {

    /* renamed from: do, reason: not valid java name */
    private Paint f19425do;

    /* renamed from: for, reason: not valid java name */
    private float f19426for;

    /* renamed from: if, reason: not valid java name */
    private float f19427if;

    public QMUIFontFitTextView(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m23757do(String str, int i) {
        if (i <= 0) {
            return;
        }
        int paddingLeft = (i - getPaddingLeft()) - getPaddingRight();
        float f = this.f19426for;
        float f2 = this.f19427if;
        this.f19425do.set(getPaint());
        this.f19425do.setTextSize(this.f19426for);
        float f3 = paddingLeft;
        if (this.f19425do.measureText(str) <= f3) {
            f2 = this.f19426for;
        } else {
            this.f19425do.setTextSize(this.f19427if);
            if (this.f19425do.measureText(str) < f3) {
                while (f - f2 > 0.5f) {
                    float f4 = (f + f2) / 2.0f;
                    this.f19425do.setTextSize(f4);
                    if (this.f19425do.measureText(str) >= f3) {
                        f = f4;
                    } else {
                        f2 = f4;
                    }
                }
            }
        }
        setTextSize(0, f2);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int measuredHeight = getMeasuredHeight();
        m23757do(getText().toString(), size);
        setMeasuredDimension(size, measuredHeight);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i != i3) {
            m23757do(getText().toString(), i);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        m23757do(charSequence.toString(), getWidth());
    }

    public QMUIFontFitTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f19425do = paint;
        paint.set(getPaint());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIFontFitTextView);
        int i = R.styleable.QMUIFontFitTextView_qmui_minTextSize;
        float f = ih1.f2773do;
        this.f19427if = typedArrayObtainStyledAttributes.getDimensionPixelSize(i, Math.round(14.0f * f));
        this.f19426for = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUIFontFitTextView_qmui_maxTextSize, Math.round(f * 18.0f));
        typedArrayObtainStyledAttributes.recycle();
    }
}
