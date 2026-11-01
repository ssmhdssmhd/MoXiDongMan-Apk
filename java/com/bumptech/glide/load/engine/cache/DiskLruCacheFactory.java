package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.engine.cache.DiskCache;
import java.io.File;

/* loaded from: classes.dex */
public class DiskLruCacheFactory implements DiskCache.Factory {

    /* renamed from: do, reason: not valid java name */
    private final long f9680do;

    /* renamed from: if, reason: not valid java name */
    private final CacheDirectoryGetter f9681if;

    public interface CacheDirectoryGetter {
        File getCacheDirectory();
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$do, reason: invalid class name */
    public class Cdo implements CacheDirectoryGetter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f9682do;

        public Cdo(String str) {
            this.f9682do = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            return new File(this.f9682do);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$if, reason: invalid class name */
    public class Cif implements CacheDirectoryGetter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f9683do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f9684if;

        public Cif(String str, String str2) {
            this.f9683do = str;
            this.f9684if = str2;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File getCacheDirectory() {
            return new File(this.f9683do, this.f9684if);
        }
    }

    public DiskLruCacheFactory(String str, long j) {
        this(new Cdo(str), j);
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache.Factory
    public DiskCache build() {
        File cacheDirectory = this.f9681if.getCacheDirectory();
        if (cacheDirectory == null) {
            return null;
        }
        if (cacheDirectory.mkdirs() || (cacheDirectory.exists() && cacheDirectory.isDirectory())) {
            return Cfor.m11443do(cacheDirectory, this.f9680do);
        }
        return null;
    }

    public DiskLruCacheFactory(String str, String str2, long j) {
        this(new Cif(str, str2), j);
    }

    public DiskLruCacheFactory(CacheDirectoryGetter cacheDirectoryGetter, long j) {
        this.f9680do = j;
        this.f9681if = cacheDirectoryGetter;
    }
}
