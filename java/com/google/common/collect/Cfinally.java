package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.base.Cthrow;
import com.google.common.primitives.Cthis;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@li0
/* renamed from: com.google.common.collect.finally, reason: invalid class name */
/* loaded from: classes2.dex */
class Cfinally<K, V> extends AbstractMap<K, V> implements Serializable {

    @af2
    public static final double HASH_FLOODING_FPP = 0.001d;

    /* renamed from: else, reason: not valid java name */
    private static final Object f14269else = new Object();

    /* renamed from: goto, reason: not valid java name */
    private static final int f14270goto = 9;

    /* renamed from: case, reason: not valid java name */
    @l01
    private transient Collection<V> f14271case;

    /* renamed from: do, reason: not valid java name */
    @b51
    private transient Object f14272do;

    @af2
    @b51
    public transient int[] entries;

    /* renamed from: for, reason: not valid java name */
    private transient int f14273for;

    /* renamed from: if, reason: not valid java name */
    private transient int f14274if;

    @af2
    @b51
    public transient Object[] keys;

    /* renamed from: new, reason: not valid java name */
    @l01
    private transient Set<K> f14275new;

    /* renamed from: try, reason: not valid java name */
    @l01
    private transient Set<Map.Entry<K, V>> f14276try;

    @af2
    @b51
    public transient Object[] values;

