package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class MapField<K, V> implements MutabilityOracle {

    /* renamed from: do, reason: not valid java name */
    private volatile boolean f16571do;

    /* renamed from: for, reason: not valid java name */
    private Cif<K, V> f16572for;

    /* renamed from: if, reason: not valid java name */
    private volatile Cfor f16573if;

    /* renamed from: new, reason: not valid java name */
    private List<Message> f16574new;

    /* renamed from: try, reason: not valid java name */
    private final Converter<K, V> f16575try;

    public interface Converter<K, V> {
        Message convertKeyAndValueToMessage(K k, V v);

        void convertMessageToKeyAndValue(Message message, Map<K, V> map);

        Message getMessageDefaultInstance();
    }

    /* renamed from: com.google.protobuf.MapField$do, reason: invalid class name */
    public static class Cdo<K, V> implements Converter<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final x<K, V> f16576do;

        public Cdo(x<K, V> xVar) {
            this.f16576do = xVar;
        }

        @Override // com.google.protobuf.MapField.Converter
        public Message convertKeyAndValueToMessage(K k, V v) {
            return this.f16576do.newBuilderForType().m21564const(k).m21573throw(v).buildPartial();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.MapField.Converter
        public void convertMessageToKeyAndValue(Message message, Map<K, V> map) {
            x xVar = (x) message;
            map.put(xVar.m21553case(), xVar.m21556goto());
        }

        @Override // com.google.protobuf.MapField.Converter
        public Message getMessageDefaultInstance() {
            return this.f16576do;
        }
    }

    /* renamed from: com.google.protobuf.MapField$for, reason: invalid class name */
    public enum Cfor {
        MAP,
        LIST,
        BOTH
    }

    /* renamed from: com.google.protobuf.MapField$if, reason: invalid class name */
    public static class Cif<K, V> implements Map<K, V> {

        /* renamed from: do, reason: not valid java name */
        private final MutabilityOracle f16578do;

        /* renamed from: if, reason: not valid java name */
        private final Map<K, V> f16579if;

        /* renamed from: com.google.protobuf.MapField$if$do, reason: invalid class name */
        public static class Cdo<E> implements Collection<E> {

            /* renamed from: do, reason: not valid java name */
            private final MutabilityOracle f16580do;

            /* renamed from: if, reason: not valid java name */
            private final Collection<E> f16581if;

            public Cdo(MutabilityOracle mutabilityOracle, Collection<E> collection) {
                this.f16580do = mutabilityOracle;
                this.f16581if = collection;
            }

            @Override // java.util.Collection
            public boolean add(E e) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public void clear() {
                this.f16580do.ensureMutable();
                this.f16581if.clear();
            }

            @Override // java.util.Collection
            public boolean contains(Object obj) {
                return this.f16581if.contains(obj);
            }

            @Override // java.util.Collection
            public boolean containsAll(Collection<?> collection) {
                return this.f16581if.containsAll(collection);
            }

            @Override // java.util.Collection
            public boolean equals(Object obj) {
                return this.f16581if.equals(obj);
            }

            @Override // java.util.Collection
            public int hashCode() {
                return this.f16581if.hashCode();
            }

            @Override // java.util.Collection
            public boolean isEmpty() {
                return this.f16581if.isEmpty();
            }

            @Override // java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new C0160if(this.f16580do, this.f16581if.iterator());
            }

            @Override // java.util.Collection
            public boolean remove(Object obj) {
                this.f16580do.ensureMutable();
                return this.f16581if.remove(obj);
            }

            @Override // java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                this.f16580do.ensureMutable();
                return this.f16581if.removeAll(collection);
            }

            @Override // java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                this.f16580do.ensureMutable();
                return this.f16581if.retainAll(collection);
            }

            @Override // java.util.Collection
            public int size() {
                return this.f16581if.size();
            }

            @Override // java.util.Collection
            public Object[] toArray() {
                return this.f16581if.toArray();
            }

            public String toString() {
                return this.f16581if.toString();
            }

            @Override // java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f16581if.toArray(tArr);
            }
        }

        /* renamed from: com.google.protobuf.MapField$if$for, reason: invalid class name */
        public static class Cfor<E> implements Set<E> {

            /* renamed from: do, reason: not valid java name */
            private final MutabilityOracle f16582do;

            /* renamed from: if, reason: not valid java name */
            private final Set<E> f16583if;

            public Cfor(MutabilityOracle mutabilityOracle, Set<E> set) {
                this.f16582do = mutabilityOracle;
                this.f16583if = set;
            }

            @Override // java.util.Set, java.util.Collection
            public boolean add(E e) {
                this.f16582do.ensureMutable();
                return this.f16583if.add(e);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean addAll(Collection<? extends E> collection) {
                this.f16582do.ensureMutable();
                return this.f16583if.addAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public void clear() {
                this.f16582do.ensureMutable();
                this.f16583if.clear();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean contains(Object obj) {
                return this.f16583if.contains(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean containsAll(Collection<?> collection) {
                return this.f16583if.containsAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean equals(Object obj) {
                return this.f16583if.equals(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public int hashCode() {
                return this.f16583if.hashCode();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean isEmpty() {
                return this.f16583if.isEmpty();
            }

            @Override // java.util.Set, java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new C0160if(this.f16582do, this.f16583if.iterator());
            }

            @Override // java.util.Set, java.util.Collection
            public boolean remove(Object obj) {
                this.f16582do.ensureMutable();
                return this.f16583if.remove(obj);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                this.f16582do.ensureMutable();
                return this.f16583if.removeAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                this.f16582do.ensureMutable();
                return this.f16583if.retainAll(collection);
            }

            @Override // java.util.Set, java.util.Collection
            public int size() {
                return this.f16583if.size();
            }

            @Override // java.util.Set, java.util.Collection
            public Object[] toArray() {
                return this.f16583if.toArray();
            }

            public String toString() {
                return this.f16583if.toString();
            }

            @Override // java.util.Set, java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f16583if.toArray(tArr);
            }
        }

        /* renamed from: com.google.protobuf.MapField$if$if, reason: invalid class name and collision with other inner class name */
        public static class C0160if<E> implements Iterator<E> {

            /* renamed from: do, reason: not valid java name */
            private final MutabilityOracle f16584do;

            /* renamed from: if, reason: not valid java name */
            private final Iterator<E> f16585if;

            public C0160if(MutabilityOracle mutabilityOracle, Iterator<E> it) {
                this.f16584do = mutabilityOracle;
                this.f16585if = it;
            }

            public boolean equals(Object obj) {
                return this.f16585if.equals(obj);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f16585if.hasNext();
            }

            public int hashCode() {
                return this.f16585if.hashCode();
            }

            @Override // java.util.Iterator
            public E next() {
                return this.f16585if.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f16584do.ensureMutable();
                this.f16585if.remove();
            }

            public String toString() {
                return this.f16585if.toString();
            }
        }

        public Cif(MutabilityOracle mutabilityOracle, Map<K, V> map) {
            this.f16578do = mutabilityOracle;
            this.f16579if = map;
        }

        @Override // java.util.Map
        public void clear() {
            this.f16578do.ensureMutable();
            this.f16579if.clear();
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            return this.f16579if.containsKey(obj);
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            return this.f16579if.containsValue(obj);
        }

        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new Cfor(this.f16578do, this.f16579if.entrySet());
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            return this.f16579if.equals(obj);
        }

        @Override // java.util.Map
        public V get(Object obj) {
            return this.f16579if.get(obj);
        }

        @Override // java.util.Map
        public int hashCode() {
            return this.f16579if.hashCode();
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            return this.f16579if.isEmpty();
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            return new Cfor(this.f16578do, this.f16579if.keySet());
        }

        @Override // java.util.Map
        public V put(K k, V v) {
            this.f16578do.ensureMutable();
            Internal.m19623new(k);
            Internal.m19623new(v);
            return this.f16579if.put(k, v);
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f16578do.ensureMutable();
            for (K k : map.keySet()) {
                Internal.m19623new(k);
                Internal.m19623new(map.get(k));
            }
            this.f16579if.putAll(map);
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            this.f16578do.ensureMutable();
            return this.f16579if.remove(obj);
        }

        @Override // java.util.Map
        public int size() {
            return this.f16579if.size();
        }

        public String toString() {
            return this.f16579if.toString();
        }

        @Override // java.util.Map
        public Collection<V> values() {
            return new Cdo(this.f16578do, this.f16579if.values());
        }
    }

    private MapField(Converter<K, V> converter, Cfor cfor, Map<K, V> map) {
        this.f16575try = converter;
        this.f16571do = true;
        this.f16573if = cfor;
        this.f16572for = new Cif<>(this, map);
        this.f16574new = null;
    }

    /* renamed from: else, reason: not valid java name */
    public static <K, V> MapField<K, V> m19639else(x<K, V> xVar) {
        return new MapField<>(xVar, Cfor.MAP, Collections.emptyMap());
    }

    /* renamed from: for, reason: not valid java name */
    private Cif<K, V> m19640for(List<Message> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Message> it = list.iterator();
        while (it.hasNext()) {
            m19644try(it.next(), linkedHashMap);
        }
        return new Cif<>(this, linkedHashMap);
    }

    /* renamed from: if, reason: not valid java name */
    private Message m19641if(K k, V v) {
        return this.f16575try.convertKeyAndValueToMessage(k, v);
    }

    /* renamed from: new, reason: not valid java name */
    private List<Message> m19642new(Cif<K, V> cif) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, V> entry : cif.entrySet()) {
            arrayList.add(m19641if(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    /* renamed from: throw, reason: not valid java name */
    public static <K, V> MapField<K, V> m19643throw(x<K, V> xVar) {
        return new MapField<>(xVar, Cfor.MAP, new LinkedHashMap());
    }

    /* renamed from: try, reason: not valid java name */
    private void m19644try(Message message, Map<K, V> map) {
        this.f16575try.convertMessageToKeyAndValue(message, map);
    }

    /* renamed from: break, reason: not valid java name */
    public Message m19645break() {
        return this.f16575try.getMessageDefaultInstance();
    }

    /* renamed from: case, reason: not valid java name */
    public MapField<K, V> m19646case() {
        return new MapField<>(this.f16575try, Cfor.MAP, z.copy(m19654this()));
    }

    /* renamed from: catch, reason: not valid java name */
    public List<Message> m19647catch() {
        Cfor cfor = this.f16573if;
        Cfor cfor2 = Cfor.LIST;
        if (cfor != cfor2) {
            if (this.f16573if == Cfor.MAP) {
                this.f16574new = m19642new(this.f16572for);
            }
            this.f16572for = null;
            this.f16573if = cfor2;
        }
        return this.f16574new;
    }

    /* renamed from: class, reason: not valid java name */
    public Map<K, V> m19648class() {
        Cfor cfor = this.f16573if;
        Cfor cfor2 = Cfor.MAP;
        if (cfor != cfor2) {
            if (this.f16573if == Cfor.LIST) {
                this.f16572for = m19640for(this.f16574new);
            }
            this.f16574new = null;
            this.f16573if = cfor2;
        }
        return this.f16572for;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m19649const() {
        return this.f16571do;
    }

    /* renamed from: do, reason: not valid java name */
    public void m19650do() {
        this.f16572for = new Cif<>(this, new LinkedHashMap());
        this.f16573if = Cfor.MAP;
    }

    @Override // com.google.protobuf.MutabilityOracle
    public void ensureMutable() {
        if (!m19649const()) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof MapField) {
            return z.equals(m19654this(), ((MapField) obj).m19654this());
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    public void m19651final() {
        this.f16571do = false;
    }

    /* renamed from: goto, reason: not valid java name */
    public List<Message> m19652goto() {
        Cfor cfor = this.f16573if;
        Cfor cfor2 = Cfor.MAP;
        if (cfor == cfor2) {
            synchronized (this) {
                if (this.f16573if == cfor2) {
                    this.f16574new = m19642new(this.f16572for);
                    this.f16573if = Cfor.BOTH;
                }
            }
        }
        return Collections.unmodifiableList(this.f16574new);
    }

    public int hashCode() {
        return z.calculateHashCodeForMap(m19654this());
    }

    /* renamed from: super, reason: not valid java name */
    public void m19653super(MapField<K, V> mapField) {
        m19648class().putAll(z.copy(mapField.m19654this()));
    }

    /* renamed from: this, reason: not valid java name */
    public Map<K, V> m19654this() {
        Cfor cfor = this.f16573if;
        Cfor cfor2 = Cfor.LIST;
        if (cfor == cfor2) {
            synchronized (this) {
                if (this.f16573if == cfor2) {
                    this.f16572for = m19640for(this.f16574new);
                    this.f16573if = Cfor.BOTH;
                }
            }
        }
        return Collections.unmodifiableMap(this.f16572for);
    }

    private MapField(x<K, V> xVar, Cfor cfor, Map<K, V> map) {
        this(new Cdo(xVar), cfor, map);
    }
}
