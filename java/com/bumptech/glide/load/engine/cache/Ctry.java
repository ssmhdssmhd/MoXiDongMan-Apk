package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import java.io.File;

/* renamed from: com.bumptech.glide.load.engine.cache.try, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ctry extends DiskLruCacheFactory {

    /* renamed from: com.bumptech.glide.load.engine.cache.try$do, reason: invalid class name */
    public class Cdo implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f9732do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f9733if;

        public Cdo(Context context, String str) {
            this.f9732do = context;
            this.f9733if = str;
        }

        @Nullable
        /* renamed from: do, reason: not valid java name */
        private File m11454do() {
            File cacheDir = this.f9732do.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f9733if != null ? new File(cacheDir, this.f9733if) : cacheDir;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            File externalCacheDir;
            File fileM11454do = m11454do();
            return ((fileM11454do == null || !fileM11454do.exists()) && (externalCacheDir = this.f9732do.getExternalCacheDir()) != null && externalCacheDir.canWrite()) ? this.f9733if != null ? new File(externalCacheDir, this.f9733if) : externalCacheDir : fileM11454do;
        }
    }

    public Ctry(Context context) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, 262144000L);
    }

    public Ctry(Context context, long j) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, j);
    }

    public Ctry(Context context, String str, long j) {
        super(new Cdo(context, str), j);
    }
}
