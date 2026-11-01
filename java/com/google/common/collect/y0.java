package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.Serializable;
import java.util.Map;

@ki0(emulated = true)
/* loaded from: classes2.dex */
abstract class y0<K, V> extends g1<Map.Entry<K, V>> {

    @li0
    /* renamed from: com.google.common.collect.y0$do, reason: invalid class name */
    public static class Cdo<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        public final x0<K, V> map;

        public Cdo(x0<K, V> x0Var) {
            this.map = x0Var;
        }

        public Object readResolve() {
            return this.map.entrySet();
        }
    }

    /* renamed from: com.google.common.collect.y0$if, reason: invalid class name */
    public static final class Cif<K, V> extends y0<K, V> {

        /* renamed from: case, reason: not valid java name */
        private final transient v0<Map.Entry<K, V>> f14869case;

        /* renamed from: try, reason: not valid java name */
        private final transient x0<K, V> f14870try;

        public Cif(x0<K, V> x0Var, Map.Entry<K, V>[] entryArr) {
            this(x0Var, v0.asImmutableList(entryArr));
        }

        @Override // com.google.common.collect.r0
        @li0("not used in GWT")
        public int copyIntoArray(Object[] objArr, int i) {
            return this.f14869case.copyIntoArray(objArr, i);
        }

        @Override // com.google.common.collect.g1
        public v0<Map.Entry<K, V>> createAsList() {
            return this.f14869case;
        }

        @Override // com.google.common.collect.y0
        public x0<K, V> map() {
            return this.f14870try;
        }

        public Cif(x0<K, V> x0Var, v0<Map.Entry<K, V>> v0Var) {
            this.f14870try = x0Var;
            this.f14869case = v0Var;
        }

        @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<Map.Entry<K, V>> iterator() {
            return this.f14869case.iterator();
        }
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        V v = map().get(entry.getKey());
        return v != null && v.equals(entry.getValue());
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public int hashCode() {
        return map().hashCode();
    }

    @Override // com.google.common.collect.g1
    @li0
    public boolean isHashCodeFast() {
        return map().isHashCodeFast();
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return map().isPartialView();
    }

    public abstract x0<K, V> map();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return map().size();
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0
    @li0
    public Object writeReplace() {
        return new Cdo(map());
    }
}
