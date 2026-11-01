package com.jayway.jsonpath.spi.cache;

import com.jayway.jsonpath.JsonPathException;
import com.jayway.jsonpath.internal.Utils;

/* loaded from: classes2.dex */
public class CacheProvider {
    private static Cache cache;
    private static boolean cachingEnabled;

    public static Cache getCache() {
        if (cache == null) {
            synchronized (CacheProvider.class) {
                if (cache == null) {
                    cache = getDefaultCache();
                }
            }
        }
        return cache;
    }

    private static Cache getDefaultCache() {
        return new LRUCache(400);
    }

    public static void setCache(Cache cache2) {
        Utils.notNull(cache2, "Cache may not be null", new Object[0]);
        synchronized (CacheProvider.class) {
            if (cache != null) {
                throw new JsonPathException("Cache provider must be configured before cache is accessed.");
            }
            cache = cache2;
            cachingEnabled = cache2 instanceof NOOPCache ? false : true;
        }
    }
}
