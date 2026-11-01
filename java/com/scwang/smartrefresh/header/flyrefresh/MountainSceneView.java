package com.scwang.smartrefresh.header.flyrefresh;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.ColorInt;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.scwang.smartrefresh.header.R;

/* loaded from: classes2.dex */
public class MountainSceneView extends View {

    /* renamed from: abstract, reason: not valid java name */
    public static final int f20266abstract = 200;

    /* renamed from: finally, reason: not valid java name */
    public static final int f20267finally = 240;

    /* renamed from: package, reason: not valid java name */
    public static final int f20268package = 180;

    /* renamed from: private, reason: not valid java name */
    public static final int f20269private = 100;

    /* renamed from: break, reason: not valid java name */
    public int f20270break;

    /* renamed from: case, reason: not valid java name */
    public int f20271case;

    /* renamed from: catch, reason: not valid java name */
    public Paint f20272catch;

    /* renamed from: class, reason: not valid java name */
    public Paint f20273class;

    /* renamed from: const, reason: not valid java name */
    public Paint f20274const;

    /* renamed from: default, reason: not valid java name */
    public float f20275default;

    /* renamed from: do, reason: not valid java name */
    public int f20276do;

    /* renamed from: else, reason: not valid java name */
    public int f20277else;

    /* renamed from: extends, reason: not valid java name */
    public int f20278extends;

    /* renamed from: final, reason: not valid java name */
    public Paint f20279final;

    /* renamed from: for, reason: not valid java name */
    public int f20280for;

    /* renamed from: goto, reason: not valid java name */
    public int f20281goto;

    /* renamed from: if, reason: not valid java name */
    public int f20282if;

    /* renamed from: import, reason: not valid java name */
    public Path f20283import;

    /* renamed from: native, reason: not valid java name */
    public Path f20284native;

    /* renamed from: new, reason: not valid java name */
    public int f20285new;

    /* renamed from: public, reason: not valid java name */
    public Matrix f20286public;

    /* renamed from: return, reason: not valid java name */
    public float f20287return;

    /* renamed from: static, reason: not valid java name */
    public float f20288static;

    /* renamed from: super, reason: not valid java name */
    public Path f20289super;

    /* renamed from: switch, reason: not valid java name */
    public float f20290switch;

    /* renamed from: this, reason: not valid java name */
    public int f20291this;

    /* renamed from: throw, reason: not valid java name */
    public Path f20292throw;

    /* renamed from: throws, reason: not valid java name */
    public float f20293throws;

    /* renamed from: try, reason: not valid java name */
    public int f20294try;

    /* renamed from: while, reason: not valid java name */
    public Path f20295while;

    public MountainSceneView(Context context) {
        this(context, null);
    }

    /* renamed from: do, reason: not valid java name */
    private void m24339do(Canvas canvas, float f, float f2, float f3, int i, int i2) {
        canvas.save();
        canvas.translate(f2 - ((100.0f * f) / 2.0f), f3 - (200.0f * f));
        canvas.scale(f, f);
        this.f20274const.setColor(i2);
        canvas.drawPath(this.f20284native, this.f20274const);
        this.f20273class.setColor(i);
        canvas.drawPath(this.f20283import, this.f20273class);
        this.f20279final.setColor(i);
        canvas.drawPath(this.f20284native, this.f20279final);
        canvas.restore();
    }

