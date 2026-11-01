package com.qmuiteam.qmui.widget.dialog;

import android.content.Context;
import android.graphics.Canvas;
import android.support.v4.sh1;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.layout.QMUILinearLayout;

/* loaded from: classes2.dex */
public class QMUIDialogView extends QMUILinearLayout {

    /* renamed from: for, reason: not valid java name */
    private int f19817for;

    /* renamed from: new, reason: not valid java name */
    private int f19818new;

    /* renamed from: try, reason: not valid java name */
    private OnDecorationListener f19819try;

    public interface OnDecorationListener {
        void onDraw(Canvas canvas, QMUIDialogView qMUIDialogView);

        void onDrawOver(Canvas canvas, QMUIDialogView qMUIDialogView);
    }

    public QMUIDialogView(Context context) {
        this(context, null);
    }

    @Override // com.qmuiteam.qmui.layout.QMUILinearLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        OnDecorationListener onDecorationListener = this.f19819try;
        if (onDecorationListener != null) {
            onDecorationListener.onDrawOver(canvas, this);
        }
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        OnDecorationListener onDecorationListener = this.f19819try;
        if (onDecorationListener != null) {
            onDecorationListener.onDraw(canvas, this);
        }
    }

    @Override // com.qmuiteam.qmui.layout.QMUILinearLayout, android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int i3 = this.f19818new;
        if (i3 > 0 && size > i3) {
            i = View.MeasureSpec.makeMeasureSpec(i3, mode);
        }
        super.onMeasure(i, i2);
        if (mode == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            int i4 = this.f19817for;
            if (measuredWidth >= i4 || i4 >= size) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i2);
        }
    }

    public void setMaxWidth(int i) {
        this.f19818new = i;
    }

    public void setMinWidth(int i) {
        this.f19817for = i;
    }

    public void setOnDecorationListener(OnDecorationListener onDecorationListener) {
        this.f19819try = onDecorationListener;
    }

    public QMUIDialogView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QMUIDialogView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19817for = sh1.m7405new(context, R.attr.qmui_dialog_min_width);
        this.f19818new = sh1.m7405new(context, R.attr.qmui_dialog_max_width);
    }
}
