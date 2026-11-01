package com.google.android.material.chip;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.support.v4.i30;
import android.support.v4.k62;
import android.support.v4.no1;
import android.support.v4.pf;
import android.support.v4.q01;
import android.support.v4.qx0;
import android.support.v4.sx0;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.AnimatorRes;
import androidx.annotation.AttrRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.XmlRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.text.BidiFormatter;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.Cdo;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ChipDrawable extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, TextDrawableHelper.TextDrawableDelegate {
    private static final boolean a0 = false;
    private static final String c0 = "http://schemas.android.com/apk/res-auto";
    private static final int d0 = 24;
    private final Paint.FontMetrics A;
    private final RectF B;
    private final PointF C;
    private final Path D;

    @NonNull
    private final TextDrawableHelper E;

    @ColorInt
    private int F;

    @ColorInt
    private int G;

    @ColorInt
    private int H;

    @ColorInt
    private int I;

    /* renamed from: J, reason: collision with root package name */
    @ColorInt
    private int f36255J;

    @ColorInt
    private int K;
    private boolean L;

    @ColorInt
    private int M;
    private int N;

    @Nullable
    private ColorFilter O;

    @Nullable
    private PorterDuffColorFilter P;

    @Nullable
    private ColorStateList Q;

    @Nullable
    private PorterDuff.Mode R;
    private int[] S;
    private boolean T;

    @Nullable
    private ColorStateList U;

    @NonNull
    private WeakReference<Delegate> V;
    private TextUtils.TruncateAt W;
    private boolean X;
    private int Y;
    private boolean Z;

    @Nullable
    private ColorStateList a;

    /* renamed from: abstract, reason: not valid java name */
    @Nullable
    private ColorStateList f11622abstract;
    private float b;
    private boolean c;

    /* renamed from: continue, reason: not valid java name */
    @Nullable
    private ColorStateList f11623continue;
    private boolean d;

    @Nullable
    private Drawable e;

    @Nullable
    private Drawable f;

    @Nullable
    private ColorStateList g;
    private float h;

    @Nullable
    private CharSequence i;

    /* renamed from: implements, reason: not valid java name */
    @Nullable
    private CharSequence f11624implements;

    /* renamed from: instanceof, reason: not valid java name */
    private boolean f11625instanceof;

    /* renamed from: interface, reason: not valid java name */
    @Nullable
    private ColorStateList f11626interface;
    private boolean j;
    private boolean k;

    @Nullable
    private Drawable l;

    @Nullable
    private ColorStateList m;

    @Nullable
    private q01 n;

    @Nullable
    private q01 o;
    private float p;

    /* renamed from: protected, reason: not valid java name */
    private float f11627protected;
    private float q;
    private float r;
    private float s;

    /* renamed from: strictfp, reason: not valid java name */
    private float f11628strictfp;

    /* renamed from: synchronized, reason: not valid java name */
    @Nullable
    private Drawable f11629synchronized;
    private float t;

    /* renamed from: transient, reason: not valid java name */
    @Nullable
    private ColorStateList f11630transient;
    private float u;
    private float v;

    /* renamed from: volatile, reason: not valid java name */
    private float f11631volatile;
    private float w;

    @NonNull
    private final Context x;
    private final Paint y;

    @Nullable
    private final Paint z;
    private static final int[] b0 = {R.attr.state_enabled};
    private static final ShapeDrawable e0 = new ShapeDrawable(new OvalShape());

    public interface Delegate {
        void onChipDrawableSizeChange();
    }

    private ChipDrawable(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        this.f11631volatile = -1.0f;
        this.y = new Paint(1);
        this.A = new Paint.FontMetrics();
        this.B = new RectF();
        this.C = new PointF();
        this.D = new Path();
        this.N = 255;
        this.R = PorterDuff.Mode.SRC_IN;
        this.V = new WeakReference<>(null);
        k(context);
        this.x = context;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.E = textDrawableHelper;
        this.f11624implements = "";
        textDrawableHelper.m13609try().density = context.getResources().getDisplayMetrics().density;
        this.z = null;
        int[] iArr = b0;
        setState(iArr);
        q2(iArr);
        this.X = true;
        if (no1.f4305do) {
            e0.setTint(-1);
        }
    }

    private float R0() {
        Drawable drawable = this.L ? this.l : this.f11629synchronized;
        float fCeil = this.b;
        if (fCeil <= 0.0f && drawable != null) {
            fCeil = (float) Math.ceil(ViewUtils.m13624try(this.x, 24));
            if (drawable.getIntrinsicHeight() <= fCeil) {
                return drawable.getIntrinsicHeight();
            }
        }
        return fCeil;
    }

    private float S0() {
        Drawable drawable = this.L ? this.l : this.f11629synchronized;
        float f = this.b;
        return (f > 0.0f || drawable == null) ? f : drawable.getIntrinsicWidth();
    }

    private boolean U2() {
        return this.k && this.l != null && this.L;
    }

    private boolean V2() {
        return this.f11625instanceof && this.f11629synchronized != null;
    }

    private boolean W2() {
        return this.d && this.e != null;
    }

    private void X2(@Nullable Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void Y2() {
        this.U = this.T ? no1.m5294new(this.f11630transient) : null;
    }

    @TargetApi(21)
    private void Z2() {
        this.f = new RippleDrawable(no1.m5294new(Y0()), this.e, e0);
    }

    private void a0(@Nullable Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.e) {
            if (drawable.isStateful()) {
                drawable.setState(O0());
            }
            DrawableCompat.setTintList(drawable, this.g);
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
        Drawable drawable2 = this.f11629synchronized;
        if (drawable == drawable2 && this.c) {
            DrawableCompat.setTintList(drawable2, this.a);
        }
    }

    private void b0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (V2() || U2()) {
            float f = this.p + this.q;
            float fS0 = S0();
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.left + f;
                rectF.left = f2;
                rectF.right = f2 + fS0;
            } else {
                float f3 = rect.right - f;
                rectF.right = f3;
                rectF.left = f3 - fS0;
            }
            float fR0 = R0();
            float fExactCenterY = rect.exactCenterY() - (fR0 / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fR0;
        }
    }

    private void d0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.set(rect);
        if (W2()) {
            float f = this.w + this.v + this.h + this.u + this.t;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.right = rect.right - f;
            } else {
                rectF.left = rect.left + f;
            }
        }
    }

    private void e0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (W2()) {
            float f = this.w + this.v;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.right - f;
                rectF.right = f2;
                rectF.left = f2 - this.h;
            } else {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + this.h;
            }
            float fExactCenterY = rect.exactCenterY();
            float f4 = this.h;
            float f5 = fExactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    @Nullable
    private ColorFilter e1() {
        ColorFilter colorFilter = this.O;
        return colorFilter != null ? colorFilter : this.P;
    }

    private void e2(@Nullable ColorStateList colorStateList) {
        if (this.f11622abstract != colorStateList) {
            this.f11622abstract = colorStateList;
            onStateChange(getState());
        }
    }

    private void f0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (W2()) {
            float f = this.w + this.v + this.h + this.u + this.t;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f2 = rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = i;
                rectF.right = i + f;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private static boolean g1(@Nullable int[] iArr, @AttrRes int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private void h0(@NonNull Rect rect, @NonNull RectF rectF) {
        rectF.setEmpty();
        if (this.f11624implements != null) {
            float fC0 = this.p + c0() + this.s;
            float fG0 = this.w + g0() + this.t;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                rectF.left = rect.left + fC0;
                rectF.right = rect.right - fG0;
            } else {
                rectF.left = rect.left + fG0;
                rectF.right = rect.right - fC0;
            }
            rectF.top = rect.top;
            rectF.bottom = rect.bottom;
        }
    }

    private float i0() {
        this.E.m13609try().getFontMetrics(this.A);
        Paint.FontMetrics fontMetrics = this.A;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    private boolean k0() {
        return this.k && this.l != null && this.j;
    }

    @NonNull
    public static ChipDrawable l0(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        ChipDrawable chipDrawable = new ChipDrawable(context, attributeSet, i, i2);
        chipDrawable.t1(attributeSet, i, i2);
        return chipDrawable;
    }

    @NonNull
    public static ChipDrawable m0(@NonNull Context context, @XmlRes int i) throws XmlPullParserException, Resources.NotFoundException, IOException {
        AttributeSet attributeSetM3257do = i30.m3257do(context, i, "chip");
        int styleAttribute = attributeSetM3257do.getStyleAttribute();
        if (styleAttribute == 0) {
            styleAttribute = com.google.android.material.R.style.Widget_MaterialComponents_Chip_Entry;
        }
        return l0(context, attributeSetM3257do, com.google.android.material.R.attr.chipStandaloneStyle, styleAttribute);
    }

    private void n0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (U2()) {
            b0(rect, this.B);
            RectF rectF = this.B;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.l.setBounds(0, 0, (int) this.B.width(), (int) this.B.height());
            this.l.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    private void o0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.Z) {
            return;
        }
        this.y.setColor(this.G);
        this.y.setStyle(Paint.Style.FILL);
        this.y.setColorFilter(e1());
        this.B.set(rect);
        canvas.drawRoundRect(this.B, z0(), z0(), this.y);
    }

    private void p0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (V2()) {
            b0(rect, this.B);
            RectF rectF = this.B;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.f11629synchronized.setBounds(0, 0, (int) this.B.width(), (int) this.B.height());
            this.f11629synchronized.draw(canvas);
            canvas.translate(-f, -f2);
        }
    }

    private void q0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f11627protected <= 0.0f || this.Z) {
            return;
        }
        this.y.setColor(this.I);
        this.y.setStyle(Paint.Style.STROKE);
        if (!this.Z) {
            this.y.setColorFilter(e1());
        }
        RectF rectF = this.B;
        float f = rect.left;
        float f2 = this.f11627protected;
        rectF.set(f + (f2 / 2.0f), rect.top + (f2 / 2.0f), rect.right - (f2 / 2.0f), rect.bottom - (f2 / 2.0f));
        float f3 = this.f11631volatile - (this.f11627protected / 2.0f);
        canvas.drawRoundRect(this.B, f3, f3, this.y);
    }

    private static boolean q1(@Nullable ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private void r0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.Z) {
            return;
        }
        this.y.setColor(this.F);
        this.y.setStyle(Paint.Style.FILL);
        this.B.set(rect);
        canvas.drawRoundRect(this.B, z0(), z0(), this.y);
    }

    private static boolean r1(@Nullable Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    private void s0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (W2()) {
            e0(rect, this.B);
            RectF rectF = this.B;
            float f = rectF.left;
            float f2 = rectF.top;
            canvas.translate(f, f2);
            this.e.setBounds(0, 0, (int) this.B.width(), (int) this.B.height());
            if (no1.f4305do) {
                this.f.setBounds(this.e.getBounds());
                this.f.jumpToCurrentState();
                this.f.draw(canvas);
            } else {
                this.e.draw(canvas);
            }
            canvas.translate(-f, -f2);
        }
    }

    private static boolean s1(@Nullable Cdo cdo) {
        ColorStateList colorStateList;
        return (cdo == null || (colorStateList = cdo.f12449do) == null || !colorStateList.isStateful()) ? false : true;
    }

    private void t0(@NonNull Canvas canvas, @NonNull Rect rect) {
        this.y.setColor(this.f36255J);
        this.y.setStyle(Paint.Style.FILL);
        this.B.set(rect);
        if (!this.Z) {
            canvas.drawRoundRect(this.B, z0(), z0(), this.y);
        } else {
            m13946else(new RectF(rect), this.D);
            super.m13960throw(canvas, this.y, this.D, m13957return());
        }
    }

    private void t1(@Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray typedArrayM4267break = k62.m4267break(this.x, attributeSet, com.google.android.material.R.styleable.Chip, i, i2, new int[0]);
        this.Z = typedArrayM4267break.hasValue(com.google.android.material.R.styleable.Chip_shapeAppearance);
        e2(sx0.m7649do(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_chipSurfaceColor));
        G1(sx0.m7649do(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_chipBackgroundColor));
        W1(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_chipMinHeight, 0.0f));
        int i3 = com.google.android.material.R.styleable.Chip_chipCornerRadius;
        if (typedArrayM4267break.hasValue(i3)) {
            I1(typedArrayM4267break.getDimension(i3, 0.0f));
        }
        a2(sx0.m7649do(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_chipStrokeColor));
        c2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_chipStrokeWidth, 0.0f));
        E2(sx0.m7649do(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_rippleColor));
        J2(typedArrayM4267break.getText(com.google.android.material.R.styleable.Chip_android_text));
        Cdo cdoM7648case = sx0.m7648case(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_android_textAppearance);
        cdoM7648case.f12451final = typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_android_textSize, cdoM7648case.f12451final);
        K2(cdoM7648case);
        int i4 = typedArrayM4267break.getInt(com.google.android.material.R.styleable.Chip_android_ellipsize, 0);
        if (i4 == 1) {
            w2(TextUtils.TruncateAt.START);
        } else if (i4 == 2) {
            w2(TextUtils.TruncateAt.MIDDLE);
        } else if (i4 == 3) {
            w2(TextUtils.TruncateAt.END);
        }
        V1(typedArrayM4267break.getBoolean(com.google.android.material.R.styleable.Chip_chipIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(c0, "chipIconEnabled") != null && attributeSet.getAttributeValue(c0, "chipIconVisible") == null) {
            V1(typedArrayM4267break.getBoolean(com.google.android.material.R.styleable.Chip_chipIconEnabled, false));
        }
        M1(sx0.m7654new(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_chipIcon));
        int i5 = com.google.android.material.R.styleable.Chip_chipIconTint;
        if (typedArrayM4267break.hasValue(i5)) {
            S1(sx0.m7649do(this.x, typedArrayM4267break, i5));
        }
        Q1(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_chipIconSize, -1.0f));
        u2(typedArrayM4267break.getBoolean(com.google.android.material.R.styleable.Chip_closeIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(c0, "closeIconEnabled") != null && attributeSet.getAttributeValue(c0, "closeIconVisible") == null) {
            u2(typedArrayM4267break.getBoolean(com.google.android.material.R.styleable.Chip_closeIconEnabled, false));
        }
        f2(sx0.m7654new(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_closeIcon));
        r2(sx0.m7649do(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_closeIconTint));
        m2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_closeIconSize, 0.0f));
        w1(typedArrayM4267break.getBoolean(com.google.android.material.R.styleable.Chip_android_checkable, false));
        F1(typedArrayM4267break.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconVisible, false));
        if (attributeSet != null && attributeSet.getAttributeValue(c0, "checkedIconEnabled") != null && attributeSet.getAttributeValue(c0, "checkedIconVisible") == null) {
            F1(typedArrayM4267break.getBoolean(com.google.android.material.R.styleable.Chip_checkedIconEnabled, false));
        }
        y1(sx0.m7654new(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_checkedIcon));
        int i6 = com.google.android.material.R.styleable.Chip_checkedIconTint;
        if (typedArrayM4267break.hasValue(i6)) {
            C1(sx0.m7649do(this.x, typedArrayM4267break, i6));
        }
        H2(q01.m6293for(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_showMotionSpec));
        x2(q01.m6293for(this.x, typedArrayM4267break, com.google.android.material.R.styleable.Chip_hideMotionSpec));
        Y1(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_chipStartPadding, 0.0f));
        B2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_iconStartPadding, 0.0f));
        z2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_iconEndPadding, 0.0f));
        Q2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_textStartPadding, 0.0f));
        M2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_textEndPadding, 0.0f));
        o2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_closeIconStartPadding, 0.0f));
        j2(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_closeIconEndPadding, 0.0f));
        K1(typedArrayM4267break.getDimension(com.google.android.material.R.styleable.Chip_chipEndPadding, 0.0f));
        D2(typedArrayM4267break.getDimensionPixelSize(com.google.android.material.R.styleable.Chip_android_maxWidth, Integer.MAX_VALUE));
        typedArrayM4267break.recycle();
    }

    private void u0(@NonNull Canvas canvas, @NonNull Rect rect) {
        Paint paint = this.z;
        if (paint != null) {
            paint.setColor(ColorUtils.setAlphaComponent(-16777216, 127));
            canvas.drawRect(rect, this.z);
            if (V2() || U2()) {
                b0(rect, this.B);
                canvas.drawRect(this.B, this.z);
            }
            if (this.f11624implements != null) {
                canvas.drawLine(rect.left, rect.exactCenterY(), rect.right, rect.exactCenterY(), this.z);
            }
            if (W2()) {
                e0(rect, this.B);
                canvas.drawRect(this.B, this.z);
            }
            this.z.setColor(ColorUtils.setAlphaComponent(-65536, 127));
            d0(rect, this.B);
            canvas.drawRect(this.B, this.z);
            this.z.setColor(ColorUtils.setAlphaComponent(-16711936, 127));
            f0(rect, this.B);
            canvas.drawRect(this.B, this.z);
        }
    }

    private void v0(@NonNull Canvas canvas, @NonNull Rect rect) {
        if (this.f11624implements != null) {
            Paint.Align alignJ0 = j0(rect, this.C);
            h0(rect, this.B);
            if (this.E.m13607new() != null) {
                this.E.m13609try().drawableState = getState();
                this.E.m13604catch(this.x);
            }
            this.E.m13609try().setTextAlign(alignJ0);
            int iSave = 0;
            boolean z = Math.round(this.E.m13603case(a1().toString())) > Math.round(this.B.width());
            if (z) {
                iSave = canvas.save();
                canvas.clipRect(this.B);
            }
            CharSequence charSequenceEllipsize = this.f11624implements;
            if (z && this.W != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.E.m13609try(), this.B.width(), this.W);
            }
            CharSequence charSequence = charSequenceEllipsize;
            int length = charSequence.length();
            PointF pointF = this.C;
            canvas.drawText(charSequence, 0, length, pointF.x, pointF.y, this.E.m13609try());
            if (z) {
                canvas.restoreToCount(iSave);
            }
        }
    }

    private boolean v1(@NonNull int[] iArr, @NonNull int[] iArr2) {
        boolean z;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList = this.f11622abstract;
        int iM13943catch = m13943catch(colorStateList != null ? colorStateList.getColorForState(iArr, this.F) : 0);
        boolean state = true;
        if (this.F != iM13943catch) {
            this.F = iM13943catch;
            zOnStateChange = true;
        }
        ColorStateList colorStateList2 = this.f11623continue;
        int iM13943catch2 = m13943catch(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.G) : 0);
        if (this.G != iM13943catch2) {
            this.G = iM13943catch2;
            zOnStateChange = true;
        }
        int iM6675else = qx0.m6675else(iM13943catch, iM13943catch2);
        if ((this.H != iM6675else) | (m13961throws() == null)) {
            this.H = iM6675else;
            z(ColorStateList.valueOf(iM6675else));
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f11626interface;
        int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.I) : 0;
        if (this.I != colorForState) {
            this.I = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.U == null || !no1.m5295try(iArr)) ? 0 : this.U.getColorForState(iArr, this.f36255J);
        if (this.f36255J != colorForState2) {
            this.f36255J = colorForState2;
            if (this.T) {
                zOnStateChange = true;
            }
        }
        int colorForState3 = (this.E.m13607new() == null || this.E.m13607new().f12449do == null) ? 0 : this.E.m13607new().f12449do.getColorForState(iArr, this.K);
        if (this.K != colorForState3) {
            this.K = colorForState3;
            zOnStateChange = true;
        }
        boolean z2 = g1(getState(), R.attr.state_checked) && this.j;
        if (this.L == z2 || this.l == null) {
            z = false;
        } else {
            float fC0 = c0();
            this.L = z2;
            if (fC0 != c0()) {
                zOnStateChange = true;
                z = true;
            } else {
                zOnStateChange = true;
                z = false;
            }
        }
        ColorStateList colorStateList4 = this.Q;
        int colorForState4 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.M) : 0;
        if (this.M != colorForState4) {
            this.M = colorForState4;
            this.P = i30.m3258for(this, this.Q, this.R);
        } else {
            state = zOnStateChange;
        }
        if (r1(this.f11629synchronized)) {
            state |= this.f11629synchronized.setState(iArr);
        }
        if (r1(this.l)) {
            state |= this.l.setState(iArr);
        }
        if (r1(this.e)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.e.setState(iArr3);
        }
        if (no1.f4305do && r1(this.f)) {
            state |= this.f.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z) {
            u1();
        }
        return state;
    }

    public float A0() {
        return this.w;
    }

    @Deprecated
    public void A1(@BoolRes int i) {
        F1(this.x.getResources().getBoolean(i));
    }

    public void A2(@DimenRes int i) {
        z2(this.x.getResources().getDimension(i));
    }

    @Nullable
    public Drawable B0() {
        Drawable drawable = this.f11629synchronized;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    public void B1(@DrawableRes int i) {
        y1(AppCompatResources.getDrawable(this.x, i));
    }

    public void B2(float f) {
        if (this.q != f) {
            float fC0 = c0();
            this.q = f;
            float fC02 = c0();
            invalidateSelf();
            if (fC0 != fC02) {
                u1();
            }
        }
    }

    public float C0() {
        return this.b;
    }

    public void C1(@Nullable ColorStateList colorStateList) {
        if (this.m != colorStateList) {
            this.m = colorStateList;
            if (k0()) {
                DrawableCompat.setTintList(this.l, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void C2(@DimenRes int i) {
        B2(this.x.getResources().getDimension(i));
    }

    @Nullable
    public ColorStateList D0() {
        return this.a;
    }

    public void D1(@ColorRes int i) {
        C1(AppCompatResources.getColorStateList(this.x, i));
    }

    public void D2(@Px int i) {
        this.Y = i;
    }

    public float E0() {
        return this.f11628strictfp;
    }

    public void E1(@BoolRes int i) {
        F1(this.x.getResources().getBoolean(i));
    }

    public void E2(@Nullable ColorStateList colorStateList) {
        if (this.f11630transient != colorStateList) {
            this.f11630transient = colorStateList;
            Y2();
            onStateChange(getState());
        }
    }

    public float F0() {
        return this.p;
    }

    public void F1(boolean z) {
        if (this.k != z) {
            boolean zU2 = U2();
            this.k = z;
            boolean zU22 = U2();
            if (zU2 != zU22) {
                if (zU22) {
                    a0(this.l);
                } else {
                    X2(this.l);
                }
                invalidateSelf();
                u1();
            }
        }
    }

    public void F2(@ColorRes int i) {
        E2(AppCompatResources.getColorStateList(this.x, i));
    }

    @Nullable
    public ColorStateList G0() {
        return this.f11626interface;
    }

    public void G1(@Nullable ColorStateList colorStateList) {
        if (this.f11623continue != colorStateList) {
            this.f11623continue = colorStateList;
            onStateChange(getState());
        }
    }

    public void G2(boolean z) {
        this.X = z;
    }

    public float H0() {
        return this.f11627protected;
    }

    public void H1(@ColorRes int i) {
        G1(AppCompatResources.getColorStateList(this.x, i));
    }

    public void H2(@Nullable q01 q01Var) {
        this.n = q01Var;
    }

    public void I0(@NonNull RectF rectF) {
        d0(getBounds(), rectF);
    }

    @Deprecated
    public void I1(float f) {
        if (this.f11631volatile != f) {
            this.f11631volatile = f;
            setShapeAppearanceModel(getShapeAppearanceModel().m13984switch(f));
        }
    }

    public void I2(@AnimatorRes int i) {
        H2(q01.m6295new(this.x, i));
    }

    @Nullable
    public Drawable J0() {
        Drawable drawable = this.e;
        if (drawable != null) {
            return DrawableCompat.unwrap(drawable);
        }
        return null;
    }

    @Deprecated
    public void J1(@DimenRes int i) {
        I1(this.x.getResources().getDimension(i));
    }

    public void J2(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (TextUtils.equals(this.f11624implements, charSequence)) {
            return;
        }
        this.f11624implements = charSequence;
        this.E.m13602break(true);
        invalidateSelf();
        u1();
    }

    @Nullable
    public CharSequence K0() {
        return this.i;
    }

    public void K1(float f) {
        if (this.w != f) {
            this.w = f;
            invalidateSelf();
            u1();
        }
    }

    public void K2(@Nullable Cdo cdo) {
        this.E.m13608this(cdo, this.x);
    }

    public float L0() {
        return this.v;
    }

    public void L1(@DimenRes int i) {
        K1(this.x.getResources().getDimension(i));
    }

    public void L2(@StyleRes int i) {
        K2(new Cdo(this.x, i));
    }

    public float M0() {
        return this.h;
    }

    public void M1(@Nullable Drawable drawable) {
        Drawable drawableB0 = B0();
        if (drawableB0 != drawable) {
            float fC0 = c0();
            this.f11629synchronized = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fC02 = c0();
            X2(drawableB0);
            if (V2()) {
                a0(this.f11629synchronized);
            }
            invalidateSelf();
            if (fC0 != fC02) {
                u1();
            }
        }
    }

    public void M2(float f) {
        if (this.t != f) {
            this.t = f;
            invalidateSelf();
            u1();
        }
    }

    public float N0() {
        return this.u;
    }

    @Deprecated
    public void N1(boolean z) {
        V1(z);
    }

    public void N2(@DimenRes int i) {
        M2(this.x.getResources().getDimension(i));
    }

    @NonNull
    public int[] O0() {
        return this.S;
    }

    @Deprecated
    public void O1(@BoolRes int i) {
        U1(i);
    }

    public void O2(@StringRes int i) {
        J2(this.x.getResources().getString(i));
    }

    @Nullable
    public ColorStateList P0() {
        return this.g;
    }

    public void P1(@DrawableRes int i) {
        M1(AppCompatResources.getDrawable(this.x, i));
    }

    public void P2(@Dimension float f) {
        Cdo cdoB1 = b1();
        if (cdoB1 != null) {
            cdoB1.f12451final = f;
            this.E.m13609try().setTextSize(f);
            onTextSizeChange();
        }
    }

    public void Q0(@NonNull RectF rectF) {
        f0(getBounds(), rectF);
    }

    public void Q1(float f) {
        if (this.b != f) {
            float fC0 = c0();
            this.b = f;
            float fC02 = c0();
            invalidateSelf();
            if (fC0 != fC02) {
                u1();
            }
        }
    }

    public void Q2(float f) {
        if (this.s != f) {
            this.s = f;
            invalidateSelf();
            u1();
        }
    }

    public void R1(@DimenRes int i) {
        Q1(this.x.getResources().getDimension(i));
    }

    public void R2(@DimenRes int i) {
        Q2(this.x.getResources().getDimension(i));
    }

    public void S1(@Nullable ColorStateList colorStateList) {
        this.c = true;
        if (this.a != colorStateList) {
            this.a = colorStateList;
            if (V2()) {
                DrawableCompat.setTintList(this.f11629synchronized, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void S2(boolean z) {
        if (this.T != z) {
            this.T = z;
            Y2();
            onStateChange(getState());
        }
    }

    public TextUtils.TruncateAt T0() {
        return this.W;
    }

    public void T1(@ColorRes int i) {
        S1(AppCompatResources.getColorStateList(this.x, i));
    }

    public boolean T2() {
        return this.X;
    }

    @Nullable
    public q01 U0() {
        return this.o;
    }

    public void U1(@BoolRes int i) {
        V1(this.x.getResources().getBoolean(i));
    }

    public float V0() {
        return this.r;
    }

    public void V1(boolean z) {
        if (this.f11625instanceof != z) {
            boolean zV2 = V2();
            this.f11625instanceof = z;
            boolean zV22 = V2();
            if (zV2 != zV22) {
                if (zV22) {
                    a0(this.f11629synchronized);
                } else {
                    X2(this.f11629synchronized);
                }
                invalidateSelf();
                u1();
            }
        }
    }

    public float W0() {
        return this.q;
    }

    public void W1(float f) {
        if (this.f11628strictfp != f) {
            this.f11628strictfp = f;
            invalidateSelf();
            u1();
        }
    }

    @Px
    public int X0() {
        return this.Y;
    }

    public void X1(@DimenRes int i) {
        W1(this.x.getResources().getDimension(i));
    }

    @Nullable
    public ColorStateList Y0() {
        return this.f11630transient;
    }

    public void Y1(float f) {
        if (this.p != f) {
            this.p = f;
            invalidateSelf();
            u1();
        }
    }

    @Nullable
    public q01 Z0() {
        return this.n;
    }

    public void Z1(@DimenRes int i) {
        Y1(this.x.getResources().getDimension(i));
    }

    @Nullable
    public CharSequence a1() {
        return this.f11624implements;
    }

    public void a2(@Nullable ColorStateList colorStateList) {
        if (this.f11626interface != colorStateList) {
            this.f11626interface = colorStateList;
            if (this.Z) {
                Q(colorStateList);
            }
            onStateChange(getState());
        }
    }

    @Nullable
    public Cdo b1() {
        return this.E.m13607new();
    }

    public void b2(@ColorRes int i) {
        a2(AppCompatResources.getColorStateList(this.x, i));
    }

    public float c0() {
        if (V2() || U2()) {
            return this.q + S0() + this.r;
        }
        return 0.0f;
    }

    public float c1() {
        return this.t;
    }

    public void c2(float f) {
        if (this.f11627protected != f) {
            this.f11627protected = f;
            this.y.setStrokeWidth(f);
            if (this.Z) {
                super.T(f);
            }
            invalidateSelf();
        }
    }

    public float d1() {
        return this.s;
    }

    public void d2(@DimenRes int i) {
        c2(this.x.getResources().getDimension(i));
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty() || getAlpha() == 0) {
            return;
        }
        int i = this.N;
        int iM5998do = i < 255 ? pf.m5998do(canvas, bounds.left, bounds.top, bounds.right, bounds.bottom, i) : 0;
        r0(canvas, bounds);
        o0(canvas, bounds);
        if (this.Z) {
            super.draw(canvas);
        }
        q0(canvas, bounds);
        t0(canvas, bounds);
        p0(canvas, bounds);
        n0(canvas, bounds);
        if (this.X) {
            v0(canvas, bounds);
        }
        s0(canvas, bounds);
        u0(canvas, bounds);
        if (this.N < 255) {
            canvas.restoreToCount(iM5998do);
        }
    }

    public boolean f1() {
        return this.T;
    }

    public void f2(@Nullable Drawable drawable) {
        Drawable drawableJ0 = J0();
        if (drawableJ0 != drawable) {
            float fG0 = g0();
            this.e = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            if (no1.f4305do) {
                Z2();
            }
            float fG02 = g0();
            X2(drawableJ0);
            if (W2()) {
                a0(this.e);
            }
            invalidateSelf();
            if (fG0 != fG02) {
                u1();
            }
        }
    }

    public float g0() {
        if (W2()) {
            return this.u + this.h + this.v;
        }
        return 0.0f;
    }

    public void g2(@Nullable CharSequence charSequence) {
        if (this.i != charSequence) {
            this.i = BidiFormatter.getInstance().unicodeWrap(charSequence);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.N;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.O;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f11628strictfp;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.p + c0() + this.s + this.E.m13603case(a1().toString()) + this.t + g0() + this.w), this.Y);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(@NonNull Outline outline) {
        if (this.Z) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), getIntrinsicHeight(), this.f11631volatile);
        } else {
            outline.setRoundRect(bounds, this.f11631volatile);
        }
        outline.setAlpha(getAlpha() / 255.0f);
    }

    public boolean h1() {
        return this.j;
    }

    @Deprecated
    public void h2(boolean z) {
        u2(z);
    }

    @Deprecated
    public boolean i1() {
        return j1();
    }

    @Deprecated
    public void i2(@BoolRes int i) {
        t2(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return q1(this.f11622abstract) || q1(this.f11623continue) || q1(this.f11626interface) || (this.T && q1(this.U)) || s1(this.E.m13607new()) || k0() || r1(this.f11629synchronized) || r1(this.l) || q1(this.Q);
    }

    @NonNull
    public Paint.Align j0(@NonNull Rect rect, @NonNull PointF pointF) {
        pointF.set(0.0f, 0.0f);
        Paint.Align align = Paint.Align.LEFT;
        if (this.f11624implements != null) {
            float fC0 = this.p + c0() + this.s;
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                pointF.x = rect.left + fC0;
                align = Paint.Align.LEFT;
            } else {
                pointF.x = rect.right - fC0;
                align = Paint.Align.RIGHT;
            }
            pointF.y = rect.centerY() - i0();
        }
        return align;
    }

    public boolean j1() {
        return this.k;
    }

    public void j2(float f) {
        if (this.v != f) {
            this.v = f;
            invalidateSelf();
            if (W2()) {
                u1();
            }
        }
    }

    @Deprecated
    public boolean k1() {
        return l1();
    }

    public void k2(@DimenRes int i) {
        j2(this.x.getResources().getDimension(i));
    }

    public boolean l1() {
        return this.f11625instanceof;
    }

    public void l2(@DrawableRes int i) {
        f2(AppCompatResources.getDrawable(this.x, i));
    }

    @Deprecated
    public boolean m1() {
        return o1();
    }

    public void m2(float f) {
        if (this.h != f) {
            this.h = f;
            invalidateSelf();
            if (W2()) {
                u1();
            }
        }
    }

    public boolean n1() {
        return r1(this.e);
    }

    public void n2(@DimenRes int i) {
        m2(this.x.getResources().getDimension(i));
    }

    public boolean o1() {
        return this.d;
    }

    public void o2(float f) {
        if (this.u != f) {
            this.u = f;
            invalidateSelf();
            if (W2()) {
                u1();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (V2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f11629synchronized, i);
        }
        if (U2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.l, i);
        }
        if (W2()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.e, i);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        boolean zOnLevelChange = super.onLevelChange(i);
        if (V2()) {
            zOnLevelChange |= this.f11629synchronized.setLevel(i);
        }
        if (U2()) {
            zOnLevelChange |= this.l.setLevel(i);
        }
        if (W2()) {
            zOnLevelChange |= this.e.setLevel(i);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(@NonNull int[] iArr) {
        if (this.Z) {
            super.onStateChange(iArr);
        }
        return v1(iArr, O0());
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public void onTextSizeChange() {
        u1();
        invalidateSelf();
    }

    public boolean p1() {
        return this.Z;
    }

    public void p2(@DimenRes int i) {
        o2(this.x.getResources().getDimension(i));
    }

    public boolean q2(@NonNull int[] iArr) {
        if (Arrays.equals(this.S, iArr)) {
            return false;
        }
        this.S = iArr;
        if (W2()) {
            return v1(getState(), iArr);
        }
        return false;
    }

    public void r2(@Nullable ColorStateList colorStateList) {
        if (this.g != colorStateList) {
            this.g = colorStateList;
            if (W2()) {
                DrawableCompat.setTintList(this.e, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public void s2(@ColorRes int i) {
        r2(AppCompatResources.getColorStateList(this.x, i));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.N != i) {
            this.N = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.O != colorFilter) {
            this.O = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        if (this.Q != colorStateList) {
            this.Q = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.R != mode) {
            this.R = mode;
            this.P = i30.m3258for(this, this.Q, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (V2()) {
            visible |= this.f11629synchronized.setVisible(z, z2);
        }
        if (U2()) {
            visible |= this.l.setVisible(z, z2);
        }
        if (W2()) {
            visible |= this.e.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public void t2(@BoolRes int i) {
        u2(this.x.getResources().getBoolean(i));
    }

    public void u1() {
        Delegate delegate = this.V.get();
        if (delegate != null) {
            delegate.onChipDrawableSizeChange();
        }
    }

    public void u2(boolean z) {
        if (this.d != z) {
            boolean zW2 = W2();
            this.d = z;
            boolean zW22 = W2();
            if (zW2 != zW22) {
                if (zW22) {
                    a0(this.e);
                } else {
                    X2(this.e);
                }
                invalidateSelf();
                u1();
            }
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public void v2(@Nullable Delegate delegate) {
        this.V = new WeakReference<>(delegate);
    }

    @Nullable
    public Drawable w0() {
        return this.l;
    }

    public void w1(boolean z) {
        if (this.j != z) {
            this.j = z;
            float fC0 = c0();
            if (!z && this.L) {
                this.L = false;
            }
            float fC02 = c0();
            invalidateSelf();
            if (fC0 != fC02) {
                u1();
            }
        }
    }

    public void w2(@Nullable TextUtils.TruncateAt truncateAt) {
        this.W = truncateAt;
    }

    @Nullable
    public ColorStateList x0() {
        return this.m;
    }

    public void x1(@BoolRes int i) {
        w1(this.x.getResources().getBoolean(i));
    }

    public void x2(@Nullable q01 q01Var) {
        this.o = q01Var;
    }

    @Nullable
    public ColorStateList y0() {
        return this.f11623continue;
    }

    public void y1(@Nullable Drawable drawable) {
        if (this.l != drawable) {
            float fC0 = c0();
            this.l = drawable;
            float fC02 = c0();
            X2(this.l);
            a0(this.l);
            invalidateSelf();
            if (fC0 != fC02) {
                u1();
            }
        }
    }

    public void y2(@AnimatorRes int i) {
        x2(q01.m6295new(this.x, i));
    }

    public float z0() {
        return this.Z ? d() : this.f11631volatile;
    }

    @Deprecated
    public void z1(boolean z) {
        F1(z);
    }

    public void z2(float f) {
        if (this.r != f) {
            float fC0 = c0();
            this.r = f;
            float fC02 = c0();
            invalidateSelf();
            if (fC0 != fC02) {
                u1();
            }
        }
    }
}
