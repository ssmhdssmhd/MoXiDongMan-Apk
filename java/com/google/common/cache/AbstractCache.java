package com.google.common.cache;

import android.support.v4.df;
import android.support.v4.ki0;
import com.google.common.collect.Maps;
import com.google.common.collect.x0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@ki0
/* loaded from: classes.dex */
public abstract class AbstractCache<K, V> implements Cache<K, V> {

    public interface StatsCounter {
        void recordEviction();

        void recordHits(int i);

        void recordLoadException(long j);

        void recordLoadSuccess(long j);

        void recordMisses(int i);

        df snapshot();
    }

    /* renamed from: com.google.common.cache.AbstractCache$do, reason: invalid class name */
    public static final class Cdo implements StatsCounter {

        /* renamed from: do, reason: not valid java name */
        private final LongAddable f13745do = Ccase.m15293do();

        /* renamed from: if, reason: not valid java name */
        private final LongAddable f13747if = Ccase.m15293do();

        /* renamed from: for, reason: not valid java name */
        private final LongAddable f13746for = Ccase.m15293do();

        /* renamed from: new, reason: not valid java name */
        private final LongAddable f13748new = Ccase.m15293do();

        /* renamed from: try, reason: not valid java name */
        private final LongAddable f13749try = Ccase.m15293do();

        /* renamed from: case, reason: not valid java name */
        private final LongAddable f13744case = Ccase.m15293do();

        /* renamed from: if, reason: not valid java name */
        private static long m15219if(long j) {
            if (j >= 0) {
                return j;
            }
            return Long.MAX_VALUE;
        }

        /* renamed from: do, reason: not valid java name */
        public void m15220do(StatsCounter statsCounter) {
            df dfVarSnapshot = statsCounter.snapshot();
            this.f13745do.add(dfVarSnapshot.m1322for());
            this.f13747if.add(dfVarSnapshot.m1314break());
            this.f13746for.add(dfVarSnapshot.m1323goto());
            this.f13748new.add(dfVarSnapshot.m1315case());
            this.f13749try.add(dfVarSnapshot.m1321final());
            this.f13744case.add(dfVarSnapshot.m1324if());
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
            this.f13744case.increment();
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
            this.f13745do.add(i);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
            this.f13748new.increment();
            this.f13749try.add(j);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
            this.f13746for.increment();
            this.f13749try.add(j);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
            this.f13747if.add(i);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public df snapshot() {
            return new df(m15219if(this.f13745do.sum()), m15219if(this.f13747if.sum()), m15219if(this.f13746for.sum()), m15219if(this.f13748new.sum()), m15219if(this.f13749try.sum()), m15219if(this.f13744case.sum()));
        }
    }

    @Override // com.google.common.cache.Cache
    public ConcurrentMap<K, V> asMap() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void cleanUp() {
    }

    @Override // com.google.common.cache.Cache
    public V get(K k, Callable<? extends V> callable) throws ExecutionException {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public x0<K, V> getAllPresent(Iterable<?> iterable) {
        V ifPresent;
        LinkedHashMap linkedHashMapP = Maps.p();
        for (Object obj : iterable) {
            if (!linkedHashMapP.containsKey(obj) && (ifPresent = getIfPresent(obj)) != null) {
                linkedHashMapP.put(obj, ifPresent);
            }
        }
        return x0.copyOf((Map) linkedHashMapP);
    }

    @Override // com.google.common.cache.Cache
    public void invalidate(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            invalidate(it.next());
        }
    }

    @Override // com.google.common.cache.Cache
    public void put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.cache.Cache
    public long size() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public df stats() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll() {
        throw new UnsupportedOperationException();
    }
}
