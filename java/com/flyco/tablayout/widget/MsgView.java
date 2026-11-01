package com.flyco.tablayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.flyco.tablayout.R;

/* loaded from: classes.dex */
public class MsgView extends TextView {

    /* renamed from: case, reason: not valid java name */
    private int f10892case;

    /* renamed from: do, reason: not valid java name */
    private Context f10893do;

    /* renamed from: else, reason: not valid java name */
    private boolean f10894else;

    /* renamed from: for, reason: not valid java name */
    private int f10895for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f10896goto;

    /* renamed from: if, reason: not valid java name */
    private GradientDrawable f10897if;

    /* renamed from: new, reason: not valid java name */
    private int f10898new;

    /* renamed from: try, reason: not valid java name */
    private int f10899try;

    public MsgView(Context context) {
        this(context, null);
    }

    /* renamed from: case, reason: not valid java name */
    private void m12321case(GradientDrawable gradientDrawable, int i, int i2) {
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(this.f10898new);
        gradientDrawable.setStroke(this.f10899try, i2);
    }

    /* renamed from: new, reason: not valid java name */
    private void m12322new(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MsgView);
        this.f10895for = typedArrayObtainStyledAttributes.getColor(R.styleable.MsgView_mv_backgroundColor, 0);
        this.f10898new = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_cornerRadius, 0);
        this.f10899try = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MsgView_mv_strokeWidth, 0);
        this.f10892case = typedArrayObtainStyledAttributes.getColor(R.styleable.MsgView_mv_strokeColor, 0);
        this.f10894else = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isRadiusHalfHeight, false);
        this.f10896goto = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MsgView_mv_isWidthHeightEqual, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* renamed from: do, reason: not valid java name */
    public int m12323do(float f) {
        return (int) ((f * this.f10893do.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: else, reason: not valid java name */
    public int m12324else(float f) {
        return (int) ((f * this.f10893do.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m12325for() {
        return this.f10896goto;
    }

    public int getBackgroundColor() {
        return this.f10895for;
    }

    public int getCornerRadius() {
        return this.f10898new;
    }

    public int getStrokeColor() {
        return this.f10892case;
    }

    public int getStrokeWidth() {
        return this.f10899try;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m12326if() {
        return this.f10894else;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (m12326if()) {
            setCornerRadius(getHeight() / 2);
        } else {
            m12327try();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!m12325for() || getWidth() <= 0 || getHeight() <= 0) {
            super.onMeasure(i, i2);
        } else {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(getWidth(), getHeight()), 1073741824);
            super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f10895for = i;
        m12327try();
    }

    public void setCornerRadius(int i) {
        this.f10898new = m12323do(i);
        m12327try();
    }

    public void setIsRadiusHalfHeight(boolean z) {
        this.f10894else = z;
        m12327try();
    }

    public void setIsWidthHeightEqual(boolean z) {
        this.f10896goto = z;
        m12327try();
    }

    public void setStrokeColor(int i) {
        this.f10892case = i;
        m12327try();
    }

    public void setStrokeWidth(int i) {
        this.f10899try = m12323do(i);
        m12327try();
    }

    /* renamed from: try, reason: not valid java name */
    public void m12327try() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        m12321case(this.f10897if, this.f10895for, this.f10892case);
        stateListDrawable.addState(new int[]{-16842919}, this.f10897if);
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(stateListDrawable);
        } else {
            setBackgroundDrawable(stateListDrawable);
        }
    }

    public MsgView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MsgView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10897if = new GradientDrawable();
        this.f10893do = context;
        m12322new(context, attributeSet);
    }
}
