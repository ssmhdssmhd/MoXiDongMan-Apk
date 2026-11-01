package com.qmuiteam.qmui.span;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class QMUICustomTypefaceSpan extends TypefaceSpan {
    public static final Parcelable.Creator<QMUICustomTypefaceSpan> CREATOR = new Cdo();

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private final Typeface f19287do;

    /* renamed from: com.qmuiteam.qmui.span.QMUICustomTypefaceSpan$do, reason: invalid class name */
    public static class Cdo implements Parcelable.Creator<QMUICustomTypefaceSpan> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public QMUICustomTypefaceSpan createFromParcel(Parcel parcel) {
            return null;
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public QMUICustomTypefaceSpan[] newArray(int i) {
            return new QMUICustomTypefaceSpan[i];
        }
    }

    public QMUICustomTypefaceSpan(String str, @Nullable Typeface typeface) {
        super(str);
        this.f19287do = typeface;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m23619do(Paint paint, @Nullable Typeface typeface) {
        if (typeface == null) {
            return;
        }
        Typeface typeface2 = paint.getTypeface();
        int style = (typeface2 == null ? 0 : typeface2.getStyle()) & (typeface.getStyle() ^ (-1));
        if ((style & 1) != 0) {
            paint.setFakeBoldText(true);
        }
        if ((style & 2) != 0) {
            paint.setTextSkewX(-0.25f);
        }
        paint.setTypeface(typeface);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        m23619do(textPaint, this.f19287do);
    }

    @Override // android.text.style.TypefaceSpan, android.text.style.MetricAffectingSpan
    public void updateMeasureState(TextPaint textPaint) {
        m23619do(textPaint, this.f19287do);
    }
}
