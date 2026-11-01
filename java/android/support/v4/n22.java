package android.support.v4;

import freemarker.cache.CacheStorageWithGetSize;
import freemarker.cache.ConcurrentCacheStorage;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class n22 implements ConcurrentCacheStorage, CacheStorageWithGetSize {

    /* renamed from: do, reason: not valid java name */
    private final Map f4110do = new ConcurrentHashMap();

    @Override // freemarker.cache.CacheStorage
    public void clear() {
        this.f4110do.clear();
    }

    @Override // freemarker.cache.CacheStorage
    public Object get(Object obj) {
        return this.f4110do.get(obj);
    }

    @Override // freemarker.cache.CacheStorageWithGetSize
    public int getSize() {
        return this.f4110do.size();
    }

    @Override // freemarker.cache.ConcurrentCacheStorage
    public boolean isConcurrent() {
        return true;
    }

    @Override // freemarker.cache.CacheStorage
    public void put(Object obj, Object obj2) {
        this.f4110do.put(obj, obj2);
    }

    @Override // freemarker.cache.CacheStorage
    public void remove(Object obj) {
        this.f4110do.remove(obj);
    }
}
