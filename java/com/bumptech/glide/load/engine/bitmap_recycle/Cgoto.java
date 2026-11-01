package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Ccase;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

@RequiresApi(19)
/* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.goto, reason: invalid class name */
/* loaded from: classes.dex */
public class Cgoto implements LruPoolStrategy {

    /* renamed from: case, reason: not valid java name */
    private static final Bitmap.Config[] f9652case;

    /* renamed from: else, reason: not valid java name */
    private static final Bitmap.Config[] f9653else;

    /* renamed from: goto, reason: not valid java name */
    private static final Bitmap.Config[] f9654goto;

    /* renamed from: new, reason: not valid java name */
    private static final int f9655new = 8;

    /* renamed from: this, reason: not valid java name */
    private static final Bitmap.Config[] f9656this;

    /* renamed from: try, reason: not valid java name */
    private static final Bitmap.Config[] f9657try;

    /* renamed from: do, reason: not valid java name */
    private final Cfor f9658do = new Cfor();

    /* renamed from: if, reason: not valid java name */
    private final Cnew<Cif, Bitmap> f9660if = new Cnew<>();

    /* renamed from: for, reason: not valid java name */
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f9659for = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.goto$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f9661do;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f9661do = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9661do[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9661do[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9661do[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.goto$for, reason: invalid class name */
    public static class Cfor extends com.bumptech.glide.load.engine.bitmap_recycle.Cif<Cif> {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Cif
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif mo11388do() {
            return new Cif(this);
        }

        /* renamed from: try, reason: not valid java name */
        public Cif m11404try(int i, Bitmap.Config config) {
            Cif cifM11407if = m11407if();
            cifM11407if.m11405do(i, config);
            return cifM11407if;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f9657try = configArr;
        f9652case = configArr;
        f9653else = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f9654goto = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f9656this = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    /* renamed from: do, reason: not valid java name */
    private void m11398do(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> navigableMapM11402try = m11402try(bitmap.getConfig());
        Integer num2 = (Integer) navigableMapM11402try.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapM11402try.remove(num);
                return;
            } else {
                navigableMapM11402try.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + logBitmap(bitmap) + ", this: " + this);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m11399for(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    /* renamed from: if, reason: not valid java name */
    private Cif m11400if(int i, Bitmap.Config config) {
        Cif cifM11404try = this.f9658do.m11404try(i, config);
        for (Bitmap.Config config2 : m11401new(config)) {
            Integer numCeilingKey = m11402try(config2).ceilingKey(Integer.valueOf(i));
            if (numCeilingKey != null && numCeilingKey.intValue() <= i * 8) {
                if (numCeilingKey.intValue() == i) {
                    if (config2 == null) {
                        if (config == null) {
                            return cifM11404try;
                        }
                    } else if (config2.equals(config)) {
                        return cifM11404try;
                    }
                }
                this.f9658do.m11406for(cifM11404try);
                return this.f9658do.m11404try(numCeilingKey.intValue(), config2);
            }
        }
        return cifM11404try;
    }

    /* renamed from: new, reason: not valid java name */
    private static Bitmap.Config[] m11401new(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return f9652case;
        }
        int i = Cdo.f9661do[config.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new Bitmap.Config[]{config} : f9656this : f9654goto : f9653else : f9657try;
    }

    /* renamed from: try, reason: not valid java name */
    private NavigableMap<Integer, Integer> m11402try(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f9659for.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f9659for.put(config, treeMap);
        return treeMap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        Cif cifM11400if = m11400if(Ccase.m12044else(i, i2, config), config);
        Bitmap bitmapM11413do = this.f9660if.m11413do(cifM11400if);
        if (bitmapM11413do != null) {
            m11398do(Integer.valueOf(cifM11400if.f9664if), bitmapM11413do);
            bitmapM11413do.reconfigure(i, i2, config);
        }
        return bitmapM11413do;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int getSize(Bitmap bitmap) {
        return Ccase.m12047goto(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(Bitmap bitmap) {
        return m11399for(Ccase.m12047goto(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void put(Bitmap bitmap) {
        Cif cifM11404try = this.f9658do.m11404try(Ccase.m12047goto(bitmap), bitmap.getConfig());
        this.f9660if.m11414new(cifM11404try, bitmap);
        NavigableMap<Integer, Integer> navigableMapM11402try = m11402try(bitmap.getConfig());
        Integer num = (Integer) navigableMapM11402try.get(Integer.valueOf(cifM11404try.f9664if));
        navigableMapM11402try.put(Integer.valueOf(cifM11404try.f9664if), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap removeLast() {
        Bitmap bitmapM11412case = this.f9660if.m11412case();
        if (bitmapM11412case != null) {
            m11398do(Integer.valueOf(Ccase.m12047goto(bitmapM11412case)), bitmapM11412case);
        }
        return bitmapM11412case;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f9660if);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f9659for.entrySet()) {
            sb.append(entry.getKey());
            sb.append('[');
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f9659for.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.goto$if, reason: invalid class name */
    public static final class Cif implements Poolable {

        /* renamed from: do, reason: not valid java name */
        private final Cfor f9662do;

        /* renamed from: for, reason: not valid java name */
        private Bitmap.Config f9663for;

        /* renamed from: if, reason: not valid java name */
        public int f9664if;

        public Cif(Cfor cfor) {
            this.f9662do = cfor;
        }

        /* renamed from: do, reason: not valid java name */
        public void m11405do(int i, Bitmap.Config config) {
            this.f9664if = i;
            this.f9663for = config;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.f9664if == cif.f9664if && Ccase.m12051new(this.f9663for, cif.f9663for);
        }

        public int hashCode() {
            int i = this.f9664if * 31;
            Bitmap.Config config = this.f9663for;
            return i + (config != null ? config.hashCode() : 0);
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void offer() {
            this.f9662do.m11406for(this);
        }

        public String toString() {
            return Cgoto.m11399for(this.f9664if, this.f9663for);
        }

        @VisibleForTesting
        public Cif(Cfor cfor, int i, Bitmap.Config config) {
            this(cfor);
            m11405do(i, config);
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String logBitmap(int i, int i2, Bitmap.Config config) {
        return m11399for(Ccase.m12044else(i, i2, config), config);
    }
}
