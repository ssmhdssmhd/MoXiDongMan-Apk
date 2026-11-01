package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.ce0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.yd0;
import com.google.common.base.Cthrow;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ki0(emulated = true)
/* renamed from: com.google.common.collect.do, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cdo<K, V> extends z<K, V> implements BiMap<K, V>, Serializable {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient Map<K, V> f14210do;

    /* renamed from: for, reason: not valid java name */
    @l01
    private transient Set<V> f14211for;

    /* renamed from: if, reason: not valid java name */
    @l01
    private transient Set<K> f14212if;

    @bo1
    @l01
    public transient Cdo<V, K> inverse;

    /* renamed from: new, reason: not valid java name */
    @l01
    private transient Set<Map.Entry<K, V>> f14213new;

    /* renamed from: com.google.common.collect.do$case, reason: invalid class name */
    public class Ccase extends ce0<V> {

        /* renamed from: do, reason: not valid java name */
        public final Set<V> f14214do;

        private Ccase() {
            this.f14214do = Cdo.this.inverse.keySet();
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.b0(Cdo.this.entrySet().iterator());
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // android.support.v4.ae0
        public String toString() {
            return standardToString();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        public /* synthetic */ Ccase(Cdo cdo, C0095do c0095do) {
            this();
        }

        @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<V> delegate() {
            return this.f14214do;
        }
    }

    /* renamed from: com.google.common.collect.do$do, reason: invalid class name and collision with other inner class name */
    public class C0095do implements Iterator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        @b51
        public Map.Entry<K, V> f14216do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterator f14218if;

        public C0095do(Iterator it) {
            this.f14218if = it;
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            Map.Entry<K, V> entry = (Map.Entry) this.f14218if.next();
            this.f14216do = entry;
            return new Cif(entry);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14218if.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14216do != null);
            V value = this.f14216do.getValue();
            this.f14218if.remove();
            Cdo.this.m15746for(value);
            this.f14216do = null;
        }
    }

    /* renamed from: com.google.common.collect.do$for, reason: invalid class name */
    public class Cfor extends ce0<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public final Set<Map.Entry<K, V>> f14219do;

        private Cfor() {
            this.f14219do = Cdo.this.f14210do.entrySet();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public void clear() {
            Cdo.this.clear();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean contains(Object obj) {
            return Maps.m15439throw(delegate(), obj);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return Cdo.this.entrySetIterator();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean remove(Object obj) {
            if (!this.f14219do.contains(obj)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            ((Cdo) Cdo.this.inverse).f14210do.remove(entry.getValue());
            this.f14219do.remove(entry);
            return true;
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        public /* synthetic */ Cfor(Cdo cdo, C0095do c0095do) {
            this();
        }

        @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<Map.Entry<K, V>> delegate() {
            return this.f14219do;
        }
    }

    /* renamed from: com.google.common.collect.do$if, reason: invalid class name */
    public class Cif extends yd0<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final Map.Entry<K, V> f14221do;

        public Cif(Map.Entry<K, V> entry) {
            this.f14221do = entry;
        }

        @Override // android.support.v4.yd0, android.support.v4.ae0
        /* renamed from: do */
        public Map.Entry<K, V> delegate() {
            return this.f14221do;
        }

        @Override // android.support.v4.yd0, java.util.Map.Entry
        public V setValue(V v) {
            Cdo.this.checkValue(v);
            af1.u(Cdo.this.entrySet().contains(this), "entry no longer in map");
            if (Cthrow.m15205do(v, getValue())) {
                return v;
            }
            af1.m225return(!Cdo.this.containsValue(v), "value already present: %s", v);
            V value = this.f14221do.setValue(v);
            af1.u(Cthrow.m15205do(v, Cdo.this.get(getKey())), "entry no longer in map");
            Cdo.this.m15748new(getKey(), true, value, v);
            return value;
        }
    }

    /* renamed from: com.google.common.collect.do$new, reason: invalid class name */
    public static class Cnew<K, V> extends Cdo<K, V> {

        @li0
        private static final long serialVersionUID = 0;

        public Cnew(Map<K, V> map, Cdo<V, K> cdo) {
            super(map, cdo, null);
        }

        @li0
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            setInverse((Cdo) objectInputStream.readObject());
        }

        @li0
        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(inverse());
        }

        @Override // com.google.common.collect.Cdo
        public K checkKey(K k) {
            return this.inverse.checkValue(k);
        }

        @Override // com.google.common.collect.Cdo
        public V checkValue(V v) {
            return this.inverse.checkKey(v);
        }

        @Override // com.google.common.collect.Cdo, com.google.common.collect.z, android.support.v4.ae0
        public /* bridge */ /* synthetic */ Object delegate() {
            return super.delegate();
        }

        @li0
        public Object readResolve() {
            return inverse().inverse();
        }

        @Override // com.google.common.collect.Cdo, com.google.common.collect.z, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    /* renamed from: com.google.common.collect.do$try, reason: invalid class name */
    public class Ctry extends ce0<K> {
        private Ctry() {
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public void clear() {
            Cdo.this.clear();
        }

        @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return Maps.f(Cdo.this.entrySet().iterator());
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            Cdo.this.m15747if(obj);
            return true;
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }

        public /* synthetic */ Ctry(Cdo cdo, C0095do c0095do) {
            this();
        }

        @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<K> delegate() {
            return Cdo.this.f14210do.keySet();
        }
    }

    public /* synthetic */ Cdo(Map map, Cdo cdo, C0095do c0095do) {
        this(map, cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private V m15745do(@b51 K k, @b51 V v, boolean z) {
        checkKey(k);
        checkValue(v);
        boolean zContainsKey = containsKey(k);
        if (zContainsKey && Cthrow.m15205do(v, get(k))) {
            return v;
        }
        if (z) {
            inverse().remove(v);
        } else {
            af1.m225return(!containsValue(v), "value already present: %s", v);
        }
        V vPut = this.f14210do.put(k, v);
        m15748new(k, zContainsKey, vPut, v);
        return vPut;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m15746for(V v) {
        this.inverse.f14210do.remove(v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @lf
    /* renamed from: if, reason: not valid java name */
    public V m15747if(Object obj) {
        V vRemove = this.f14210do.remove(obj);
        m15746for(vRemove);
        return vRemove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public void m15748new(K k, boolean z, V v, V v2) {
        if (z) {
            m15746for(v);
        }
        this.inverse.f14210do.put(v2, k);
    }

    @lf
    public K checkKey(@b51 K k) {
        return k;
    }

    @lf
    public V checkValue(@b51 V v) {
        return v;
    }

    @Override // com.google.common.collect.z, java.util.Map
    public void clear() {
        this.f14210do.clear();
        this.inverse.f14210do.clear();
    }

    @Override // com.google.common.collect.z, java.util.Map
    public boolean containsValue(@b51 Object obj) {
        return this.inverse.containsKey(obj);
    }

    @Override // com.google.common.collect.z, java.util.Map, java.util.SortedMap
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f14213new;
        if (set != null) {
            return set;
        }
        Cfor cfor = new Cfor(this, null);
        this.f14213new = cfor;
        return cfor;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        return new C0095do(this.f14210do.entrySet().iterator());
    }

    @Override // com.google.common.collect.BiMap
    @lf
    public V forcePut(@b51 K k, @b51 V v) {
        return m15745do(k, v, true);
    }

    @Override // com.google.common.collect.BiMap
    public BiMap<V, K> inverse() {
        return this.inverse;
    }

    @Override // com.google.common.collect.z, java.util.Map, java.util.SortedMap
    public Set<K> keySet() {
        Set<K> set = this.f14212if;
        if (set != null) {
            return set;
        }
        Ctry ctry = new Ctry(this, null);
        this.f14212if = ctry;
        return ctry;
    }

    public Cdo<V, K> makeInverse(Map<V, K> map) {
        return new Cnew(map, this);
    }

    @Override // com.google.common.collect.z, java.util.Map
    @lf
    public V put(@b51 K k, @b51 V v) {
        return m15745do(k, v, false);
    }

    @Override // com.google.common.collect.z, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.z, java.util.Map
    @lf
    public V remove(@b51 Object obj) {
        if (containsKey(obj)) {
            return m15747if(obj);
        }
        return null;
    }

    public void setDelegates(Map<K, V> map, Map<V, K> map2) {
        af1.t(this.f14210do == null);
        af1.t(this.inverse == null);
        af1.m220new(map.isEmpty());
        af1.m220new(map2.isEmpty());
        af1.m220new(map != map2);
        this.f14210do = map;
        this.inverse = makeInverse(map2);
    }

    public void setInverse(Cdo<V, K> cdo) {
        this.inverse = cdo;
    }

    public Cdo(Map<K, V> map, Map<V, K> map2) {
        setDelegates(map, map2);
    }

    @Override // com.google.common.collect.z, android.support.v4.ae0
    public Map<K, V> delegate() {
        return this.f14210do;
    }

    @Override // com.google.common.collect.z, java.util.Map
    public Set<V> values() {
        Set<V> set = this.f14211for;
        if (set != null) {
            return set;
        }
        Ccase ccase = new Ccase(this, null);
        this.f14211for = ccase;
        return ccase;
    }

    private Cdo(Map<K, V> map, Cdo<V, K> cdo) {
        this.f14210do = map;
        this.inverse = cdo;
    }
}
