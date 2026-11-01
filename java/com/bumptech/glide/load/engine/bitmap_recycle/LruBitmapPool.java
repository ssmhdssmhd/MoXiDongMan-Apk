package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class LruBitmapPool implements BitmapPool {

    /* renamed from: catch, reason: not valid java name */
    private static final String f9620catch = "LruBitmapPool";

    /* renamed from: class, reason: not valid java name */
    private static final Bitmap.Config f9621class = Bitmap.Config.ARGB_8888;

    /* renamed from: break, reason: not valid java name */
    private int f9622break;

    /* renamed from: case, reason: not valid java name */
    private long f9623case;

    /* renamed from: do, reason: not valid java name */
    private final LruPoolStrategy f9624do;

    /* renamed from: else, reason: not valid java name */
    private int f9625else;

    /* renamed from: for, reason: not valid java name */
    private final long f9626for;

    /* renamed from: goto, reason: not valid java name */
    private int f9627goto;

    /* renamed from: if, reason: not valid java name */
    private final Set<Bitmap.Config> f9628if;

    /* renamed from: new, reason: not valid java name */
    private final BitmapTracker f9629new;

    /* renamed from: this, reason: not valid java name */
    private int f9630this;

    /* renamed from: try, reason: not valid java name */
    private long f9631try;

    public interface BitmapTracker {
        void add(Bitmap bitmap);

        void remove(Bitmap bitmap);
    }

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool$do, reason: invalid class name */
    public static final class Cdo implements BitmapTracker {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void add(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void remove(Bitmap bitmap) {
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool$if, reason: invalid class name */
    public static class Cif implements BitmapTracker {

        /* renamed from: do, reason: not valid java name */
        private final Set<Bitmap> f9632do = Collections.synchronizedSet(new HashSet());

        private Cif() {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void add(Bitmap bitmap) {
            if (!this.f9632do.contains(bitmap)) {
                this.f9632do.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + bitmap + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void remove(Bitmap bitmap) {
            if (!this.f9632do.contains(bitmap)) {
                throw new IllegalStateException("Cannot remove bitmap not in tracker");
            }
            this.f9632do.remove(bitmap);
        }
    }

    public LruBitmapPool(long j, LruPoolStrategy lruPoolStrategy, Set<Bitmap.Config> set) {
        this.f9626for = j;
        this.f9631try = j;
        this.f9624do = lruPoolStrategy;
        this.f9628if = set;
        this.f9629new = new Cdo();
    }

    @Nullable
    /* renamed from: break, reason: not valid java name */
    private synchronized Bitmap m11360break(int i, int i2, @Nullable Bitmap.Config config) {
        Bitmap bitmap;
        m11362do(config);
        bitmap = this.f9624do.get(i, i2, config != null ? config : f9621class);
        if (bitmap == null) {
            if (Log.isLoggable(f9620catch, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Missing bitmap=");
                sb.append(this.f9624do.logBitmap(i, i2, config));
            }
            this.f9627goto++;
        } else {
            this.f9625else++;
            this.f9623case -= this.f9624do.getSize(bitmap);
            this.f9629new.remove(bitmap);
            m11363final(bitmap);
        }
        if (Log.isLoggable(f9620catch, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Get bitmap=");
            sb2.append(this.f9624do.logBitmap(i, i2, config));
        }
        m11364for();
        return bitmap;
    }

    @TargetApi(19)
    /* renamed from: class, reason: not valid java name */
    private static void m11361class(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 19) {
            bitmap.setPremultiplied(true);
        }
    }

    @TargetApi(26)
    /* renamed from: do, reason: not valid java name */
    private static void m11362do(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    /* renamed from: final, reason: not valid java name */
    private static void m11363final(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        m11361class(bitmap);
    }

    /* renamed from: for, reason: not valid java name */
    private void m11364for() {
        if (Log.isLoggable(f9620catch, 2)) {
            m11367new();
        }
    }

    @TargetApi(26)
    /* renamed from: goto, reason: not valid java name */
    private static Set<Bitmap.Config> m11365goto() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            hashSet.add(null);
        }
        if (i >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private static Bitmap m11366if(int i, int i2, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = f9621class;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    /* renamed from: new, reason: not valid java name */
    private void m11367new() {
        StringBuilder sb = new StringBuilder();
        sb.append("Hits=");
        sb.append(this.f9625else);
        sb.append(", misses=");
        sb.append(this.f9627goto);
        sb.append(", puts=");
        sb.append(this.f9630this);
        sb.append(", evictions=");
        sb.append(this.f9622break);
        sb.append(", currentSize=");
        sb.append(this.f9623case);
        sb.append(", maxSize=");
        sb.append(this.f9631try);
        sb.append("\nStrategy=");
        sb.append(this.f9624do);
    }

    /* renamed from: super, reason: not valid java name */
    private synchronized void m11368super(long j) {
        while (this.f9623case > j) {
            Bitmap bitmapRemoveLast = this.f9624do.removeLast();
            if (bitmapRemoveLast == null) {
                if (Log.isLoggable(f9620catch, 5)) {
                    m11367new();
                }
                this.f9623case = 0L;
                return;
            }
            this.f9629new.remove(bitmapRemoveLast);
            this.f9623case -= this.f9624do.getSize(bitmapRemoveLast);
            this.f9622break++;
            if (Log.isLoggable(f9620catch, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Evicting bitmap=");
                sb.append(this.f9624do.logBitmap(bitmapRemoveLast));
            }
            m11364for();
            bitmapRemoveLast.recycle();
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static LruPoolStrategy m11369this() {
        return Build.VERSION.SDK_INT >= 19 ? new Cgoto() : new com.bumptech.glide.load.engine.bitmap_recycle.Cdo();
    }

    /* renamed from: try, reason: not valid java name */
    private void m11370try() {
        m11368super(this.f9631try);
    }

    /* renamed from: case, reason: not valid java name */
    public long m11371case() {
        return this.f9622break;
    }

    /* renamed from: catch, reason: not valid java name */
    public long m11372catch() {
        return this.f9625else;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public void clearMemory() {
        Log.isLoggable(f9620catch, 3);
        m11368super(0L);
    }

    /* renamed from: const, reason: not valid java name */
    public long m11373const() {
        return this.f9627goto;
    }

    /* renamed from: else, reason: not valid java name */
    public long m11374else() {
        return this.f9623case;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @NonNull
    public Bitmap get(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapM11360break = m11360break(i, i2, config);
        if (bitmapM11360break == null) {
            return m11366if(i, i2, config);
        }
        bitmapM11360break.eraseColor(0);
        return bitmapM11360break;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @NonNull
    public Bitmap getDirty(int i, int i2, Bitmap.Config config) {
        Bitmap bitmapM11360break = m11360break(i, i2, config);
        return bitmapM11360break == null ? m11366if(i, i2, config) : bitmapM11360break;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public long getMaxSize() {
        return this.f9631try;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized void put(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.f9624do.getSize(bitmap) <= this.f9631try && this.f9628if.contains(bitmap.getConfig())) {
                int size = this.f9624do.getSize(bitmap);
                this.f9624do.put(bitmap);
                this.f9629new.add(bitmap);
                this.f9630this++;
                this.f9623case += size;
                if (Log.isLoggable(f9620catch, 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Put bitmap in pool=");
                    sb.append(this.f9624do.logBitmap(bitmap));
                }
                m11364for();
                m11370try();
                return;
            }
            if (Log.isLoggable(f9620catch, 2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Reject bitmap from pool, bitmap: ");
                sb2.append(this.f9624do.logBitmap(bitmap));
                sb2.append(", is mutable: ");
                sb2.append(bitmap.isMutable());
                sb2.append(", is allowed config: ");
                sb2.append(this.f9628if.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized void setSizeMultiplier(float f) {
        this.f9631try = Math.round(this.f9626for * f);
        m11370try();
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i) {
        if (Log.isLoggable(f9620catch, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("trimMemory, level=");
            sb.append(i);
        }
        if (i >= 40 || (Build.VERSION.SDK_INT >= 23 && i >= 20)) {
            clearMemory();
        } else if (i >= 20 || i == 15) {
            m11368super(getMaxSize() / 2);
        }
    }

    public LruBitmapPool(long j) {
        this(j, m11369this(), m11365goto());
    }

    public LruBitmapPool(long j, Set<Bitmap.Config> set) {
        this(j, m11369this(), set);
    }
}
