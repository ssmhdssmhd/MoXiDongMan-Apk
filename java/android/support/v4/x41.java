package android.support.v4;

import freemarker.cache.CacheStorageWithGetSize;
import freemarker.cache.ConcurrentCacheStorage;

/* loaded from: classes.dex */
public class x41 implements ConcurrentCacheStorage, CacheStorageWithGetSize {

    /* renamed from: do, reason: not valid java name */
    public static final x41 f7769do = new x41();

    @Override // freemarker.cache.CacheStorage
    public void clear() {
    }

    @Override // freemarker.cache.CacheStorage
    public Object get(Object obj) {
        return null;
    }

    @Override // freemarker.cache.CacheStorageWithGetSize
    public int getSize() {
        return 0;
    }

    @Override // freemarker.cache.ConcurrentCacheStorage
    public boolean isConcurrent() {
        return true;
    }

    @Override // freemarker.cache.CacheStorage
    public void put(Object obj, Object obj2) {
    }

    @Override // freemarker.cache.CacheStorage
    public void remove(Object obj) {
    }
}
