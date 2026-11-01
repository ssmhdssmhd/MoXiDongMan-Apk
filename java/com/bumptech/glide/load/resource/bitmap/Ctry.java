package com.bumptech.glide.load.resource.bitmap;

import android.os.Build;
import com.bumptech.glide.load.Option;

/* renamed from: com.bumptech.glide.load.resource.bitmap.try, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Ctry {

    /* renamed from: case, reason: not valid java name */
    public static final Ctry f10167case;

    /* renamed from: else, reason: not valid java name */
    public static final Ctry f10169else;

    /* renamed from: goto, reason: not valid java name */
    public static final Option<Ctry> f10171goto;

    /* renamed from: this, reason: not valid java name */
    public static final boolean f10174this;

    /* renamed from: try, reason: not valid java name */
    public static final Ctry f10175try;

    /* renamed from: do, reason: not valid java name */
    public static final Ctry f10168do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    public static final Ctry f10172if = new Cif();

    /* renamed from: for, reason: not valid java name */
    public static final Ctry f10170for = new C0036try();

    /* renamed from: new, reason: not valid java name */
    public static final Ctry f10173new = new Cfor();

    /* renamed from: com.bumptech.glide.load.resource.bitmap.try$case, reason: invalid class name */
    public static class Ccase extends Ctry {
        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: do */
        public Celse mo11777do(int i, int i2, int i3, int i4) {
            return Celse.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: if */
        public float mo11778if(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.try$do, reason: invalid class name */
    public static class Cdo extends Ctry {
        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: do */
        public Celse mo11777do(int i, int i2, int i3, int i4) {
            return Celse.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: if */
        public float mo11778if(int i, int i2, int i3, int i4) {
            if (Math.min(i2 / i4, i / i3) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.try$else, reason: invalid class name */
    public enum Celse {
        MEMORY,
        QUALITY
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.try$for, reason: invalid class name */
    public static class Cfor extends Ctry {
        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: do */
        public Celse mo11777do(int i, int i2, int i3, int i4) {
            return mo11778if(i, i2, i3, i4) == 1.0f ? Celse.QUALITY : Ctry.f10170for.mo11777do(i, i2, i3, i4);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: if */
        public float mo11778if(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, Ctry.f10170for.mo11778if(i, i2, i3, i4));
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.try$if, reason: invalid class name */
    public static class Cif extends Ctry {
        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: do */
        public Celse mo11777do(int i, int i2, int i3, int i4) {
            return Celse.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: if */
        public float mo11778if(int i, int i2, int i3, int i4) {
            int iCeil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            return 1.0f / (r2 << (Math.max(1, Integer.highestOneBit(iCeil)) >= iCeil ? 0 : 1));
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.try$new, reason: invalid class name */
    public static class Cnew extends Ctry {
        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: do */
        public Celse mo11777do(int i, int i2, int i3, int i4) {
            return Celse.QUALITY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: if */
        public float mo11778if(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0036try extends Ctry {
        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: do */
        public Celse mo11777do(int i, int i2, int i3, int i4) {
            return Ctry.f10174this ? Celse.QUALITY : Celse.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Ctry
        /* renamed from: if */
        public float mo11778if(int i, int i2, int i3, int i4) {
            if (Ctry.f10174this) {
                return Math.min(i3 / i, i4 / i2);
            }
            if (Math.max(i2 / i4, i / i3) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r2);
        }
    }

    static {
        Cnew cnew = new Cnew();
        f10175try = cnew;
        f10167case = new Ccase();
        f10169else = cnew;
        f10171goto = Option.m11261else("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", cnew);
        f10174this = Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: do, reason: not valid java name */
    public abstract Celse mo11777do(int i, int i2, int i3, int i4);

    /* renamed from: if, reason: not valid java name */
    public abstract float mo11778if(int i, int i2, int i3, int i4);
}
