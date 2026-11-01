package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import java.io.File;

/* renamed from: com.bumptech.glide.load.engine.cache.case, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccase extends DiskLruCacheFactory {

    /* renamed from: com.bumptech.glide.load.engine.cache.case$do, reason: invalid class name */
    public class Cdo implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f9706do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f9707if;

        public Cdo(Context context, String str) {
            this.f9706do = context;
            this.f9707if = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            File cacheDir = this.f9706do.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f9707if != null ? new File(cacheDir, this.f9707if) : cacheDir;
        }
    }

    public Ccase(Context context) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, 262144000L);
    }

    public Ccase(Context context, long j) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, j);
    }

    public Ccase(Context context, String str, long j) {
        super(new Cdo(context, str), j);
    }
}
