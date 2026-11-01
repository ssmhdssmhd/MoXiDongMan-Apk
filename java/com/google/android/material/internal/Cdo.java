package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.support.v4.w1;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.internal.Cnew;
import com.google.android.material.resources.CancelableFontCallback;
import com.google.common.collect.LinkedHashMultimap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.google.android.material.internal.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {
    private static final boolean A = false;

    @NonNull
    private static final Paint B;
    private static final boolean w;
    private static final String x = "CollapsingTextHelper";
    private static final String y = "…";
    private static final float z = 0.5f;

    @NonNull
    private final TextPaint a;

    /* renamed from: abstract, reason: not valid java name */
    private boolean f12142abstract;
    private TimeInterpolator b;

    /* renamed from: break, reason: not valid java name */
    @NonNull
    private final RectF f12143break;
    private TimeInterpolator c;

    /* renamed from: case, reason: not valid java name */
    private float f12144case;
    private float d;

    /* renamed from: default, reason: not valid java name */
    private Typeface f12149default;

    /* renamed from: do, reason: not valid java name */
    private final View f12150do;
    private float e;

    /* renamed from: else, reason: not valid java name */
    private int f12151else;

    /* renamed from: extends, reason: not valid java name */
    private CancelableFontCallback f12152extends;
    private float f;

    /* renamed from: finally, reason: not valid java name */
    private CancelableFontCallback f12154finally;

    /* renamed from: for, reason: not valid java name */
    private float f12155for;
    private ColorStateList g;

    /* renamed from: goto, reason: not valid java name */
    @NonNull
    private final Rect f12156goto;
    private float h;
    private float i;

    /* renamed from: if, reason: not valid java name */
    private boolean f12157if;

    /* renamed from: implements, reason: not valid java name */
    private int[] f12158implements;

    /* renamed from: import, reason: not valid java name */
    private float f12159import;

    /* renamed from: instanceof, reason: not valid java name */
    private boolean f12160instanceof;

    /* renamed from: interface, reason: not valid java name */
    private Paint f12161interface;
    private float j;
    private ColorStateList k;
    private float l;
    private float m;
    private StaticLayout n;

    /* renamed from: native, reason: not valid java name */
    private float f12162native;

    /* renamed from: new, reason: not valid java name */
    private boolean f12163new;
    private float o;
    private float p;

    /* renamed from: package, reason: not valid java name */
    @Nullable
    private CharSequence f12164package;

    /* renamed from: private, reason: not valid java name */
    @Nullable
    private CharSequence f12165private;

    /* renamed from: protected, reason: not valid java name */
    private float f12166protected;

    /* renamed from: public, reason: not valid java name */
    private float f12167public;
    private float q;
    private CharSequence r;

    /* renamed from: return, reason: not valid java name */
    private float f12168return;

    /* renamed from: static, reason: not valid java name */
    private float f12169static;

    /* renamed from: strictfp, reason: not valid java name */
    private boolean f12170strictfp;

    /* renamed from: super, reason: not valid java name */
    private ColorStateList f12171super;

    /* renamed from: switch, reason: not valid java name */
    private Typeface f12172switch;

    /* renamed from: synchronized, reason: not valid java name */
    @NonNull
    private final TextPaint f12173synchronized;

    /* renamed from: this, reason: not valid java name */
    @NonNull
    private final Rect f12174this;

    /* renamed from: throw, reason: not valid java name */
    private ColorStateList f12175throw;

    /* renamed from: throws, reason: not valid java name */
    private Typeface f12176throws;

    /* renamed from: transient, reason: not valid java name */
    private float f12177transient;

    /* renamed from: try, reason: not valid java name */
    private float f12178try;

    /* renamed from: volatile, reason: not valid java name */
    @Nullable
    private Bitmap f12179volatile;

    /* renamed from: while, reason: not valid java name */
    private float f12180while;

    /* renamed from: catch, reason: not valid java name */
    private int f12145catch = 16;

    /* renamed from: class, reason: not valid java name */
    private int f12146class = 16;

    /* renamed from: const, reason: not valid java name */
    private float f12147const = 15.0f;

    /* renamed from: final, reason: not valid java name */
    private float f12153final = 15.0f;

    /* renamed from: continue, reason: not valid java name */
    private boolean f12148continue = true;
    private int s = 1;
    private float t = 0.0f;
    private float u = 1.0f;
    private int v = Cnew.f12198final;

    /* renamed from: com.google.android.material.internal.do$do, reason: invalid class name and collision with other inner class name */
    public class C0060do implements CancelableFontCallback.ApplyFont {
        public C0060do() {
        }

        @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
        public void apply(Typeface typeface) {
            Cdo.this.v(typeface);
        }
    }

    /* renamed from: com.google.android.material.internal.do$if, reason: invalid class name */
    public class Cif implements CancelableFontCallback.ApplyFont {
        public Cif() {
        }

        @Override // com.google.android.material.resources.CancelableFontCallback.ApplyFont
        public void apply(Typeface typeface) {
            Cdo.this.F(typeface);
        }
    }

    static {
        w = Build.VERSION.SDK_INT < 18;
        B = null;
    }

    public Cdo(View view) {
        this.f12150do = view;
        TextPaint textPaint = new TextPaint(129);
        this.f12173synchronized = textPaint;
        this.a = new TextPaint(textPaint);
        this.f12174this = new Rect();
        this.f12156goto = new Rect();
        this.f12143break = new RectF();
        this.f12144case = m13628case();
    }

    private void B(float f) {
        this.p = f;
        ViewCompat.postInvalidateOnAnimation(this.f12150do);
    }

    private boolean G(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.f12152extends;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m13893for();
        }
        if (this.f12176throws == typeface) {
            return false;
        }
        this.f12176throws = typeface;
        return true;
    }

    private void L(float f) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        m13642this(f);
        boolean z2 = w && this.f12166protected != 1.0f;
        this.f12170strictfp = z2;
        if (z2) {
            m13641super();
        }
        ViewCompat.postInvalidateOnAnimation(this.f12150do);
    }

    private boolean V() {
        return this.s > 1 && (!this.f12142abstract || this.f12163new) && !this.f12170strictfp;
    }

    private void b(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f12153final);
        textPaint.setTypeface(this.f12172switch);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.l);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private void m13627break(float f, boolean z2) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        boolean z3;
        float f2;
        boolean z4;
        if (this.f12164package == null) {
            return;
        }
        float fWidth = this.f12174this.width();
        float fWidth2 = this.f12156goto.width();
        if (e(f, this.f12153final)) {
            f2 = this.f12153final;
            this.f12166protected = 1.0f;
            Typeface typeface = this.f12149default;
            Typeface typeface2 = this.f12172switch;
            if (typeface != typeface2) {
                this.f12149default = typeface2;
                z4 = true;
            } else {
                z4 = false;
            }
        } else {
            float f3 = this.f12147const;
            Typeface typeface3 = this.f12149default;
            Typeface typeface4 = this.f12176throws;
            if (typeface3 != typeface4) {
                this.f12149default = typeface4;
                z3 = true;
            } else {
                z3 = false;
            }
            if (e(f, f3)) {
                this.f12166protected = 1.0f;
            } else {
                this.f12166protected = f / this.f12147const;
            }
            float f4 = this.f12153final / this.f12147const;
            fWidth = (!z2 && fWidth2 * f4 > fWidth) ? Math.min(fWidth / f4, fWidth2) : fWidth2;
            f2 = f3;
            z4 = z3;
        }
        if (fWidth > 0.0f) {
            z4 = this.f12177transient != f2 || this.f12160instanceof || z4;
            this.f12177transient = f2;
            this.f12160instanceof = false;
        }
        if (this.f12165private == null || z4) {
            this.f12173synchronized.setTextSize(this.f12177transient);
            this.f12173synchronized.setTypeface(this.f12149default);
            this.f12173synchronized.setLinearText(this.f12166protected != 1.0f);
            this.f12142abstract = m13633else(this.f12164package);
            StaticLayout staticLayoutM13630class = m13630class(V() ? this.s : 1, fWidth, this.f12142abstract);
            this.n = staticLayoutM13630class;
            this.f12165private = staticLayoutM13630class.getText();
        }
    }

    private void c(@NonNull TextPaint textPaint) {
        textPaint.setTextSize(this.f12147const);
        textPaint.setTypeface(this.f12176throws);
        if (Build.VERSION.SDK_INT >= 21) {
            textPaint.setLetterSpacing(this.m);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private float m13628case() {
        float f = this.f12178try;
        return f + ((1.0f - f) * 0.5f);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m13629catch() {
        Bitmap bitmap = this.f12179volatile;
        if (bitmap != null) {
            bitmap.recycle();
            this.f12179volatile = null;
        }
    }

    /* renamed from: class, reason: not valid java name */
    private StaticLayout m13630class(int i, float f, boolean z2) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        StaticLayout staticLayoutM13686do;
        try {
            staticLayoutM13686do = Cnew.m13680for(this.f12164package, this.f12173synchronized, (int) f).m13691try(TextUtils.TruncateAt.END).m13690this(z2).m13689new(Layout.Alignment.ALIGN_NORMAL).m13688goto(false).m13684catch(i).m13682break(this.t, this.u).m13687else(this.v).m13686do();
        } catch (Cnew.Cdo e) {
            e.getCause().getMessage();
            staticLayoutM13686do = null;
        }
        return (StaticLayout) Preconditions.checkNotNull(staticLayoutM13686do);
    }

    private void d(float f) {
        if (this.f12163new) {
            this.f12143break.set(f < this.f12144case ? this.f12156goto : this.f12174this);
            return;
        }
        this.f12143break.left = j(this.f12156goto.left, this.f12174this.left, f, this.b);
        this.f12143break.top = j(this.f12180while, this.f12159import, f, this.b);
        this.f12143break.right = j(this.f12156goto.right, this.f12174this.right, f, this.b);
        this.f12143break.bottom = j(this.f12156goto.bottom, this.f12174this.bottom, f, this.b);
    }

    @ColorInt
    /* renamed from: default, reason: not valid java name */
    private int m13631default(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f12158implements;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* renamed from: do, reason: not valid java name */
    private static int m13632do(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    private static boolean e(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m13633else(@NonNull CharSequence charSequence) {
        boolean zF = f();
        return this.f12148continue ? i(charSequence, zF) : zF;
    }

    @ColorInt
    /* renamed from: extends, reason: not valid java name */
    private int m13634extends() {
        return m13631default(this.f12171super);
    }

    private boolean f() {
        return ViewCompat.getLayoutDirection(this.f12150do) == 1;
    }

    /* renamed from: final, reason: not valid java name */
    private void m13635final(@NonNull Canvas canvas, float f, float f2) {
        int alpha = this.f12173synchronized.getAlpha();
        canvas.translate(f, f2);
        float f3 = alpha;
        this.f12173synchronized.setAlpha((int) (this.p * f3));
        this.n.draw(canvas);
        this.f12173synchronized.setAlpha((int) (this.o * f3));
        int lineBaseline = this.n.getLineBaseline(0);
        CharSequence charSequence = this.r;
        float f4 = lineBaseline;
        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f4, this.f12173synchronized);
        if (this.f12163new) {
            return;
        }
        String strTrim = this.r.toString().trim();
        if (strTrim.endsWith(y)) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        String str = strTrim;
        this.f12173synchronized.setAlpha(alpha);
        canvas.drawText(str, 0, Math.min(this.n.getLineEnd(0), str.length()), 0.0f, f4, (Paint) this.f12173synchronized);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m13636goto(float f) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        float f2;
        d(f);
        if (!this.f12163new) {
            this.f12168return = j(this.f12162native, this.f12167public, f, this.b);
            this.f12169static = j(this.f12180while, this.f12159import, f, this.b);
            L(j(this.f12147const, this.f12153final, f, this.c));
            f2 = f;
        } else if (f < this.f12144case) {
            this.f12168return = this.f12162native;
            this.f12169static = this.f12180while;
            L(this.f12147const);
            f2 = 0.0f;
        } else {
            this.f12168return = this.f12167public;
            this.f12169static = this.f12159import - Math.max(0, this.f12151else);
            L(this.f12153final);
            f2 = 1.0f;
        }
        TimeInterpolator timeInterpolator = w1.f7371if;
        r(1.0f - j(0.0f, 1.0f, 1.0f - f, timeInterpolator));
        B(j(1.0f, 0.0f, f, timeInterpolator));
        if (this.f12175throw != this.f12171super) {
            this.f12173synchronized.setColor(m13632do(m13634extends(), m13662throws(), f2));
        } else {
            this.f12173synchronized.setColor(m13662throws());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            float f3 = this.l;
            float f4 = this.m;
            if (f3 != f4) {
                this.f12173synchronized.setLetterSpacing(j(f4, f3, f, timeInterpolator));
            } else {
                this.f12173synchronized.setLetterSpacing(f3);
            }
        }
        this.f12173synchronized.setShadowLayer(j(this.h, this.d, f, null), j(this.i, this.e, f, null), j(this.j, this.f, f, null), m13632do(m13631default(this.k), m13631default(this.g), f));
        if (this.f12163new) {
            this.f12173synchronized.setAlpha((int) (m13643try(f) * 255.0f));
        }
        ViewCompat.postInvalidateOnAnimation(this.f12150do);
    }

    private boolean i(@NonNull CharSequence charSequence, boolean z2) {
        return (z2 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    /* renamed from: if, reason: not valid java name */
    private void m13637if(boolean z2) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        StaticLayout staticLayout;
        float f = this.f12177transient;
        m13627break(this.f12153final, z2);
        CharSequence charSequence = this.f12165private;
        if (charSequence != null && (staticLayout = this.n) != null) {
            this.r = TextUtils.ellipsize(charSequence, this.f12173synchronized, staticLayout.getWidth(), TextUtils.TruncateAt.END);
        }
        CharSequence charSequence2 = this.r;
        float fMeasureText = charSequence2 != null ? this.f12173synchronized.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f12146class, this.f12142abstract ? 1 : 0);
        int i = absoluteGravity & 112;
        if (i == 48) {
            this.f12159import = this.f12174this.top;
        } else if (i != 80) {
            this.f12159import = this.f12174this.centerY() - ((this.f12173synchronized.descent() - this.f12173synchronized.ascent()) / 2.0f);
        } else {
            this.f12159import = this.f12174this.bottom + this.f12173synchronized.ascent();
        }
        int i2 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i2 == 1) {
            this.f12167public = this.f12174this.centerX() - (fMeasureText / 2.0f);
        } else if (i2 != 5) {
            this.f12167public = this.f12174this.left;
        } else {
            this.f12167public = this.f12174this.right - fMeasureText;
        }
        m13627break(this.f12147const, z2);
        float height = this.n != null ? r13.getHeight() : 0.0f;
        CharSequence charSequence3 = this.f12165private;
        float fMeasureText2 = charSequence3 != null ? this.f12173synchronized.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        StaticLayout staticLayout2 = this.n;
        if (staticLayout2 != null && this.s > 1) {
            fMeasureText2 = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.n;
        this.q = staticLayout3 != null ? this.s > 1 ? staticLayout3.getLineStart(0) : staticLayout3.getLineLeft(0) : 0.0f;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f12145catch, this.f12142abstract ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        if (i3 == 48) {
            this.f12180while = this.f12156goto.top;
        } else if (i3 != 80) {
            this.f12180while = this.f12156goto.centerY() - (height / 2.0f);
        } else {
            this.f12180while = (this.f12156goto.bottom - height) + this.f12173synchronized.descent();
        }
        int i4 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.f12162native = this.f12156goto.centerX() - (fMeasureText2 / 2.0f);
        } else if (i4 != 5) {
            this.f12162native = this.f12156goto.left;
        } else {
            this.f12162native = this.f12156goto.right - fMeasureText2;
        }
        m13629catch();
        L(f);
    }

    private static float j(float f, float f2, float f3, @Nullable TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f3 = timeInterpolator.getInterpolation(f3);
        }
        return w1.m9011do(f, f2, f3);
    }

    private static boolean n(@NonNull Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: new, reason: not valid java name */
    private void m13638new() throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        m13636goto(this.f12155for);
    }

    /* renamed from: public, reason: not valid java name */
    private float m13639public(int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) - (m13648for() / 2.0f) : ((i2 & GravityCompat.END) == 8388613 || (i2 & 5) == 5) ? this.f12142abstract ? this.f12174this.left : this.f12174this.right - m13648for() : this.f12142abstract ? this.f12174this.right - m13648for() : this.f12174this.left;
    }

    private void r(float f) {
        this.o = f;
        ViewCompat.postInvalidateOnAnimation(this.f12150do);
    }

    /* renamed from: return, reason: not valid java name */
    private float m13640return(@NonNull RectF rectF, int i, int i2) {
        return (i2 == 17 || (i2 & 7) == 1) ? (i / 2.0f) + (m13648for() / 2.0f) : ((i2 & GravityCompat.END) == 8388613 || (i2 & 5) == 5) ? this.f12142abstract ? rectF.left + m13648for() : this.f12174this.right : this.f12142abstract ? this.f12174this.right : rectF.left + m13648for();
    }

    /* renamed from: super, reason: not valid java name */
    private void m13641super() throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        if (this.f12179volatile != null || this.f12156goto.isEmpty() || TextUtils.isEmpty(this.f12165private)) {
            return;
        }
        m13636goto(0.0f);
        int width = this.n.getWidth();
        int height = this.n.getHeight();
        if (width <= 0 || height <= 0) {
            return;
        }
        this.f12179volatile = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.n.draw(new Canvas(this.f12179volatile));
        if (this.f12161interface == null) {
            this.f12161interface = new Paint(3);
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m13642this(float f) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        m13627break(f, false);
    }

    /* renamed from: try, reason: not valid java name */
    private float m13643try(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        float f2 = this.f12144case;
        return f <= f2 ? w1.m9013if(1.0f, 0.0f, this.f12178try, f2, f) : w1.m9013if(0.0f, 1.0f, f2, 1.0f, f);
    }

    private boolean w(Typeface typeface) {
        CancelableFontCallback cancelableFontCallback = this.f12154finally;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m13893for();
        }
        if (this.f12172switch == typeface) {
            return false;
        }
        this.f12172switch = typeface;
        return true;
    }

    public void A(int i) {
        com.google.android.material.resources.Cdo cdo = new com.google.android.material.resources.Cdo(this.f12150do.getContext(), i);
        ColorStateList colorStateList = cdo.f12449do;
        if (colorStateList != null) {
            this.f12171super = colorStateList;
        }
        float f = cdo.f12451final;
        if (f != 0.0f) {
            this.f12147const = f;
        }
        ColorStateList colorStateList2 = cdo.f12455new;
        if (colorStateList2 != null) {
            this.k = colorStateList2;
        }
        this.i = cdo.f12457this;
        this.j = cdo.f12444break;
        this.h = cdo.f12446catch;
        this.m = cdo.f12448const;
        CancelableFontCallback cancelableFontCallback = this.f12152extends;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m13893for();
        }
        this.f12152extends = new CancelableFontCallback(new Cif(), cdo.m13905try());
        cdo.m13903else(this.f12150do.getContext(), this.f12152extends);
        l();
    }

    public void C(ColorStateList colorStateList) {
        if (this.f12171super != colorStateList) {
            this.f12171super = colorStateList;
            l();
        }
    }

    public void D(int i) {
        if (this.f12145catch != i) {
            this.f12145catch = i;
            l();
        }
    }

    public void E(float f) {
        if (this.f12147const != f) {
            this.f12147const = f;
            l();
        }
    }

    public void F(Typeface typeface) {
        if (G(typeface)) {
            l();
        }
    }

    public void H(float f) {
        float fClamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (fClamp != this.f12155for) {
            this.f12155for = fClamp;
            m13638new();
        }
    }

    public void I(boolean z2) {
        this.f12163new = z2;
    }

    public void J(float f) {
        this.f12178try = f;
        this.f12144case = m13628case();
    }

    @RequiresApi(23)
    public void K(int i) {
        this.v = i;
    }

    @RequiresApi(23)
    public void M(float f) {
        this.t = f;
    }

    @RequiresApi(23)
    public void N(@FloatRange(from = 0.0d) float f) {
        this.u = f;
    }

    public void O(int i) {
        if (i != this.s) {
            this.s = i;
            m13629catch();
            l();
        }
    }

    public void P(TimeInterpolator timeInterpolator) {
        this.b = timeInterpolator;
        l();
    }

    public void Q(boolean z2) {
        this.f12148continue = z2;
    }

    public final boolean R(int[] iArr) {
        this.f12158implements = iArr;
        if (!h()) {
            return false;
        }
        l();
        return true;
    }

    public void S(@Nullable CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.f12164package, charSequence)) {
            this.f12164package = charSequence;
            this.f12165private = null;
            m13629catch();
            l();
        }
    }

    public void T(TimeInterpolator timeInterpolator) {
        this.c = timeInterpolator;
        l();
    }

    public void U(Typeface typeface) {
        boolean zW = w(typeface);
        boolean zG = G(typeface);
        if (zW || zG) {
            l();
        }
    }

    @Nullable
    public CharSequence a() {
        return this.f12164package;
    }

    /* renamed from: abstract, reason: not valid java name */
    public float m13644abstract() {
        c(this.a);
        return -this.a.ascent();
    }

    /* renamed from: const, reason: not valid java name */
    public void m13645const(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        if (this.f12165private == null || !this.f12157if) {
            return;
        }
        float lineStart = (this.f12168return + (this.s > 1 ? this.n.getLineStart(0) : this.n.getLineLeft(0))) - (this.q * 2.0f);
        this.f12173synchronized.setTextSize(this.f12177transient);
        float f = this.f12168return;
        float f2 = this.f12169static;
        boolean z2 = this.f12170strictfp && this.f12179volatile != null;
        float f3 = this.f12166protected;
        if (f3 != 1.0f && !this.f12163new) {
            canvas.scale(f3, f3, f, f2);
        }
        if (z2) {
            canvas.drawBitmap(this.f12179volatile, f, f2, this.f12161interface);
            canvas.restoreToCount(iSave);
            return;
        }
        if (!V() || (this.f12163new && this.f12155for <= this.f12144case)) {
            canvas.translate(f, f2);
            this.n.draw(canvas);
        } else {
            m13635final(canvas, lineStart, f2);
        }
        canvas.restoreToCount(iSave);
    }

    /* renamed from: continue, reason: not valid java name */
    public float m13646continue() {
        return this.f12147const;
    }

    /* renamed from: finally, reason: not valid java name */
    public ColorStateList m13647finally() {
        return this.f12171super;
    }

    /* renamed from: for, reason: not valid java name */
    public float m13648for() {
        if (this.f12164package == null) {
            return 0.0f;
        }
        b(this.a);
        TextPaint textPaint = this.a;
        CharSequence charSequence = this.f12164package;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public boolean g() {
        return this.f12148continue;
    }

    public final boolean h() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f12175throw;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f12171super) != null && colorStateList.isStateful());
    }

    @RequiresApi(23)
    /* renamed from: implements, reason: not valid java name */
    public float m13649implements() {
        return this.n.getSpacingAdd();
    }

    /* renamed from: import, reason: not valid java name */
    public int m13650import() {
        return this.f12146class;
    }

    @RequiresApi(23)
    /* renamed from: instanceof, reason: not valid java name */
    public float m13651instanceof() {
        return this.n.getSpacingMultiplier();
    }

    /* renamed from: interface, reason: not valid java name */
    public float m13652interface() {
        return this.f12144case;
    }

    public void k() {
        this.f12157if = this.f12174this.width() > 0 && this.f12174this.height() > 0 && this.f12156goto.width() > 0 && this.f12156goto.height() > 0;
    }

    public void l() {
        m(false);
    }

    public void m(boolean z2) throws NoSuchMethodException, SecurityException, ClassNotFoundException {
        if ((this.f12150do.getHeight() <= 0 || this.f12150do.getWidth() <= 0) && !z2) {
            return;
        }
        m13637if(z2);
        m13638new();
    }

    /* renamed from: native, reason: not valid java name */
    public float m13653native() {
        b(this.a);
        return -this.a.ascent();
    }

    public void o(int i, int i2, int i3, int i4) {
        if (n(this.f12174this, i, i2, i3, i4)) {
            return;
        }
        this.f12174this.set(i, i2, i3, i4);
        this.f12160instanceof = true;
        k();
    }

    public void p(@NonNull Rect rect) {
        o(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: package, reason: not valid java name */
    public float m13654package() {
        c(this.a);
        return (-this.a.ascent()) + this.a.descent();
    }

    /* renamed from: private, reason: not valid java name */
    public int m13655private() {
        return this.f12145catch;
    }

    @RequiresApi(23)
    /* renamed from: protected, reason: not valid java name */
    public int m13656protected() {
        return this.v;
    }

    public void q(int i) {
        com.google.android.material.resources.Cdo cdo = new com.google.android.material.resources.Cdo(this.f12150do.getContext(), i);
        ColorStateList colorStateList = cdo.f12449do;
        if (colorStateList != null) {
            this.f12175throw = colorStateList;
        }
        float f = cdo.f12451final;
        if (f != 0.0f) {
            this.f12153final = f;
        }
        ColorStateList colorStateList2 = cdo.f12455new;
        if (colorStateList2 != null) {
            this.g = colorStateList2;
        }
        this.e = cdo.f12457this;
        this.f = cdo.f12444break;
        this.d = cdo.f12446catch;
        this.l = cdo.f12448const;
        CancelableFontCallback cancelableFontCallback = this.f12154finally;
        if (cancelableFontCallback != null) {
            cancelableFontCallback.m13893for();
        }
        this.f12154finally = new CancelableFontCallback(new C0060do(), cdo.m13905try());
        cdo.m13903else(this.f12150do.getContext(), this.f12154finally);
        l();
    }

    public void s(ColorStateList colorStateList) {
        if (this.f12175throw != colorStateList) {
            this.f12175throw = colorStateList;
            l();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public float m13657static() {
        return this.f12153final;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Typeface m13658strictfp() {
        Typeface typeface = this.f12176throws;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    /* renamed from: switch, reason: not valid java name */
    public Typeface m13659switch() {
        Typeface typeface = this.f12172switch;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public int m13660synchronized() {
        return this.s;
    }

    public void t(int i) {
        if (this.f12146class != i) {
            this.f12146class = i;
            l();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m13661throw(@NonNull RectF rectF, int i, int i2) {
        this.f12142abstract = m13633else(this.f12164package);
        rectF.left = m13639public(i, i2);
        rectF.top = this.f12174this.top;
        rectF.right = m13640return(rectF, i, i2);
        rectF.bottom = this.f12174this.top + m13653native();
    }

    @ColorInt
    /* renamed from: throws, reason: not valid java name */
    public int m13662throws() {
        return m13631default(this.f12175throw);
    }

    /* renamed from: transient, reason: not valid java name */
    public int m13663transient() {
        StaticLayout staticLayout = this.n;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public void u(float f) {
        if (this.f12153final != f) {
            this.f12153final = f;
            l();
        }
    }

    public void v(Typeface typeface) {
        if (w(typeface)) {
            l();
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public float m13664volatile() {
        return this.f12155for;
    }

    /* renamed from: while, reason: not valid java name */
    public ColorStateList m13665while() {
        return this.f12175throw;
    }

    public void x(int i) {
        this.f12151else = i;
    }

    public void y(int i, int i2, int i3, int i4) {
        if (n(this.f12156goto, i, i2, i3, i4)) {
            return;
        }
        this.f12156goto.set(i, i2, i3, i4);
        this.f12160instanceof = true;
        k();
    }

    public void z(@NonNull Rect rect) {
        y(rect.left, rect.top, rect.right, rect.bottom);
    }
}
