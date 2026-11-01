package android.support.v4;

import android.R;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

/* loaded from: classes2.dex */
public final class eh1 {
    private static final boolean f;
    private static final boolean g = false;
    private static final Paint h;
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    private float f1462abstract;
    private float b;
    private float c;

    /* renamed from: catch, reason: not valid java name */
    private ColorStateList f1465catch;

    /* renamed from: class, reason: not valid java name */
    private ColorStateList f1466class;

    /* renamed from: const, reason: not valid java name */
    private float f1467const;

    /* renamed from: continue, reason: not valid java name */
    private float f1468continue;
    private float d;

    /* renamed from: default, reason: not valid java name */
    private boolean f1469default;

    /* renamed from: do, reason: not valid java name */
    private final View f1470do;
    private int e;

    /* renamed from: extends, reason: not valid java name */
    private Bitmap f1472extends;

    /* renamed from: final, reason: not valid java name */
    private float f1473final;

    /* renamed from: finally, reason: not valid java name */
    private Paint f1474finally;

    /* renamed from: for, reason: not valid java name */
    private float f1475for;

    /* renamed from: if, reason: not valid java name */
    private boolean f1477if;

    /* renamed from: implements, reason: not valid java name */
    private float f1478implements;

    /* renamed from: import, reason: not valid java name */
    private float f1479import;

    /* renamed from: instanceof, reason: not valid java name */
    private float f1480instanceof;

    /* renamed from: native, reason: not valid java name */
    private Typeface f1482native;

    /* renamed from: package, reason: not valid java name */
    private float f1484package;

    /* renamed from: private, reason: not valid java name */
    private float f1485private;

    /* renamed from: protected, reason: not valid java name */
    private Interpolator f1486protected;

    /* renamed from: public, reason: not valid java name */
    private Typeface f1487public;

    /* renamed from: return, reason: not valid java name */
    private Typeface f1488return;

    /* renamed from: static, reason: not valid java name */
    private CharSequence f1489static;

    /* renamed from: strictfp, reason: not valid java name */
    private int[] f1490strictfp;

    /* renamed from: super, reason: not valid java name */
    private float f1491super;

    /* renamed from: switch, reason: not valid java name */
    private CharSequence f1492switch;

    /* renamed from: synchronized, reason: not valid java name */
    private float f1493synchronized;

    /* renamed from: throw, reason: not valid java name */
    private float f1495throw;

    /* renamed from: throws, reason: not valid java name */
    private boolean f1496throws;

    /* renamed from: transient, reason: not valid java name */
    private Interpolator f1497transient;

    /* renamed from: volatile, reason: not valid java name */
    private boolean f1499volatile;

    /* renamed from: while, reason: not valid java name */
    private float f1500while;

    /* renamed from: else, reason: not valid java name */
    private int f1471else = 16;

    /* renamed from: goto, reason: not valid java name */
    private int f1476goto = 16;

    /* renamed from: this, reason: not valid java name */
    private float f1494this = 15.0f;

    /* renamed from: break, reason: not valid java name */
    private float f1463break = 15.0f;

    /* renamed from: interface, reason: not valid java name */
    private final TextPaint f1481interface = new TextPaint(129);

    /* renamed from: try, reason: not valid java name */
    private final Rect f1498try = new Rect();

    /* renamed from: new, reason: not valid java name */
    private final Rect f1483new = new Rect();

    /* renamed from: case, reason: not valid java name */
    private final RectF f1464case = new RectF();

    static {
        f = Build.VERSION.SDK_INT < 18;
        h = null;
    }

    public eh1(View view) {
        this.f1470do = view;
    }

