package com.jcodecraeer.xrecyclerview;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes2.dex */
public class JellyView extends View implements BaseRefreshHeader {

    /* renamed from: do, reason: not valid java name */
    public Path f18209do;

    /* renamed from: for, reason: not valid java name */
    private int f18210for;

    /* renamed from: if, reason: not valid java name */
    public Paint f18211if;

    /* renamed from: new, reason: not valid java name */
    private int f18212new;

    public JellyView(Context context) {
        super(context);
        this.f18210for = 0;
        this.f18212new = 0;
        m22779do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m22779do() {
        if (isInEditMode()) {
            return;
        }
        this.f18209do = new Path();
        Paint paint = new Paint();
        this.f18211if = paint;
        paint.setColor(getContext().getResources().getColor(android.R.color.holo_blue_bright));
        this.f18211if.setAntiAlias(true);
    }

    public int getJellyHeight() {
        return this.f18212new;
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return this.f18210for;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f18209do.reset();
        this.f18209do.lineTo(0.0f, this.f18210for);
        this.f18209do.quadTo(getMeasuredWidth() / 2, this.f18210for + this.f18212new, getMeasuredWidth(), this.f18210for);
        this.f18209do.lineTo(getMeasuredWidth(), 0.0f);
        canvas.drawPath(this.f18209do, this.f18211if);
    }

    @Override // com.jcodecraeer.xrecyclerview.BaseRefreshHeader
    public void onMove(float f) {
        this.f18212new += (int) f;
        StringBuilder sb = new StringBuilder();
        sb.append("delta = ");
        sb.append(f);
        invalidate();
    }

    @Override // com.jcodecraeer.xrecyclerview.BaseRefreshHeader
    public void refreshComplete() {
    }

    @Override // com.jcodecraeer.xrecyclerview.BaseRefreshHeader
    public boolean releaseAction() {
        return false;
    }

    public void setJellyColor(int i) {
        this.f18211if.setColor(i);
    }

    public void setJellyHeight(int i) {
        this.f18212new = i;
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        this.f18210for = i;
    }

    public JellyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18210for = 0;
        this.f18212new = 0;
        m22779do();
    }

    public JellyView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f18210for = 0;
        this.f18212new = 0;
        m22779do();
    }

    @TargetApi(21)
    public JellyView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f18210for = 0;
        this.f18212new = 0;
        m22779do();
    }
}
