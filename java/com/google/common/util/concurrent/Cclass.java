package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

@ki0
/* renamed from: com.google.common.util.concurrent.class, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cclass<K> implements Serializable {

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient Map<K, Long> f15705do;
    private final ConcurrentHashMap<K, AtomicLong> map;

    /* renamed from: com.google.common.util.concurrent.class$do, reason: invalid class name */
    public class Cdo implements Function<AtomicLong, Long> {
        public Cdo() {
        }

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Long apply(AtomicLong atomicLong) {
            return Long.valueOf(atomicLong.get());
        }
    }

    private Cclass(ConcurrentHashMap<K, AtomicLong> concurrentHashMap) {
        this.map = (ConcurrentHashMap) af1.m205continue(concurrentHashMap);
    }

    public static <K> Cclass<K> create() {
        return new Cclass<>(new ConcurrentHashMap());
    }

    /* renamed from: do, reason: not valid java name */
    private Map<K, Long> m18099do() {
        return Collections.unmodifiableMap(Maps.O(this.map, new Cdo()));
    }

    @lf
    public long addAndGet(K k, long j) {
        AtomicLong atomicLongPutIfAbsent;
        long j2;
        long j3;
        do {
            atomicLongPutIfAbsent = this.map.get(k);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j))) == null) {
                return j;
            }
            do {
                j2 = atomicLongPutIfAbsent.get();
                if (j2 != 0) {
                    j3 = j2 + j;
                }
            } while (!atomicLongPutIfAbsent.compareAndSet(j2, j3));
            return j3;
        } while (!this.map.replace(k, atomicLongPutIfAbsent, new AtomicLong(j)));
        return j;
    }

    public Map<K, Long> asMap() {
        Map<K, Long> map = this.f15705do;
        if (map != null) {
            return map;
        }
        Map<K, Long> mapM18099do = m18099do();
        this.f15705do = mapM18099do;
        return mapM18099do;
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @lf
    public long decrementAndGet(K k) {
        return addAndGet(k, -1L);
    }

    public long get(K k) {
        AtomicLong atomicLong = this.map.get(k);
        if (atomicLong == null) {
            return 0L;
        }
        return atomicLong.get();
    }

    @lf
    public long getAndAdd(K k, long j) {
        AtomicLong atomicLongPutIfAbsent;
        long j2;
        do {
            atomicLongPutIfAbsent = this.map.get(k);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j))) == null) {
                return 0L;
            }
            do {
                j2 = atomicLongPutIfAbsent.get();
                if (j2 == 0) {
                }
            } while (!atomicLongPutIfAbsent.compareAndSet(j2, j2 + j));
            return j2;
        } while (!this.map.replace(k, atomicLongPutIfAbsent, new AtomicLong(j)));
        return 0L;
    }

    @lf
    public long getAndDecrement(K k) {
        return getAndAdd(k, -1L);
    }

    @lf
    public long getAndIncrement(K k) {
        return getAndAdd(k, 1L);
    }

    @lf
    public long incrementAndGet(K k) {
        return addAndGet(k, 1L);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @lf
    public long put(K k, long j) {
        AtomicLong atomicLongPutIfAbsent;
        long j2;
        do {
            atomicLongPutIfAbsent = this.map.get(k);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j))) == null) {
                return 0L;
            }
            do {
                j2 = atomicLongPutIfAbsent.get();
                if (j2 == 0) {
                }
            } while (!atomicLongPutIfAbsent.compareAndSet(j2, j));
            return j2;
        } while (!this.map.replace(k, atomicLongPutIfAbsent, new AtomicLong(j)));
        return 0L;
    }

    public void putAll(Map<? extends K, ? extends Long> map) {
        for (Map.Entry<? extends K, ? extends Long> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue().longValue());
        }
    }

    public long putIfAbsent(K k, long j) {
        AtomicLong atomicLongPutIfAbsent;
        do {
            atomicLongPutIfAbsent = this.map.get(k);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.map.putIfAbsent(k, new AtomicLong(j))) == null) {
                return 0L;
            }
            long j2 = atomicLongPutIfAbsent.get();
            if (j2 != 0) {
                return j2;
            }
        } while (!this.map.replace(k, atomicLongPutIfAbsent, new AtomicLong(j)));
        return 0L;
    }

    @lf
    public long remove(K k) {
        long j;
        AtomicLong atomicLong = this.map.get(k);
        if (atomicLong == null) {
            return 0L;
        }
        do {
            j = atomicLong.get();
            if (j == 0) {
                break;
            }
        } while (!atomicLong.compareAndSet(j, 0L));
        this.map.remove(k, atomicLong);
        return j;
    }

    public void removeAllZeros() {
        Iterator<Map.Entry<K, AtomicLong>> it = this.map.entrySet().iterator();
        while (it.hasNext()) {
            AtomicLong value = it.next().getValue();
            if (value != null && value.get() == 0) {
                it.remove();
            }
        }
    }

    @lf
    @o8
    public boolean removeIfZero(K k) {
        return remove(k, 0L);
    }

    public boolean replace(K k, long j, long j2) {
        if (j == 0) {
            return putIfAbsent(k, j2) == 0;
        }
        AtomicLong atomicLong = this.map.get(k);
        if (atomicLong == null) {
            return false;
        }
        return atomicLong.compareAndSet(j, j2);
    }

    public int size() {
        return this.map.size();
    }

    public long sum() {
        Iterator<AtomicLong> it = this.map.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            j += it.next().get();
        }
        return j;
    }

    public String toString() {
        return this.map.toString();
    }

    public static <K> Cclass<K> create(Map<? extends K, ? extends Long> map) {
        Cclass<K> cclassCreate = create();
        cclassCreate.putAll(map);
        return cclassCreate;
    }

    public boolean remove(K k, long j) {
        AtomicLong atomicLong = this.map.get(k);
        if (atomicLong == null) {
            return false;
        }
        long j2 = atomicLong.get();
        if (j2 != j) {
            return false;
        }
        if (j2 != 0 && !atomicLong.compareAndSet(j2, 0L)) {
            return false;
        }
        this.map.remove(k, atomicLong);
        return true;
    }
}
