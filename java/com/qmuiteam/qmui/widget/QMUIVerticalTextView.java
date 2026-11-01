package com.qmuiteam.qmui.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import java.lang.Character;

/* loaded from: classes2.dex */
public class QMUIVerticalTextView extends AppCompatTextView {

    /* renamed from: do, reason: not valid java name */
    private boolean f19634do;

    /* renamed from: for, reason: not valid java name */
    private float[] f19635for;

    /* renamed from: if, reason: not valid java name */
    private int f19636if;

    /* renamed from: new, reason: not valid java name */
    private int[] f19637new;

    public QMUIVerticalTextView(Context context) {
        super(context);
        this.f19634do = true;
        init();
    }

    /* renamed from: do, reason: not valid java name */
    private static boolean m23922do(int i) {
        Character.UnicodeBlock unicodeBlockOf = Character.UnicodeBlock.of(i);
        return unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlockOf == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlockOf == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS || unicodeBlockOf == Character.UnicodeBlock.HANGUL_SYLLABLES || unicodeBlockOf == Character.UnicodeBlock.HANGUL_JAMO || unicodeBlockOf == Character.UnicodeBlock.HANGUL_COMPATIBILITY_JAMO || unicodeBlockOf == Character.UnicodeBlock.HIRAGANA || unicodeBlockOf == Character.UnicodeBlock.KATAKANA || unicodeBlockOf == Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS;
    }

    private void init() {
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m23923if() {
        return this.f19634do;
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(16)
    public void onDraw(Canvas canvas) {
        Paint.FontMetricsInt fontMetricsInt;
        if (!this.f19634do) {
            super.onDraw(canvas);
            return;
        }
        if (this.f19636if == 0) {
            return;
        }
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        paint.drawableState = getDrawableState();
        Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
        char[] charArray = getText().toString().toCharArray();
        canvas.save();
        float width = (getWidth() - getPaddingRight()) - this.f19635for[0];
        float lineSpacingMultiplier = width;
        float paddingTop = getPaddingTop();
        int i = 0;
        int i2 = 0;
        while (i < charArray.length) {
            int iCodePointAt = Character.codePointAt(charArray, i);
            int iCharCount = Character.charCount(iCodePointAt);
            boolean z = !m23922do(iCodePointAt);
            int iSave = canvas.save();
            if (z) {
                canvas.rotate(90.0f, width, paddingTop);
            }
            float f = z ? (paddingTop - ((this.f19635for[i2] - (fontMetricsInt2.bottom - fontMetricsInt2.top)) / 2.0f)) - fontMetricsInt2.descent : paddingTop - fontMetricsInt2.ascent;
            float f2 = width;
            Paint.FontMetricsInt fontMetricsInt3 = fontMetricsInt2;
            int i3 = i;
            canvas.drawText(charArray, i, iCharCount, width, f, paint);
            canvas.restoreToCount(iSave);
            i = i3 + iCharCount;
            if (i < charArray.length) {
                if (i3 + 1 > this.f19637new[i2]) {
                    int i4 = i2 + 1;
                    float[] fArr = this.f19635for;
                    if (i4 < fArr.length) {
                        lineSpacingMultiplier -= (fArr[i4] * getLineSpacingMultiplier()) + getLineSpacingExtra();
                        i2 = i4;
                        paddingTop = getPaddingTop();
                        width = lineSpacingMultiplier;
                        fontMetricsInt = fontMetricsInt3;
                    }
                }
                if (z) {
                    paddingTop += paint.measureText(charArray, i3, iCharCount);
                    fontMetricsInt = fontMetricsInt3;
                    width = f2;
                } else {
                    fontMetricsInt = fontMetricsInt3;
                    paddingTop += fontMetricsInt.descent - fontMetricsInt.ascent;
                    width = f2;
                }
            } else {
                fontMetricsInt = fontMetricsInt3;
                width = f2;
            }
            fontMetricsInt2 = fontMetricsInt;
        }
        canvas.restore();
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    @SuppressLint({"DrawAllocation"})
    @TargetApi(16)
    public void onMeasure(int i, int i2) {
        int i3;
        float fMeasureText;
        float f;
        super.onMeasure(i, i2);
        if (this.f19634do) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            float paddingLeft = getPaddingLeft() + getPaddingRight();
            float paddingTop = getPaddingTop() + getPaddingBottom();
            char[] charArray = getText().toString().toCharArray();
            TextPaint paint = getPaint();
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            int paddingBottom = (mode2 == 0 ? Integer.MAX_VALUE : size2) - getPaddingBottom();
            float paddingTop2 = getPaddingTop();
            this.f19636if = 0;
            this.f19635for = new float[charArray.length + 1];
            this.f19637new = new int[charArray.length + 1];
            float f2 = paddingTop2;
            int i4 = 0;
            int i5 = 0;
            int i6 = 1;
            while (i4 < charArray.length) {
                int iCharCount = Character.charCount(Character.codePointAt(charArray, i4));
                if (!m23922do(r12)) {
                    i3 = size;
                    f = fontMetricsInt.descent - fontMetricsInt.ascent;
                    fMeasureText = paint.measureText(charArray, i4, iCharCount);
                } else {
                    i3 = size;
                    float fMeasureText2 = paint.measureText(charArray, i4, iCharCount);
                    fMeasureText = fontMetricsInt.descent - fontMetricsInt.ascent;
                    f = fMeasureText2;
                }
                float f3 = paddingTop2 + fMeasureText;
                TextPaint textPaint = paint;
                if (f3 > ((float) paddingBottom) && i4 > 0) {
                    if (f2 >= paddingTop2) {
                        paddingTop2 = f2;
                    }
                    this.f19637new[i5] = i4 - iCharCount;
                    paddingLeft += this.f19635for[i5];
                    i5++;
                    f2 = paddingTop2;
                    paddingTop2 = getPaddingTop() + fMeasureText;
                } else {
                    paddingTop2 = f3;
                    if (f2 < f3) {
                        f2 = paddingTop2;
                    }
                }
                float[] fArr = this.f19635for;
                if (fArr[i5] < f) {
                    fArr[i5] = f;
                }
                i4 += iCharCount;
                if (i4 >= charArray.length) {
                    paddingLeft += fArr[i5];
                    paddingTop = getPaddingBottom() + f2;
                }
                i6 = iCharCount;
                size = i3;
                paint = textPaint;
            }
            int i7 = size;
            if (charArray.length > 0) {
                this.f19636if = i5 + 1;
                this.f19637new[i5] = charArray.length - i6;
            }
            int i8 = this.f19636if;
            if (i8 > 1) {
                int i9 = i8 - 1;
                for (int i10 = 0; i10 < i9; i10++) {
                    paddingLeft += (this.f19635for[i10] * (getLineSpacingMultiplier() - 1.0f)) + getLineSpacingExtra();
                }
            }
            if (mode2 == 1073741824) {
                paddingTop = size2;
            } else if (mode2 == Integer.MIN_VALUE) {
                paddingTop = Math.min(paddingTop, size2);
            }
            if (mode == 1073741824) {
                paddingLeft = i7;
            } else if (mode == Integer.MIN_VALUE) {
                paddingLeft = Math.min(paddingLeft, i7);
            }
            setMeasuredDimension((int) paddingLeft, (int) paddingTop);
        }
    }

    public void setVerticalMode(boolean z) {
        this.f19634do = z;
        requestLayout();
    }

    public QMUIVerticalTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f19634do = true;
        init();
    }

    public QMUIVerticalTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19634do = true;
        init();
    }
}
