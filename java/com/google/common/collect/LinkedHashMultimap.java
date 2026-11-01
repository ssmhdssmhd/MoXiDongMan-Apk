package com.google.common.collect;

import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.base.Cthrow;
import com.google.common.collect.c3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public final class LinkedHashMultimap<K, V> extends u1<K, V> {

    @af2
    public static final double VALUE_SET_LOAD_FACTOR = 1.0d;

    /* renamed from: break, reason: not valid java name */
    private static final int f13942break = 2;

    @li0
    private static final long serialVersionUID = 1;

    /* renamed from: this, reason: not valid java name */
    private static final int f13943this = 16;

    /* renamed from: goto, reason: not valid java name */
    private transient Cif<K, V> f13944goto;

    @af2
    public transient int valueSetCapacity;

    public interface ValueSetLink<K, V> {
        ValueSetLink<K, V> getPredecessorInValueSet();

        ValueSetLink<K, V> getSuccessorInValueSet();

        void setPredecessorInValueSet(ValueSetLink<K, V> valueSetLink);

        void setSuccessorInValueSet(ValueSetLink<K, V> valueSetLink);
    }

    /* renamed from: com.google.common.collect.LinkedHashMultimap$do, reason: invalid class name */
    public class Cdo implements Iterator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public Cif<K, V> f13945do;

        /* renamed from: if, reason: not valid java name */
        @b51
        public Cif<K, V> f13947if;

        public Cdo() {
            this.f13945do = LinkedHashMultimap.this.f13944goto.successorInMultimap;
        }

        @Override // java.util.Iterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Cif<K, V> cif = this.f13945do;
            this.f13947if = cif;
            this.f13945do = cif.successorInMultimap;
            return cif;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13945do != LinkedHashMultimap.this.f13944goto;
        }

        @Override // java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f13947if != null);
            LinkedHashMultimap.this.remove(this.f13947if.getKey(), this.f13947if.getValue());
            this.f13947if = null;
        }
    }

    @af2
    /* renamed from: com.google.common.collect.LinkedHashMultimap$for, reason: invalid class name */
    public final class Cfor extends c3.Ccatch<V> implements ValueSetLink<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final K f13949do;

        /* renamed from: if, reason: not valid java name */
        @af2
        public Cif<K, V>[] f13952if;

        /* renamed from: for, reason: not valid java name */
        private int f13951for = 0;

        /* renamed from: new, reason: not valid java name */
        private int f13953new = 0;

        /* renamed from: try, reason: not valid java name */
        private ValueSetLink<K, V> f13954try = this;

        /* renamed from: case, reason: not valid java name */
        private ValueSetLink<K, V> f13948case = this;

        /* renamed from: com.google.common.collect.LinkedHashMultimap$for$do, reason: invalid class name */
        public class Cdo implements Iterator<V> {

            /* renamed from: do, reason: not valid java name */
            public ValueSetLink<K, V> f13955do;

            /* renamed from: for, reason: not valid java name */
            public int f13956for;

            /* renamed from: if, reason: not valid java name */
            @b51
            public Cif<K, V> f13957if;

            public Cdo() {
                this.f13955do = Cfor.this.f13954try;
                this.f13956for = Cfor.this.f13953new;
            }

            /* renamed from: do, reason: not valid java name */
            private void m15347do() {
                if (Cfor.this.f13953new != this.f13956for) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                m15347do();
                return this.f13955do != Cfor.this;
            }

            @Override // java.util.Iterator
            public V next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                Cif<K, V> cif = (Cif) this.f13955do;
                V value = cif.getValue();
                this.f13957if = cif;
                this.f13955do = cif.getSuccessorInValueSet();
                return value;
            }

            @Override // java.util.Iterator
            public void remove() {
                m15347do();
                Cdefault.m15744try(this.f13957if != null);
                Cfor.this.remove(this.f13957if.getValue());
                this.f13956for = Cfor.this.f13953new;
                this.f13957if = null;
            }
        }

        public Cfor(K k, int i) {
            this.f13949do = k;
            this.f13952if = new Cif[n0.m16083do(i, 1.0d)];
        }

        /* renamed from: for, reason: not valid java name */
        private int m15344for() {
            return this.f13952if.length - 1;
        }

        /* renamed from: new, reason: not valid java name */
        private void m15346new() {
            if (n0.m16085if(this.f13951for, this.f13952if.length, 1.0d)) {
                int length = this.f13952if.length * 2;
                Cif<K, V>[] cifArr = new Cif[length];
                this.f13952if = cifArr;
                int i = length - 1;
                for (ValueSetLink<K, V> successorInValueSet = this.f13954try; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                    Cif<K, V> cif = (Cif) successorInValueSet;
                    int i2 = cif.smearedValueHash & i;
                    cif.nextInValueBucket = cifArr[i2];
                    cifArr[i2] = cif;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(@b51 V v) {
            int iM16086new = n0.m16086new(v);
            int iM15344for = m15344for() & iM16086new;
            Cif<K, V> cif = this.f13952if[iM15344for];
            for (Cif<K, V> cif2 = cif; cif2 != null; cif2 = cif2.nextInValueBucket) {
                if (cif2.matchesValue(v, iM16086new)) {
                    return false;
                }
            }
            Cif<K, V> cif3 = new Cif<>(this.f13949do, v, iM16086new, cif);
            LinkedHashMultimap.m15339else(this.f13948case, cif3);
            LinkedHashMultimap.m15339else(cif3, this);
            LinkedHashMultimap.m15338case(LinkedHashMultimap.this.f13944goto.getPredecessorInMultimap(), cif3);
            LinkedHashMultimap.m15338case(cif3, LinkedHashMultimap.this.f13944goto);
            this.f13952if[iM15344for] = cif3;
            this.f13951for++;
            this.f13953new++;
            m15346new();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.f13952if, (Object) null);
            this.f13951for = 0;
            for (ValueSetLink<K, V> successorInValueSet = this.f13954try; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                LinkedHashMultimap.m15340new((Cif) successorInValueSet);
            }
            LinkedHashMultimap.m15339else(this, this);
            this.f13953new++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@b51 Object obj) {
            int iM16086new = n0.m16086new(obj);
            for (Cif<K, V> cif = this.f13952if[m15344for() & iM16086new]; cif != null; cif = cif.nextInValueBucket) {
                if (cif.matchesValue(obj, iM16086new)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getPredecessorInValueSet() {
            return this.f13948case;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getSuccessorInValueSet() {
            return this.f13954try;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<V> iterator() {
            return new Cdo();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @lf
        public boolean remove(@b51 Object obj) {
            int iM16086new = n0.m16086new(obj);
            int iM15344for = m15344for() & iM16086new;
            Cif<K, V> cif = null;
            for (Cif<K, V> cif2 = this.f13952if[iM15344for]; cif2 != null; cif2 = cif2.nextInValueBucket) {
                if (cif2.matchesValue(obj, iM16086new)) {
                    if (cif == null) {
                        this.f13952if[iM15344for] = cif2.nextInValueBucket;
                    } else {
                        cif.nextInValueBucket = cif2.nextInValueBucket;
                    }
                    LinkedHashMultimap.m15341try(cif2);
                    LinkedHashMultimap.m15340new(cif2);
                    this.f13951for--;
                    this.f13953new++;
                    return true;
                }
                cif = cif2;
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setPredecessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.f13948case = valueSetLink;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setSuccessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.f13954try = valueSetLink;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f13951for;
        }
    }

    @af2
    /* renamed from: com.google.common.collect.LinkedHashMultimap$if, reason: invalid class name */
    public static final class Cif<K, V> extends s0<K, V> implements ValueSetLink<K, V> {

        @b51
        public Cif<K, V> nextInValueBucket;

        @b51
        public Cif<K, V> predecessorInMultimap;

        @b51
        public ValueSetLink<K, V> predecessorInValueSet;
        public final int smearedValueHash;

        @b51
        public Cif<K, V> successorInMultimap;

        @b51
        public ValueSetLink<K, V> successorInValueSet;

        public Cif(@b51 K k, @b51 V v, int i, @b51 Cif<K, V> cif) {
            super(k, v);
            this.smearedValueHash = i;
            this.nextInValueBucket = cif;
        }

        public Cif<K, V> getPredecessorInMultimap() {
            return this.predecessorInMultimap;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getPredecessorInValueSet() {
            return this.predecessorInValueSet;
        }

        public Cif<K, V> getSuccessorInMultimap() {
            return this.successorInMultimap;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public ValueSetLink<K, V> getSuccessorInValueSet() {
            return this.successorInValueSet;
        }

        public boolean matchesValue(@b51 Object obj, int i) {
            return this.smearedValueHash == i && Cthrow.m15205do(getValue(), obj);
        }

        public void setPredecessorInMultimap(Cif<K, V> cif) {
            this.predecessorInMultimap = cif;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setPredecessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.predecessorInValueSet = valueSetLink;
        }

        public void setSuccessorInMultimap(Cif<K, V> cif) {
            this.successorInMultimap = cif;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.ValueSetLink
        public void setSuccessorInValueSet(ValueSetLink<K, V> valueSetLink) {
            this.successorInValueSet = valueSetLink;
        }
    }

    private LinkedHashMultimap(int i, int i2) {
        super(l2.m15987case(i));
        this.valueSetCapacity = 2;
        Cdefault.m15742if(i2, "expectedValuesPerKey");
        this.valueSetCapacity = i2;
        Cif<K, V> cif = new Cif<>(null, null, 0, null);
        this.f13944goto = cif;
        m15338case(cif, cif);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static <K, V> void m15338case(Cif<K, V> cif, Cif<K, V> cif2) {
        cif.setSuccessorInMultimap(cif2);
        cif2.setPredecessorInMultimap(cif);
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static <K, V> void m15339else(ValueSetLink<K, V> valueSetLink, ValueSetLink<K, V> valueSetLink2) {
        valueSetLink.setSuccessorInValueSet(valueSetLink2);
        valueSetLink2.setPredecessorInValueSet(valueSetLink);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static <K, V> void m15340new(Cif<K, V> cif) {
        m15338case(cif.getPredecessorInMultimap(), cif.getSuccessorInMultimap());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Cif<K, V> cif = new Cif<>(null, null, 0, null);
        this.f13944goto = cif;
        m15338case(cif, cif);
        this.valueSetCapacity = 2;
        int i = objectInputStream.readInt();
        Map mapM15987case = l2.m15987case(12);
        for (int i2 = 0; i2 < i; i2++) {
            Object object = objectInputStream.readObject();
            mapM15987case.put(object, createCollection(object));
        }
        int i3 = objectInputStream.readInt();
        for (int i4 = 0; i4 < i3; i4++) {
            Object object2 = objectInputStream.readObject();
            ((Collection) mapM15987case.get(object2)).add(objectInputStream.readObject());
        }
        setMap(mapM15987case);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static <K, V> void m15341try(ValueSetLink<K, V> valueSetLink) {
        m15339else(valueSetLink.getPredecessorInValueSet(), valueSetLink.getSuccessorInValueSet());
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public void clear() {
        super.clear();
        Cif<K, V> cif = this.f13944goto;
        m15338case(cif, cif);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@b51 Object obj, @b51 Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsKey(@b51 Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsValue(@b51 Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
    public Iterator<Map.Entry<K, V>> entryIterator() {
        return new Cdo();
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set get(@b51 Object obj) {
        return super.get((LinkedHashMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Set<K> keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean put(@b51 Object obj, @b51 Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean putAll(Multimap multimap) {
        return super.putAll(multimap);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean remove(@b51 Object obj, @b51 Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Set removeAll(@b51 Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Collection replaceValues(@b51 Object obj, Iterable iterable) {
        return replaceValues((LinkedHashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.Cgoto
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto
    public Iterator<V> valueIterator() {
        return Maps.b0(entryIterator());
    }

    @Override // com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i, int i2) {
        return new LinkedHashMultimap<>(Maps.m15435super(i), Maps.m15435super(i2));
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry
    public Set<V> createCollection() {
        return l2.m15991else(this.valueSetCapacity);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean putAll(@b51 Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.Cclass, com.google.common.collect.Ctry, com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public Set<V> replaceValues(@b51 K k, Iterable<? extends V> iterable) {
        return super.replaceValues((LinkedHashMultimap<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.Ctry
    public Collection<V> createCollection(K k) {
        return new Cfor(k, this.valueSetCapacity);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        LinkedHashMultimap<K, V> linkedHashMultimapCreate = create(multimap.keySet().size(), 2);
        linkedHashMultimapCreate.putAll(multimap);
        return linkedHashMultimapCreate;
    }
}
