package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.bo1;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.base.Cthrow;
import com.google.common.collect.r0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public final class j0<K, V> extends AbstractMap<K, V> implements BiMap<K, V>, Serializable {

    /* renamed from: const, reason: not valid java name */
    private static final int f14352const = -1;

    /* renamed from: final, reason: not valid java name */
    private static final int f14353final = -2;

    /* renamed from: break, reason: not valid java name */
    private transient Set<V> f14354break;

    /* renamed from: case, reason: not valid java name */
    @b51
    private transient int f14355case;

    /* renamed from: catch, reason: not valid java name */
    private transient Set<Map.Entry<K, V>> f14356catch;

    /* renamed from: class, reason: not valid java name */
    @bo1
    @fs0
    @l01
    private transient BiMap<V, K> f14357class;

    /* renamed from: do, reason: not valid java name */
    private transient int[] f14358do;

    /* renamed from: else, reason: not valid java name */
    private transient int[] f14359else;

    /* renamed from: for, reason: not valid java name */
    private transient int[] f14360for;

    /* renamed from: goto, reason: not valid java name */
    private transient int[] f14361goto;

    /* renamed from: if, reason: not valid java name */
    private transient int[] f14362if;
    public transient K[] keys;
    public transient int modCount;

    /* renamed from: new, reason: not valid java name */
    private transient int[] f14363new;
    public transient int size;

    /* renamed from: this, reason: not valid java name */
    private transient Set<K> f14364this;

    /* renamed from: try, reason: not valid java name */
    @b51
    private transient int f14365try;
    public transient V[] values;

    /* renamed from: com.google.common.collect.j0$case, reason: invalid class name */
    public final class Ccase extends Cgoto<K, V, K> {
        public Ccase() {
            super(j0.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            return j0.this.containsKey(obj);
        }

        @Override // com.google.common.collect.j0.Cgoto
        /* renamed from: do, reason: not valid java name */
        public K mo15934do(int i) {
            return j0.this.keys[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@b51 Object obj) {
            int iM16086new = n0.m16086new(obj);
            int iFindEntryByKey = j0.this.findEntryByKey(obj, iM16086new);
            if (iFindEntryByKey == -1) {
                return false;
            }
            j0.this.removeEntryKeyHashKnown(iFindEntryByKey, iM16086new);
            return true;
        }
    }

    /* renamed from: com.google.common.collect.j0$do, reason: invalid class name */
    public final class Cdo extends com.google.common.collect.Celse<K, V> {

        /* renamed from: do, reason: not valid java name */
        @b51
        public final K f14367do;

        /* renamed from: if, reason: not valid java name */
        public int f14369if;

        public Cdo(int i) {
            this.f14367do = j0.this.keys[i];
            this.f14369if = i;
        }

        /* renamed from: do, reason: not valid java name */
        public void m15935do() {
            int i = this.f14369if;
            if (i != -1) {
                j0 j0Var = j0.this;
                if (i <= j0Var.size && Cthrow.m15205do(j0Var.keys[i], this.f14367do)) {
                    return;
                }
            }
            this.f14369if = j0.this.findEntryByKey(this.f14367do);
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public K getKey() {
            return this.f14367do;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        @b51
        public V getValue() {
            m15935do();
            int i = this.f14369if;
            if (i == -1) {
                return null;
            }
            return j0.this.values[i];
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V setValue(V v) {
            m15935do();
            int i = this.f14369if;
            if (i == -1) {
                return (V) j0.this.put(this.f14367do, v);
            }
            V v2 = j0.this.values[i];
            if (Cthrow.m15205do(v2, v)) {
                return v;
            }
            j0.this.m15924class(this.f14369if, v, false);
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.j0$else, reason: invalid class name */
    public final class Celse extends Cgoto<K, V, V> {
        public Celse() {
            super(j0.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            return j0.this.containsValue(obj);
        }

        @Override // com.google.common.collect.j0.Cgoto
        /* renamed from: do */
        public V mo15934do(int i) {
            return j0.this.values[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@b51 Object obj) {
            int iM16086new = n0.m16086new(obj);
            int iFindEntryByValue = j0.this.findEntryByValue(obj, iM16086new);
            if (iFindEntryByValue == -1) {
                return false;
            }
            j0.this.removeEntryValueHashKnown(iFindEntryByValue, iM16086new);
            return true;
        }
    }

    /* renamed from: com.google.common.collect.j0$for, reason: invalid class name */
    public final class Cfor extends Cgoto<K, V, Map.Entry<K, V>> {
        public Cfor() {
            super(j0.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iFindEntryByKey = j0.this.findEntryByKey(key);
            return iFindEntryByKey != -1 && Cthrow.m15205do(value, j0.this.values[iFindEntryByKey]);
        }

        @Override // com.google.common.collect.j0.Cgoto
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo15934do(int i) {
            return new Cdo(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @lf
        public boolean remove(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iM16086new = n0.m16086new(key);
            int iFindEntryByKey = j0.this.findEntryByKey(key, iM16086new);
            if (iFindEntryByKey == -1 || !Cthrow.m15205do(value, j0.this.values[iFindEntryByKey])) {
                return false;
            }
            j0.this.removeEntryKeyHashKnown(iFindEntryByKey, iM16086new);
            return true;
        }
    }

    /* renamed from: com.google.common.collect.j0$goto, reason: invalid class name */
    public static abstract class Cgoto<K, V, T> extends AbstractSet<T> {

        /* renamed from: do, reason: not valid java name */
        public final j0<K, V> f14372do;

        /* renamed from: com.google.common.collect.j0$goto$do, reason: invalid class name */
        public class Cdo implements Iterator<T> {

            /* renamed from: do, reason: not valid java name */
            private int f14373do;

            /* renamed from: for, reason: not valid java name */
            private int f14374for;

            /* renamed from: if, reason: not valid java name */
            private int f14375if = -1;

            /* renamed from: new, reason: not valid java name */
            private int f14376new;

            public Cdo() {
                this.f14373do = ((j0) Cgoto.this.f14372do).f14365try;
                j0<K, V> j0Var = Cgoto.this.f14372do;
                this.f14374for = j0Var.modCount;
                this.f14376new = j0Var.size;
            }

            /* renamed from: do, reason: not valid java name */
            private void m15937do() {
                if (Cgoto.this.f14372do.modCount != this.f14374for) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m15937do();
                return this.f14373do != -2 && this.f14376new > 0;
            }

            @Override // java.util.Iterator
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                T t = (T) Cgoto.this.mo15934do(this.f14373do);
                this.f14375if = this.f14373do;
                this.f14373do = ((j0) Cgoto.this.f14372do).f14361goto[this.f14373do];
                this.f14376new--;
                return t;
            }

            @Override // java.util.Iterator
            public void remove() {
                m15937do();
                Cdefault.m15744try(this.f14375if != -1);
                Cgoto.this.f14372do.removeEntry(this.f14375if);
                int i = this.f14373do;
                j0<K, V> j0Var = Cgoto.this.f14372do;
                if (i == j0Var.size) {
                    this.f14373do = this.f14375if;
                }
                this.f14375if = -1;
                this.f14374for = j0Var.modCount;
            }
        }

        public Cgoto(j0<K, V> j0Var) {
            this.f14372do = j0Var;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f14372do.clear();
        }

        /* renamed from: do */
        public abstract T mo15934do(int i);

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<T> iterator() {
            return new Cdo();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f14372do.size;
        }
    }

    /* renamed from: com.google.common.collect.j0$if, reason: invalid class name */
    public static final class Cif<K, V> extends com.google.common.collect.Celse<V, K> {

        /* renamed from: do, reason: not valid java name */
        public final j0<K, V> f14378do;

        /* renamed from: for, reason: not valid java name */
        public int f14379for;

        /* renamed from: if, reason: not valid java name */
        public final V f14380if;

        public Cif(j0<K, V> j0Var, int i) {
            this.f14378do = j0Var;
            this.f14380if = j0Var.values[i];
            this.f14379for = i;
        }

        /* renamed from: do, reason: not valid java name */
        private void m15938do() {
            int i = this.f14379for;
            if (i != -1) {
                j0<K, V> j0Var = this.f14378do;
                if (i <= j0Var.size && Cthrow.m15205do(this.f14380if, j0Var.values[i])) {
                    return;
                }
            }
            this.f14379for = this.f14378do.findEntryByValue(this.f14380if);
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V getKey() {
            return this.f14380if;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public K getValue() {
            m15938do();
            int i = this.f14379for;
            if (i == -1) {
                return null;
            }
            return this.f14378do.keys[i];
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public K setValue(K k) {
            m15938do();
            int i = this.f14379for;
            if (i == -1) {
                return this.f14378do.putInverse(this.f14380if, k, false);
            }
            K k2 = this.f14378do.keys[i];
            if (Cthrow.m15205do(k2, k)) {
                return k;
            }
            this.f14378do.m15923catch(this.f14379for, k, false);
            return k2;
        }
    }

    /* renamed from: com.google.common.collect.j0$new, reason: invalid class name */
    public static class Cnew<K, V> extends AbstractMap<V, K> implements BiMap<V, K>, Serializable {

        /* renamed from: do, reason: not valid java name */
        private transient Set<Map.Entry<V, K>> f14381do;
        private final j0<K, V> forward;

        public Cnew(j0<K, V> j0Var) {
            this.forward = j0Var;
        }

        @li0("serialization")
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            ((j0) this.forward).f14357class = this;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.forward.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@b51 Object obj) {
            return this.forward.containsValue(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsValue(@b51 Object obj) {
            return this.forward.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<V, K>> entrySet() {
            Set<Map.Entry<V, K>> set = this.f14381do;
            if (set != null) {
                return set;
            }
            Ctry ctry = new Ctry(this.forward);
            this.f14381do = ctry;
            return ctry;
        }

        @Override // com.google.common.collect.BiMap
        @lf
        @b51
        public K forcePut(@b51 V v, @b51 K k) {
            return this.forward.putInverse(v, k, true);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @b51
        public K get(@b51 Object obj) {
            return this.forward.getInverse(obj);
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<K, V> inverse() {
            return this.forward;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return this.forward.values();
        }

        @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
        @lf
        @b51
        public K put(@b51 V v, @b51 K k) {
            return this.forward.putInverse(v, k, false);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @lf
        @b51
        public K remove(@b51 Object obj) {
            return this.forward.removeInverse(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.forward.size;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> values() {
            return this.forward.keySet();
        }
    }

    /* renamed from: com.google.common.collect.j0$try, reason: invalid class name */
    public static class Ctry<K, V> extends Cgoto<K, V, Map.Entry<V, K>> {
        public Ctry(j0<K, V> j0Var) {
            super(j0Var);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iFindEntryByValue = this.f14372do.findEntryByValue(key);
            return iFindEntryByValue != -1 && Cthrow.m15205do(this.f14372do.keys[iFindEntryByValue], value);
        }

        @Override // com.google.common.collect.j0.Cgoto
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<V, K> mo15934do(int i) {
            return new Cif(this.f14372do, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iM16086new = n0.m16086new(key);
            int iFindEntryByValue = this.f14372do.findEntryByValue(key, iM16086new);
            if (iFindEntryByValue == -1 || !Cthrow.m15205do(this.f14372do.keys[iFindEntryByValue], value)) {
                return false;
            }
            this.f14372do.removeEntryValueHashKnown(iFindEntryByValue, iM16086new);
            return true;
        }
    }

    private j0(int i) {
        init(i);
    }

    /* renamed from: break, reason: not valid java name */
    private void m15921break(int i, int i2, int i3) {
        af1.m220new(i != -1);
        m15928for(i, i2);
        m15931new(i, i3);
        m15925const(this.f14359else[i], this.f14361goto[i]);
        m15932this(this.size - 1, i);
        K[] kArr = this.keys;
        int i4 = this.size;
        kArr[i4 - 1] = null;
        this.values[i4 - 1] = null;
        this.size = i4 - 1;
        this.modCount++;
    }

    /* renamed from: case, reason: not valid java name */
    private static int[] m15922case(int[] iArr, int i) {
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, i);
        Arrays.fill(iArrCopyOf, length, i, -1);
        return iArrCopyOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m15923catch(int i, @b51 K k, boolean z) {
        af1.m220new(i != -1);
        int iM16086new = n0.m16086new(k);
        int iFindEntryByKey = findEntryByKey(k, iM16086new);
        int i2 = this.f14355case;
        int i3 = -2;
        if (iFindEntryByKey != -1) {
            if (!z) {
                throw new IllegalArgumentException("Key already present in map: " + k);
            }
            i2 = this.f14359else[iFindEntryByKey];
            i3 = this.f14361goto[iFindEntryByKey];
            removeEntryKeyHashKnown(iFindEntryByKey, iM16086new);
            if (i == this.size) {
                i = iFindEntryByKey;
            }
        }
        if (i2 == i) {
            i2 = this.f14359else[i];
        } else if (i2 == this.size) {
            i2 = iFindEntryByKey;
        }
        if (i3 == i) {
            iFindEntryByKey = this.f14361goto[i];
        } else if (i3 != this.size) {
            iFindEntryByKey = i3;
        }
        m15925const(this.f14359else[i], this.f14361goto[i]);
        m15928for(i, n0.m16086new(this.keys[i]));
        this.keys[i] = k;
        m15927else(i, n0.m16086new(k));
        m15925const(i2, i);
        m15925const(i, iFindEntryByKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m15924class(int i, @b51 V v, boolean z) {
        af1.m220new(i != -1);
        int iM16086new = n0.m16086new(v);
        int iFindEntryByValue = findEntryByValue(v, iM16086new);
        if (iFindEntryByValue != -1) {
            if (!z) {
                throw new IllegalArgumentException("Value already present in map: " + v);
            }
            removeEntryValueHashKnown(iFindEntryByValue, iM16086new);
            if (i == this.size) {
                i = iFindEntryByValue;
            }
        }
        m15931new(i, n0.m16086new(this.values[i]));
        this.values[i] = v;
        m15929goto(i, iM16086new);
    }

    /* renamed from: const, reason: not valid java name */
    private void m15925const(int i, int i2) {
        if (i == -2) {
            this.f14365try = i2;
        } else {
            this.f14361goto[i] = i2;
        }
        if (i2 == -2) {
            this.f14355case = i;
        } else {
            this.f14359else[i2] = i;
        }
    }

    public static <K, V> j0<K, V> create() {
        return create(16);
    }

    /* renamed from: do, reason: not valid java name */
    private int m15926do(int i) {
        return i & (this.f14358do.length - 1);
    }

    /* renamed from: else, reason: not valid java name */
    private void m15927else(int i, int i2) {
        af1.m220new(i != -1);
        int iM15926do = m15926do(i2);
        int[] iArr = this.f14360for;
        int[] iArr2 = this.f14358do;
        iArr[i] = iArr2[iM15926do];
        iArr2[iM15926do] = i;
    }

    /* renamed from: for, reason: not valid java name */
    private void m15928for(int i, int i2) {
        af1.m220new(i != -1);
        int iM15926do = m15926do(i2);
        int[] iArr = this.f14358do;
        if (iArr[iM15926do] == i) {
            int[] iArr2 = this.f14360for;
            iArr[iM15926do] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i3 = iArr[iM15926do];
        int i4 = this.f14360for[i3];
        while (true) {
            int i5 = i4;
            int i6 = i3;
            i3 = i5;
            if (i3 == -1) {
                throw new AssertionError("Expected to find entry with key " + this.keys[i]);
            }
            if (i3 == i) {
                int[] iArr3 = this.f14360for;
                iArr3[i6] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i4 = this.f14360for[i3];
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m15929goto(int i, int i2) {
        af1.m220new(i != -1);
        int iM15926do = m15926do(i2);
        int[] iArr = this.f14363new;
        int[] iArr2 = this.f14362if;
        iArr[i] = iArr2[iM15926do];
        iArr2[iM15926do] = i;
    }

    /* renamed from: if, reason: not valid java name */
    private static int[] m15930if(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    /* renamed from: new, reason: not valid java name */
    private void m15931new(int i, int i2) {
        af1.m220new(i != -1);
        int iM15926do = m15926do(i2);
        int[] iArr = this.f14362if;
        if (iArr[iM15926do] == i) {
            int[] iArr2 = this.f14363new;
            iArr[iM15926do] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i3 = iArr[iM15926do];
        int i4 = this.f14363new[i3];
        while (true) {
            int i5 = i4;
            int i6 = i3;
            i3 = i5;
            if (i3 == -1) {
                throw new AssertionError("Expected to find entry with value " + this.values[i]);
            }
            if (i3 == i) {
                int[] iArr3 = this.f14363new;
                iArr3[i6] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i4 = this.f14363new[i3];
        }
    }

    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iM15610goto = b3.m15610goto(objectInputStream);
        init(16);
        b3.m15609for(this, objectInputStream, iM15610goto);
    }

    /* renamed from: this, reason: not valid java name */
    private void m15932this(int i, int i2) {
        int i3;
        int i4;
        if (i == i2) {
            return;
        }
        int i5 = this.f14359else[i];
        int i6 = this.f14361goto[i];
        m15925const(i5, i2);
        m15925const(i2, i6);
        K[] kArr = this.keys;
        K k = kArr[i];
        V[] vArr = this.values;
        V v = vArr[i];
        kArr[i2] = k;
        vArr[i2] = v;
        int iM15926do = m15926do(n0.m16086new(k));
        int[] iArr = this.f14358do;
        if (iArr[iM15926do] == i) {
            iArr[iM15926do] = i2;
        } else {
            int i7 = iArr[iM15926do];
            int i8 = this.f14360for[i7];
            while (true) {
                int i9 = i8;
                i3 = i7;
                i7 = i9;
                if (i7 == i) {
                    break;
                } else {
                    i8 = this.f14360for[i7];
                }
            }
            this.f14360for[i3] = i2;
        }
        int[] iArr2 = this.f14360for;
        iArr2[i2] = iArr2[i];
        iArr2[i] = -1;
        int iM15926do2 = m15926do(n0.m16086new(v));
        int[] iArr3 = this.f14362if;
        if (iArr3[iM15926do2] == i) {
            iArr3[iM15926do2] = i2;
        } else {
            int i10 = iArr3[iM15926do2];
            int i11 = this.f14363new[i10];
            while (true) {
                int i12 = i11;
                i4 = i10;
                i10 = i12;
                if (i10 == i) {
                    break;
                } else {
                    i11 = this.f14363new[i10];
                }
            }
            this.f14363new[i4] = i2;
        }
        int[] iArr4 = this.f14363new;
        iArr4[i2] = iArr4[i];
        iArr4[i] = -1;
    }

    /* renamed from: try, reason: not valid java name */
    private void m15933try(int i) {
        int[] iArr = this.f14360for;
        if (iArr.length < i) {
            int iM16173case = r0.Cif.m16173case(iArr.length, i);
            this.keys = (K[]) Arrays.copyOf(this.keys, iM16173case);
            this.values = (V[]) Arrays.copyOf(this.values, iM16173case);
            this.f14360for = m15922case(this.f14360for, iM16173case);
            this.f14363new = m15922case(this.f14363new, iM16173case);
            this.f14359else = m15922case(this.f14359else, iM16173case);
            this.f14361goto = m15922case(this.f14361goto, iM16173case);
        }
        if (this.f14358do.length < i) {
            int iM16083do = n0.m16083do(i, 1.0d);
            this.f14358do = m15930if(iM16083do);
            this.f14362if = m15930if(iM16083do);
            for (int i2 = 0; i2 < this.size; i2++) {
                int iM15926do = m15926do(n0.m16086new(this.keys[i2]));
                int[] iArr2 = this.f14360for;
                int[] iArr3 = this.f14358do;
                iArr2[i2] = iArr3[iM15926do];
                iArr3[iM15926do] = i2;
                int iM15926do2 = m15926do(n0.m16086new(this.values[i2]));
                int[] iArr4 = this.f14363new;
                int[] iArr5 = this.f14362if;
                iArr4[i2] = iArr5[iM15926do2];
                iArr5[iM15926do2] = i2;
            }
        }
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        b3.m15613this(this, objectOutputStream);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.keys, 0, this.size, (Object) null);
        Arrays.fill(this.values, 0, this.size, (Object) null);
        Arrays.fill(this.f14358do, -1);
        Arrays.fill(this.f14362if, -1);
        Arrays.fill(this.f14360for, 0, this.size, -1);
        Arrays.fill(this.f14363new, 0, this.size, -1);
        Arrays.fill(this.f14359else, 0, this.size, -1);
        Arrays.fill(this.f14361goto, 0, this.size, -1);
        this.size = 0;
        this.f14365try = -2;
        this.f14355case = -2;
        this.modCount++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@b51 Object obj) {
        return findEntryByKey(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@b51 Object obj) {
        return findEntryByValue(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f14356catch;
        if (set != null) {
            return set;
        }
        Cfor cfor = new Cfor();
        this.f14356catch = cfor;
        return cfor;
    }

    public int findEntry(@b51 Object obj, int i, int[] iArr, int[] iArr2, Object[] objArr) {
        int i2 = iArr[m15926do(i)];
        while (i2 != -1) {
            if (Cthrow.m15205do(objArr[i2], obj)) {
                return i2;
            }
            i2 = iArr2[i2];
        }
        return -1;
    }

    public int findEntryByKey(@b51 Object obj) {
        return findEntryByKey(obj, n0.m16086new(obj));
    }

    public int findEntryByValue(@b51 Object obj) {
        return findEntryByValue(obj, n0.m16086new(obj));
    }

    @Override // com.google.common.collect.BiMap
    @lf
    @b51
    public V forcePut(@b51 K k, @b51 V v) {
        return put(k, v, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @b51
    public V get(@b51 Object obj) {
        int iFindEntryByKey = findEntryByKey(obj);
        if (iFindEntryByKey == -1) {
            return null;
        }
        return this.values[iFindEntryByKey];
    }

    @b51
    public K getInverse(@b51 Object obj) {
        int iFindEntryByValue = findEntryByValue(obj);
        if (iFindEntryByValue == -1) {
            return null;
        }
        return this.keys[iFindEntryByValue];
    }

    public void init(int i) {
        Cdefault.m15742if(i, "expectedSize");
        int iM16083do = n0.m16083do(i, 1.0d);
        this.size = 0;
        this.keys = (K[]) new Object[i];
        this.values = (V[]) new Object[i];
        this.f14358do = m15930if(iM16083do);
        this.f14362if = m15930if(iM16083do);
        this.f14360for = m15930if(i);
        this.f14363new = m15930if(i);
        this.f14365try = -2;
        this.f14355case = -2;
        this.f14359else = m15930if(i);
        this.f14361goto = m15930if(i);
    }

    @Override // com.google.common.collect.BiMap
    public BiMap<V, K> inverse() {
        BiMap<V, K> biMap = this.f14357class;
        if (biMap != null) {
            return biMap;
        }
        Cnew cnew = new Cnew(this);
        this.f14357class = cnew;
        return cnew;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f14364this;
        if (set != null) {
            return set;
        }
        Ccase ccase = new Ccase();
        this.f14364this = ccase;
        return ccase;
    }

    @Override // java.util.AbstractMap, java.util.Map, com.google.common.collect.BiMap
    @lf
    public V put(@b51 K k, @b51 V v) {
        return put(k, v, false);
    }

    @b51
    public K putInverse(@b51 V v, @b51 K k, boolean z) {
        int iM16086new = n0.m16086new(v);
        int iFindEntryByValue = findEntryByValue(v, iM16086new);
        if (iFindEntryByValue != -1) {
            K k2 = this.keys[iFindEntryByValue];
            if (Cthrow.m15205do(k2, k)) {
                return k;
            }
            m15923catch(iFindEntryByValue, k, z);
            return k2;
        }
        int i = this.f14355case;
        int iM16086new2 = n0.m16086new(k);
        int iFindEntryByKey = findEntryByKey(k, iM16086new2);
        if (!z) {
            af1.m225return(iFindEntryByKey == -1, "Key already present: %s", k);
        } else if (iFindEntryByKey != -1) {
            i = this.f14359else[iFindEntryByKey];
            removeEntryKeyHashKnown(iFindEntryByKey, iM16086new2);
        }
        m15933try(this.size + 1);
        K[] kArr = this.keys;
        int i2 = this.size;
        kArr[i2] = k;
        this.values[i2] = v;
        m15927else(i2, iM16086new2);
        m15929goto(this.size, iM16086new);
        int i3 = i == -2 ? this.f14365try : this.f14361goto[i];
        m15925const(i, this.size);
        m15925const(this.size, i3);
        this.size++;
        this.modCount++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @lf
    @b51
    public V remove(@b51 Object obj) {
        int iM16086new = n0.m16086new(obj);
        int iFindEntryByKey = findEntryByKey(obj, iM16086new);
        if (iFindEntryByKey == -1) {
            return null;
        }
        V v = this.values[iFindEntryByKey];
        removeEntryKeyHashKnown(iFindEntryByKey, iM16086new);
        return v;
    }

    public void removeEntry(int i) {
        removeEntryKeyHashKnown(i, n0.m16086new(this.keys[i]));
    }

    public void removeEntryKeyHashKnown(int i, int i2) {
        m15921break(i, i2, n0.m16086new(this.values[i]));
    }

    public void removeEntryValueHashKnown(int i, int i2) {
        m15921break(i, n0.m16086new(this.keys[i]), i2);
    }

    @b51
    public K removeInverse(@b51 Object obj) {
        int iM16086new = n0.m16086new(obj);
        int iFindEntryByValue = findEntryByValue(obj, iM16086new);
        if (iFindEntryByValue == -1) {
            return null;
        }
        K k = this.keys[iFindEntryByValue];
        removeEntryValueHashKnown(iFindEntryByValue, iM16086new);
        return k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public static <K, V> j0<K, V> create(int i) {
        return new j0<>(i);
    }

    public int findEntryByKey(@b51 Object obj, int i) {
        return findEntry(obj, i, this.f14358do, this.f14360for, this.keys);
    }

    public int findEntryByValue(@b51 Object obj, int i) {
        return findEntry(obj, i, this.f14362if, this.f14363new, this.values);
    }

    @b51
    public V put(@b51 K k, @b51 V v, boolean z) {
        int iM16086new = n0.m16086new(k);
        int iFindEntryByKey = findEntryByKey(k, iM16086new);
        if (iFindEntryByKey != -1) {
            V v2 = this.values[iFindEntryByKey];
            if (Cthrow.m15205do(v2, v)) {
                return v;
            }
            m15924class(iFindEntryByKey, v, z);
            return v2;
        }
        int iM16086new2 = n0.m16086new(v);
        int iFindEntryByValue = findEntryByValue(v, iM16086new2);
        if (!z) {
            af1.m225return(iFindEntryByValue == -1, "Value already present: %s", v);
        } else if (iFindEntryByValue != -1) {
            removeEntryValueHashKnown(iFindEntryByValue, iM16086new2);
        }
        m15933try(this.size + 1);
        K[] kArr = this.keys;
        int i = this.size;
        kArr[i] = k;
        this.values[i] = v;
        m15927else(i, iM16086new);
        m15929goto(this.size, iM16086new2);
        m15925const(this.f14355case, this.size);
        m15925const(this.size, -2);
        this.size++;
        this.modCount++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<V> values() {
        Set<V> set = this.f14354break;
        if (set != null) {
            return set;
        }
        Celse celse = new Celse();
        this.f14354break = celse;
        return celse;
    }

    public static <K, V> j0<K, V> create(Map<? extends K, ? extends V> map) {
        j0<K, V> j0VarCreate = create(map.size());
        j0VarCreate.putAll(map);
        return j0VarCreate;
    }
}
