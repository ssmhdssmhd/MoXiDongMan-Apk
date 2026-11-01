package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ce0;
import android.support.v4.hf1;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.yd0;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

@li0
/* loaded from: classes2.dex */
public final class d2<B> extends z<Class<? extends B>, B> implements ClassToInstanceMap<B>, Serializable {
    private final Map<Class<? extends B>, B> delegate;

    /* renamed from: com.google.common.collect.d2$do, reason: invalid class name */
    public static class Cdo extends yd0<Class<? extends B>, B> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Map.Entry f14206do;

        public Cdo(Map.Entry entry) {
            this.f14206do = entry;
        }

        @Override // android.support.v4.yd0, android.support.v4.ae0
        /* renamed from: do */
        public Map.Entry<Class<? extends B>, B> delegate() {
            return this.f14206do;
        }

        @Override // android.support.v4.yd0, java.util.Map.Entry
        public B setValue(B b) {
            return (B) super.setValue(d2.m15738do(getKey(), b));
        }
    }

    /* renamed from: com.google.common.collect.d2$for, reason: invalid class name */
    public static final class Cfor<B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Map<Class<? extends B>, B> backingMap;

        public Cfor(Map<Class<? extends B>, B> map) {
            this.backingMap = map;
        }

        public Object readResolve() {
            return d2.create(this.backingMap);
        }
    }

    /* renamed from: com.google.common.collect.d2$if, reason: invalid class name */
    public class Cif extends ce0<Map.Entry<Class<? extends B>, B>> {

        /* renamed from: com.google.common.collect.d2$if$do, reason: invalid class name */
        public class Cdo extends o3<Map.Entry<Class<? extends B>, B>, Map.Entry<Class<? extends B>, B>> {
            public Cdo(Iterator it) {
                super(it);
            }

            @Override // com.google.common.collect.o3
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public Map.Entry<Class<? extends B>, B> mo15451do(Map.Entry<Class<? extends B>, B> entry) {
                return d2.checkedEntry(entry);
            }
        }

        public Cif() {
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<Class<? extends B>, B>> iterator() {
            return new Cdo(delegate().iterator());
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
        public Set<Map.Entry<Class<? extends B>, B>> delegate() {
            return d2.this.delegate().entrySet();
        }
    }

    private d2(Map<Class<? extends B>, B> map) {
        this.delegate = (Map) af1.m205continue(map);
    }

    public static <B> Map.Entry<Class<? extends B>, B> checkedEntry(Map.Entry<Class<? extends B>, B> entry) {
        return new Cdo(entry);
    }

    public static <B> d2<B> create() {
        return new d2<>(new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @lf
    /* renamed from: do, reason: not valid java name */
    public static <B, T extends B> T m15738do(Class<T> cls, B b) {
        return (T) hf1.m3010case(cls).cast(b);
    }

    private Object writeReplace() {
        return new Cfor(delegate());
    }

    @Override // com.google.common.collect.z, java.util.Map, java.util.SortedMap
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new Cif();
    }

    @Override // com.google.common.collect.ClassToInstanceMap
    public <T extends B> T getInstance(Class<T> cls) {
        return (T) m15738do(cls, get(cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.z, java.util.Map
    @lf
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((Class<? extends Class<? extends B>>) obj, (Class<? extends B>) obj2);
    }

    @Override // com.google.common.collect.z, java.util.Map
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            m15738do((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ClassToInstanceMap
    @lf
    public <T extends B> T putInstance(Class<T> cls, T t) {
        return (T) m15738do(cls, put((Class<? extends Class<T>>) cls, (Class<T>) t));
    }

    public static <B> d2<B> create(Map<Class<? extends B>, B> map) {
        return new d2<>(map);
    }

    @Override // com.google.common.collect.z, android.support.v4.ae0
    public Map<Class<? extends B>, B> delegate() {
        return this.delegate;
    }

    @lf
    public B put(Class<? extends B> cls, B b) {
        return (B) super.put((d2<B>) cls, (Class<? extends B>) m15738do(cls, b));
    }
}
