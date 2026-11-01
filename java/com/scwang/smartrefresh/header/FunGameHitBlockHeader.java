package com.scwang.smartrefresh.header;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.support.v4.i02;
import android.support.v4.oc;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.scwang.smartrefresh.header.fungame.FunGameView;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class FunGameHitBlockHeader extends FunGameView {
    public static final int p = 5;
    public static final int q = 3;
    public static final float r = 0.01806f;
    public static final float s = 0.8f;
    public static final float t = 0.08f;
    public static final int u = 30;
    public static final float v = 1.0f;
    public static final int w = 3;
    public float c;
    public float d;
    public float e;
    public Paint f;
    public float g;
    public float h;
    public float i;
    public float j;
    public List<Point> k;
    public boolean l;
    public int m;
    public int n;
    public int o;

    public FunGameHitBlockHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    /* renamed from: break */
    public void mo24291break() {
        this.i = this.h - (this.e * 3.0f);
        this.j = (int) (this.f20305try * 0.5f);
        this.f20319package = 1.0f;
        this.m = 30;
        this.l = true;
        List<Point> list = this.k;
        if (list == null) {
            this.k = new ArrayList();
        } else {
            list.clear();
        }
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    /* renamed from: case */
    public void mo24292case(Canvas canvas, int i, int i2) {
        m24307final(canvas);
        m24308super(canvas);
        int i3 = this.f20310abstract;
        if (i3 == 1 || i3 == 3 || i3 == 4 || isInEditMode()) {
            m24306const(canvas, i);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m24304catch(float f, float f2) {
        int i = (int) ((((f - this.g) - this.e) - this.o) / this.d);
        if (i == this.n) {
            i--;
        }
        int i2 = (int) (f2 / this.c);
        if (i2 == 5) {
            i2--;
        }
        Point point = new Point();
        point.set(i, i2);
        boolean z = false;
        Iterator<Point> it = this.k.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (it.next().equals(point.x, point.y)) {
                z = true;
                break;
            }
        }
        if (!z) {
            this.k.add(point);
        }
        return !z;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m24305class(float f) {
        float f2 = f - this.f20319package;
        return f2 >= 0.0f && f2 <= ((float) this.f20320private);
    }

    /* renamed from: const, reason: not valid java name */
    public void m24306const(Canvas canvas, int i) {
        this.f20313extends.setColor(this.f20330volatile);
        float f = this.i;
        if (f <= this.g + (this.n * this.d) + ((r2 - 1) * 1.0f) + this.e && m24304catch(f, this.j)) {
            this.l = false;
        }
        float f2 = this.i;
        float f3 = this.g;
        float f4 = this.e;
        if (f2 <= f3 + f4) {
            this.l = false;
        }
        float f5 = f2 + f4;
        float f6 = this.h;
        if (f5 < f6 || f2 - f4 >= f6 + this.d) {
            if (f2 > i) {
                this.f20310abstract = 2;
            }
        } else if (m24305class(this.j)) {
            if (this.k.size() == this.n * 5) {
                this.f20310abstract = 2;
                return;
            }
            this.l = true;
        }
        float f7 = this.j;
        float f8 = this.e;
        if (f7 <= f8 + 1.0f) {
            this.m = 150;
        } else if (f7 >= (this.f20305try - f8) - 1.0f) {
            this.m = oc.f4541try;
        }
        if (this.l) {
            this.i -= this.o;
        } else {
            this.i += this.o;
        }
        float fTan = f7 - (((float) Math.tan(Math.toRadians(this.m))) * this.o);
        this.j = fTan;
        canvas.drawCircle(this.i, fTan, this.e, this.f20313extends);
        invalidate();
    }

    /* renamed from: final, reason: not valid java name */
    public void m24307final(Canvas canvas) {
        boolean z;
        int i = 0;
        while (true) {
            int i2 = this.n;
            if (i >= i2 * 5) {
                return;
            }
            int i3 = i / i2;
            int i4 = i % i2;
            Iterator<Point> it = this.k.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().equals(i4, i3)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                this.f.setColor(ColorUtils.setAlphaComponent(this.f20311continue, 255 / (i4 + 1)));
                float f = this.g;
                float f2 = this.d;
                float f3 = f + (i4 * (f2 + 1.0f));
                float f4 = i3;
                float f5 = this.c;
                float f6 = (f4 * (f5 + 1.0f)) + 1.0f;
                canvas.drawRect(f3, f6, f3 + f2, f6 + f5, this.f);
            }
            i++;
        }
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView, com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        int measuredWidth = getMeasuredWidth();
        float f = ((i * 1.0f) / 5.0f) - 1.0f;
        this.c = f;
        float f2 = measuredWidth;
        this.d = 0.01806f * f2;
        this.g = 0.08f * f2;
        this.h = f2 * 0.8f;
        this.f20320private = (int) (f * 1.6f);
        super.onInitialized(refreshKernel, i, i2);
    }

    /* renamed from: super, reason: not valid java name */
    public void m24308super(Canvas canvas) {
        this.f20313extends.setColor(this.f20325strictfp);
        float f = this.h;
        float f2 = this.f20319package;
        canvas.drawRect(f, f2, f + this.d, f2 + this.f20320private, this.f20313extends);
    }

    public FunGameHitBlockHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FunGameHitBlockHeader);
        this.o = typedArrayObtainStyledAttributes.getInt(R.styleable.FunGameHitBlockHeader_fghBallSpeed, i02.m3194new(3.0f));
        this.n = typedArrayObtainStyledAttributes.getInt(R.styleable.FunGameHitBlockHeader_fghBlockHorizontalNum, 3);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.f = paint;
        paint.setStyle(Paint.Style.FILL);
        this.e = i02.m3194new(4.0f);
    }
}