    /* renamed from: com.google.common.collect.finally$case, reason: invalid class name */
    public class Ccase extends AbstractSet<K> {
        public Ccase() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Cfinally.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return Cfinally.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return Cfinally.this.keySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@b51 Object obj) {
            Map<K, V> mapDelegateOrNull = Cfinally.this.delegateOrNull();
            return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().remove(obj) : Cfinally.this.m15795for(obj) != Cfinally.f14269else;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cfinally.this.size();
        }
    }

    /* renamed from: com.google.common.collect.finally$do, reason: invalid class name */
    public class Cdo extends Cfinally<K, V>.Ctry<K> {
        public Cdo() {
            super(Cfinally.this, null);
        }

        @Override // com.google.common.collect.Cfinally.Ctry
        /* renamed from: if, reason: not valid java name */
        public K mo15799if(int i) {
            return (K) Cfinally.this.keys[i];
        }
    }

    /* renamed from: com.google.common.collect.finally$else, reason: invalid class name */
    public final class Celse extends com.google.common.collect.Celse<K, V> {

        /* renamed from: do, reason: not valid java name */
        @b51
        private final K f14279do;

        /* renamed from: if, reason: not valid java name */
        private int f14281if;

        public Celse(int i) {
            this.f14279do = (K) Cfinally.this.keys[i];
            this.f14281if = i;
        }

        /* renamed from: do, reason: not valid java name */
        private void m15800do() {
            int i = this.f14281if;
            if (i == -1 || i >= Cfinally.this.size() || !Cthrow.m15205do(this.f14279do, Cfinally.this.keys[this.f14281if])) {
                this.f14281if = Cfinally.this.m15796if(this.f14279do);
            }
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        @b51
        public K getKey() {
            return this.f14279do;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        @b51
        public V getValue() {
            Map<K, V> mapDelegateOrNull = Cfinally.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.get(this.f14279do);
            }
            m15800do();
            int i = this.f14281if;
            if (i == -1) {
                return null;
            }
            return (V) Cfinally.this.values[i];
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V setValue(V v) {
            Map<K, V> mapDelegateOrNull = Cfinally.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.put(this.f14279do, v);
            }
            m15800do();
            int i = this.f14281if;
            if (i == -1) {
                Cfinally.this.put(this.f14279do, v);
                return null;
            }
            Object[] objArr = Cfinally.this.values;
            V v2 = (V) objArr[i];
            objArr[i] = v;
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.finally$for, reason: invalid class name */
    public class Cfor extends Cfinally<K, V>.Ctry<V> {
        public Cfor() {
            super(Cfinally.this, null);
        }

        @Override // com.google.common.collect.Cfinally.Ctry
        /* renamed from: if */
        public V mo15799if(int i) {
            return (V) Cfinally.this.values[i];
        }
    }

    /* renamed from: com.google.common.collect.finally$goto, reason: invalid class name */
    public class Cgoto extends AbstractCollection<V> {
        public Cgoto() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Cfinally.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Cfinally.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return Cfinally.this.size();
        }
    }

    /* renamed from: com.google.common.collect.finally$if, reason: invalid class name */
    public class Cif extends Cfinally<K, V>.Ctry<Map.Entry<K, V>> {
        public Cif() {
            super(Cfinally.this, null);
        }

        @Override // com.google.common.collect.Cfinally.Ctry
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> mo15799if(int i) {
            return new Celse(i);
        }
    }

    /* renamed from: com.google.common.collect.finally$new, reason: invalid class name */
    public class Cnew extends AbstractSet<Map.Entry<K, V>> {
        public Cnew() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Cfinally.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            Map<K, V> mapDelegateOrNull = Cfinally.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iM15796if = Cfinally.this.m15796if(entry.getKey());
            return iM15796if != -1 && Cthrow.m15205do(Cfinally.this.values[iM15796if], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return Cfinally.this.entrySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@b51 Object obj) {
            Map<K, V> mapDelegateOrNull = Cfinally.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (Cfinally.this.needsAllocArrays()) {
                return false;
            }
            int iM15794do = Cfinally.this.m15794do();
            Object key = entry.getKey();
            Object value = entry.getValue();
            Object obj2 = Cfinally.this.f14272do;
            Cfinally cfinally = Cfinally.this;
            int iM16129case = Cprivate.m16129case(key, value, iM15794do, obj2, cfinally.entries, cfinally.keys, cfinally.values);
            if (iM16129case == -1) {
                return false;
            }
            Cfinally.this.moveLastEntry(iM16129case, iM15794do);
            Cfinally.access$710(Cfinally.this);
            Cfinally.this.incrementModCount();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cfinally.this.size();
        }
    }

    public Cfinally() {
        init(3);
    }

    public static /* synthetic */ int access$710(Cfinally cfinally) {
        int i = cfinally.f14273for;
        cfinally.f14273for = i - 1;
        return i;
    }

    /* renamed from: case, reason: not valid java name */
    private void m15793case(int i) {
        this.f14274if = Cprivate.m16135new(this.f14274if, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    public static <K, V> Cfinally<K, V> create() {
        return new Cfinally<>();
    }

    public static <K, V> Cfinally<K, V> createWithExpectedSize(int i) {
        return new Cfinally<>(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public int m15794do() {
        return (1 << (this.f14274if & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @b51
    /* renamed from: for, reason: not valid java name */
    public Object m15795for(@b51 Object obj) {
        if (needsAllocArrays()) {
            return f14269else;
        }
        int iM15794do = m15794do();
        int iM16129case = Cprivate.m16129case(obj, null, iM15794do, this.f14272do, this.entries, this.keys, null);
        if (iM16129case == -1) {
            return f14269else;
        }
        Object obj2 = this.values[iM16129case];
        moveLastEntry(iM16129case, iM15794do);
        this.f14273for--;
        incrementModCount();
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public int m15796if(@b51 Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int iM16086new = n0.m16086new(obj);
        int iM15794do = m15794do();
        int iM16133goto = Cprivate.m16133goto(this.f14272do, iM16086new & iM15794do);
        if (iM16133goto == 0) {
            return -1;
        }
        int iM16134if = Cprivate.m16134if(iM16086new, iM15794do);
        do {
            int i = iM16133goto - 1;
            int i2 = this.entries[i];
            if (Cprivate.m16134if(i2, iM15794do) == iM16134if && Cthrow.m15205do(obj, this.keys[i])) {
                return i;
            }
            iM16133goto = Cprivate.m16132for(i2, iM15794do);
        } while (iM16133goto != 0);
        return -1;
    }

    /* renamed from: new, reason: not valid java name */
    private void m15797new(int i) {
        int iMin;
        int length = this.entries.length;
        if (i <= length || (iMin = Math.min(Cprivate.f14515try, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException("Invalid size: " + i);
        }
        init(i);
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    @lf
    /* renamed from: try, reason: not valid java name */
    private int m15798try(int i, int i2, int i3, int i4) {
        Object objM16130do = Cprivate.m16130do(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            Cprivate.m16136this(objM16130do, i3 & i5, i4 + 1);
        }
        Object obj = this.f14272do;
        int[] iArr = this.entries;
        for (int i6 = 0; i6 <= i; i6++) {
            int iM16133goto = Cprivate.m16133goto(obj, i6);
            while (iM16133goto != 0) {
                int i7 = iM16133goto - 1;
                int i8 = iArr[i7];
                int iM16134if = Cprivate.m16134if(i8, i) | i6;
                int i9 = iM16134if & i5;
                int iM16133goto2 = Cprivate.m16133goto(objM16130do, i9);
                Cprivate.m16136this(objM16130do, i9, iM16133goto);
                iArr[i7] = Cprivate.m16135new(iM16134if, iM16133goto2, i5);
                iM16133goto = Cprivate.m16132for(i8, i);
            }
        }
        this.f14272do = objM16130do;
        m15793case(i5);
        return i5;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> itEntrySetIterator = entrySetIterator();
        while (itEntrySetIterator.hasNext()) {
            Map.Entry<K, V> next = itEntrySetIterator.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    public void accessEntry(int i) {
    }

    public int adjustAfterRemove(int i, int i2) {
        return i - 1;
    }

    @lf
    public int allocArrays() {
        af1.u(needsAllocArrays(), "Arrays already allocated");
        int i = this.f14274if;
        int iM16128break = Cprivate.m16128break(i);
        this.f14272do = Cprivate.m16130do(iM16128break);
        m15793case(iM16128break - 1);
        this.entries = new int[i];
        this.keys = new Object[i];
        this.values = new Object[i];
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        if (delegateOrNull() != null) {
            this.f14274if = Cthis.m17685else(size(), 3, Cprivate.f14515try);
            this.f14272do = null;
            this.f14273for = 0;
        } else {
            Arrays.fill(this.keys, 0, this.f14273for, (Object) null);
            Arrays.fill(this.values, 0, this.f14273for, (Object) null);
            Cprivate.m16131else(this.f14272do);
            Arrays.fill(this.entries, 0, this.f14273for, 0);
            this.f14273for = 0;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@b51 Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.containsKey(obj) : m15796if(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@b51 Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsValue(obj);
        }
        for (int i = 0; i < this.f14273for; i++) {
            if (Cthrow.m15205do(obj, this.values[i])) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @af2
    @lf
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(m15794do() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            mapCreateHashFloodingResistantDelegate.put(this.keys[iFirstEntryIndex], this.values[iFirstEntryIndex]);
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.f14272do = mapCreateHashFloodingResistantDelegate;
        this.entries = null;
        this.keys = null;
        this.values = null;
        incrementModCount();
        return mapCreateHashFloodingResistantDelegate;
    }

    public Set<Map.Entry<K, V>> createEntrySet() {
        return new Cnew();
    }

    public Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    public Set<K> createKeySet() {
        return new Ccase();
    }

    public Collection<V> createValues() {
        return new Cgoto();
    }

    @af2
    @b51
    public Map<K, V> delegateOrNull() {
        Object obj = this.f14272do;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f14276try;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setCreateEntrySet = createEntrySet();
        this.f14276try = setCreateEntrySet;
        return setCreateEntrySet;
    }

    public Iterator<Map.Entry<K, V>> entrySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.entrySet().iterator() : new Cif();
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@b51 Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.get(obj);
        }
        int iM15796if = m15796if(obj);
        if (iM15796if == -1) {
            return null;
        }
        accessEntry(iM15796if);
        return (V) this.values[iM15796if];
    }

    public int getSuccessor(int i) {
        int i2 = i + 1;
        if (i2 < this.f14273for) {
            return i2;
        }
        return -1;
    }

    public void incrementModCount() {
        this.f14274if += 32;
    }

    public void init(int i) {
        af1.m235try(i >= 0, "Expected size must be >= 0");
        this.f14274if = Cthis.m17685else(i, 1, Cprivate.f14515try);
    }

    public void insertEntry(int i, @b51 K k, @b51 V v, int i2, int i3) {
        this.entries[i] = Cprivate.m16135new(i2, 0, i3);
        this.keys[i] = k;
        this.values[i] = v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f14275new;
        if (set != null) {
            return set;
        }
        Set<K> setCreateKeySet = createKeySet();
        this.f14275new = setCreateKeySet;
        return setCreateKeySet;
    }

    public Iterator<K> keySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().iterator() : new Cdo();
    }

    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        if (i >= size) {
            this.keys[i] = null;
            this.values[i] = null;
            this.entries[i] = 0;
            return;
        }
        Object[] objArr = this.keys;
        Object obj = objArr[size];
        objArr[i] = obj;
        Object[] objArr2 = this.values;
        objArr2[i] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        int[] iArr = this.entries;
        iArr[i] = iArr[size];
        iArr[size] = 0;
        int iM16086new = n0.m16086new(obj) & i2;
        int iM16133goto = Cprivate.m16133goto(this.f14272do, iM16086new);
        int i3 = size + 1;
        if (iM16133goto == i3) {
            Cprivate.m16136this(this.f14272do, iM16086new, i + 1);
            return;
        }
        while (true) {
            int i4 = iM16133goto - 1;
            int i5 = this.entries[i4];
            int iM16132for = Cprivate.m16132for(i5, i2);
            if (iM16132for == i3) {
                this.entries[i4] = Cprivate.m16135new(i5, i + 1, i2);
                return;
            }
            iM16133goto = iM16132for;
        }
    }

    @af2
    public boolean needsAllocArrays() {
        return this.f14272do == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @lf
    @b51
    public V put(@b51 K k, @b51 V v) {
        int iM15798try;
        int i;
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.put(k, v);
        }
        int[] iArr = this.entries;
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        int i2 = this.f14273for;
        int i3 = i2 + 1;
        int iM16086new = n0.m16086new(k);
        int iM15794do = m15794do();
        int i4 = iM16086new & iM15794do;
        int iM16133goto = Cprivate.m16133goto(this.f14272do, i4);
        if (iM16133goto != 0) {
            int iM16134if = Cprivate.m16134if(iM16086new, iM15794do);
            int i5 = 0;
            while (true) {
                int i6 = iM16133goto - 1;
                int i7 = iArr[i6];
                if (Cprivate.m16134if(i7, iM15794do) == iM16134if && Cthrow.m15205do(k, objArr[i6])) {
                    V v2 = (V) objArr2[i6];
                    objArr2[i6] = v;
                    accessEntry(i6);
                    return v2;
                }
                int iM16132for = Cprivate.m16132for(i7, iM15794do);
                i5++;
                if (iM16132for != 0) {
                    iM16133goto = iM16132for;
                } else {
                    if (i5 >= 9) {
                        return convertToHashFloodingResistantImplementation().put(k, v);
                    }
                    if (i3 > iM15794do) {
                        iM15798try = m15798try(iM15794do, Cprivate.m16137try(iM15794do), iM16086new, i2);
                    } else {
                        iArr[i6] = Cprivate.m16135new(i7, i3, iM15794do);
                    }
                }
            }
            i = iM15794do;
        } else if (i3 > iM15794do) {
            iM15798try = m15798try(iM15794do, Cprivate.m16137try(iM15794do), iM16086new, i2);
            i = iM15798try;
        } else {
            Cprivate.m16136this(this.f14272do, i4, i3);
            i = iM15794do;
        }
        m15797new(i3);
        insertEntry(i2, k, v, iM16086new, i);
        this.f14273for = i3;
        incrementModCount();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @lf
    @b51
    public V remove(@b51 Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.remove(obj);
        }
        V v = (V) m15795for(obj);
        if (v == f14269else) {
            return null;
        }
        return v;
    }

    public void resizeEntries(int i) {
        this.entries = Arrays.copyOf(this.entries, i);
        this.keys = Arrays.copyOf(this.keys, i);
        this.values = Arrays.copyOf(this.values, i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.size() : this.f14273for;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            mapCreateHashFloodingResistantDelegate.putAll(mapDelegateOrNull);
            this.f14272do = mapCreateHashFloodingResistantDelegate;
            return;
        }
        int i = this.f14273for;
        if (i < this.entries.length) {
            resizeEntries(i);
        }
        int iM16128break = Cprivate.m16128break(i);
        int iM15794do = m15794do();
        if (iM16128break < iM15794do) {
            m15798try(iM15794do, iM16128break, 0, 0);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f14271case;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.f14271case = collectionCreateValues;
        return collectionCreateValues;
    }

    public Iterator<V> valuesIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.values().iterator() : new Cfor();
    }

    public Cfinally(int i) {
        init(i);
    }

    /* renamed from: com.google.common.collect.finally$try, reason: invalid class name */
    public abstract class Ctry<T> implements Iterator<T> {

        /* renamed from: do, reason: not valid java name */
        public int f14286do;

        /* renamed from: for, reason: not valid java name */
        public int f14287for;

        /* renamed from: if, reason: not valid java name */
        public int f14288if;

        private Ctry() {
            this.f14286do = Cfinally.this.f14274if;
            this.f14288if = Cfinally.this.firstEntryIndex();
            this.f14287for = -1;
        }

        /* renamed from: do, reason: not valid java name */
        private void m15802do() {
            if (Cfinally.this.f14274if != this.f14286do) {
                throw new ConcurrentModificationException();
            }
        }

        /* renamed from: for, reason: not valid java name */
        public void m15803for() {
            this.f14286do += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f14288if >= 0;
        }

        /* renamed from: if */
        public abstract T mo15799if(int i);

        @Override // java.util.Iterator
        public T next() {
            m15802do();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.f14288if;
            this.f14287for = i;
            T tMo15799if = mo15799if(i);
            this.f14288if = Cfinally.this.getSuccessor(this.f14288if);
            return tMo15799if;
        }

        @Override // java.util.Iterator
        public void remove() {
            m15802do();
            Cdefault.m15744try(this.f14287for >= 0);
            m15803for();
            Cfinally cfinally = Cfinally.this;
            cfinally.remove(cfinally.keys[this.f14287for]);
            this.f14288if = Cfinally.this.adjustAfterRemove(this.f14288if, this.f14287for);
            this.f14287for = -1;
        }

        public /* synthetic */ Ctry(Cfinally cfinally, Cdo cdo) {
            this();
        }
    }
}
