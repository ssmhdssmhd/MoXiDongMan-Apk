package com.scwang.smartrefresh.header.internal.pathview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.support.v4.nb1;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.scwang.smartrefresh.header.internal.pathview.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif extends nb1 {

    /* renamed from: final, reason: not valid java name */
    public static final Region f20403final = new Region();

    /* renamed from: super, reason: not valid java name */
    public static final Region f20404super = new Region(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);

    /* renamed from: break, reason: not valid java name */
    public List<Path> f20405break;

    /* renamed from: case, reason: not valid java name */
    public int f20406case;

    /* renamed from: catch, reason: not valid java name */
    public List<String> f20407catch;

    /* renamed from: class, reason: not valid java name */
    private Bitmap f20408class;

    /* renamed from: const, reason: not valid java name */
    private boolean f20409const;

    /* renamed from: else, reason: not valid java name */
    public int f20410else;

    /* renamed from: goto, reason: not valid java name */
    public List<Path> f20412goto;

    /* renamed from: this, reason: not valid java name */
    public List<Integer> f20415this;

    /* renamed from: if, reason: not valid java name */
    public int f20413if = 1;

    /* renamed from: for, reason: not valid java name */
    public int f20411for = 1;

    /* renamed from: new, reason: not valid java name */
    public int f20414new = 0;

    /* renamed from: try, reason: not valid java name */
    public int f20416try = 0;

    /* renamed from: if, reason: not valid java name */
    private void m24391if(int i, int i2) {
        Bitmap bitmap = this.f20408class;
        if (bitmap != null && i == bitmap.getWidth() && i2 == this.f20408class.getHeight()) {
            return;
        }
        this.f20408class = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        this.f20409const = true;
    }

    /* renamed from: new, reason: not valid java name */
    private void m24392new(Canvas canvas) {
        canvas.translate(-this.f20414new, -this.f20416try);
        if (this.f20412goto != null) {
            for (int i = 0; i < this.f20412goto.size(); i++) {
                List<Integer> list = this.f20415this;
                if (list != null && i < list.size()) {
                    this.f4163do.setColor(this.f20415this.get(i).intValue());
                }
                canvas.drawPath(this.f20412goto.get(i), this.f4163do);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m24393case(int... iArr) {
        this.f20415this = new ArrayList();
        for (int i : iArr) {
            this.f20415this.add(Integer.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        if (this.f4163do.getAlpha() != 255) {
            m24391if(iWidth, iHeight);
            if (this.f20409const) {
                this.f20408class.eraseColor(0);
                m24392new(new Canvas(this.f20408class));
                this.f20409const = false;
            }
            canvas.drawBitmap(this.f20408class, bounds.left, bounds.top, this.f4163do);
            return;
        }
        canvas.save();
        canvas.translate(bounds.left - this.f20414new, bounds.top - this.f20416try);
        if (this.f20412goto != null) {
            for (int i = 0; i < this.f20412goto.size(); i++) {
                List<Integer> list = this.f20415this;
                if (list != null && i < list.size()) {
                    this.f4163do.setColor(this.f20415this.get(i).intValue());
                }
                canvas.drawPath(this.f20412goto.get(i), this.f4163do);
            }
            this.f4163do.setAlpha(255);
        }
        canvas.restore();
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m24394else(String... strArr) {
        this.f20410else = 0;
        this.f20406case = 0;
        this.f20407catch = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.f20405break = arrayList;
        this.f20412goto = arrayList;
        for (String str : strArr) {
            this.f20407catch.add(str);
            this.f20405break.add(Cdo.m24384new(str));
        }
        return m24398try();
    }

    /* renamed from: for, reason: not valid java name */
    public void m24395for(int i, int i2, int i3, int i4) {
        this.f20414new = i;
        this.f20416try = i2;
        this.f20413if = i3;
        this.f20406case = i3;
        this.f20411for = i4;
        this.f20410else = i4;
        Rect bounds = getBounds();
        int i5 = bounds.left;
        int i6 = bounds.top;
        super.setBounds(i5, i6, i3 + i5, i4 + i6);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m24396goto(int i) {
        Rect bounds = getBounds();
        float fHeight = (i * 1.0f) / bounds.height();
        setBounds((int) (bounds.left * fHeight), (int) (bounds.top * fHeight), (int) (bounds.right * fHeight), (int) (bounds.bottom * fHeight));
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        List<Path> list = this.f20405break;
        if (list == null || list.size() <= 0 || (i5 == this.f20413if && i6 == this.f20411for)) {
            super.setBounds(i, i2, i3, i4);
            return;
        }
        int i7 = this.f20414new;
        int i8 = this.f20416try;
        float f = i5;
        float f2 = i6;
        this.f20412goto = Cdo.m24382goto((f * 1.0f) / this.f20406case, (f2 * 1.0f) / this.f20410else, this.f20405break, this.f20407catch);
        if (m24398try()) {
            return;
        }
        this.f20413if = i5;
        this.f20411for = i6;
        this.f20414new = (int) (((i7 * 1.0f) * f) / this.f20406case);
        this.f20416try = (int) (((i8 * 1.0f) * f2) / this.f20410else);
        super.setBounds(i, i2, i3, i4);
    }

    /* renamed from: this, reason: not valid java name */
    public void m24397this(int i) {
        Rect bounds = getBounds();
        float fWidth = (i * 1.0f) / bounds.width();
        setBounds((int) (bounds.left * fWidth), (int) (bounds.top * fWidth), (int) (bounds.right * fWidth), (int) (bounds.bottom * fWidth));
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m24398try() {
        Integer num;
        Integer numValueOf;
        Integer numValueOf2;
        int i;
        List<Path> list = this.f20412goto;
        Integer numValueOf3 = null;
        if (list != null) {
            Integer numValueOf4 = null;
            numValueOf = null;
            numValueOf2 = null;
            for (Path path : list) {
                Region region = f20403final;
                region.setPath(path, f20404super);
                Rect bounds = region.getBounds();
                numValueOf3 = Integer.valueOf(Math.min(numValueOf3 == null ? bounds.top : numValueOf3.intValue(), bounds.top));
                numValueOf4 = Integer.valueOf(Math.min(numValueOf4 == null ? bounds.left : numValueOf4.intValue(), bounds.left));
                numValueOf = Integer.valueOf(Math.max(numValueOf == null ? bounds.right : numValueOf.intValue(), bounds.right));
                numValueOf2 = Integer.valueOf(Math.max(numValueOf2 == null ? bounds.bottom : numValueOf2.intValue(), bounds.bottom));
            }
            num = numValueOf3;
            numValueOf3 = numValueOf4;
        } else {
            num = null;
            numValueOf = null;
            numValueOf2 = null;
        }
        this.f20414new = numValueOf3 == null ? 0 : numValueOf3.intValue();
        this.f20416try = num == null ? 0 : num.intValue();
        this.f20413if = numValueOf == null ? 0 : numValueOf.intValue() - this.f20414new;
        int iIntValue = numValueOf2 == null ? 0 : numValueOf2.intValue() - this.f20416try;
        this.f20411for = iIntValue;
        if (this.f20406case == 0) {
            this.f20406case = this.f20413if;
        }
        if (this.f20410else == 0) {
            this.f20410else = iIntValue;
        }
        Rect bounds2 = getBounds();
        int i2 = this.f20413if;
        if (i2 != 0 && (i = this.f20411for) != 0) {
            int i3 = bounds2.left;
            int i4 = bounds2.top;
            super.setBounds(i3, i4, i2 + i3, i + i4);
            return true;
        }
        if (this.f20406case == 0) {
            this.f20406case = 1;
        }
        if (this.f20410else == 0) {
            this.f20410else = 1;
        }
        this.f20411for = 1;
        this.f20413if = 1;
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(@NonNull Rect rect) {
        setBounds(rect.left, rect.top, rect.right, rect.bottom);
    }
}
