package com.google.common.collect;

import android.support.v4.ae0;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.o8;
import com.google.common.base.Cthrow;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public abstract class z<K, V> extends ae0 implements Map<K, V> {

    @o8
    /* renamed from: com.google.common.collect.z$do, reason: invalid class name */
    public abstract class Cdo extends Maps.Cnative<K, V> {
        public Cdo() {
        }

        @Override // com.google.common.collect.Maps.Cnative
        /* renamed from: do */
        public Map<K, V> mo15461do() {
            return z.this;
        }
    }

    @o8
    /* renamed from: com.google.common.collect.z$for, reason: invalid class name */
    public class Cfor extends Maps.c<K, V> {
        public Cfor() {
            super(z.this);
        }
    }

    @o8
    /* renamed from: com.google.common.collect.z$if, reason: invalid class name */
    public class Cif extends Maps.Cfinally<K, V> {
        public Cif() {
            super(z.this);
        }
    }

    public void clear() {
        delegate().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(@b51 Object obj) {
        return delegate().containsKey(obj);
    }

    public boolean containsValue(@b51 Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // android.support.v4.ae0
    public abstract Map<K, V> delegate();

    public Set<Map.Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(@b51 Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Map
    public V get(@b51 Object obj) {
        return delegate().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return delegate().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    public Set<K> keySet() {
        return delegate().keySet();
    }

    @lf
    public V put(K k, V v) {
        return delegate().put(k, v);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @lf
    public V remove(Object obj) {
        return delegate().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return delegate().size();
    }

    public void standardClear() {
        s1.m16228goto(entrySet().iterator());
    }

    @o8
    public boolean standardContainsKey(@b51 Object obj) {
        return Maps.m15444while(this, obj);
    }

    public boolean standardContainsValue(@b51 Object obj) {
        return Maps.m15423import(this, obj);
    }

    public boolean standardEquals(@b51 Object obj) {
        return Maps.m15436switch(this, obj);
    }

    public int standardHashCode() {
        return c3.m15683catch(entrySet());
    }

    public boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    public void standardPutAll(Map<? extends K, ? extends V> map) {
        Maps.w(this, map);
    }

    @o8
    public V standardRemove(@b51 Object obj) {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (Cthrow.m15205do(next.getKey(), obj)) {
                V value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    public String standardToString() {
        return Maps.J(this);
    }

    public Collection<V> values() {
        return delegate().values();
    }
}