    /* renamed from: case, reason: not valid java name */
    private void m1882case(float f2) {
        boolean z;
        float f3;
        boolean z2;
        if (this.f1489static == null) {
            return;
        }
        float fWidth = this.f1498try.width();
        float fWidth2 = this.f1483new.width();
        if (m1894switch(f2, this.f1463break)) {
            f3 = this.f1463break;
            this.f1462abstract = 1.0f;
            Typeface typeface = this.f1488return;
            Typeface typeface2 = this.f1482native;
            if (typeface != typeface2) {
                this.f1488return = typeface2;
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            float f4 = this.f1494this;
            Typeface typeface3 = this.f1488return;
            Typeface typeface4 = this.f1487public;
            if (typeface3 != typeface4) {
                this.f1488return = typeface4;
                z = true;
            } else {
                z = false;
            }
            if (m1894switch(f2, f4)) {
                this.f1462abstract = 1.0f;
            } else {
                this.f1462abstract = f2 / this.f1494this;
            }
            float f5 = this.f1463break / this.f1494this;
            fWidth = fWidth2 * f5 > fWidth ? Math.min(fWidth / f5, fWidth2) : fWidth2;
            f3 = f4;
            z2 = z;
        }
        if (fWidth > 0.0f) {
            z2 = this.f1468continue != f3 || this.f1499volatile || z2;
            this.f1468continue = f3;
            this.f1499volatile = false;
        }
        if (this.f1492switch == null || z2) {
            this.f1481interface.setTextSize(this.f1468continue);
            this.f1481interface.setTypeface(this.f1488return);
            this.f1481interface.setLinearText(this.f1462abstract != 1.0f);
            CharSequence charSequenceEllipsize = TextUtils.ellipsize(this.f1489static, this.f1481interface, fWidth, TextUtils.TruncateAt.END);
            if (TextUtils.equals(charSequenceEllipsize, this.f1492switch)) {
                return;
            }
            this.f1492switch = charSequenceEllipsize;
            this.f1496throws = m1890new(charSequenceEllipsize);
        }
    }

    private void d(float f2) {
        m1882case(f2);
        boolean z = f && this.f1462abstract != 1.0f;
        this.f1469default = z;
        if (z) {
            m1895this();
        }
        ViewCompat.postInvalidateOnAnimation(this.f1470do);
    }

    /* renamed from: default, reason: not valid java name */
    private static float m1883default(float f2, float f3, float f4, Interpolator interpolator) {
        if (interpolator != null) {
            f4 = interpolator.getInterpolation(f4);
        }
        return f2 + Math.round(f4 * (f3 - f2));
    }

    /* renamed from: do, reason: not valid java name */
    private static int m1884do(int i, int i2, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb((int) ((Color.alpha(i) * f3) + (Color.alpha(i2) * f2)), (int) ((Color.red(i) * f3) + (Color.red(i2) * f2)), (int) ((Color.green(i) * f3) + (Color.green(i2) * f2)), (int) ((Color.blue(i) * f3) + (Color.blue(i2) * f2)));
    }

    /* renamed from: else, reason: not valid java name */
    private void m1885else() {
        Bitmap bitmap = this.f1472extends;
        if (bitmap != null) {
            bitmap.recycle();
            this.f1472extends = null;
        }
    }

    @ColorInt
    /* renamed from: final, reason: not valid java name */
    private int m1886final() {
        int[] iArr = this.f1490strictfp;
        return iArr != null ? this.f1466class.getColorForState(iArr, 0) : this.f1466class.getDefaultColor();
    }

    @RequiresApi(api = 16)
    /* renamed from: finally, reason: not valid java name */
    private Typeface m1887finally(int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = this.f1470do.getContext().obtainStyledAttributes(i, new int[]{R.attr.fontFamily});
        try {
            String string = typedArrayObtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            typedArrayObtainStyledAttributes.recycle();
            return null;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m1888for() {
        m1896try(this.f1475for);
    }

    /* renamed from: if, reason: not valid java name */
    private void m1889if() {
        float f2 = this.f1468continue;
        m1882case(this.f1463break);
        CharSequence charSequence = this.f1492switch;
        float fMeasureText = charSequence != null ? this.f1481interface.measureText(charSequence, 0, charSequence.length()) : 0.0f;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f1476goto, this.f1496throws ? 1 : 0);
        int i = absoluteGravity & 112;
        if (i == 48) {
            this.f1473final = this.f1498try.top - this.f1481interface.ascent();
        } else if (i != 80) {
            this.f1473final = this.f1498try.centerY() + (((this.f1481interface.descent() - this.f1481interface.ascent()) / 2.0f) - this.f1481interface.descent());
        } else {
            this.f1473final = this.f1498try.bottom - this.f1481interface.descent();
        }
        int i2 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i2 == 1) {
            this.f1495throw = this.f1498try.centerX() - (fMeasureText / 2.0f);
        } else if (i2 != 5) {
            this.f1495throw = this.f1498try.left;
        } else {
            this.f1495throw = this.f1498try.right - fMeasureText;
        }
        m1882case(this.f1494this);
        CharSequence charSequence2 = this.f1492switch;
        float fMeasureText2 = charSequence2 != null ? this.f1481interface.measureText(charSequence2, 0, charSequence2.length()) : 0.0f;
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f1471else, this.f1496throws ? 1 : 0);
        int i3 = absoluteGravity2 & 112;
        if (i3 == 48) {
            this.f1467const = this.f1483new.top - this.f1481interface.ascent();
        } else if (i3 != 80) {
            this.f1467const = this.f1483new.centerY() + (((this.f1481interface.descent() - this.f1481interface.ascent()) / 2.0f) - this.f1481interface.descent());
        } else {
            this.f1467const = this.f1483new.bottom - this.f1481interface.descent();
        }
        int i4 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.f1491super = this.f1483new.centerX() - (fMeasureText2 / 2.0f);
        } else if (i4 != 5) {
            this.f1491super = this.f1483new.left;
        } else {
            this.f1491super = this.f1483new.right - fMeasureText2;
        }
        m1885else();
        d(f2);
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m1890new(CharSequence charSequence) {
        return (ViewCompat.getLayoutDirection(this.f1470do) == 1 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
    }

    /* renamed from: private, reason: not valid java name */
    private static boolean m1891private(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    /* renamed from: static, reason: not valid java name */
    private void m1892static(float f2) {
        this.f1464case.left = m1883default(this.f1483new.left, this.f1498try.left, f2, this.f1486protected);
        this.f1464case.top = m1883default(this.f1467const, this.f1473final, f2, this.f1486protected);
        this.f1464case.right = m1883default(this.f1483new.right, this.f1498try.right, f2, this.f1486protected);
        this.f1464case.bottom = m1883default(this.f1483new.bottom, this.f1498try.bottom, f2, this.f1486protected);
    }

    @ColorInt
    /* renamed from: super, reason: not valid java name */
    private int m1893super() {
        int[] iArr = this.f1490strictfp;
        return iArr != null ? this.f1465catch.getColorForState(iArr, 0) : this.f1465catch.getDefaultColor();
    }

    /* renamed from: switch, reason: not valid java name */
    private static boolean m1894switch(float f2, float f3) {
        return Math.abs(f2 - f3) < 0.001f;
    }

    /* renamed from: this, reason: not valid java name */
    private void m1895this() {
        if (this.f1472extends != null || this.f1483new.isEmpty() || TextUtils.isEmpty(this.f1492switch)) {
            return;
        }
        m1896try(0.0f);
        this.f1484package = this.f1481interface.ascent();
        this.f1485private = this.f1481interface.descent();
        TextPaint textPaint = this.f1481interface;
        CharSequence charSequence = this.f1492switch;
        int iRound = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
        int iRound2 = Math.round(this.f1485private - this.f1484package);
        if (iRound <= 0 || iRound2 <= 0) {
            return;
        }
        this.f1472extends = Bitmap.createBitmap(iRound, iRound2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.f1472extends);
        CharSequence charSequence2 = this.f1492switch;
        canvas.drawText(charSequence2, 0, charSequence2.length(), 0.0f, iRound2 - this.f1481interface.descent(), this.f1481interface);
        if (this.f1474finally == null) {
            this.f1474finally = new Paint(3);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m1896try(float f2) {
        m1892static(f2);
        this.f1500while = m1883default(this.f1491super, this.f1495throw, f2, this.f1486protected);
        this.f1479import = m1883default(this.f1467const, this.f1473final, f2, this.f1486protected);
        d(m1883default(this.f1494this, this.f1463break, f2, this.f1497transient));
        if (this.f1466class != this.f1465catch) {
            this.f1481interface.setColor(m1884do(m1893super(), m1886final(), f2));
        } else {
            this.f1481interface.setColor(m1886final());
        }
        this.f1481interface.setShadowLayer(m1883default(this.b, this.f1478implements, f2, null), m1883default(this.c, this.f1480instanceof, f2, null), m1883default(this.d, this.f1493synchronized, f2, null), m1884do(this.e, this.a, f2));
        ViewCompat.postInvalidateOnAnimation(this.f1470do);
    }

    public void a(float f2) {
        if (this.f1494this != f2) {
            this.f1494this = f2;
            m1910package();
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m1897abstract(int i, int i2, int i3, int i4) {
        if (m1891private(this.f1498try, i, i2, i3, i4)) {
            return;
        }
        this.f1498try.set(i, i2, i3, i4);
        this.f1499volatile = true;
        m1903extends();
    }

    public void b(Typeface typeface) {
        if (this.f1487public != typeface) {
            this.f1487public = typeface;
            m1910package();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public ColorStateList m1898break() {
        return this.f1466class;
    }

    public void c(float f2) {
        float fM4407if = kh1.m4407if(f2, 0.0f, 1.0f);
        if (fM4407if != this.f1475for) {
            this.f1475for = fM4407if;
            m1888for();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public int m1899catch() {
        return this.f1476goto;
    }

    /* renamed from: class, reason: not valid java name */
    public float m1900class() {
        return this.f1463break;
    }

    /* renamed from: const, reason: not valid java name */
    public Typeface m1901const() {
        Typeface typeface = this.f1482native;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m1902continue(int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f1470do.getContext(), i, com.qmuiteam.qmui.R.styleable.QMUITextAppearance);
        int i2 = com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_textColor;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f1466class = tintTypedArrayObtainStyledAttributes.getColorStateList(i2);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_textSize)) {
            this.f1463break = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(r1, (int) this.f1463break);
        }
        this.a = tintTypedArrayObtainStyledAttributes.getInt(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowColor, 0);
        this.f1480instanceof = tintTypedArrayObtainStyledAttributes.getFloat(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowDx, 0.0f);
        this.f1493synchronized = tintTypedArrayObtainStyledAttributes.getFloat(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowDy, 0.0f);
        this.f1478implements = tintTypedArrayObtainStyledAttributes.getFloat(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowRadius, 0.0f);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1482native = m1887finally(i);
        }
        m1910package();
    }

    public void e(Interpolator interpolator) {
        this.f1486protected = interpolator;
        m1910package();
    }

    /* renamed from: extends, reason: not valid java name */
    public void m1903extends() {
        this.f1477if = this.f1498try.width() > 0 && this.f1498try.height() > 0 && this.f1483new.width() > 0 && this.f1483new.height() > 0;
    }

    public final boolean f(int[] iArr) {
        this.f1490strictfp = iArr;
        if (!m1917throws()) {
            return false;
        }
        m1910package();
        return true;
    }

    public void g(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.f1489static)) {
            this.f1489static = charSequence;
            this.f1492switch = null;
            m1885else();
            m1910package();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public void m1904goto(Canvas canvas) {
        float fAscent;
        int iSave = canvas.save();
        if (this.f1492switch != null && this.f1477if) {
            float f2 = this.f1500while;
            float f3 = this.f1479import;
            boolean z = this.f1469default && this.f1472extends != null;
            if (z) {
                fAscent = this.f1484package * this.f1462abstract;
            } else {
                fAscent = this.f1481interface.ascent() * this.f1462abstract;
                this.f1481interface.descent();
            }
            if (z) {
                f3 += fAscent;
            }
            float f4 = f3;
            float f5 = this.f1462abstract;
            if (f5 != 1.0f) {
                canvas.scale(f5, f5, f2, f4);
            }
            if (z) {
                canvas.drawBitmap(this.f1472extends, f2, f4, this.f1474finally);
            } else {
                CharSequence charSequence = this.f1492switch;
                canvas.drawText(charSequence, 0, charSequence.length(), f2, f4, this.f1481interface);
            }
        }
        canvas.restoreToCount(iSave);
    }

    public void h(Interpolator interpolator) {
        this.f1497transient = interpolator;
        m1910package();
    }

    public void i(Typeface typeface) {
        this.f1487public = typeface;
        this.f1482native = typeface;
        m1910package();
    }

    /* renamed from: implements, reason: not valid java name */
    public void m1905implements(int i) {
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f1470do.getContext(), i, com.qmuiteam.qmui.R.styleable.QMUITextAppearance);
        int i2 = com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_textColor;
        if (tintTypedArrayObtainStyledAttributes.hasValue(i2)) {
            this.f1465catch = tintTypedArrayObtainStyledAttributes.getColorStateList(i2);
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_textSize)) {
            this.f1494this = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(r1, (int) this.f1494this);
        }
        this.e = tintTypedArrayObtainStyledAttributes.getInt(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowColor, 0);
        this.c = tintTypedArrayObtainStyledAttributes.getFloat(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowDx, 0.0f);
        this.d = tintTypedArrayObtainStyledAttributes.getFloat(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowDy, 0.0f);
        this.b = tintTypedArrayObtainStyledAttributes.getFloat(com.qmuiteam.qmui.R.styleable.QMUITextAppearance_android_shadowRadius, 0.0f);
        tintTypedArrayObtainStyledAttributes.recycle();
        if (Build.VERSION.SDK_INT >= 16) {
            this.f1487public = m1887finally(i);
        }
        m1910package();
    }

    /* renamed from: import, reason: not valid java name */
    public float m1906import() {
        return this.f1494this;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m1907instanceof(ColorStateList colorStateList) {
        if (this.f1465catch != colorStateList) {
            this.f1465catch = colorStateList;
            m1910package();
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m1908interface(float f2) {
        if (this.f1463break != f2) {
            this.f1463break = f2;
            m1910package();
        }
    }

    /* renamed from: native, reason: not valid java name */
    public Typeface m1909native() {
        Typeface typeface = this.f1487public;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    /* renamed from: package, reason: not valid java name */
    public void m1910package() {
        if (this.f1470do.getHeight() <= 0 || this.f1470do.getWidth() <= 0) {
            return;
        }
        m1889if();
        m1888for();
    }

    /* renamed from: protected, reason: not valid java name */
    public void m1911protected(Typeface typeface) {
        if (this.f1482native != typeface) {
            this.f1482native = typeface;
            m1910package();
        }
    }

    /* renamed from: public, reason: not valid java name */
    public float m1912public() {
        return this.f1475for;
    }

    /* renamed from: return, reason: not valid java name */
    public CharSequence m1913return() {
        return this.f1489static;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m1914strictfp(ColorStateList colorStateList) {
        if (this.f1466class != colorStateList) {
            this.f1466class = colorStateList;
            m1910package();
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m1915synchronized(int i) {
        if (this.f1471else != i) {
            this.f1471else = i;
            m1910package();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public ColorStateList m1916throw() {
        return this.f1465catch;
    }

    /* renamed from: throws, reason: not valid java name */
    public final boolean m1917throws() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f1466class;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1465catch) != null && colorStateList.isStateful());
    }

    /* renamed from: transient, reason: not valid java name */
    public void m1918transient(int i, int i2, int i3, int i4) {
        if (m1891private(this.f1483new, i, i2, i3, i4)) {
            return;
        }
        this.f1483new.set(i, i2, i3, i4);
        this.f1499volatile = true;
        m1903extends();
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m1919volatile(int i) {
        if (this.f1476goto != i) {
            this.f1476goto = i;
            m1910package();
        }
    }

    /* renamed from: while, reason: not valid java name */
    public int m1920while() {
        return this.f1471else;
    }
}
