package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import com.google.common.collect.Maps;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.SortedMap;

@ki0
/* loaded from: classes2.dex */
public abstract class d0<K, V> extends z<K, V> implements SortedMap<K, V> {

    @o8
    /* renamed from: com.google.common.collect.d0$do, reason: invalid class name */
    public class Cdo extends Maps.Cstrictfp<K, V> {
        public Cdo() {
            super(d0.this);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private int m15737do(Object obj, Object obj2) {
        Comparator<? super K> comparator = comparator();
        return comparator == null ? ((Comparable) obj).compareTo(obj2) : comparator.compare(obj, obj2);
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return delegate().comparator();
    }

    @Override // com.google.common.collect.z, android.support.v4.ae0
    public abstract SortedMap<K, V> delegate();

    @Override // java.util.SortedMap
    public K firstKey() {
        return delegate().firstKey();
    }

    public SortedMap<K, V> headMap(K k) {
        return delegate().headMap(k);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return delegate().lastKey();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.z
    @o8
    public boolean standardContainsKey(@b51 Object obj) {
        try {
            return m15737do(tailMap(obj).firstKey(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    @o8
    public SortedMap<K, V> standardSubMap(K k, K k2) {
        af1.m235try(m15737do(k, k2) <= 0, "fromKey must be <= toKey");
        return tailMap(k).headMap(k2);
    }

    public SortedMap<K, V> subMap(K k, K k2) {
        return delegate().subMap(k, k2);
    }

    public SortedMap<K, V> tailMap(K k) {
        return delegate().tailMap(k);
    }
}
