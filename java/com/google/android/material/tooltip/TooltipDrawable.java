package com.google.android.material.tooltip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.v4.a60;
import android.support.v4.k62;
import android.support.v4.lx0;
import android.support.v4.p61;
import android.support.v4.qx0;
import android.support.v4.sx0;
import android.support.v4.w1;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.common.collect.LinkedHashMultimap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {

    @StyleRes
    private static final int h = R.style.Widget_MaterialComponents_Tooltip;

    @AttrRes
    private static final int i = R.attr.tooltipStyle;
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    @Nullable
    private CharSequence f13187abstract;
    private int b;
    private float c;

    /* renamed from: continue, reason: not valid java name */
    @NonNull
    private final Context f13188continue;
    private float d;
    private final float e;
    private float f;
    private float g;

    /* renamed from: implements, reason: not valid java name */
    private int f13189implements;

    /* renamed from: instanceof, reason: not valid java name */
    private int f13190instanceof;

    /* renamed from: interface, reason: not valid java name */
    @NonNull
    private final View.OnLayoutChangeListener f13191interface;

    /* renamed from: protected, reason: not valid java name */
    @NonNull
    private final Rect f13192protected;

    /* renamed from: strictfp, reason: not valid java name */
    @Nullable
    private final Paint.FontMetrics f13193strictfp;

    /* renamed from: synchronized, reason: not valid java name */
    private int f13194synchronized;

    /* renamed from: transient, reason: not valid java name */
    private int f13195transient;

    /* renamed from: volatile, reason: not valid java name */
    @NonNull
    private final TextDrawableHelper f13196volatile;

    /* renamed from: com.google.android.material.tooltip.TooltipDrawable$do, reason: invalid class name */
    public class Cdo implements View.OnLayoutChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            TooltipDrawable.this.C0(view);
        }
    }

    private TooltipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        super(context, attributeSet, i2, i3);
        this.f13193strictfp = new Paint.FontMetrics();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f13196volatile = textDrawableHelper;
        this.f13191interface = new Cdo();
        this.f13192protected = new Rect();
        this.c = 1.0f;
        this.d = 1.0f;
        this.e = 0.5f;
        this.f = 0.5f;
        this.g = 1.0f;
        this.f13188continue = context;
        textDrawableHelper.m13609try().density = context.getResources().getDisplayMetrics().density;
        textDrawableHelper.m13609try().setTextAlign(Paint.Align.CENTER);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.b = iArr[0];
        view.getWindowVisibleDisplayFrame(this.f13192protected);
    }

    private float b0() {
        int i2;
        if (((this.f13192protected.right - getBounds().right) - this.b) - this.f13194synchronized < 0) {
            i2 = ((this.f13192protected.right - getBounds().right) - this.b) - this.f13194synchronized;
        } else {
            if (((this.f13192protected.left - getBounds().left) - this.b) + this.f13194synchronized <= 0) {
                return 0.0f;
            }
            i2 = ((this.f13192protected.left - getBounds().left) - this.b) + this.f13194synchronized;
        }
        return i2;
    }

    private float c0() {
        this.f13196volatile.m13609try().getFontMetrics(this.f13193strictfp);
        Paint.FontMetrics fontMetrics = this.f13193strictfp;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private float d0(@NonNull Rect rect) {
        return rect.centerY() - c0();
    }

    @NonNull
    public static TooltipDrawable e0(@NonNull Context context) {
        return g0(context, null, i, h);
    }

    @NonNull
    public static TooltipDrawable f0(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        return g0(context, attributeSet, i, h);
    }

    @NonNull
    public static TooltipDrawable g0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        TooltipDrawable tooltipDrawable = new TooltipDrawable(context, attributeSet, i2, i3);
        tooltipDrawable.r0(attributeSet, i2, i3);
        return tooltipDrawable;
    }

    private a60 h0() {
        float f = -b0();
        double dWidth = getBounds().width();
        double d = this.a;
        double dSqrt = Math.sqrt(2.0d);
        Double.isNaN(d);
        Double.isNaN(dWidth);
        float f2 = ((float) (dWidth - (d * dSqrt))) / 2.0f;
        return new p61(new lx0(this.a), Math.min(Math.max(f, -f2), f2));
    }

    private void j0(@NonNull Canvas canvas) {
        if (this.f13187abstract == null) {
            return;
        }
        int iD0 = (int) d0(getBounds());
        if (this.f13196volatile.m13607new() != null) {
            this.f13196volatile.m13609try().drawableState = getState();
            this.f13196volatile.m13604catch(this.f13188continue);
            this.f13196volatile.m13609try().setAlpha((int) (this.g * 255.0f));
        }
        CharSequence charSequence = this.f13187abstract;
        canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), iD0, this.f13196volatile.m13609try());
    }

    private float q0() {
        CharSequence charSequence = this.f13187abstract;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f13196volatile.m13603case(charSequence.toString());
    }

    private void r0(@Nullable AttributeSet attributeSet, @AttrRes int i2, @StyleRes int i3) {
        TypedArray typedArrayM4267break = k62.m4267break(this.f13188continue, attributeSet, R.styleable.Tooltip, i2, i3, new int[0]);
        this.a = this.f13188continue.getResources().getDimensionPixelSize(R.dimen.mtrl_tooltip_arrowSize);
        setShapeAppearanceModel(getShapeAppearanceModel().m13982static().m14016public(h0()).m14003const());
        x0(typedArrayM4267break.getText(R.styleable.Tooltip_android_text));
        y0(sx0.m7648case(this.f13188continue, typedArrayM4267break, R.styleable.Tooltip_android_textAppearance));
        z(ColorStateList.valueOf(typedArrayM4267break.getColor(R.styleable.Tooltip_backgroundTint, qx0.m6675else(ColorUtils.setAlphaComponent(qx0.m6676for(this.f13188continue, android.R.attr.colorBackground, TooltipDrawable.class.getCanonicalName()), 229), ColorUtils.setAlphaComponent(qx0.m6676for(this.f13188continue, R.attr.colorOnBackground, TooltipDrawable.class.getCanonicalName()), 153)))));
        Q(ColorStateList.valueOf(qx0.m6676for(this.f13188continue, R.attr.colorSurface, TooltipDrawable.class.getCanonicalName())));
        this.f13195transient = typedArrayM4267break.getDimensionPixelSize(R.styleable.Tooltip_android_padding, 0);
        this.f13189implements = typedArrayM4267break.getDimensionPixelSize(R.styleable.Tooltip_android_minWidth, 0);
        this.f13190instanceof = typedArrayM4267break.getDimensionPixelSize(R.styleable.Tooltip_android_minHeight, 0);
        this.f13194synchronized = typedArrayM4267break.getDimensionPixelSize(R.styleable.Tooltip_android_layout_margin, 0);
        typedArrayM4267break.recycle();
    }

    public void A0(@Px int i2) {
        this.f13195transient = i2;
        invalidateSelf();
    }

    public void B0(@StringRes int i2) {
        x0(this.f13188continue.getResources().getString(i2));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        canvas.save();
        float fB0 = b0();
        double d = this.a;
        double dSqrt = Math.sqrt(2.0d);
        Double.isNaN(d);
        double d2 = d * dSqrt;
        double d3 = this.a;
        Double.isNaN(d3);
        canvas.scale(this.c, this.d, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f));
        canvas.translate(fB0, (float) (-(d2 - d3)));
        super.draw(canvas);
        j0(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.f13196volatile.m13609try().getTextSize(), this.f13190instanceof);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.f13195transient * 2) + q0(), this.f13189implements);
    }

    public void i0(@Nullable View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.f13191interface);
    }

    public int k0() {
        return this.f13194synchronized;
    }

    public int l0() {
        return this.f13190instanceof;
    }

    public int m0() {
        return this.f13189implements;
    }

    @Nullable
    public CharSequence n0() {
        return this.f13187abstract;
    }

    @Nullable
    public com.google.android.material.resources.Cdo o0() {
        return this.f13196volatile.m13607new();
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(getShapeAppearanceModel().m13982static().m14016public(h0()).m14003const());
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        invalidateSelf();
    }

    public int p0() {
        return this.f13195transient;
    }

    public void s0(@Px int i2) {
        this.f13194synchronized = i2;
        invalidateSelf();
    }

    public void t0(@Px int i2) {
        this.f13190instanceof = i2;
        invalidateSelf();
    }

    public void u0(@Px int i2) {
        this.f13189implements = i2;
        invalidateSelf();
    }

    public void v0(@Nullable View view) {
        if (view == null) {
            return;
        }
        C0(view);
        view.addOnLayoutChangeListener(this.f13191interface);
    }

    public void w0(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f = 1.2f;
        this.c = f;
        this.d = f;
        this.g = w1.m9013if(0.0f, 1.0f, 0.19f, 1.0f, f);
        invalidateSelf();
    }

    public void x0(@Nullable CharSequence charSequence) {
        if (TextUtils.equals(this.f13187abstract, charSequence)) {
            return;
        }
        this.f13187abstract = charSequence;
        this.f13196volatile.m13602break(true);
        invalidateSelf();
    }

    public void y0(@Nullable com.google.android.material.resources.Cdo cdo) {
        this.f13196volatile.m13608this(cdo, this.f13188continue);
    }

    public void z0(@StyleRes int i2) {
        y0(new com.google.android.material.resources.Cdo(this.f13188continue, i2));
    }
}
