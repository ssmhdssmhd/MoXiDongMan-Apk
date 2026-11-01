package cn.bingoogolapple.qrcode.core;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.p6;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class ScanBoxView extends View {
    private boolean a;

    /* renamed from: abstract, reason: not valid java name */
    private String f9058abstract;
    private Drawable b;

    /* renamed from: break, reason: not valid java name */
    private int f9059break;
    private Bitmap c;

    /* renamed from: case, reason: not valid java name */
    private Paint f9060case;

    /* renamed from: catch, reason: not valid java name */
    private int f9061catch;

    /* renamed from: class, reason: not valid java name */
    private int f9062class;

    /* renamed from: const, reason: not valid java name */
    private int f9063const;

    /* renamed from: continue, reason: not valid java name */
    private String f9064continue;
    private float d;

    /* renamed from: default, reason: not valid java name */
    private float f9065default;

    /* renamed from: do, reason: not valid java name */
    private int f9066do;
    private float e;

    /* renamed from: else, reason: not valid java name */
    private TextPaint f9067else;

    /* renamed from: extends, reason: not valid java name */
    private int f9068extends;
    private Bitmap f;

    /* renamed from: final, reason: not valid java name */
    private int f9069final;

    /* renamed from: finally, reason: not valid java name */
    private int f9070finally;

    /* renamed from: for, reason: not valid java name */
    private Rect f9071for;
    private Bitmap g;

    /* renamed from: goto, reason: not valid java name */
    private int f9072goto;
    private Bitmap h;
    private Bitmap i;

    /* renamed from: if, reason: not valid java name */
    private int f9073if;

    /* renamed from: implements, reason: not valid java name */
    private int f9074implements;

    /* renamed from: import, reason: not valid java name */
    private int f9075import;

    /* renamed from: instanceof, reason: not valid java name */
    private boolean f9076instanceof;

    /* renamed from: interface, reason: not valid java name */
    private boolean f9077interface;
    private float j;
    private StaticLayout k;
    private int l;
    private boolean m;
    private boolean n;

    /* renamed from: native, reason: not valid java name */
    private boolean f9078native;

    /* renamed from: new, reason: not valid java name */
    private float f9079new;
    private boolean o;
    private QRCodeView p;

    /* renamed from: package, reason: not valid java name */
    private boolean f9080package;

    /* renamed from: private, reason: not valid java name */
    private String f9081private;

    /* renamed from: protected, reason: not valid java name */
    private int f9082protected;

    /* renamed from: public, reason: not valid java name */
    private Drawable f9083public;

    /* renamed from: return, reason: not valid java name */
    private Bitmap f9084return;

    /* renamed from: static, reason: not valid java name */
    private int f9085static;

    /* renamed from: strictfp, reason: not valid java name */
    private int f9086strictfp;

    /* renamed from: super, reason: not valid java name */
    private int f9087super;

    /* renamed from: switch, reason: not valid java name */
    private int f9088switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f9089synchronized;

    /* renamed from: this, reason: not valid java name */
    private int f9090this;

    /* renamed from: throw, reason: not valid java name */
    private int f9091throw;

    /* renamed from: throws, reason: not valid java name */
    private int f9092throws;

    /* renamed from: transient, reason: not valid java name */
    private boolean f9093transient;

    /* renamed from: try, reason: not valid java name */
    private float f9094try;

    /* renamed from: volatile, reason: not valid java name */
    private int f9095volatile;

    /* renamed from: while, reason: not valid java name */
    private int f9096while;

    public ScanBoxView(Context context) {
        super(context);
        Paint paint = new Paint();
        this.f9060case = paint;
        paint.setAntiAlias(true);
        this.f9072goto = Color.parseColor("#33FFFFFF");
        this.f9090this = -1;
        this.f9059break = p6.m5886else(context, 20.0f);
        this.f9061catch = p6.m5886else(context, 3.0f);
        this.f9091throw = p6.m5886else(context, 1.0f);
        this.f9096while = -1;
        this.f9087super = p6.m5886else(context, 90.0f);
        this.f9062class = p6.m5886else(context, 200.0f);
        this.f9069final = p6.m5886else(context, 140.0f);
        this.f9075import = 0;
        this.f9078native = false;
        this.f9083public = null;
        this.f9084return = null;
        this.f9085static = p6.m5886else(context, 1.0f);
        this.f9088switch = -1;
        this.f9092throws = 1000;
        this.f9065default = -1.0f;
        this.f9068extends = 1;
        this.f9070finally = 0;
        this.f9080package = false;
        this.f9066do = p6.m5886else(context, 2.0f);
        this.f9064continue = null;
        this.f9086strictfp = p6.m5896while(context, 14.0f);
        this.f9095volatile = -1;
        this.f9077interface = false;
        this.f9082protected = p6.m5886else(context, 20.0f);
        this.f9093transient = false;
        this.f9074implements = Color.parseColor("#22000000");
        this.f9076instanceof = false;
        this.f9089synchronized = false;
        this.a = false;
        TextPaint textPaint = new TextPaint();
        this.f9067else = textPaint;
        textPaint.setAntiAlias(true);
        this.l = p6.m5886else(context, 4.0f);
        this.m = false;
        this.n = false;
        this.o = false;
    }

    /* renamed from: break, reason: not valid java name */
    private void m10831break(int i, TypedArray typedArray) {
        if (i == R.styleable.QRCodeView_qrcv_topOffset) {
            this.f9087super = typedArray.getDimensionPixelSize(i, this.f9087super);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_cornerSize) {
            this.f9061catch = typedArray.getDimensionPixelSize(i, this.f9061catch);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_cornerLength) {
            this.f9059break = typedArray.getDimensionPixelSize(i, this.f9059break);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_scanLineSize) {
            this.f9091throw = typedArray.getDimensionPixelSize(i, this.f9091throw);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_rectWidth) {
            this.f9062class = typedArray.getDimensionPixelSize(i, this.f9062class);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_maskColor) {
            this.f9072goto = typedArray.getColor(i, this.f9072goto);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_cornerColor) {
            this.f9090this = typedArray.getColor(i, this.f9090this);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_scanLineColor) {
            this.f9096while = typedArray.getColor(i, this.f9096while);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_scanLineMargin) {
            this.f9075import = typedArray.getDimensionPixelSize(i, this.f9075import);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isShowDefaultScanLineDrawable) {
            this.f9078native = typedArray.getBoolean(i, this.f9078native);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_customScanLineDrawable) {
            this.f9083public = typedArray.getDrawable(i);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_borderSize) {
            this.f9085static = typedArray.getDimensionPixelSize(i, this.f9085static);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_borderColor) {
            this.f9088switch = typedArray.getColor(i, this.f9088switch);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_animTime) {
            this.f9092throws = typedArray.getInteger(i, this.f9092throws);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_verticalBias) {
            this.f9065default = typedArray.getFloat(i, this.f9065default);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_cornerDisplayType) {
            this.f9068extends = typedArray.getInteger(i, this.f9068extends);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_toolbarHeight) {
            this.f9070finally = typedArray.getDimensionPixelSize(i, this.f9070finally);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_barcodeRectHeight) {
            this.f9069final = typedArray.getDimensionPixelSize(i, this.f9069final);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isBarcode) {
            this.f9080package = typedArray.getBoolean(i, this.f9080package);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_barCodeTipText) {
            this.f9058abstract = typedArray.getString(i);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_qrCodeTipText) {
            this.f9081private = typedArray.getString(i);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_tipTextSize) {
            this.f9086strictfp = typedArray.getDimensionPixelSize(i, this.f9086strictfp);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_tipTextColor) {
            this.f9095volatile = typedArray.getColor(i, this.f9095volatile);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isTipTextBelowRect) {
            this.f9077interface = typedArray.getBoolean(i, this.f9077interface);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_tipTextMargin) {
            this.f9082protected = typedArray.getDimensionPixelSize(i, this.f9082protected);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isShowTipTextAsSingleLine) {
            this.f9093transient = typedArray.getBoolean(i, this.f9093transient);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isShowTipBackground) {
            this.f9076instanceof = typedArray.getBoolean(i, this.f9076instanceof);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_tipBackgroundColor) {
            this.f9074implements = typedArray.getColor(i, this.f9074implements);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isScanLineReverse) {
            this.f9089synchronized = typedArray.getBoolean(i, this.f9089synchronized);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isShowDefaultGridScanLineDrawable) {
            this.a = typedArray.getBoolean(i, this.a);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_customGridScanLineDrawable) {
            this.b = typedArray.getDrawable(i);
            return;
        }
        if (i == R.styleable.QRCodeView_qrcv_isOnlyDecodeScanBoxArea) {
            this.m = typedArray.getBoolean(i, this.m);
        } else if (i == R.styleable.QRCodeView_qrcv_isShowLocationPoint) {
            this.n = typedArray.getBoolean(i, this.n);
        } else if (i == R.styleable.QRCodeView_qrcv_isAutoZoom) {
            this.o = typedArray.getBoolean(i, this.o);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private void m10832case(Canvas canvas) {
        if (this.f9080package) {
            if (this.c != null) {
                float f = this.f9071for.left;
                float f2 = this.j;
                int i = this.f9075import;
                RectF rectF = new RectF(f + f2 + 0.5f, r1.top + f2 + i, this.e, (r1.bottom - f2) - i);
                Rect rect = new Rect((int) (this.c.getWidth() - rectF.width()), 0, this.c.getWidth(), this.c.getHeight());
                if (rect.left < 0) {
                    rect.left = 0;
                    rectF.left = rectF.right - rect.width();
                }
                canvas.drawBitmap(this.c, rect, rectF, this.f9060case);
                return;
            }
            if (this.f9084return != null) {
                float f3 = this.f9094try;
                canvas.drawBitmap(this.f9084return, (Rect) null, new RectF(f3, this.f9071for.top + this.j + this.f9075import, this.f9084return.getWidth() + f3, (this.f9071for.bottom - this.j) - this.f9075import), this.f9060case);
                return;
            }
            this.f9060case.setStyle(Paint.Style.FILL);
            this.f9060case.setColor(this.f9096while);
            float f4 = this.f9094try;
            float f5 = this.f9071for.top;
            float f6 = this.j;
            int i2 = this.f9075import;
            canvas.drawRect(f4, f5 + f6 + i2, this.f9091throw + f4, (r0.bottom - f6) - i2, this.f9060case);
            return;
        }
        if (this.c != null) {
            float f7 = this.f9071for.left;
            float f8 = this.j;
            int i3 = this.f9075import;
            RectF rectF2 = new RectF(f7 + f8 + i3, r1.top + f8 + 0.5f, (r1.right - f8) - i3, this.d);
            Rect rect2 = new Rect(0, (int) (this.c.getHeight() - rectF2.height()), this.c.getWidth(), this.c.getHeight());
            if (rect2.top < 0) {
                rect2.top = 0;
                rectF2.top = rectF2.bottom - rect2.height();
            }
            canvas.drawBitmap(this.c, rect2, rectF2, this.f9060case);
            return;
        }
        if (this.f9084return != null) {
            float f9 = this.f9071for.left;
            float f10 = this.j;
            int i4 = this.f9075import;
            float f11 = this.f9079new;
            canvas.drawBitmap(this.f9084return, (Rect) null, new RectF(f9 + f10 + i4, f11, (r2.right - f10) - i4, this.f9084return.getHeight() + f11), this.f9060case);
            return;
        }
        this.f9060case.setStyle(Paint.Style.FILL);
        this.f9060case.setColor(this.f9096while);
        float f12 = this.f9071for.left;
        float f13 = this.j;
        int i5 = this.f9075import;
        float f14 = this.f9079new;
        canvas.drawRect(f12 + f13 + i5, f14, (r0.right - f13) - i5, f14 + this.f9091throw, this.f9060case);
    }

    /* renamed from: do, reason: not valid java name */
    private void m10833do() {
        Drawable drawable = this.b;
        if (drawable != null) {
            this.h = ((BitmapDrawable) drawable).getBitmap();
        }
        if (this.h == null) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.mipmap.qrcode_default_grid_scan_line);
            this.h = bitmapDecodeResource;
            this.h = p6.m5887final(bitmapDecodeResource, this.f9096while);
        }
        Bitmap bitmapM5885do = p6.m5885do(this.h, 90);
        this.i = bitmapM5885do;
        Bitmap bitmapM5885do2 = p6.m5885do(bitmapM5885do, 90);
        this.i = bitmapM5885do2;
        this.i = p6.m5885do(bitmapM5885do2, 90);
        Drawable drawable2 = this.f9083public;
        if (drawable2 != null) {
            this.f = ((BitmapDrawable) drawable2).getBitmap();
        }
        if (this.f == null) {
            Bitmap bitmapDecodeResource2 = BitmapFactory.decodeResource(getResources(), R.mipmap.qrcode_default_scan_line);
            this.f = bitmapDecodeResource2;
            this.f = p6.m5887final(bitmapDecodeResource2, this.f9096while);
        }
        this.g = p6.m5885do(this.f, 90);
        this.f9087super += this.f9070finally;
        this.j = (this.f9061catch * 1.0f) / 2.0f;
        this.f9067else.setTextSize(this.f9086strictfp);
        this.f9067else.setColor(this.f9095volatile);
        setIsBarcode(this.f9080package);
    }

    /* renamed from: else, reason: not valid java name */
    private void m10834else(Canvas canvas) {
        if (TextUtils.isEmpty(this.f9064continue) || this.k == null) {
            return;
        }
        if (this.f9077interface) {
            if (this.f9076instanceof) {
                this.f9060case.setColor(this.f9074implements);
                this.f9060case.setStyle(Paint.Style.FILL);
                if (this.f9093transient) {
                    Rect rect = new Rect();
                    TextPaint textPaint = this.f9067else;
                    String str = this.f9064continue;
                    textPaint.getTextBounds(str, 0, str.length(), rect);
                    float width = ((canvas.getWidth() - rect.width()) / 2) - this.l;
                    RectF rectF = new RectF(width, (this.f9071for.bottom + this.f9082protected) - this.l, rect.width() + width + (this.l * 2), this.f9071for.bottom + this.f9082protected + this.k.getHeight() + this.l);
                    int i = this.l;
                    canvas.drawRoundRect(rectF, i, i, this.f9060case);
                } else {
                    Rect rect2 = this.f9071for;
                    float f = rect2.left;
                    int i2 = rect2.bottom;
                    int i3 = this.f9082protected;
                    RectF rectF2 = new RectF(f, (i2 + i3) - this.l, rect2.right, i2 + i3 + this.k.getHeight() + this.l);
                    int i4 = this.l;
                    canvas.drawRoundRect(rectF2, i4, i4, this.f9060case);
                }
            }
            canvas.save();
            if (this.f9093transient) {
                canvas.translate(0.0f, this.f9071for.bottom + this.f9082protected);
            } else {
                Rect rect3 = this.f9071for;
                canvas.translate(rect3.left + this.l, rect3.bottom + this.f9082protected);
            }
            this.k.draw(canvas);
            canvas.restore();
            return;
        }
        if (this.f9076instanceof) {
            this.f9060case.setColor(this.f9074implements);
            this.f9060case.setStyle(Paint.Style.FILL);
            if (this.f9093transient) {
                Rect rect4 = new Rect();
                TextPaint textPaint2 = this.f9067else;
                String str2 = this.f9064continue;
                textPaint2.getTextBounds(str2, 0, str2.length(), rect4);
                float width2 = ((canvas.getWidth() - rect4.width()) / 2) - this.l;
                int i5 = this.l;
                RectF rectF3 = new RectF(width2, ((this.f9071for.top - this.f9082protected) - this.k.getHeight()) - this.l, rect4.width() + width2 + (i5 * 2), (this.f9071for.top - this.f9082protected) + i5);
                int i6 = this.l;
                canvas.drawRoundRect(rectF3, i6, i6, this.f9060case);
            } else {
                Rect rect5 = this.f9071for;
                float f2 = rect5.left;
                int height = (rect5.top - this.f9082protected) - this.k.getHeight();
                int i7 = this.l;
                Rect rect6 = this.f9071for;
                RectF rectF4 = new RectF(f2, height - i7, rect6.right, (rect6.top - this.f9082protected) + i7);
                int i8 = this.l;
                canvas.drawRoundRect(rectF4, i8, i8, this.f9060case);
            }
        }
        canvas.save();
        if (this.f9093transient) {
            canvas.translate(0.0f, (this.f9071for.top - this.f9082protected) - this.k.getHeight());
        } else {
            Rect rect7 = this.f9071for;
            canvas.translate(rect7.left + this.l, (rect7.top - this.f9082protected) - this.k.getHeight());
        }
        this.k.draw(canvas);
        canvas.restore();
    }

    /* renamed from: for, reason: not valid java name */
    private void m10835for(Canvas canvas) {
        if (this.f9085static > 0) {
            this.f9060case.setStyle(Paint.Style.STROKE);
            this.f9060case.setColor(this.f9088switch);
            this.f9060case.setStrokeWidth(this.f9085static);
            canvas.drawRect(this.f9071for, this.f9060case);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m10836if() {
        int width = (getWidth() - this.f9062class) / 2;
        int i = this.f9087super;
        this.f9071for = new Rect(width, i, this.f9062class + width, this.f9063const + i);
        if (this.f9080package) {
            float f = r1.left + this.j + 0.5f;
            this.f9094try = f;
            this.e = f;
        } else {
            float f2 = r1.top + this.j + 0.5f;
            this.f9079new = f2;
            this.d = f2;
        }
        if (this.p == null || !m10842class()) {
            return;
        }
        this.p.m10816import(new Rect(this.f9071for));
    }

    /* renamed from: new, reason: not valid java name */
    private void m10837new(Canvas canvas) {
        if (this.j > 0.0f) {
            this.f9060case.setStyle(Paint.Style.STROKE);
            this.f9060case.setColor(this.f9090this);
            this.f9060case.setStrokeWidth(this.f9061catch);
            int i = this.f9068extends;
            if (i == 1) {
                Rect rect = this.f9071for;
                int i2 = rect.left;
                float f = this.j;
                int i3 = rect.top;
                canvas.drawLine(i2 - f, i3, (i2 - f) + this.f9059break, i3, this.f9060case);
                Rect rect2 = this.f9071for;
                int i4 = rect2.left;
                int i5 = rect2.top;
                float f2 = this.j;
                canvas.drawLine(i4, i5 - f2, i4, (i5 - f2) + this.f9059break, this.f9060case);
                Rect rect3 = this.f9071for;
                int i6 = rect3.right;
                float f3 = this.j;
                int i7 = rect3.top;
                canvas.drawLine(i6 + f3, i7, (i6 + f3) - this.f9059break, i7, this.f9060case);
                Rect rect4 = this.f9071for;
                int i8 = rect4.right;
                int i9 = rect4.top;
                float f4 = this.j;
                canvas.drawLine(i8, i9 - f4, i8, (i9 - f4) + this.f9059break, this.f9060case);
                Rect rect5 = this.f9071for;
                int i10 = rect5.left;
                float f5 = this.j;
                int i11 = rect5.bottom;
                canvas.drawLine(i10 - f5, i11, (i10 - f5) + this.f9059break, i11, this.f9060case);
                Rect rect6 = this.f9071for;
                int i12 = rect6.left;
                int i13 = rect6.bottom;
                float f6 = this.j;
                canvas.drawLine(i12, i13 + f6, i12, (i13 + f6) - this.f9059break, this.f9060case);
                Rect rect7 = this.f9071for;
                int i14 = rect7.right;
                float f7 = this.j;
                int i15 = rect7.bottom;
                canvas.drawLine(i14 + f7, i15, (i14 + f7) - this.f9059break, i15, this.f9060case);
                Rect rect8 = this.f9071for;
                int i16 = rect8.right;
                int i17 = rect8.bottom;
                float f8 = this.j;
                canvas.drawLine(i16, i17 + f8, i16, (i17 + f8) - this.f9059break, this.f9060case);
                return;
            }
            if (i == 2) {
                Rect rect9 = this.f9071for;
                int i18 = rect9.left;
                int i19 = rect9.top;
                float f9 = this.j;
                canvas.drawLine(i18, i19 + f9, i18 + this.f9059break, i19 + f9, this.f9060case);
                Rect rect10 = this.f9071for;
                int i20 = rect10.left;
                float f10 = this.j;
                canvas.drawLine(i20 + f10, rect10.top, i20 + f10, r0 + this.f9059break, this.f9060case);
                Rect rect11 = this.f9071for;
                int i21 = rect11.right;
                int i22 = rect11.top;
                float f11 = this.j;
                canvas.drawLine(i21, i22 + f11, i21 - this.f9059break, i22 + f11, this.f9060case);
                Rect rect12 = this.f9071for;
                int i23 = rect12.right;
                float f12 = this.j;
                canvas.drawLine(i23 - f12, rect12.top, i23 - f12, r0 + this.f9059break, this.f9060case);
                Rect rect13 = this.f9071for;
                int i24 = rect13.left;
                int i25 = rect13.bottom;
                float f13 = this.j;
                canvas.drawLine(i24, i25 - f13, i24 + this.f9059break, i25 - f13, this.f9060case);
                Rect rect14 = this.f9071for;
                int i26 = rect14.left;
                float f14 = this.j;
                canvas.drawLine(i26 + f14, rect14.bottom, i26 + f14, r0 - this.f9059break, this.f9060case);
                Rect rect15 = this.f9071for;
                int i27 = rect15.right;
                int i28 = rect15.bottom;
                float f15 = this.j;
                canvas.drawLine(i27, i28 - f15, i27 - this.f9059break, i28 - f15, this.f9060case);
                Rect rect16 = this.f9071for;
                int i29 = rect16.right;
                float f16 = this.j;
                canvas.drawLine(i29 - f16, rect16.bottom, i29 - f16, r0 - this.f9059break, this.f9060case);
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    private void m10838public() {
        if (this.f9080package) {
            if (this.c == null) {
                this.f9094try += this.f9066do;
                int width = this.f9091throw;
                Bitmap bitmap = this.f9084return;
                if (bitmap != null) {
                    width = bitmap.getWidth();
                }
                if (this.f9089synchronized) {
                    float f = this.f9094try;
                    float f2 = width + f;
                    float f3 = this.f9071for.right;
                    float f4 = this.j;
                    if (f2 > f3 - f4 || f < r2.left + f4) {
                        this.f9066do = -this.f9066do;
                    }
                } else {
                    float f5 = this.f9094try + width;
                    float f6 = this.f9071for.right;
                    float f7 = this.j;
                    if (f5 > f6 - f7) {
                        this.f9094try = r0.left + f7 + 0.5f;
                    }
                }
            } else {
                float f8 = this.e + this.f9066do;
                this.e = f8;
                float f9 = this.f9071for.right;
                float f10 = this.j;
                if (f8 > f9 - f10) {
                    this.e = r2.left + f10 + 0.5f;
                }
            }
        } else if (this.c == null) {
            this.f9079new += this.f9066do;
            int height = this.f9091throw;
            Bitmap bitmap2 = this.f9084return;
            if (bitmap2 != null) {
                height = bitmap2.getHeight();
            }
            if (this.f9089synchronized) {
                float f11 = this.f9079new;
                float f12 = height + f11;
                float f13 = this.f9071for.bottom;
                float f14 = this.j;
                if (f12 > f13 - f14 || f11 < r2.top + f14) {
                    this.f9066do = -this.f9066do;
                }
            } else {
                float f15 = this.f9079new + height;
                float f16 = this.f9071for.bottom;
                float f17 = this.j;
                if (f15 > f16 - f17) {
                    this.f9079new = r0.top + f17 + 0.5f;
                }
            }
        } else {
            float f18 = this.d + this.f9066do;
            this.d = f18;
            float f19 = this.f9071for.bottom;
            float f20 = this.j;
            if (f18 > f19 - f20) {
                this.d = r2.top + f20 + 0.5f;
            }
        }
        long j = this.f9073if;
        Rect rect = this.f9071for;
        postInvalidateDelayed(j, rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: return, reason: not valid java name */
    private void m10839return() {
        if (this.b != null || this.a) {
            if (this.f9080package) {
                this.c = this.i;
            } else {
                this.c = this.h;
            }
        } else if (this.f9083public != null || this.f9078native) {
            if (this.f9080package) {
                this.f9084return = this.g;
            } else {
                this.f9084return = this.f;
            }
        }
        if (this.f9080package) {
            this.f9064continue = this.f9058abstract;
            this.f9063const = this.f9069final;
            this.f9073if = (int) (((this.f9092throws * 1.0f) * this.f9066do) / this.f9062class);
        } else {
            this.f9064continue = this.f9081private;
            int i = this.f9062class;
            this.f9063const = i;
            this.f9073if = (int) (((this.f9092throws * 1.0f) * this.f9066do) / i);
        }
        if (!TextUtils.isEmpty(this.f9064continue)) {
            if (this.f9093transient) {
                this.k = new StaticLayout(this.f9064continue, this.f9067else, p6.m5880break(getContext()).x, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
            } else {
                this.k = new StaticLayout(this.f9064continue, this.f9067else, this.f9062class - (this.l * 2), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, true);
            }
        }
        if (this.f9065default != -1.0f) {
            int iM5882catch = p6.m5880break(getContext()).y - p6.m5882catch(getContext());
            int i2 = this.f9070finally;
            if (i2 == 0) {
                this.f9087super = (int) ((iM5882catch * this.f9065default) - (this.f9063const / 2));
            } else {
                this.f9087super = i2 + ((int) (((iM5882catch - i2) * this.f9065default) - (this.f9063const / 2)));
            }
        }
        m10836if();
        postInvalidate();
    }

    /* renamed from: try, reason: not valid java name */
    private void m10840try(Canvas canvas) {
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.f9072goto != 0) {
            this.f9060case.setStyle(Paint.Style.FILL);
            this.f9060case.setColor(this.f9072goto);
            float f = width;
            canvas.drawRect(0.0f, 0.0f, f, this.f9071for.top, this.f9060case);
            Rect rect = this.f9071for;
            canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, this.f9060case);
            Rect rect2 = this.f9071for;
            canvas.drawRect(rect2.right + 1, rect2.top, f, rect2.bottom + 1, this.f9060case);
            canvas.drawRect(0.0f, this.f9071for.bottom + 1, f, height, this.f9060case);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m10841catch() {
        return this.o;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m10842class() {
        return this.m;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m10843const() {
        return this.f9089synchronized;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m10844final() {
        return this.a;
    }

    public int getAnimTime() {
        return this.f9092throws;
    }

    public String getBarCodeTipText() {
        return this.f9058abstract;
    }

    public int getBarcodeRectHeight() {
        return this.f9069final;
    }

    public int getBorderColor() {
        return this.f9088switch;
    }

    public int getBorderSize() {
        return this.f9085static;
    }

    public int getCornerColor() {
        return this.f9090this;
    }

    public int getCornerLength() {
        return this.f9059break;
    }

    public int getCornerSize() {
        return this.f9061catch;
    }

    public Drawable getCustomScanLineDrawable() {
        return this.f9083public;
    }

    public float getHalfCornerSize() {
        return this.j;
    }

    public boolean getIsBarcode() {
        return this.f9080package;
    }

    public int getMaskColor() {
        return this.f9072goto;
    }

    public String getQRCodeTipText() {
        return this.f9081private;
    }

    public int getRectHeight() {
        return this.f9063const;
    }

    public int getRectWidth() {
        return this.f9062class;
    }

    public Bitmap getScanLineBitmap() {
        return this.f9084return;
    }

    public int getScanLineColor() {
        return this.f9096while;
    }

    public int getScanLineMargin() {
        return this.f9075import;
    }

    public int getScanLineSize() {
        return this.f9091throw;
    }

    public int getTipBackgroundColor() {
        return this.f9074implements;
    }

    public int getTipBackgroundRadius() {
        return this.l;
    }

    public String getTipText() {
        return this.f9064continue;
    }

    public int getTipTextColor() {
        return this.f9095volatile;
    }

    public int getTipTextMargin() {
        return this.f9082protected;
    }

    public int getTipTextSize() {
        return this.f9086strictfp;
    }

    public StaticLayout getTipTextSl() {
        return this.k;
    }

    public int getToolbarHeight() {
        return this.f9070finally;
    }

    public int getTopOffset() {
        return this.f9087super;
    }

    public float getVerticalBias() {
        return this.f9065default;
    }

    /* renamed from: goto, reason: not valid java name */
    public Rect m10845goto(int i) {
        if (!this.m || getVisibility() != 0) {
            return null;
        }
        Rect rect = new Rect(this.f9071for);
        float measuredHeight = (i * 1.0f) / getMeasuredHeight();
        float fExactCenterX = rect.exactCenterX();
        float fExactCenterY = rect.exactCenterY();
        float fWidth = (rect.width() / 2.0f) * measuredHeight;
        float fHeight = (rect.height() / 2.0f) * measuredHeight;
        rect.left = (int) (fExactCenterX - fWidth);
        rect.right = (int) (fExactCenterX + fWidth);
        rect.top = (int) (fExactCenterY - fHeight);
        rect.bottom = (int) (fExactCenterY + fHeight);
        return rect;
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m10846import() {
        return this.f9093transient;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m10847native() {
        return this.f9077interface;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f9071for == null) {
            return;
        }
        m10840try(canvas);
        m10835for(canvas);
        m10837new(canvas);
        m10832case(canvas);
        m10834else(canvas);
        m10838public();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m10836if();
    }

    public void setAnimTime(int i) {
        this.f9092throws = i;
        m10839return();
    }

    public void setAutoZoom(boolean z) {
        this.o = z;
    }

    public void setBarCodeTipText(String str) {
        this.f9058abstract = str;
        m10839return();
    }

    public void setBarcodeRectHeight(int i) {
        this.f9069final = i;
        m10839return();
    }

    public void setBorderColor(int i) {
        this.f9088switch = i;
        m10839return();
    }

    public void setBorderSize(int i) {
        this.f9085static = i;
        m10839return();
    }

    public void setCornerColor(int i) {
        this.f9090this = i;
        m10839return();
    }

    public void setCornerLength(int i) {
        this.f9059break = i;
        m10839return();
    }

    public void setCornerSize(int i) {
        this.f9061catch = i;
        m10839return();
    }

    public void setCustomScanLineDrawable(Drawable drawable) {
        this.f9083public = drawable;
        m10839return();
    }

    public void setHalfCornerSize(float f) {
        this.j = f;
        m10839return();
    }

    public void setIsBarcode(boolean z) {
        this.f9080package = z;
        m10839return();
    }

    public void setMaskColor(int i) {
        this.f9072goto = i;
        m10839return();
    }

    public void setOnlyDecodeScanBoxArea(boolean z) {
        this.m = z;
        m10836if();
    }

    public void setQRCodeTipText(String str) {
        this.f9081private = str;
        m10839return();
    }

    public void setRectHeight(int i) {
        this.f9063const = i;
        m10839return();
    }

    public void setRectWidth(int i) {
        this.f9062class = i;
        m10839return();
    }

    public void setScanLineBitmap(Bitmap bitmap) {
        this.f9084return = bitmap;
        m10839return();
    }

    public void setScanLineColor(int i) {
        this.f9096while = i;
        m10839return();
    }

    public void setScanLineMargin(int i) {
        this.f9075import = i;
        m10839return();
    }

    public void setScanLineReverse(boolean z) {
        this.f9089synchronized = z;
        m10839return();
    }

    public void setScanLineSize(int i) {
        this.f9091throw = i;
        m10839return();
    }

    public void setShowDefaultGridScanLineDrawable(boolean z) {
        this.a = z;
        m10839return();
    }

    public void setShowDefaultScanLineDrawable(boolean z) {
        this.f9078native = z;
        m10839return();
    }

    public void setShowLocationPoint(boolean z) {
        this.n = z;
    }

    public void setShowTipBackground(boolean z) {
        this.f9076instanceof = z;
        m10839return();
    }

    public void setShowTipTextAsSingleLine(boolean z) {
        this.f9093transient = z;
        m10839return();
    }

    public void setTipBackgroundColor(int i) {
        this.f9074implements = i;
        m10839return();
    }

    public void setTipBackgroundRadius(int i) {
        this.l = i;
        m10839return();
    }

    public void setTipText(String str) {
        if (this.f9080package) {
            this.f9058abstract = str;
        } else {
            this.f9081private = str;
        }
        m10839return();
    }

    public void setTipTextBelowRect(boolean z) {
        this.f9077interface = z;
        m10839return();
    }

    public void setTipTextColor(int i) {
        this.f9095volatile = i;
        this.f9067else.setColor(i);
        m10839return();
    }

    public void setTipTextMargin(int i) {
        this.f9082protected = i;
        m10839return();
    }

    public void setTipTextSize(int i) {
        this.f9086strictfp = i;
        this.f9067else.setTextSize(i);
        m10839return();
    }

    public void setTipTextSl(StaticLayout staticLayout) {
        this.k = staticLayout;
        m10839return();
    }

    public void setToolbarHeight(int i) {
        this.f9070finally = i;
        m10839return();
    }

    public void setTopOffset(int i) {
        this.f9087super = i;
        m10839return();
    }

    public void setVerticalBias(float f) {
        this.f9065default = f;
        m10839return();
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m10848super() {
        return this.f9078native;
    }

    /* renamed from: this, reason: not valid java name */
    public void m10849this(QRCodeView qRCodeView, AttributeSet attributeSet) {
        this.p = qRCodeView;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.QRCodeView);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            m10831break(typedArrayObtainStyledAttributes.getIndex(i), typedArrayObtainStyledAttributes);
        }
        typedArrayObtainStyledAttributes.recycle();
        m10833do();
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m10850throw() {
        return this.n;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m10851while() {
        return this.f9076instanceof;
    }
}
