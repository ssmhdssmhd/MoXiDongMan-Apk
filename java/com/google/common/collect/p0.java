package com.google.common.collect;

import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.collect.x0;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class p0<K, V> extends x0<K, V> implements BiMap<K, V> {

    /* renamed from: com.google.common.collect.p0$do, reason: invalid class name */
    public static final class Cdo<K, V> extends x0.Cif<K, V> {
        public Cdo() {
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        @o8
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15868for(Comparator<? super V> comparator) {
            super.mo15868for(comparator);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15869new(K k, V v) {
            super.mo15869new(k, v);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15871try(Map.Entry<? extends K, ? extends V> entry) {
            super.mo15871try(entry);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        @o8
        /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15861case(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.mo15861case(iterable);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        @lf
        /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<K, V> mo15866else(Map<? extends K, ? extends V> map) {
            super.mo15866else(map);
            return this;
        }

        @Override // com.google.common.collect.x0.Cif
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public p0<K, V> mo15865do() {
            if (this.f14850for == 0) {
                return p0.of();
            }
            m16488goto();
            this.f14852new = true;
            return new r2(this.f14851if, this.f14850for);
        }

        public Cdo(int i) {
            super(i);
        }
    }

    /* renamed from: com.google.common.collect.p0$if, reason: invalid class name */
    public static class Cif extends x0.Ctry {
        private static final long serialVersionUID = 0;

        public Cif(p0<?, ?> p0Var) {
            super(p0Var);
        }

        @Override // com.google.common.collect.x0.Ctry
        public Object readResolve() {
            return createMap(new Cdo());
        }
    }

    public static <K, V> Cdo<K, V> builder() {
        return new Cdo<>();
    }

    @o8
    public static <K, V> Cdo<K, V> builderWithExpectedSize(int i) {
        Cdefault.m15742if(i, "expectedSize");
        return new Cdo<>(i);
    }

    public static <K, V> p0<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if (map instanceof p0) {
            p0<K, V> p0Var = (p0) map;
            if (!p0Var.isPartialView()) {
                return p0Var;
            }
        }
        return copyOf((Iterable) map.entrySet());
    }

    public static <K, V> p0<K, V> of() {
        return r2.EMPTY;
    }

    @Override // com.google.common.collect.BiMap
    @lf
    @Deprecated
    public V forcePut(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.BiMap
    public abstract p0<V, K> inverse();

    @Override // com.google.common.collect.x0
    public Object writeReplace() {
        return new Cif(this);
    }

    public static <K, V> p0<K, V> of(K k, V v) {
        Cdefault.m15740do(k, v);
        return new r2(new Object[]{k, v}, 1);
    }

    @Override // com.google.common.collect.x0
    public final g1<V> createValues() {
        throw new AssertionError("should never be called");
    }

    public static <K, V> p0<K, V> of(K k, V v, K k2, V v2) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        return new r2(new Object[]{k, v, k2, v2}, 2);
    }

    @Override // com.google.common.collect.x0, java.util.Map, java.util.SortedMap
    public g1<V> values() {
        return inverse().keySet();
    }

    @o8
    public static <K, V> p0<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new Cdo(iterable instanceof Collection ? ((Collection) iterable).size() : 4).mo15861case(iterable).mo15865do();
    }

    public static <K, V> p0<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        Cdefault.m15740do(k3, v3);
        return new r2(new Object[]{k, v, k2, v2, k3, v3}, 3);
    }

    public static <K, V> p0<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        Cdefault.m15740do(k3, v3);
        Cdefault.m15740do(k4, v4);
        return new r2(new Object[]{k, v, k2, v2, k3, v3, k4, v4}, 4);
    }

    public static <K, V> p0<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        Cdefault.m15740do(k, v);
        Cdefault.m15740do(k2, v2);
        Cdefault.m15740do(k3, v3);
        Cdefault.m15740do(k4, v4);
        Cdefault.m15740do(k5, v5);
        return new r2(new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5}, 5);
    }
}