    /* renamed from: if, reason: not valid java name */
    private void m24340if(float f, int i) {
        this.f20286public.reset();
        this.f20286public.setScale(this.f20287return, this.f20288static);
        float f2 = 10.0f * f;
        this.f20289super.reset();
        this.f20289super.moveTo(0.0f, 95.0f + f2);
        this.f20289super.lineTo(55.0f, 74.0f + f2);
        this.f20289super.lineTo(146.0f, f2 + 104.0f);
        this.f20289super.lineTo(227.0f, 72.0f + f2);
        this.f20289super.lineTo(240.0f, f2 + 80.0f);
        this.f20289super.lineTo(240.0f, 180.0f);
        this.f20289super.lineTo(0.0f, 180.0f);
        this.f20289super.close();
        this.f20289super.transform(this.f20286public);
        float f3 = 20.0f * f;
        this.f20292throw.reset();
        this.f20292throw.moveTo(0.0f, 103.0f + f3);
        this.f20292throw.lineTo(67.0f, 90.0f + f3);
        this.f20292throw.lineTo(165.0f, 115.0f + f3);
        this.f20292throw.lineTo(221.0f, 87.0f + f3);
        this.f20292throw.lineTo(240.0f, f3 + 100.0f);
        this.f20292throw.lineTo(240.0f, 180.0f);
        this.f20292throw.lineTo(0.0f, 180.0f);
        this.f20292throw.close();
        this.f20292throw.transform(this.f20286public);
        float f4 = f * 30.0f;
        this.f20295while.reset();
        this.f20295while.moveTo(0.0f, 114.0f + f4);
        this.f20295while.cubicTo(30.0f, f4 + 106.0f, 196.0f, f4 + 97.0f, 240.0f, f4 + 104.0f);
        float f5 = i;
        this.f20295while.lineTo(240.0f, f5 / this.f20288static);
        this.f20295while.lineTo(0.0f, f5 / this.f20288static);
        this.f20295while.close();
        this.f20295while.transform(this.f20286public);
    }

