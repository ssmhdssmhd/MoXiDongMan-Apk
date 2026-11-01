package org.adw.library.widgets.discreteseekbar.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import org.adw.library.widgets.discreteseekbar.R;
import org.adw.library.widgets.discreteseekbar.internal.compat.Cif;
import org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable;

/* loaded from: classes3.dex */
public class Marker extends ViewGroup implements MarkerDrawable.MarkerAnimationListener {

    /* renamed from: case, reason: not valid java name */
    private static final int f28363case = 8;

    /* renamed from: try, reason: not valid java name */
    private static final int f28364try = 4;

    /* renamed from: do, reason: not valid java name */
    private TextView f28365do;

    /* renamed from: for, reason: not valid java name */
    private int f28366for;

    /* renamed from: if, reason: not valid java name */
    private int f28367if;

    /* renamed from: new, reason: not valid java name */
    public MarkerDrawable f28368new;

    public Marker(Context context, AttributeSet attributeSet, int i, String str, int i2, int i3) {
        super(context, attributeSet, i);
        setVisibility(0);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DiscreteSeekBar, R.attr.discreteSeekBarStyle, R.style.Widget_DiscreteSeekBar);
        int i4 = ((int) (displayMetrics.density * 4.0f)) * 2;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.DiscreteSeekBar_dsb_indicatorTextAppearance, R.style.Widget_DiscreteIndicatorTextAppearance);
        TextView textView = new TextView(context);
        this.f28365do = textView;
        textView.setPadding(i4, 0, i4, 0);
        this.f28365do.setTextAppearance(context, resourceId);
        this.f28365do.setGravity(17);
        this.f28365do.setText(str);
        this.f28365do.setMaxLines(1);
        this.f28365do.setSingleLine(true);
        Cif.m31778goto(this.f28365do, 5);
        this.f28365do.setVisibility(4);
        setPadding(i4, i4, i4, i4);
        m31760for(str);
        this.f28366for = i3;
        MarkerDrawable markerDrawable = new MarkerDrawable(typedArrayObtainStyledAttributes.getColorStateList(R.styleable.DiscreteSeekBar_dsb_indicatorColor), i2);
        this.f28368new = markerDrawable;
        markerDrawable.setCallback(this);
        this.f28368new.m31816public(this);
        this.f28368new.m31815native(i4);
        ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimension(R.styleable.DiscreteSeekBar_dsb_indicatorElevation, displayMetrics.density * 8.0f));
        if (Build.VERSION.SDK_INT >= 21) {
            Cif.m31774case(this, this.f28368new);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.f28368new.draw(canvas);
        super.dispatchDraw(canvas);
    }

    /* renamed from: do, reason: not valid java name */
    public void m31759do() {
        this.f28368new.stop();
        this.f28365do.setVisibility(4);
        this.f28368new.m31812class();
    }

    /* renamed from: for, reason: not valid java name */
    public void m31760for(String str) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f28365do.setText("-" + str);
        this.f28365do.measure(View.MeasureSpec.makeMeasureSpec(displayMetrics.widthPixels, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(displayMetrics.heightPixels, Integer.MIN_VALUE));
        this.f28367if = Math.max(this.f28365do.getMeasuredWidth(), this.f28365do.getMeasuredHeight());
        removeView(this.f28365do);
        TextView textView = this.f28365do;
        int i = this.f28367if;
        addView(textView, new FrameLayout.LayoutParams(i, i, 51));
    }

    public CharSequence getValue() {
        return this.f28365do.getText();
    }

    /* renamed from: if, reason: not valid java name */
    public void m31761if() {
        this.f28368new.stop();
        this.f28368new.m31813const();
    }

    /* renamed from: new, reason: not valid java name */
    public void m31762new(int i, int i2) {
        this.f28368new.m31814import(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m31761if();
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
    public void onClosingComplete() {
        if (getParent() instanceof MarkerDrawable.MarkerAnimationListener) {
            ((MarkerDrawable.MarkerAnimationListener) getParent()).onClosingComplete();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f28368new.stop();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        TextView textView = this.f28365do;
        int i5 = this.f28367if;
        textView.layout(paddingLeft, paddingTop, paddingLeft + i5, i5 + paddingTop);
        this.f28368new.setBounds(paddingLeft, paddingTop, width, height);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        measureChildren(i, i2);
        int paddingLeft = this.f28367if + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f28367if + getPaddingTop() + getPaddingBottom();
        int i3 = this.f28367if;
        setMeasuredDimension(paddingLeft, paddingTop + (((int) ((i3 * 1.41f) - i3)) / 2) + this.f28366for);
    }

    @Override // org.adw.library.widgets.discreteseekbar.internal.drawable.MarkerDrawable.MarkerAnimationListener
    public void onOpeningComplete() {
        this.f28365do.setVisibility(0);
        if (getParent() instanceof MarkerDrawable.MarkerAnimationListener) {
            ((MarkerDrawable.MarkerAnimationListener) getParent()).onOpeningComplete();
        }
    }

    public void setValue(CharSequence charSequence) {
        this.f28365do.setText(charSequence);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.f28368new || super.verifyDrawable(drawable);
    }
}
