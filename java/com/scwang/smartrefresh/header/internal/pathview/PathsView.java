package com.scwang.smartrefresh.header.internal.pathview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes2.dex */
public class PathsView extends View {

    /* renamed from: do, reason: not valid java name */
    public Cif f20397do;

    public PathsView(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    public void m24375do(int... iArr) {
        this.f20397do.m24393case(iArr);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m24376if(String... strArr) {
        return this.f20397do.m24394else(strArr);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f20397do.draw(canvas);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getTag() instanceof String) {
            m24376if(getTag().toString());
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f20397do.setBounds(getPaddingLeft(), getPaddingTop(), Math.max((i3 - i) - getPaddingRight(), getPaddingLeft()), Math.max((i4 - i2) - getPaddingTop(), getPaddingTop()));
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        Cif cif = this.f20397do;
        super.setMeasuredDimension(View.resolveSize(cif.getBounds().width() + getPaddingLeft() + getPaddingRight(), i), View.resolveSize(cif.getBounds().height() + getPaddingTop() + getPaddingBottom(), i2));
    }

    public PathsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20397do = new Cif();
    }
}
