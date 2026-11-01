package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Ccase;

/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo implements LruPoolStrategy {

    /* renamed from: do, reason: not valid java name */
    private final Cif f9645do = new Cif();

    /* renamed from: if, reason: not valid java name */
    private final Cnew<C0026do, Bitmap> f9646if = new Cnew<>();

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0026do implements Poolable {

        /* renamed from: do, reason: not valid java name */
        private final Cif f9647do;

        /* renamed from: for, reason: not valid java name */
        private int f9648for;

        /* renamed from: if, reason: not valid java name */
        private int f9649if;

        /* renamed from: new, reason: not valid java name */
        private Bitmap.Config f9650new;

        public C0026do(Cif cif) {
            this.f9647do = cif;
        }

        /* renamed from: do, reason: not valid java name */
        public void m11393do(int i, int i2, Bitmap.Config config) {
            this.f9649if = i;
            this.f9648for = i2;
            this.f9650new = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0026do)) {
                return false;
            }
            C0026do c0026do = (C0026do) obj;
            return this.f9649if == c0026do.f9649if && this.f9648for == c0026do.f9648for && this.f9650new == c0026do.f9650new;
        }

        public int hashCode() {
            int i = ((this.f9649if * 31) + this.f9648for) * 31;
            Bitmap.Config config = this.f9650new;
            return i + (config != null ? config.hashCode() : 0);
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void offer() {
            this.f9647do.m11406for(this);
        }

        public String toString() {
            return Cdo.m11391do(this.f9649if, this.f9648for, this.f9650new);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.do$if, reason: invalid class name */
    public static class Cif extends com.bumptech.glide.load.engine.bitmap_recycle.Cif<C0026do> {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Cif
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public C0026do mo11388do() {
            return new C0026do(this);
        }

        /* renamed from: try, reason: not valid java name */
        public C0026do m11395try(int i, int i2, Bitmap.Config config) {
            C0026do c0026doM11407if = m11407if();
            c0026doM11407if.m11393do(i, i2, config);
            return c0026doM11407if;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m11391do(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    /* renamed from: if, reason: not valid java name */
    private static String m11392if(Bitmap bitmap) {
        return m11391do(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        return this.f9646if.m11413do(this.f9645do.m11395try(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int getSize(Bitmap bitmap) {
        return Ccase.m12047goto(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(Bitmap bitmap) {
        return m11392if(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void put(Bitmap bitmap) {
        this.f9646if.m11414new(this.f9645do.m11395try(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public Bitmap removeLast() {
        return this.f9646if.m11412case();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f9646if;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return m11391do(i, i2, config);
    }
}