    /* renamed from: new, reason: not valid java name */
    private void m24341new(float f, boolean z) {
        int i;
        if (f != this.f20275default || z) {
            Interpolator interpolatorCreate = PathInterpolatorCompat.create(0.8f, (-0.5f) * f);
            float f2 = f * 30.000002f;
            float[] fArr = new float[26];
            float[] fArr2 = new float[26];
            int i2 = 0;
            float f3 = 0.0f;
            float f4 = 200.0f;
            while (true) {
                if (i2 > 25) {
                    break;
                }
                fArr[i2] = (interpolatorCreate.getInterpolation(f3) * f2) + 50.0f;
                fArr2[i2] = f4;
                f4 -= 8.0f;
                f3 += 0.04f;
                i2++;
            }
            this.f20283import.reset();
            this.f20283import.moveTo(45.0f, 200.0f);
            int i3 = (int) (17 * 0.5f);
            float f5 = 17 - i3;
            for (int i4 = 0; i4 < 17; i4++) {
                if (i4 < i3) {
                    this.f20283import.lineTo(fArr[i4] - 5.0f, fArr2[i4]);
                } else {
                    this.f20283import.lineTo(fArr[i4] - (((17 - i4) * 5.0f) / f5), fArr2[i4]);
                }
            }
            for (int i5 = 16; i5 >= 0; i5--) {
                if (i5 < i3) {
                    this.f20283import.lineTo(fArr[i5] + 5.0f, fArr2[i5]);
                } else {
                    this.f20283import.lineTo(fArr[i5] + (((17 - i5) * 5.0f) / f5), fArr2[i5]);
                }
            }
            this.f20283import.close();
            this.f20284native.reset();
            float f6 = 15;
            this.f20284native.moveTo(fArr[10] - 20.0f, fArr2[10]);
            this.f20284native.addArc(new RectF(fArr[10] - 20.0f, fArr2[10] - 20.0f, fArr[10] + 20.0f, fArr2[10] + 20.0f), 0.0f, 180.0f);
            for (int i6 = 10; i6 <= 25; i6++) {
                float f7 = (i6 - 10) / f6;
                this.f20284native.lineTo((fArr[i6] - 20.0f) + (f7 * f7 * 20.0f), fArr2[i6]);
            }
            for (i = 25; i >= 10; i--) {
                float f8 = (i - 10) / f6;
                this.f20284native.lineTo((fArr[i] + 20.0f) - ((f8 * f8) * 20.0f), fArr2[i]);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m24342for(float f) {
        this.f20293throws = f;
        float fMax = Math.max(0.0f, f);
        this.f20290switch = Math.max(0.0f, this.f20293throws);
        int measuredHeight = getMeasuredHeight();
        float f2 = this.f20290switch;
        if (measuredHeight <= 0) {
            measuredHeight = 180;
        }
        m24340if(f2, measuredHeight);
        m24341new(fMax, false);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawColor(this.f20276do);
        this.f20272catch.setColor(this.f20282if);
        canvas.drawPath(this.f20289super, this.f20272catch);
        canvas.save();
        canvas.scale(-1.0f, 1.0f, getWidth() / 2.0f, 0.0f);
        float f = this.f20287return;
        m24339do(canvas, f * 0.12f, f * 180.0f, ((this.f20290switch * 20.0f) + 93.0f) * this.f20288static, this.f20270break, this.f20291this);
        float f2 = this.f20287return;
        m24339do(canvas, f2 * 0.1f, f2 * 200.0f, ((this.f20290switch * 20.0f) + 96.0f) * this.f20288static, this.f20270break, this.f20291this);
        canvas.restore();
        this.f20272catch.setColor(this.f20280for);
        canvas.drawPath(this.f20292throw, this.f20272catch);
        float f3 = this.f20287return;
        m24339do(canvas, f3 * 0.2f, f3 * 160.0f, ((this.f20290switch * 30.0f) + 105.0f) * this.f20288static, this.f20271case, this.f20294try);
        float f4 = this.f20287return;
        m24339do(canvas, f4 * 0.14f, f4 * 180.0f, ((this.f20290switch * 30.0f) + 105.0f) * this.f20288static, this.f20281goto, this.f20277else);
        float f5 = this.f20287return;
        m24339do(canvas, f5 * 0.16f, f5 * 140.0f, ((this.f20290switch * 30.0f) + 105.0f) * this.f20288static, this.f20281goto, this.f20277else);
        this.f20272catch.setColor(this.f20285new);
        canvas.drawPath(this.f20295while, this.f20272catch);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f20287return = (measuredWidth * 1.0f) / 240.0f;
        int i3 = this.f20278extends;
        if (i3 <= 0) {
            i3 = measuredHeight;
        }
        this.f20288static = (i3 * 1.0f) / 180.0f;
        m24340if(this.f20290switch, measuredHeight);
        m24341new(this.f20290switch, true);
    }

    public void setPrimaryColor(@ColorInt int i) {
        this.f20276do = i;
        this.f20282if = ColorUtils.compositeColors(-1711276033, i);
        this.f20280for = ColorUtils.compositeColors(-1724083556, i);
        this.f20285new = ColorUtils.compositeColors(-868327565, i);
        this.f20294try = ColorUtils.compositeColors(1428124023, i);
        this.f20271case = ColorUtils.compositeColors(-871612856, i);
        this.f20277else = ColorUtils.compositeColors(1429506191, i);
        this.f20281goto = ColorUtils.compositeColors(-870620823, i);
        this.f20291this = ColorUtils.compositeColors(1431810478, i);
        this.f20270break = ColorUtils.compositeColors(-865950547, i);
    }

    public MountainSceneView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20276do = -8466743;
        this.f20282if = -7939369;
        this.f20280for = -12807524;
        this.f20285new = -12689549;
        this.f20294try = -14716553;
        this.f20271case = -15974840;
        this.f20277else = -13334385;
        this.f20281goto = -14982807;
        this.f20291this = -11030098;
        this.f20270break = -10312531;
        this.f20272catch = new Paint();
        this.f20273class = new Paint();
        this.f20274const = new Paint();
        this.f20279final = new Paint();
        this.f20289super = new Path();
        this.f20292throw = new Path();
        this.f20295while = new Path();
        this.f20283import = new Path();
        this.f20284native = new Path();
        this.f20286public = new Matrix();
        this.f20287return = 5.0f;
        this.f20288static = 5.0f;
        this.f20290switch = 0.0f;
        this.f20293throws = 1.0f;
        this.f20275default = Float.MAX_VALUE;
        this.f20278extends = 0;
        this.f20272catch.setAntiAlias(true);
        this.f20272catch.setStyle(Paint.Style.FILL);
        this.f20273class.setAntiAlias(true);
        this.f20274const.setAntiAlias(true);
        this.f20279final.setAntiAlias(true);
        this.f20279final.setStyle(Paint.Style.STROKE);
        this.f20279final.setStrokeWidth(2.0f);
        this.f20279final.setStrokeJoin(Paint.Join.ROUND);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MountainSceneView);
        int i = R.styleable.MountainSceneView_msvPrimaryColor;
        if (typedArrayObtainStyledAttributes.hasValue(i)) {
            setPrimaryColor(typedArrayObtainStyledAttributes.getColor(i, -16777216));
        }
        this.f20278extends = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.MountainSceneView_msvViewportHeight, 0);
        typedArrayObtainStyledAttributes.recycle();
        m24340if(this.f20290switch, 180);
        m24341new(this.f20290switch, true);
    }
}
