package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.Serializable;
import java.util.Map;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class a1<K, V> extends r0<V> {
    private final x0<K, V> map;

    /* renamed from: com.google.common.collect.a1$do, reason: invalid class name */
    public class Cdo extends ac2<V> {

        /* renamed from: do, reason: not valid java name */
        public final ac2<Map.Entry<K, V>> f14055do;

        public Cdo() {
            this.f14055do = a1.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14055do.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.f14055do.next().getValue();
        }
    }

    @li0
    /* renamed from: com.google.common.collect.a1$for, reason: invalid class name */
    public static class Cfor<V> implements Serializable {
        private static final long serialVersionUID = 0;
        public final x0<?, V> map;

        public Cfor(x0<?, V> x0Var) {
            this.map = x0Var;
        }

        public Object readResolve() {
            return this.map.values();
        }
    }

    /* renamed from: com.google.common.collect.a1$if, reason: invalid class name */
    public class Cif extends v0<V> {
        public final /* synthetic */ v0 val$entryList;

        public Cif(v0 v0Var) {
            this.val$entryList = v0Var;
        }

        @Override // java.util.List
        public V get(int i) {
            return (V) ((Map.Entry) this.val$entryList.get(i)).getValue();
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.val$entryList.size();
        }
    }

    public a1(x0<K, V> x0Var) {
        this.map = x0Var;
    }

    @Override // com.google.common.collect.r0
    public v0<V> asList() {
        return new Cif(this.map.entrySet().asList());
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        return obj != null && s1.m16252while(iterator(), obj);
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.map.size();
    }

    @Override // com.google.common.collect.r0
    @li0
    public Object writeReplace() {
        return new Cfor(this.map);
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<V> iterator() {
        return new Cdo();
    }
}
