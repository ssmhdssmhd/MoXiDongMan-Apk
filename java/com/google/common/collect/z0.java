package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.Serializable;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class z0<K, V> extends p1<K> {
    private final x0<K, V> map;

    @li0
    /* renamed from: com.google.common.collect.z0$do, reason: invalid class name */
    public static class Cdo<K> implements Serializable {
        private static final long serialVersionUID = 0;
        public final x0<K, ?> map;

        public Cdo(x0<K, ?> x0Var) {
            this.map = x0Var;
        }

        public Object readResolve() {
            return this.map.keySet();
        }
    }

    public z0(x0<K, V> x0Var) {
        this.map = x0Var;
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.p1
    public K get(int i) {
        return this.map.entrySet().asList().get(i).getKey();
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.map.size();
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0
    @li0
    public Object writeReplace() {
        return new Cdo(this.map);
    }

    @Override // com.google.common.collect.p1, com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<K> iterator() {
        return this.map.keyIterator();
    }
}
