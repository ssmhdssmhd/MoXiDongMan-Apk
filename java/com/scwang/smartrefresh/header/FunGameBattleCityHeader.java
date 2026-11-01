package com.scwang.smartrefresh.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.RectF;
import android.support.v4.i02;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.header.fungame.FunGameView;
import com.scwang.smartrefresh.layout.api.RefreshKernel;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Random;

/* loaded from: classes2.dex */
public class FunGameBattleCityHeader extends FunGameView {
    public static int s = 3;
    public static final float t = 0.33333334f;
    public static final int u = 360;
    public static final int v = 60;
    public static final int w = 8;
    public SparseArray<Queue<RectF>> c;
    public Queue<Point> d;
    public Point e;
    public Random f;
    public float g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public boolean r;

    public FunGameBattleCityHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    /* renamed from: break, reason: not valid java name */
    public void mo24291break() {
        this.f20310abstract = 0;
        this.f20319package = this.f20314final;
        this.k = i02.m3194new(1.0f);
        this.l = i02.m3194new(4.0f);
        this.p = 8;
        this.q = 0;
        this.r = true;
        this.h = this.f20320private + this.j + 60;
        this.i = u;
        this.c = new SparseArray<>();
        for (int i = 0; i < s; i++) {
            this.c.put(i, new LinkedList());
        }
        this.d = new LinkedList();
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView
    /* renamed from: case, reason: not valid java name */
    public void mo24292case(Canvas canvas, int i, int i2) {
        m24303while(canvas, i);
        int i3 = this.f20310abstract;
        if (i3 == 1 || i3 == 3 || i3 == 4) {
            m24302throw(canvas, i);
            m24301super(canvas, i);
        }
        if (isInEditMode()) {
            int i4 = this.f20320private;
            m24297import(canvas, new RectF(i4, 0.0f, i4 * 2, i4));
            int i5 = this.f20320private;
            m24297import(canvas, new RectF(0.0f, i5, i5, i5 * 2));
            int i6 = this.f20320private;
            m24297import(canvas, new RectF(i6 * 3, i6 * 2, i6 * 4, i6 * 3));
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public int m24293catch() {
        return this.f.nextInt(s);
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m24294class(int i, float f, float f2) {
        RectF rectFPeek = this.c.get(i).peek();
        return rectFPeek != null && rectFPeek.contains(f, f2);
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m24295const(Point point) {
        int iM24299public = m24299public(point.y);
        RectF rectFPeek = this.c.get(iM24299public).peek();
        if (rectFPeek == null || !rectFPeek.contains(point.x, point.y)) {
            return false;
        }
        int i = this.q + 1;
        this.q = i;
        if (i == this.p) {
            m24300return();
        }
        this.c.get(iM24299public).poll();
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public void m24296final(Canvas canvas, Point point) {
        int i = point.x - this.l;
        point.x = i;
        canvas.drawCircle(i, point.y, this.g, this.f20313extends);
    }

    /* renamed from: import, reason: not valid java name */
    public void m24297import(Canvas canvas, RectF rectF) {
        float f = rectF.left;
        int i = this.k;
        rectF.set(f + i, rectF.top, rectF.right + i, rectF.bottom);
        canvas.drawRect(rectF, this.f20313extends);
        float f2 = rectF.top;
        int i2 = this.f20320private;
        int i3 = this.j;
        float f3 = f2 + ((i2 - i3) * 0.5f);
        float f4 = rectF.right;
        canvas.drawRect(f4, f3, f4 + i3, f3 + i3, this.f20313extends);
    }

    /* renamed from: native, reason: not valid java name */
    public RectF m24298native(int i) {
        float f = -(this.j + this.f20320private);
        float f2 = (i * r0) + this.f20314final;
        return new RectF(f, f2, (this.j * 2.5f) + f, this.f20320private + f2);
    }

    @Override // com.scwang.smartrefresh.header.fungame.FunGameView, com.scwang.smartrefresh.header.fungame.FunGameBase, com.scwang.smartrefresh.layout.internal.InternalAbstract, com.scwang.smartrefresh.layout.api.RefreshInternal
    public void onInitialized(@NonNull RefreshKernel refreshKernel, int i, int i2) {
        this.f20320private = i / s;
        int iFloor = (int) Math.floor((r0 * 0.33333334f) + 0.5f);
        this.j = iFloor;
        this.g = (iFloor - (this.f20314final * 2.0f)) * 0.5f;
        super.onInitialized(refreshKernel, i, i2);
    }

    /* renamed from: public, reason: not valid java name */
    public int m24299public(int i) {
        int i2 = this.f20305try;
        int i3 = s;
        int i4 = i / (i2 / i3);
        if (i4 >= i3) {
            i4 = i3 - 1;
        }
        if (i4 < 0) {
            return 0;
        }
        return i4;
    }

    /* renamed from: return, reason: not valid java name */
    public void m24300return() {
        this.p += 8;
        this.k += i02.m3194new(1.0f);
        this.l += i02.m3194new(1.0f);
        this.q = 0;
        int i = this.h;
        if (i > 12) {
            this.h = i - 12;
        }
        int i2 = this.i;
        if (i2 > 30) {
            this.i = i2 - 30;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m24301super(Canvas canvas, int i) {
        this.f20313extends.setColor(this.f20330volatile);
        int i2 = this.n + this.l;
        this.n = i2;
        boolean z = false;
        if (i2 / this.i == 1) {
            this.n = 0;
        }
        if (this.n == 0) {
            Point point = new Point();
            int i3 = this.f20320private;
            point.x = (i - i3) - this.j;
            point.y = (int) (this.f20319package + (i3 * 0.5f));
            this.d.offer(point);
        }
        for (Point point2 : this.d) {
            if (m24295const(point2)) {
                this.e = point2;
            } else {
                if (point2.x + this.g <= 0.0f) {
                    z = true;
                }
                m24296final(canvas, point2);
            }
        }
        if (z) {
            this.d.poll();
        }
        this.d.remove(this.e);
        this.e = null;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m24302throw(Canvas canvas, int i) {
        this.f20313extends.setColor(this.f20311continue);
        int i2 = this.m + this.k;
        this.m = i2;
        if (i2 / this.h == 1 || this.r) {
            this.m = 0;
            this.r = false;
        }
        int iM24293catch = m24293catch();
        boolean z = false;
        for (int i3 = 0; i3 < s; i3++) {
            Queue<RectF> queue = this.c.get(i3);
            if (this.m == 0 && i3 == iM24293catch) {
                queue.offer(m24298native(i3));
            }
            Iterator<RectF> it = queue.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                RectF next = it.next();
                if (next.left >= i) {
                    int i4 = this.o + 1;
                    this.o = i4;
                    if (i4 >= 8) {
                        this.f20310abstract = 2;
                        z = true;
                        break;
                    }
                    z = true;
                } else {
                    m24297import(canvas, next);
                }
            }
            if (this.f20310abstract == 2) {
                break;
            }
            if (z) {
                queue.poll();
                z = false;
            }
        }
        invalidate();
    }

    /* renamed from: while, reason: not valid java name */
    public void m24303while(Canvas canvas, int i) {
        this.f20313extends.setColor(this.f20325strictfp);
        boolean zM24294class = m24294class(m24299public((int) this.f20319package), i - this.f20320private, this.f20319package);
        boolean zM24294class2 = m24294class(m24299public((int) (this.f20319package + this.f20320private)), i - r2, this.f20319package + this.f20320private);
        if (zM24294class || zM24294class2) {
            this.f20310abstract = 2;
        }
        int i2 = this.f20320private;
        float f = this.f20319package;
        float f2 = this.f20314final;
        canvas.drawRect(i - i2, f + f2, i, f + i2 + f2, this.f20313extends);
        int i3 = this.f20320private;
        int i4 = this.j;
        float f3 = this.f20319package;
        canvas.drawRect((i - i3) - i4, f3 + ((i3 - i4) * 0.5f), i - i3, f3 + ((i3 - i4) * 0.5f) + i4, this.f20313extends);
    }

    public FunGameBattleCityHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.k = 1;
        this.l = 4;
        this.r = true;
        this.f = new Random();
    }
}
