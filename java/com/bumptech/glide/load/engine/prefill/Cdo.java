package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.n9;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.util.Ccase;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* renamed from: com.bumptech.glide.load.engine.prefill.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo implements Runnable {

    /* renamed from: catch, reason: not valid java name */
    public static final long f9867catch = 32;

    /* renamed from: class, reason: not valid java name */
    public static final long f9868class = 40;

    /* renamed from: const, reason: not valid java name */
    public static final int f9869const = 4;

    /* renamed from: this, reason: not valid java name */
    @VisibleForTesting
    public static final String f9871this = "PreFillRunner";

    /* renamed from: case, reason: not valid java name */
    private final Handler f9872case;

    /* renamed from: do, reason: not valid java name */
    private final BitmapPool f9873do;

    /* renamed from: else, reason: not valid java name */
    private long f9874else;

    /* renamed from: for, reason: not valid java name */
    private final Cfor f9875for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f9876goto;

    /* renamed from: if, reason: not valid java name */
    private final MemoryCache f9877if;

    /* renamed from: new, reason: not valid java name */
    private final C0031do f9878new;

    /* renamed from: try, reason: not valid java name */
    private final Set<Cnew> f9879try;

    /* renamed from: break, reason: not valid java name */
    private static final C0031do f9866break = new C0031do();

    /* renamed from: final, reason: not valid java name */
    public static final long f9870final = TimeUnit.SECONDS.toMillis(1);

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.engine.prefill.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0031do {
        /* renamed from: do, reason: not valid java name */
        public long m11550do() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.prefill.do$if, reason: invalid class name */
    public static final class Cif implements Key {
        @Override // com.bumptech.glide.load.Key
        public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public Cdo(BitmapPool bitmapPool, MemoryCache memoryCache, Cfor cfor) {
        this(bitmapPool, memoryCache, cfor, f9866break, new Handler(Looper.getMainLooper()));
    }

    /* renamed from: for, reason: not valid java name */
    private long m11545for() {
        return this.f9877if.getMaxSize() - this.f9877if.getCurrentSize();
    }

    /* renamed from: new, reason: not valid java name */
    private long m11546new() {
        long j = this.f9874else;
        this.f9874else = Math.min(4 * j, f9870final);
        return j;
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m11547try(long j) {
        return this.f9878new.m11550do() - j >= 32;
    }

    @VisibleForTesting
    /* renamed from: do, reason: not valid java name */
    public boolean m11548do() {
        Bitmap bitmapCreateBitmap;
        long jM11550do = this.f9878new.m11550do();
        while (!this.f9875for.m11553if() && !m11547try(jM11550do)) {
            Cnew cnewM11552for = this.f9875for.m11552for();
            if (this.f9879try.contains(cnewM11552for)) {
                bitmapCreateBitmap = Bitmap.createBitmap(cnewM11552for.m11560new(), cnewM11552for.m11559if(), cnewM11552for.m11557do());
            } else {
                this.f9879try.add(cnewM11552for);
                bitmapCreateBitmap = this.f9873do.getDirty(cnewM11552for.m11560new(), cnewM11552for.m11559if(), cnewM11552for.m11557do());
            }
            int iM12047goto = Ccase.m12047goto(bitmapCreateBitmap);
            if (m11545for() >= iM12047goto) {
                this.f9877if.put(new Cif(), n9.m5129if(bitmapCreateBitmap, this.f9873do));
            } else {
                this.f9873do.put(bitmapCreateBitmap);
            }
            if (Log.isLoggable(f9871this, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("allocated [");
                sb.append(cnewM11552for.m11560new());
                sb.append("x");
                sb.append(cnewM11552for.m11559if());
                sb.append("] ");
                sb.append(cnewM11552for.m11557do());
                sb.append(" size: ");
                sb.append(iM12047goto);
            }
        }
        return (this.f9876goto || this.f9875for.m11553if()) ? false : true;
    }

    /* renamed from: if, reason: not valid java name */
    public void m11549if() {
        this.f9876goto = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (m11548do()) {
            this.f9872case.postDelayed(this, m11546new());
        }
    }

    @VisibleForTesting
    public Cdo(BitmapPool bitmapPool, MemoryCache memoryCache, Cfor cfor, C0031do c0031do, Handler handler) {
        this.f9879try = new HashSet();
        this.f9874else = 40L;
        this.f9873do = bitmapPool;
        this.f9877if = memoryCache;
        this.f9875for = cfor;
        this.f9878new = c0031do;
        this.f9872case = handler;
    }
}
