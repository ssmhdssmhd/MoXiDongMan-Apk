package com.google.common.reflect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ce0;
import android.support.v4.lf;
import android.support.v4.o8;
import android.support.v4.yd0;
import com.google.common.base.Function;
import com.google.common.collect.Maps;
import com.google.common.collect.s1;
import com.google.common.collect.z;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@o8
/* renamed from: com.google.common.reflect.case, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccase<B> extends z<Cbreak<? extends B>, B> implements TypeToInstanceMap<B> {

    /* renamed from: do, reason: not valid java name */
    private final Map<Cbreak<? extends B>, B> f15557do = Maps.l();

    /* renamed from: com.google.common.reflect.case$if, reason: invalid class name */
    public static final class Cif<K, V> extends yd0<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final Map.Entry<K, V> f15558do;

        /* renamed from: com.google.common.reflect.case$if$do, reason: invalid class name */
        public static class Cdo extends ce0<Map.Entry<K, V>> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Set f15559do;

            public Cdo(Set set) {
                this.f15559do = set;
            }

            @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
            public Iterator<Map.Entry<K, V>> iterator() {
                return Cif.m17826for(super.iterator());
            }

            @Override // android.support.v4.qd0, java.util.Collection
            public Object[] toArray() {
                return standardToArray();
            }

            @Override // android.support.v4.qd0, java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) standardToArray(tArr);
            }

            @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
            public Set<Map.Entry<K, V>> delegate() {
                return this.f15559do;
            }
        }

        /* renamed from: com.google.common.reflect.case$if$if, reason: invalid class name and collision with other inner class name */
        public static class C0138if implements Function<Map.Entry<K, V>, Map.Entry<K, V>> {
            @Override // com.google.common.base.Function
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<K, V> apply(Map.Entry<K, V> entry) {
                return new Cif(entry);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public static <K, V> Iterator<Map.Entry<K, V>> m17826for(Iterator<Map.Entry<K, V>> it) {
            return s1.p(it, new C0138if());
        }

        /* renamed from: new, reason: not valid java name */
        public static <K, V> Set<Map.Entry<K, V>> m17828new(Set<Map.Entry<K, V>> set) {
            return new Cdo(set);
        }

        @Override // android.support.v4.yd0, android.support.v4.ae0
        /* renamed from: do */
        public Map.Entry<K, V> delegate() {
            return this.f15558do;
        }

        @Override // android.support.v4.yd0, java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }

        private Cif(Map.Entry<K, V> entry) {
            this.f15558do = (Map.Entry) af1.m205continue(entry);
        }
    }

    @b51
    /* renamed from: for, reason: not valid java name */
    private <T extends B> T m17823for(Cbreak<T> cbreak, @b51 T t) {
        return this.f15557do.put(cbreak, t);
    }

    @b51
    /* renamed from: if, reason: not valid java name */
    private <T extends B> T m17824if(Cbreak<T> cbreak) {
        return this.f15557do.get(cbreak);
    }

    @Override // com.google.common.collect.z, java.util.Map
    @lf
    @Deprecated
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public B put(Cbreak<? extends B> cbreak, B b) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @Override // com.google.common.collect.z, java.util.Map, java.util.SortedMap
    public Set<Map.Entry<Cbreak<? extends B>, B>> entrySet() {
        return Cif.m17828new(super.entrySet());
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @b51
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) m17824if(Cbreak.of((Class) cls));
    }

    @Override // com.google.common.collect.z, java.util.Map
    @Deprecated
    public void putAll(Map<? extends Cbreak<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException("Please use putInstance() instead.");
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @lf
    @b51
    public <T extends B> T putInstance(Class<T> cls, @b51 T t) {
        return (T) m17823for(Cbreak.of((Class) cls), t);
    }

    @Override // com.google.common.collect.z, android.support.v4.ae0
    public Map<Cbreak<? extends B>, B> delegate() {
        return this.f15557do;
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @b51
    public <T extends B> T getInstance(Cbreak<T> cbreak) {
        return (T) m17824if(cbreak.rejectTypeVariables());
    }

    @Override // com.google.common.reflect.TypeToInstanceMap
    @lf
    @b51
    public <T extends B> T putInstance(Cbreak<T> cbreak, @b51 T t) {
        return (T) m17823for(cbreak.rejectTypeVariables(), t);
    }
}
