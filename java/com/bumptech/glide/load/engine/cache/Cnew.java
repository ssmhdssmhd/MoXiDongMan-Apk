package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import java.io.File;

@Deprecated
/* renamed from: com.bumptech.glide.load.engine.cache.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew extends DiskLruCacheFactory {

    /* renamed from: com.bumptech.glide.load.engine.cache.new$do, reason: invalid class name */
    public class Cdo implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f9725do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f9726if;

        public Cdo(Context context, String str) {
            this.f9725do = context;
            this.f9726if = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            File externalCacheDir = this.f9725do.getExternalCacheDir();
            if (externalCacheDir == null) {
                return null;
            }
            return this.f9726if != null ? new File(externalCacheDir, this.f9726if) : externalCacheDir;
        }
    }

    public Cnew(Context context) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, DiskCache.Factory.DEFAULT_DISK_CACHE_SIZE);
    }

    public Cnew(Context context, int i) {
        this(context, DiskCache.Factory.DEFAULT_DISK_CACHE_DIR, i);
    }

    public Cnew(Context context, String str, int i) {
        super(new Cdo(context, str), i);
    }
}
