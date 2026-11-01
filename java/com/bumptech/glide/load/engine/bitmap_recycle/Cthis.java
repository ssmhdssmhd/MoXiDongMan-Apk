package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Ccase;
import java.util.NavigableMap;

@RequiresApi(19)
/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.this, reason: invalid class name */
/* loaded from: classes.dex */
final class Cthis implements LruPoolStrategy {

    /* renamed from: new, reason: not valid java name */
    private static final int f9673new = 8;

    /* renamed from: do, reason: not valid java name */
    private final Cif f9674do = new Cif();

    /* renamed from: if, reason: not valid java name */
    private final Cnew<Cdo, Bitmap> f9676if = new Cnew<>();

    /* renamed from: for, reason: not valid java name */
    private final NavigableMap<Integer, Integer> f9675for = new Celse();

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.this$do, reason: invalid class name */
    public static final class Cdo implements Poolable {

        /* renamed from: do, reason: not valid java name */
        private final Cif f9677do;

        /* renamed from: if, reason: not valid java name */
        public int f9678if;

        public Cdo(Cif cif) {
            this.f9677do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        public void m11421do(int i) {
            this.f9678if = i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Cdo) && this.f9678if == ((Cdo) obj).f9678if;
        }

        public int hashCode() {
            return this.f9678if;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void offer() {
            this.f9677do.m11406for(this);
        }

        public String toString() {
            return Cthis.m11420if(this.f9678if);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.this$if, reason: invalid class name */
    public static class Cif extends com.bumptech.glide.load.engine.bitmap_recycle.Cif<Cdo> {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Cif
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo mo11388do() {
            return new Cdo(this);
        }

        /* renamed from: try, reason: not valid java name */
        public Cdo m11423try(int i) {
            Cdo cdo = (Cdo) super.m11407if();
            cdo.m11421do(i);
            return cdo;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m11418do(Integer num) {
        Integer num2 = (Integer) this.f9675for.get(num);
        if (num2.intValue() == 1) {
            this.f9675for.remove(num);
        } else {
            this.f9675for.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static String m11419for(Bitmap bitmap) {
        return m11420if(Ccase.m12047goto(bitmap));
    }

    /* renamed from: if, reason: not valid java name */
    public static String m11420if(int i) {
        return "[" + i + "]";
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        int iM12044else = Ccase.m12044else(i, i2, config);
        Cdo cdoM11423try = this.f9674do.m11423try(iM12044else);
        Integer numCeilingKey = this.f9675for.ceilingKey(Integer.valueOf(iM12044else));
        if (numCeilingKey != null && numCeilingKey.intValue() != iM12044else && numCeilingKey.intValue() <= iM12044else * 8) {
            this.f9674do.m11406for(cdoM11423try);
            cdoM11423try = this.f9674do.m11423try(numCeilingKey.intValue());
        }
        Bitmap bitmapM11413do = this.f9676if.m11413do(cdoM11423try);
        if (bitmapM11413do != null) {
            bitmapM11413do.reconfigure(i, i2, config);
            m11418do(numCeilingKey);
        }
        return bitmapM11413do;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int getSize(Bitmap bitmap) {
        return Ccase.m12047goto(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(Bitmap bitmap) {
        return m11419for(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void put(Bitmap bitmap) {
        Cdo cdoM11423try = this.f9674do.m11423try(Ccase.m12047goto(bitmap));
        this.f9676if.m11414new(cdoM11423try, bitmap);
        Integer num = (Integer) this.f9675for.get(Integer.valueOf(cdoM11423try.f9678if));
        this.f9675for.put(Integer.valueOf(cdoM11423try.f9678if), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap removeLast() {
        Bitmap bitmapM11412case = this.f9676if.m11412case();
        if (bitmapM11412case != null) {
            m11418do(Integer.valueOf(Ccase.m12047goto(bitmapM11412case)));
        }
        return bitmapM11412case;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.f9676if + "\n  SortedSizes" + this.f9675for;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return m11420if(Ccase.m12044else(i, i2, config));
    }
}
