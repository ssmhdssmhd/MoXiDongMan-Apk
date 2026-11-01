package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.collect.b2;
import com.google.common.collect.c3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public class w1<K, V> extends com.google.common.collect.Cgoto<K, V> implements ListMultimap<K, V>, Serializable {

    @li0
    private static final long serialVersionUID = 0;

    /* renamed from: break, reason: not valid java name */
    private transient int f14800break;

    /* renamed from: case, reason: not valid java name */
    @b51
    private transient Celse<K, V> f14801case;

    /* renamed from: else, reason: not valid java name */
    @b51
    private transient Celse<K, V> f14802else;

    /* renamed from: goto, reason: not valid java name */
    private transient Map<K, Ccase<K, V>> f14803goto;

    /* renamed from: this, reason: not valid java name */
    private transient int f14804this;

    /* renamed from: com.google.common.collect.w1$case, reason: invalid class name */
    public static class Ccase<K, V> {

        /* renamed from: do, reason: not valid java name */
        public Celse<K, V> f14805do;

        /* renamed from: for, reason: not valid java name */
        public int f14806for;

        /* renamed from: if, reason: not valid java name */
        public Celse<K, V> f14807if;

        public Ccase(Celse<K, V> celse) {
            this.f14805do = celse;
            this.f14807if = celse;
            celse.f14810case = null;
            celse.f14815try = null;
            this.f14806for = 1;
        }
    }

    /* renamed from: com.google.common.collect.w1$do, reason: invalid class name */
    public class Cdo extends AbstractSequentialList<V> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f14808do;

        public Cdo(Object obj) {
            this.f14808do = obj;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            return new Cthis(this.f14808do, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            Ccase ccase = (Ccase) w1.this.f14803goto.get(this.f14808do);
            if (ccase == null) {
                return 0;
            }
            return ccase.f14806for;
        }
    }

    /* renamed from: com.google.common.collect.w1$else, reason: invalid class name */
    public static final class Celse<K, V> extends com.google.common.collect.Celse<K, V> {

        /* renamed from: case, reason: not valid java name */
        @b51
        public Celse<K, V> f14810case;

        /* renamed from: do, reason: not valid java name */
        @b51
        public final K f14811do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public Celse<K, V> f14812for;

        /* renamed from: if, reason: not valid java name */
        @b51
        public V f14813if;

        /* renamed from: new, reason: not valid java name */
        @b51
        public Celse<K, V> f14814new;

        /* renamed from: try, reason: not valid java name */
        @b51
        public Celse<K, V> f14815try;

        public Celse(@b51 K k, @b51 V v) {
            this.f14811do = k;
            this.f14813if = v;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public K getKey() {
            return this.f14811do;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V getValue() {
            return this.f14813if;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V setValue(@b51 V v) {
            V v2 = this.f14813if;
            this.f14813if = v;
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.w1$for, reason: invalid class name */
    public class Cfor extends c3.Ccatch<K> {
        public Cfor() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return w1.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new Ctry(w1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return !w1.this.removeAll(obj).isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return w1.this.f14803goto.size();
        }
    }

    /* renamed from: com.google.common.collect.w1$goto, reason: invalid class name */
    public class Cgoto implements ListIterator<Map.Entry<K, V>> {

        /* renamed from: do, reason: not valid java name */
        public int f14818do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public Celse<K, V> f14819for;

        /* renamed from: if, reason: not valid java name */
        @b51
        public Celse<K, V> f14820if;

        /* renamed from: new, reason: not valid java name */
        @b51
        public Celse<K, V> f14821new;

        /* renamed from: try, reason: not valid java name */
        public int f14822try;

        public Cgoto(int i) {
            this.f14822try = w1.this.f14800break;
            int size = w1.this.size();
            af1.q(i, size);
            if (i < size / 2) {
                this.f14820if = w1.this.f14801case;
                while (true) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i2;
                }
            } else {
                this.f14821new = w1.this.f14802else;
                this.f14818do = size;
                while (true) {
                    int i3 = i + 1;
                    if (i >= size) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            }
            this.f14819for = null;
        }

        /* renamed from: if, reason: not valid java name */
        private void m16478if() {
            if (w1.this.f14800break != this.f14822try) {
                throw new ConcurrentModificationException();
            }
        }

        /* renamed from: case, reason: not valid java name */
        public void m16479case(V v) {
            af1.t(this.f14819for != null);
            this.f14819for.f14813if = v;
        }

        @Override // java.util.ListIterator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @lf
        /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse<K, V> next() {
            m16478if();
            w1.m16475if(this.f14820if);
            Celse<K, V> celse = this.f14820if;
            this.f14819for = celse;
            this.f14821new = celse;
            this.f14820if = celse.f14812for;
            this.f14818do++;
            return celse;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            m16478if();
            return this.f14820if != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            m16478if();
            return this.f14821new != null;
        }

        @Override // java.util.ListIterator
        @lf
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Celse<K, V> previous() {
            m16478if();
            w1.m16475if(this.f14821new);
            Celse<K, V> celse = this.f14821new;
            this.f14819for = celse;
            this.f14820if = celse;
            this.f14821new = celse.f14814new;
            this.f14818do--;
            return celse;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f14818do;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f14818do - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            m16478if();
            Cdefault.m15744try(this.f14819for != null);
            Celse<K, V> celse = this.f14819for;
            if (celse != this.f14820if) {
                this.f14821new = celse.f14814new;
                this.f14818do--;
            } else {
                this.f14820if = celse.f14812for;
            }
            w1.this.m16477try(celse);
            this.f14819for = null;
            this.f14822try = w1.this.f14800break;
        }

        @Override // java.util.ListIterator
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.google.common.collect.w1$if, reason: invalid class name */
    public class Cif extends AbstractSequentialList<Map.Entry<K, V>> {
        public Cif() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<Map.Entry<K, V>> listIterator(int i) {
            return new Cgoto(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return w1.this.f14804this;
        }
    }

    /* renamed from: com.google.common.collect.w1$new, reason: invalid class name */
    public class Cnew extends AbstractSequentialList<V> {

        /* renamed from: com.google.common.collect.w1$new$do, reason: invalid class name */
        public class Cdo extends p3<Map.Entry<K, V>, V> {

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Cgoto f14826if;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(ListIterator listIterator, Cgoto cgoto) {
                super(listIterator);
                this.f14826if = cgoto;
            }

            @Override // com.google.common.collect.o3
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public V mo15451do(Map.Entry<K, V> entry) {
                return entry.getValue();
            }

            @Override // com.google.common.collect.p3, java.util.ListIterator
            public void set(V v) {
                this.f14826if.m16479case(v);
            }
        }

        public Cnew() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            Cgoto cgoto = new Cgoto(i);
            return new Cdo(cgoto, cgoto);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return w1.this.f14804this;
        }
    }

    public w1() {
        this(12);
    }

    public static <K, V> w1<K, V> create() {
        return new w1<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @lf
    /* renamed from: do, reason: not valid java name */
    public Celse<K, V> m16473do(@b51 K k, @b51 V v, @b51 Celse<K, V> celse) {
        Celse<K, V> celse2 = new Celse<>(k, v);
        if (this.f14801case == null) {
            this.f14802else = celse2;
            this.f14801case = celse2;
            this.f14803goto.put(k, new Ccase<>(celse2));
            this.f14800break++;
        } else if (celse == null) {
            Celse<K, V> celse3 = this.f14802else;
            celse3.f14812for = celse2;
            celse2.f14814new = celse3;
            this.f14802else = celse2;
            Ccase<K, V> ccase = this.f14803goto.get(k);
            if (ccase == null) {
                this.f14803goto.put(k, new Ccase<>(celse2));
                this.f14800break++;
            } else {
                ccase.f14806for++;
                Celse<K, V> celse4 = ccase.f14807if;
                celse4.f14815try = celse2;
                celse2.f14810case = celse4;
                ccase.f14807if = celse2;
            }
        } else {
            this.f14803goto.get(k).f14806for++;
            celse2.f14814new = celse.f14814new;
            celse2.f14810case = celse.f14810case;
            celse2.f14812for = celse;
            celse2.f14815try = celse;
            Celse<K, V> celse5 = celse.f14810case;
            if (celse5 == null) {
                this.f14803goto.get(k).f14805do = celse2;
            } else {
                celse5.f14815try = celse2;
            }
            Celse<K, V> celse6 = celse.f14814new;
            if (celse6 == null) {
                this.f14801case = celse2;
            } else {
                celse6.f14812for = celse2;
            }
            celse.f14814new = celse2;
            celse.f14810case = celse2;
        }
        this.f14804this++;
        return celse2;
    }

    /* renamed from: for, reason: not valid java name */
    private List<V> m16474for(@b51 Object obj) {
        return Collections.unmodifiableList(x1.m16507native(new Cthis(obj)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public static void m16475if(@b51 Object obj) {
        if (obj == null) {
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public void m16476new(@b51 Object obj) {
        s1.m16228goto(new Cthis(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f14803goto = Cabstract.create();
        int i = objectInputStream.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public void m16477try(Celse<K, V> celse) {
        Celse<K, V> celse2 = celse.f14814new;
        if (celse2 != null) {
            celse2.f14812for = celse.f14812for;
        } else {
            this.f14801case = celse.f14812for;
        }
        Celse<K, V> celse3 = celse.f14812for;
        if (celse3 != null) {
            celse3.f14814new = celse2;
        } else {
            this.f14802else = celse2;
        }
        if (celse.f14810case == null && celse.f14815try == null) {
            this.f14803goto.remove(celse.f14811do).f14806for = 0;
            this.f14800break++;
        } else {
            Ccase<K, V> ccase = this.f14803goto.get(celse.f14811do);
            ccase.f14806for--;
            Celse<K, V> celse4 = celse.f14810case;
            if (celse4 == null) {
                ccase.f14805do = celse.f14815try;
            } else {
                celse4.f14815try = celse.f14815try;
            }
            Celse<K, V> celse5 = celse.f14815try;
            if (celse5 == null) {
                ccase.f14807if = celse4;
            } else {
                celse5.f14810case = celse4;
            }
        }
        this.f14804this--;
    }

    @li0
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        this.f14801case = null;
        this.f14802else = null;
        this.f14803goto.clear();
        this.f14804this = 0;
        this.f14800break++;
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@b51 Object obj, @b51 Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@b51 Object obj) {
        return this.f14803goto.containsKey(obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public boolean containsValue(@b51 Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.Cgoto
    public Map<K, Collection<V>> createAsMap() {
        return new b2.Cdo(this);
    }

    @Override // com.google.common.collect.Cgoto
    public Set<K> createKeySet() {
        return new Cfor();
    }

    @Override // com.google.common.collect.Cgoto
    public Multiset<K> createKeys() {
        return new b2.Celse(this);
    }

    @Override // com.google.common.collect.Cgoto
    public Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Collection get(@b51 Object obj) {
        return get((w1<K, V>) obj);
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public boolean isEmpty() {
        return this.f14801case == null;
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ Multiset keys() {
        return super.keys();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public boolean put(@b51 K k, @b51 V v) {
        m16473do(k, v, null);
        return true;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ Collection replaceValues(@b51 Object obj, Iterable iterable) {
        return replaceValues((w1<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.f14804this;
    }

    @Override // com.google.common.collect.Cgoto
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    private w1(int i) {
        this.f14803goto = l2.m15995new(i);
    }

    public static <K, V> w1<K, V> create(int i) {
        return new w1<>(i);
    }

    @Override // com.google.common.collect.Cgoto
    public List<Map.Entry<K, V>> createEntries() {
        return new Cif();
    }

    @Override // com.google.common.collect.Cgoto
    public List<V> createValues() {
        return new Cnew();
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override // com.google.common.collect.Multimap
    public List<V> get(@b51 K k) {
        return new Cdo(k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public /* bridge */ /* synthetic */ boolean putAll(@b51 Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.Multimap
    @lf
    public List<V> removeAll(@b51 Object obj) {
        List<V> listM16474for = m16474for(obj);
        m16476new(obj);
        return listM16474for;
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    @lf
    public List<V> replaceValues(@b51 K k, Iterable<? extends V> iterable) {
        List<V> listM16474for = m16474for(k);
        Cthis cthis = new Cthis(k);
        Iterator<? extends V> it = iterable.iterator();
        while (cthis.hasNext() && it.hasNext()) {
            cthis.next();
            cthis.set(it.next());
        }
        while (cthis.hasNext()) {
            cthis.next();
            cthis.remove();
        }
        while (it.hasNext()) {
            cthis.add(it.next());
        }
        return listM16474for;
    }

    @Override // com.google.common.collect.Cgoto, com.google.common.collect.Multimap
    public List<V> values() {
        return (List) super.values();
    }

    public static <K, V> w1<K, V> create(Multimap<? extends K, ? extends V> multimap) {
        return new w1<>(multimap);
    }

    /* renamed from: com.google.common.collect.w1$this, reason: invalid class name */
    public class Cthis implements ListIterator<V> {

        /* renamed from: do, reason: not valid java name */
        @b51
        public final Object f14828do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public Celse<K, V> f14829for;

        /* renamed from: if, reason: not valid java name */
        public int f14830if;

        /* renamed from: new, reason: not valid java name */
        @b51
        public Celse<K, V> f14831new;

        /* renamed from: try, reason: not valid java name */
        @b51
        public Celse<K, V> f14832try;

        public Cthis(@b51 Object obj) {
            this.f14828do = obj;
            Ccase ccase = (Ccase) w1.this.f14803goto.get(obj);
            this.f14829for = ccase == null ? null : ccase.f14805do;
        }

        @Override // java.util.ListIterator
        public void add(V v) {
            this.f14832try = w1.this.m16473do(this.f14828do, v, this.f14829for);
            this.f14830if++;
            this.f14831new = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f14829for != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f14832try != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @lf
        public V next() {
            w1.m16475if(this.f14829for);
            Celse<K, V> celse = this.f14829for;
            this.f14831new = celse;
            this.f14832try = celse;
            this.f14829for = celse.f14815try;
            this.f14830if++;
            return celse.f14813if;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f14830if;
        }

        @Override // java.util.ListIterator
        @lf
        public V previous() {
            w1.m16475if(this.f14832try);
            Celse<K, V> celse = this.f14832try;
            this.f14831new = celse;
            this.f14829for = celse;
            this.f14832try = celse.f14810case;
            this.f14830if--;
            return celse.f14813if;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f14830if - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14831new != null);
            Celse<K, V> celse = this.f14831new;
            if (celse != this.f14829for) {
                this.f14832try = celse.f14810case;
                this.f14830if--;
            } else {
                this.f14829for = celse.f14815try;
            }
            w1.this.m16477try(celse);
            this.f14831new = null;
        }

        @Override // java.util.ListIterator
        public void set(V v) {
            af1.t(this.f14831new != null);
            this.f14831new.f14813if = v;
        }

        public Cthis(@b51 Object obj, int i) {
            Ccase ccase = (Ccase) w1.this.f14803goto.get(obj);
            int i2 = ccase == null ? 0 : ccase.f14806for;
            af1.q(i, i2);
            if (i >= i2 / 2) {
                this.f14832try = ccase == null ? null : ccase.f14807if;
                this.f14830if = i2;
                while (true) {
                    int i3 = i + 1;
                    if (i >= i2) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            } else {
                this.f14829for = ccase == null ? null : ccase.f14805do;
                while (true) {
                    int i4 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i4;
                }
            }
            this.f14828do = obj;
            this.f14831new = null;
        }
    }

    /* renamed from: com.google.common.collect.w1$try, reason: invalid class name */
    public class Ctry implements Iterator<K> {

        /* renamed from: do, reason: not valid java name */
        public final Set<K> f14833do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public Celse<K, V> f14834for;

        /* renamed from: if, reason: not valid java name */
        public Celse<K, V> f14835if;

        /* renamed from: new, reason: not valid java name */
        public int f14836new;

        private Ctry() {
            this.f14833do = c3.m15687default(w1.this.keySet().size());
            this.f14835if = w1.this.f14801case;
            this.f14836new = w1.this.f14800break;
        }

        /* renamed from: do, reason: not valid java name */
        private void m16485do() {
            if (w1.this.f14800break != this.f14836new) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m16485do();
            return this.f14835if != null;
        }

        @Override // java.util.Iterator
        public K next() {
            Celse<K, V> celse;
            m16485do();
            w1.m16475if(this.f14835if);
            Celse<K, V> celse2 = this.f14835if;
            this.f14834for = celse2;
            this.f14833do.add(celse2.f14811do);
            do {
                celse = this.f14835if.f14812for;
                this.f14835if = celse;
                if (celse == null) {
                    break;
                }
            } while (!this.f14833do.add(celse.f14811do));
            return this.f14834for.f14811do;
        }

        @Override // java.util.Iterator
        public void remove() {
            m16485do();
            Cdefault.m15744try(this.f14834for != null);
            w1.this.m16476new(this.f14834for.f14811do);
            this.f14834for = null;
            this.f14836new = w1.this.f14800break;
        }

        public /* synthetic */ Ctry(w1 w1Var, Cdo cdo) {
            this();
        }
    }

    private w1(Multimap<? extends K, ? extends V> multimap) {
        this(multimap.keySet().size());
        putAll(multimap);
    }
}
