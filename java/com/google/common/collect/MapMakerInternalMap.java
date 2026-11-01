package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ji0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.rd0;
import com.google.common.collect.MapMakerInternalMap.Cconst;
import com.google.common.collect.MapMakerInternalMap.InternalEntry;
import com.google.common.collect.y1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

@li0
/* loaded from: classes2.dex */
class MapMakerInternalMap<K, V, E extends InternalEntry<K, V, E>, S extends Cconst<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    public static final long CLEANUP_EXECUTOR_DELAY_SECS = 60;
    public static final int CONTAINS_VALUE_RETRIES = 3;
    public static final int DRAIN_MAX = 16;
    public static final int DRAIN_THRESHOLD = 63;
    public static final int MAXIMUM_CAPACITY = 1073741824;
    public static final int MAX_SEGMENTS = 65536;
    public static final WeakValueReference<Object, Object, Ccase> UNSET_WEAK_VALUE_REFERENCE = new Cdo();
    private static final long serialVersionUID = 5;
    public final int concurrencyLevel;
    public final transient InternalEntryHelper<K, V, E, S> entryHelper;

    @l01
    public transient Set<Map.Entry<K, V>> entrySet;
    public final com.google.common.base.Cthis<Object> keyEquivalence;

    @l01
    public transient Set<K> keySet;
    public final transient int segmentMask;
    public final transient int segmentShift;
    public final transient Cconst<K, V, E, S>[] segments;

    @l01
    public transient Collection<V> values;

    public interface InternalEntry<K, V, E extends InternalEntry<K, V, E>> {
        int getHash();

        K getKey();

        E getNext();

        V getValue();
    }

    public interface InternalEntryHelper<K, V, E extends InternalEntry<K, V, E>, S extends Cconst<K, V, E, S>> {
        E copy(S s, E e, @b51 E e2);

        Csuper keyStrength();

        E newEntry(S s, K k, int i, @b51 E e);

        S newSegment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2);

        void setValue(S s, E e, V v);

        Csuper valueStrength();
    }

    public interface StrongValueEntry<K, V, E extends InternalEntry<K, V, E>> extends InternalEntry<K, V, E> {
    }

    public interface WeakValueEntry<K, V, E extends InternalEntry<K, V, E>> extends InternalEntry<K, V, E> {
        void clearValue();

        WeakValueReference<K, V, E> getValueReference();
    }

    public interface WeakValueReference<K, V, E extends InternalEntry<K, V, E>> {
        void clear();

        WeakValueReference<K, V, E> copyFor(ReferenceQueue<V> referenceQueue, E e);

        @b51
        V get();

        E getEntry();
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$abstract, reason: invalid class name */
    public static final class Cabstract<K, V, E extends InternalEntry<K, V, E>> extends WeakReference<V> implements WeakValueReference<K, V, E> {

        /* renamed from: do, reason: not valid java name */
        @hf2
        public final E f13959do;

        public Cabstract(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.f13959do = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public WeakValueReference<K, V, E> copyFor(ReferenceQueue<V> referenceQueue, E e) {
            return new Cabstract(referenceQueue, get(), e);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public E getEntry() {
            return this.f13959do;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$break, reason: invalid class name */
    public final class Cbreak extends MapMakerInternalMap<K, V, E, S>.Cthis<K> {
        public Cbreak() {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cthis, java.util.Iterator
        public K next() {
            return m15386for().getKey();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$case, reason: invalid class name */
    public static final class Ccase implements InternalEntry<Object, Object, Ccase> {
        private Ccase() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccase getNext() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public int getHash() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$catch, reason: invalid class name */
    public final class Ccatch extends Cclass<K> {
        public Ccatch() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new Cbreak();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$class, reason: invalid class name */
    public static abstract class Cclass<E> extends AbstractSet<E> {
        private Cclass() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return MapMakerInternalMap.m15348do(this).toArray();
        }

        public /* synthetic */ Cclass(Cdo cdo) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.m15348do(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$continue, reason: invalid class name */
    public final class Ccontinue extends com.google.common.collect.Celse<K, V> {

        /* renamed from: do, reason: not valid java name */
        public final K f13962do;

        /* renamed from: if, reason: not valid java name */
        public V f13964if;

        public Ccontinue(K k, V v) {
            this.f13962do = k;
            this.f13964if = v;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f13962do.equals(entry.getKey()) && this.f13964if.equals(entry.getValue());
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public K getKey() {
            return this.f13962do;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V getValue() {
            return this.f13964if;
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public int hashCode() {
            return this.f13962do.hashCode() ^ this.f13964if.hashCode();
        }

        @Override // com.google.common.collect.Celse, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) MapMakerInternalMap.this.put(this.f13962do, v);
            this.f13964if = v;
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$default, reason: invalid class name */
    public static final class Cdefault<K> extends Cconst<K, y1.Cdo, Cthrows<K>, Cdefault<K>> {
        private final ReferenceQueue<K> queueForKeys;

        public Cdefault(MapMakerInternalMap<K, y1.Cdo, Cthrows<K>, Cdefault<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cdefault<K> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cthrows<K> castForTesting(InternalEntry<K, y1.Cdo, ?> internalEntry) {
            return (Cthrows) internalEntry;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$do, reason: invalid class name */
    public static class Cdo implements WeakValueReference<Object, Object, Ccase> {
        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public void clear() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public WeakValueReference<Object, Object, Ccase> copyFor(ReferenceQueue<Object> referenceQueue, Ccase ccase) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public Object get() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ccase getEntry() {
            return null;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$else, reason: invalid class name */
    public final class Celse extends MapMakerInternalMap<K, V, E, S>.Cthis<Map.Entry<K, V>> {
        public Celse() {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cthis, java.util.Iterator
        /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m15386for();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$extends, reason: invalid class name */
    public static final class Cextends<K, V> extends Cnew<K, V, Cextends<K, V>> implements StrongValueEntry<K, V, Cextends<K, V>> {

        /* renamed from: for, reason: not valid java name */
        @b51
        private volatile V f13966for;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$extends$do, reason: invalid class name */
        public static final class Cdo<K, V> implements InternalEntryHelper<K, V, Cextends<K, V>, Cfinally<K, V>> {

            /* renamed from: do, reason: not valid java name */
            private static final Cdo<?, ?> f13967do = new Cdo<>();

            /* renamed from: if, reason: not valid java name */
            public static <K, V> Cdo<K, V> m15355if() {
                return (Cdo<K, V>) f13967do;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cextends<K, V> copy(Cfinally<K, V> cfinally, Cextends<K, V> cextends, @b51 Cextends<K, V> cextends2) {
                if (cextends.getKey() == null) {
                    return null;
                }
                return cextends.m15353do(((Cfinally) cfinally).queueForKeys, cextends2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cextends<K, V> newEntry(Cfinally<K, V> cfinally, K k, int i, @b51 Cextends<K, V> cextends) {
                return new Cextends<>(((Cfinally) cfinally).queueForKeys, k, i, cextends);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper keyStrength() {
                return Csuper.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cfinally<K, V> newSegment(MapMakerInternalMap<K, V, Cextends<K, V>, Cfinally<K, V>> mapMakerInternalMap, int i, int i2) {
                return new Cfinally<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
            public void setValue(Cfinally<K, V> cfinally, Cextends<K, V> cextends, V v) {
                cextends.m15354if(v);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper valueStrength() {
                return Csuper.STRONG;
            }
        }

        public Cextends(ReferenceQueue<K> referenceQueue, K k, int i, @b51 Cextends<K, V> cextends) {
            super(referenceQueue, k, i, cextends);
            this.f13966for = null;
        }

        /* renamed from: do, reason: not valid java name */
        public Cextends<K, V> m15353do(ReferenceQueue<K> referenceQueue, Cextends<K, V> cextends) {
            Cextends<K, V> cextends2 = new Cextends<>(referenceQueue, getKey(), this.f13974do, cextends);
            cextends2.m15354if(this.f13966for);
            return cextends2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        @b51
        public V getValue() {
            return this.f13966for;
        }

        /* renamed from: if, reason: not valid java name */
        public void m15354if(V v) {
            this.f13966for = v;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$final, reason: invalid class name */
    public static final class Cfinal<K, V> extends Cif<K, V> {
        private static final long serialVersionUID = 3;

        public Cfinal(Csuper csuper, Csuper csuper2, com.google.common.base.Cthis<Object> cthis, com.google.common.base.Cthis<Object> cthis2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(csuper, csuper2, cthis, cthis2, i, concurrentMap);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).m16539this();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.delegate;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$finally, reason: invalid class name */
    public static final class Cfinally<K, V> extends Cconst<K, V, Cextends<K, V>, Cfinally<K, V>> {
        private final ReferenceQueue<K> queueForKeys;

        public Cfinally(MapMakerInternalMap<K, V, Cextends<K, V>, Cfinally<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForKeys = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cfinally<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cextends<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (Cextends) internalEntry;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$for, reason: invalid class name */
    public static abstract class Cfor<K, V, E extends InternalEntry<K, V, E>> implements InternalEntry<K, V, E> {

        /* renamed from: do, reason: not valid java name */
        public final K f13968do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public final E f13969for;

        /* renamed from: if, reason: not valid java name */
        public final int f13970if;

        public Cfor(K k, int i, @b51 E e) {
            this.f13968do = k;
            this.f13970if = i;
            this.f13969for = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public int getHash() {
            return this.f13970if;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public K getKey() {
            return this.f13968do;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public E getNext() {
            return this.f13969for;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$goto, reason: invalid class name */
    public final class Cgoto extends Cclass<Map.Entry<K, V>> {
        public Cgoto() {
            super(null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = MapMakerInternalMap.this.get(key)) != null && MapMakerInternalMap.this.valueEquivalence().equivalent(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new Celse();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && MapMakerInternalMap.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$import, reason: invalid class name */
    public static final class Cimport<K, V> extends Cfor<K, V, Cimport<K, V>> implements StrongValueEntry<K, V, Cimport<K, V>> {

        /* renamed from: new, reason: not valid java name */
        @b51
        private volatile V f13972new;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$import$do, reason: invalid class name */
        public static final class Cdo<K, V> implements InternalEntryHelper<K, V, Cimport<K, V>, Cnative<K, V>> {

            /* renamed from: do, reason: not valid java name */
            private static final Cdo<?, ?> f13973do = new Cdo<>();

            /* renamed from: if, reason: not valid java name */
            public static <K, V> Cdo<K, V> m15362if() {
                return (Cdo<K, V>) f13973do;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cimport<K, V> copy(Cnative<K, V> cnative, Cimport<K, V> cimport, @b51 Cimport<K, V> cimport2) {
                return cimport.m15360do(cimport2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cimport<K, V> newEntry(Cnative<K, V> cnative, K k, int i, @b51 Cimport<K, V> cimport) {
                return new Cimport<>(k, i, cimport);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper keyStrength() {
                return Csuper.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cnative<K, V> newSegment(MapMakerInternalMap<K, V, Cimport<K, V>, Cnative<K, V>> mapMakerInternalMap, int i, int i2) {
                return new Cnative<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
            public void setValue(Cnative<K, V> cnative, Cimport<K, V> cimport, V v) {
                cimport.m15361if(v);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper valueStrength() {
                return Csuper.STRONG;
            }
        }

        public Cimport(K k, int i, @b51 Cimport<K, V> cimport) {
            super(k, i, cimport);
            this.f13972new = null;
        }

        /* renamed from: do, reason: not valid java name */
        public Cimport<K, V> m15360do(Cimport<K, V> cimport) {
            Cimport<K, V> cimport2 = new Cimport<>(this.f13968do, this.f13970if, cimport);
            cimport2.f13972new = this.f13972new;
            return cimport2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        @b51
        public V getValue() {
            return this.f13972new;
        }

        /* renamed from: if, reason: not valid java name */
        public void m15361if(V v) {
            this.f13972new = v;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$native, reason: invalid class name */
    public static final class Cnative<K, V> extends Cconst<K, V, Cimport<K, V>, Cnative<K, V>> {
        public Cnative(MapMakerInternalMap<K, V, Cimport<K, V>, Cnative<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cnative<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cimport<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (Cimport) internalEntry;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$new, reason: invalid class name */
    public static abstract class Cnew<K, V, E extends InternalEntry<K, V, E>> extends WeakReference<K> implements InternalEntry<K, V, E> {

        /* renamed from: do, reason: not valid java name */
        public final int f13974do;

        /* renamed from: if, reason: not valid java name */
        @b51
        public final E f13975if;

        public Cnew(ReferenceQueue<K> referenceQueue, K k, int i, @b51 E e) {
            super(k, referenceQueue);
            this.f13974do = i;
            this.f13975if = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public int getHash() {
            return this.f13974do;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public K getKey() {
            return get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public E getNext() {
            return this.f13975if;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$package, reason: invalid class name */
    public static final class Cpackage<K, V> extends Cnew<K, V, Cpackage<K, V>> implements WeakValueEntry<K, V, Cpackage<K, V>> {

        /* renamed from: for, reason: not valid java name */
        private volatile WeakValueReference<K, V, Cpackage<K, V>> f13976for;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$package$do, reason: invalid class name */
        public static final class Cdo<K, V> implements InternalEntryHelper<K, V, Cpackage<K, V>, Cprivate<K, V>> {

            /* renamed from: do, reason: not valid java name */
            private static final Cdo<?, ?> f13977do = new Cdo<>();

            /* renamed from: if, reason: not valid java name */
            public static <K, V> Cdo<K, V> m15371if() {
                return (Cdo<K, V>) f13977do;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cpackage<K, V> copy(Cprivate<K, V> cprivate, Cpackage<K, V> cpackage, @b51 Cpackage<K, V> cpackage2) {
                if (cpackage.getKey() == null || Cconst.isCollected(cpackage)) {
                    return null;
                }
                return cpackage.m15369for(((Cprivate) cprivate).queueForKeys, ((Cprivate) cprivate).queueForValues, cpackage2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cpackage<K, V> newEntry(Cprivate<K, V> cprivate, K k, int i, @b51 Cpackage<K, V> cpackage) {
                return new Cpackage<>(((Cprivate) cprivate).queueForKeys, k, i, cpackage);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper keyStrength() {
                return Csuper.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cprivate<K, V> newSegment(MapMakerInternalMap<K, V, Cpackage<K, V>, Cprivate<K, V>> mapMakerInternalMap, int i, int i2) {
                return new Cprivate<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
            public void setValue(Cprivate<K, V> cprivate, Cpackage<K, V> cpackage, V v) {
                cpackage.m15370new(v, ((Cprivate) cprivate).queueForValues);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper valueStrength() {
                return Csuper.WEAK;
            }
        }

        public Cpackage(ReferenceQueue<K> referenceQueue, K k, int i, @b51 Cpackage<K, V> cpackage) {
            super(referenceQueue, k, i, cpackage);
            this.f13976for = MapMakerInternalMap.unsetWeakValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public void clearValue() {
            this.f13976for.clear();
        }

        /* renamed from: for, reason: not valid java name */
        public Cpackage<K, V> m15369for(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, Cpackage<K, V> cpackage) {
            Cpackage<K, V> cpackage2 = new Cpackage<>(referenceQueue, getKey(), this.f13974do, cpackage);
            cpackage2.f13976for = this.f13976for.copyFor(referenceQueue2, cpackage2);
            return cpackage2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public V getValue() {
            return this.f13976for.get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public WeakValueReference<K, V, Cpackage<K, V>> getValueReference() {
            return this.f13976for;
        }

        /* renamed from: new, reason: not valid java name */
        public void m15370new(V v, ReferenceQueue<V> referenceQueue) {
            WeakValueReference<K, V, Cpackage<K, V>> weakValueReference = this.f13976for;
            this.f13976for = new Cabstract(referenceQueue, v, this);
            weakValueReference.clear();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$private, reason: invalid class name */
    public static final class Cprivate<K, V> extends Cconst<K, V, Cpackage<K, V>, Cprivate<K, V>> {
        private final ReferenceQueue<K> queueForKeys;
        private final ReferenceQueue<V> queueForValues;

        public Cprivate(MapMakerInternalMap<K, V, Cpackage<K, V>, Cprivate<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForKeys = new ReferenceQueue<>();
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public WeakValueReference<K, V, Cpackage<K, V>> getWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry) {
            return castForTesting((InternalEntry) internalEntry).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public WeakValueReference<K, V, Cpackage<K, V>> newWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            return new Cabstract(this.queueForValues, v, castForTesting((InternalEntry) internalEntry));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cprivate<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void setWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            Cpackage<K, V> cpackageCastForTesting = castForTesting((InternalEntry) internalEntry);
            WeakValueReference weakValueReference2 = ((Cpackage) cpackageCastForTesting).f13976for;
            ((Cpackage) cpackageCastForTesting).f13976for = weakValueReference;
            weakValueReference2.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cpackage<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (Cpackage) internalEntry;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$public, reason: invalid class name */
    public static final class Cpublic<K, V> extends Cfor<K, V, Cpublic<K, V>> implements WeakValueEntry<K, V, Cpublic<K, V>> {

        /* renamed from: new, reason: not valid java name */
        private volatile WeakValueReference<K, V, Cpublic<K, V>> f13978new;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$public$do, reason: invalid class name */
        public static final class Cdo<K, V> implements InternalEntryHelper<K, V, Cpublic<K, V>, Creturn<K, V>> {

            /* renamed from: do, reason: not valid java name */
            private static final Cdo<?, ?> f13979do = new Cdo<>();

            /* renamed from: if, reason: not valid java name */
            public static <K, V> Cdo<K, V> m15380if() {
                return (Cdo<K, V>) f13979do;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cpublic<K, V> copy(Creturn<K, V> creturn, Cpublic<K, V> cpublic, @b51 Cpublic<K, V> cpublic2) {
                if (Cconst.isCollected(cpublic)) {
                    return null;
                }
                return cpublic.m15378for(((Creturn) creturn).queueForValues, cpublic2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cpublic<K, V> newEntry(Creturn<K, V> creturn, K k, int i, @b51 Cpublic<K, V> cpublic) {
                return new Cpublic<>(k, i, cpublic);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper keyStrength() {
                return Csuper.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Creturn<K, V> newSegment(MapMakerInternalMap<K, V, Cpublic<K, V>, Creturn<K, V>> mapMakerInternalMap, int i, int i2) {
                return new Creturn<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
            public void setValue(Creturn<K, V> creturn, Cpublic<K, V> cpublic, V v) {
                cpublic.m15379new(v, ((Creturn) creturn).queueForValues);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper valueStrength() {
                return Csuper.WEAK;
            }
        }

        public Cpublic(K k, int i, @b51 Cpublic<K, V> cpublic) {
            super(k, i, cpublic);
            this.f13978new = MapMakerInternalMap.unsetWeakValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public void clearValue() {
            this.f13978new.clear();
        }

        /* renamed from: for, reason: not valid java name */
        public Cpublic<K, V> m15378for(ReferenceQueue<V> referenceQueue, Cpublic<K, V> cpublic) {
            Cpublic<K, V> cpublic2 = new Cpublic<>(this.f13968do, this.f13970if, cpublic);
            cpublic2.f13978new = this.f13978new.copyFor(referenceQueue, cpublic2);
            return cpublic2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public V getValue() {
            return this.f13978new.get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public WeakValueReference<K, V, Cpublic<K, V>> getValueReference() {
            return this.f13978new;
        }

        /* renamed from: new, reason: not valid java name */
        public void m15379new(V v, ReferenceQueue<V> referenceQueue) {
            WeakValueReference<K, V, Cpublic<K, V>> weakValueReference = this.f13978new;
            this.f13978new = new Cabstract(referenceQueue, v, this);
            weakValueReference.clear();
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$return, reason: invalid class name */
    public static final class Creturn<K, V> extends Cconst<K, V, Cpublic<K, V>, Creturn<K, V>> {
        private final ReferenceQueue<V> queueForValues;

        public Creturn(MapMakerInternalMap<K, V, Cpublic<K, V>, Creturn<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
            this.queueForValues = new ReferenceQueue<>();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public WeakValueReference<K, V, Cpublic<K, V>> getWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry) {
            return castForTesting((InternalEntry) internalEntry).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeClearReferenceQueues() {
            clearReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public WeakValueReference<K, V, Cpublic<K, V>> newWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            return new Cabstract(this.queueForValues, v, castForTesting((InternalEntry) internalEntry));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Creturn<K, V> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public void setWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            Cpublic<K, V> cpublicCastForTesting = castForTesting((InternalEntry) internalEntry);
            WeakValueReference weakValueReference2 = ((Cpublic) cpublicCastForTesting).f13978new;
            ((Cpublic) cpublicCastForTesting).f13978new = weakValueReference;
            weakValueReference2.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cpublic<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (Cpublic) internalEntry;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$static, reason: invalid class name */
    public final class Cstatic extends MapMakerInternalMap<K, V, E, S>.Cthis<V> {
        public Cstatic() {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cthis, java.util.Iterator
        public V next() {
            return m15386for().getValue();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* renamed from: com.google.common.collect.MapMakerInternalMap$super, reason: invalid class name */
    public static abstract class Csuper {
        public static final Csuper STRONG;
        public static final Csuper WEAK;

        /* renamed from: do, reason: not valid java name */
        private static final /* synthetic */ Csuper[] f13981do;

        /* renamed from: com.google.common.collect.MapMakerInternalMap$super$do, reason: invalid class name */
        public enum Cdo extends Csuper {
            public Cdo(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.Csuper
            public com.google.common.base.Cthis<Object> defaultEquivalence() {
                return com.google.common.base.Cthis.equals();
            }
        }

        /* renamed from: com.google.common.collect.MapMakerInternalMap$super$if, reason: invalid class name */
        public enum Cif extends Csuper {
            public Cif(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.Csuper
            public com.google.common.base.Cthis<Object> defaultEquivalence() {
                return com.google.common.base.Cthis.identity();
            }
        }

        static {
            Cdo cdo = new Cdo("STRONG", 0);
            STRONG = cdo;
            Cif cif = new Cif("WEAK", 1);
            WEAK = cif;
            f13981do = new Csuper[]{cdo, cif};
        }

        private Csuper(String str, int i) {
        }

        public static Csuper valueOf(String str) {
            return (Csuper) Enum.valueOf(Csuper.class, str);
        }

        public static Csuper[] values() {
            return (Csuper[]) f13981do.clone();
        }

        public abstract com.google.common.base.Cthis<Object> defaultEquivalence();

        public /* synthetic */ Csuper(String str, int i, Cdo cdo) {
            this(str, i);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$switch, reason: invalid class name */
    public final class Cswitch extends AbstractCollection<V> {
        public Cswitch() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new Cstatic();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return MapMakerInternalMap.m15348do(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.m15348do(this).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$this, reason: invalid class name */
    public abstract class Cthis<T> implements Iterator<T> {

        /* renamed from: case, reason: not valid java name */
        @b51
        public MapMakerInternalMap<K, V, E, S>.Ccontinue f13983case;

        /* renamed from: do, reason: not valid java name */
        public int f13984do;

        /* renamed from: else, reason: not valid java name */
        @b51
        public MapMakerInternalMap<K, V, E, S>.Ccontinue f13985else;

        /* renamed from: for, reason: not valid java name */
        @l01
        public Cconst<K, V, E, S> f13986for;

        /* renamed from: if, reason: not valid java name */
        public int f13988if = -1;

        /* renamed from: new, reason: not valid java name */
        @l01
        public AtomicReferenceArray<E> f13989new;

        /* renamed from: try, reason: not valid java name */
        @b51
        public E f13990try;

        public Cthis() {
            this.f13984do = MapMakerInternalMap.this.segments.length - 1;
            m15385do();
        }

        /* renamed from: do, reason: not valid java name */
        public final void m15385do() {
            this.f13983case = null;
            if (m15388new() || m15389try()) {
                return;
            }
            while (true) {
                int i = this.f13984do;
                if (i < 0) {
                    return;
                }
                Cconst<K, V, E, S>[] cconstArr = MapMakerInternalMap.this.segments;
                this.f13984do = i - 1;
                Cconst<K, V, E, S> cconst = cconstArr[i];
                this.f13986for = cconst;
                if (cconst.count != 0) {
                    this.f13989new = this.f13986for.table;
                    this.f13988if = r0.length() - 1;
                    if (m15389try()) {
                        return;
                    }
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        public MapMakerInternalMap<K, V, E, S>.Ccontinue m15386for() {
            MapMakerInternalMap<K, V, E, S>.Ccontinue ccontinue = this.f13983case;
            if (ccontinue == null) {
                throw new NoSuchElementException();
            }
            this.f13985else = ccontinue;
            m15385do();
            return this.f13985else;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f13983case != null;
        }

        /* renamed from: if, reason: not valid java name */
        public boolean m15387if(E e) {
            boolean z;
            try {
                Object key = e.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(e);
                if (liveValue != null) {
                    this.f13983case = new Ccontinue(key, liveValue);
                    z = true;
                } else {
                    z = false;
                }
                return z;
            } finally {
                this.f13986for.postReadCleanup();
            }
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m15388new() {
            E e = this.f13990try;
            if (e == null) {
                return false;
            }
            while (true) {
                this.f13990try = (E) e.getNext();
                E e2 = this.f13990try;
                if (e2 == null) {
                    return false;
                }
                if (m15387if(e2)) {
                    return true;
                }
                e = this.f13990try;
            }
        }

        @Override // java.util.Iterator
        public abstract T next();

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.collect.Cdefault.m15744try(this.f13985else != null);
            MapMakerInternalMap.this.remove(this.f13985else.getKey());
            this.f13985else = null;
        }

        /* renamed from: try, reason: not valid java name */
        public boolean m15389try() {
            while (true) {
                int i = this.f13988if;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f13989new;
                this.f13988if = i - 1;
                E e = atomicReferenceArray.get(i);
                this.f13990try = e;
                if (e != null && (m15387if(e) || m15388new())) {
                    return true;
                }
            }
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$throw, reason: invalid class name */
    public static final class Cthrow<K> extends Cfor<K, y1.Cdo, Cthrow<K>> implements StrongValueEntry<K, y1.Cdo, Cthrow<K>> {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$throw$do, reason: invalid class name */
        public static final class Cdo<K> implements InternalEntryHelper<K, y1.Cdo, Cthrow<K>, Cwhile<K>> {

            /* renamed from: do, reason: not valid java name */
            private static final Cdo<?> f13991do = new Cdo<>();

            /* renamed from: if, reason: not valid java name */
            public static <K> Cdo<K> m15393if() {
                return (Cdo<K>) f13991do;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cthrow<K> copy(Cwhile<K> cwhile, Cthrow<K> cthrow, @b51 Cthrow<K> cthrow2) {
                return cthrow.m15390do(cthrow2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cthrow<K> newEntry(Cwhile<K> cwhile, K k, int i, @b51 Cthrow<K> cthrow) {
                return new Cthrow<>(k, i, cthrow);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper keyStrength() {
                return Csuper.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cwhile<K> newSegment(MapMakerInternalMap<K, y1.Cdo, Cthrow<K>, Cwhile<K>> mapMakerInternalMap, int i, int i2) {
                return new Cwhile<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
            public void setValue(Cwhile<K> cwhile, Cthrow<K> cthrow, y1.Cdo cdo) {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper valueStrength() {
                return Csuper.STRONG;
            }
        }

        public Cthrow(K k, int i, @b51 Cthrow<K> cthrow) {
            super(k, i, cthrow);
        }

        /* renamed from: do, reason: not valid java name */
        public Cthrow<K> m15390do(Cthrow<K> cthrow) {
            return new Cthrow<>(this.f13968do, this.f13970if, cthrow);
        }

        /* renamed from: for, reason: not valid java name */
        public void m15391for(y1.Cdo cdo) {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public y1.Cdo getValue() {
            return y1.Cdo.VALUE;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$throws, reason: invalid class name */
    public static final class Cthrows<K> extends Cnew<K, y1.Cdo, Cthrows<K>> implements StrongValueEntry<K, y1.Cdo, Cthrows<K>> {

        /* renamed from: com.google.common.collect.MapMakerInternalMap$throws$do, reason: invalid class name */
        public static final class Cdo<K> implements InternalEntryHelper<K, y1.Cdo, Cthrows<K>, Cdefault<K>> {

            /* renamed from: do, reason: not valid java name */
            private static final Cdo<?> f13992do = new Cdo<>();

            /* renamed from: if, reason: not valid java name */
            public static <K> Cdo<K> m15401if() {
                return (Cdo<K>) f13992do;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cthrows<K> copy(Cdefault<K> cdefault, Cthrows<K> cthrows, @b51 Cthrows<K> cthrows2) {
                if (cthrows.getKey() == null) {
                    return null;
                }
                return cthrows.m15398do(((Cdefault) cdefault).queueForKeys, cthrows2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cthrows<K> newEntry(Cdefault<K> cdefault, K k, int i, @b51 Cthrows<K> cthrows) {
                return new Cthrows<>(((Cdefault) cdefault).queueForKeys, k, i, cthrows);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper keyStrength() {
                return Csuper.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cdefault<K> newSegment(MapMakerInternalMap<K, y1.Cdo, Cthrows<K>, Cdefault<K>> mapMakerInternalMap, int i, int i2) {
                return new Cdefault<>(mapMakerInternalMap, i, i2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
            public void setValue(Cdefault<K> cdefault, Cthrows<K> cthrows, y1.Cdo cdo) {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Csuper valueStrength() {
                return Csuper.STRONG;
            }
        }

        public Cthrows(ReferenceQueue<K> referenceQueue, K k, int i, @b51 Cthrows<K> cthrows) {
            super(referenceQueue, k, i, cthrows);
        }

        /* renamed from: do, reason: not valid java name */
        public Cthrows<K> m15398do(ReferenceQueue<K> referenceQueue, Cthrows<K> cthrows) {
            return new Cthrows<>(referenceQueue, getKey(), this.f13974do, cthrows);
        }

        /* renamed from: for, reason: not valid java name */
        public void m15399for(y1.Cdo cdo) {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public y1.Cdo getValue() {
            return y1.Cdo.VALUE;
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$try, reason: invalid class name */
    public static final class Ctry implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference<MapMakerInternalMap<?, ?, ?, ?>> f13993do;

        public Ctry(MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap) {
            this.f13993do = new WeakReference<>(mapMakerInternalMap);
        }

        @Override // java.lang.Runnable
        public void run() {
            MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap = this.f13993do.get();
            if (mapMakerInternalMap == null) {
                throw new CancellationException();
            }
            for (Cconst<?, ?, E, S> cconst : mapMakerInternalMap.segments) {
                cconst.runCleanup();
            }
        }
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$while, reason: invalid class name */
    public static final class Cwhile<K> extends Cconst<K, y1.Cdo, Cthrow<K>, Cwhile<K>> {
        public Cwhile(MapMakerInternalMap<K, y1.Cdo, Cthrow<K>, Cwhile<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cwhile<K> self() {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Cconst
        public Cthrow<K> castForTesting(InternalEntry<K, y1.Cdo, ?> internalEntry) {
            return (Cthrow) internalEntry;
        }
    }

    private MapMakerInternalMap(y1 y1Var, InternalEntryHelper<K, V, E, S> internalEntryHelper) {
        this.concurrencyLevel = Math.min(y1Var.m16537if(), 65536);
        this.keyEquivalence = y1Var.m16538new();
        this.entryHelper = internalEntryHelper;
        int iMin = Math.min(y1Var.m16535for(), 1073741824);
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        int i4 = 0;
        while (i3 < this.concurrencyLevel) {
            i4++;
            i3 <<= 1;
        }
        this.segmentShift = 32 - i4;
        this.segmentMask = i3 - 1;
        this.segments = newSegmentArray(i3);
        int i5 = iMin / i3;
        while (i2 < (i3 * i5 < iMin ? i5 + 1 : i5)) {
            i2 <<= 1;
        }
        while (true) {
            Cconst<K, V, E, S>[] cconstArr = this.segments;
            if (i >= cconstArr.length) {
                return;
            }
            cconstArr[i] = createSegment(i2, -1);
            i++;
        }
    }

    public static <K, V> MapMakerInternalMap<K, V, ? extends InternalEntry<K, V, ?>, ?> create(y1 y1Var) {
        Csuper csuperM16540try = y1Var.m16540try();
        Csuper csuper = Csuper.STRONG;
        if (csuperM16540try == csuper && y1Var.m16529case() == csuper) {
            return new MapMakerInternalMap<>(y1Var, Cimport.Cdo.m15362if());
        }
        if (y1Var.m16540try() == csuper && y1Var.m16529case() == Csuper.WEAK) {
            return new MapMakerInternalMap<>(y1Var, Cpublic.Cdo.m15380if());
        }
        Csuper csuperM16540try2 = y1Var.m16540try();
        Csuper csuper2 = Csuper.WEAK;
        if (csuperM16540try2 == csuper2 && y1Var.m16529case() == csuper) {
            return new MapMakerInternalMap<>(y1Var, Cextends.Cdo.m15355if());
        }
        if (y1Var.m16540try() == csuper2 && y1Var.m16529case() == csuper2) {
            return new MapMakerInternalMap<>(y1Var, Cpackage.Cdo.m15371if());
        }
        throw new AssertionError();
    }

    public static <K> MapMakerInternalMap<K, y1.Cdo, ? extends InternalEntry<K, y1.Cdo, ?>, ?> createWithDummyValues(y1 y1Var) {
        Csuper csuperM16540try = y1Var.m16540try();
        Csuper csuper = Csuper.STRONG;
        if (csuperM16540try == csuper && y1Var.m16529case() == csuper) {
            return new MapMakerInternalMap<>(y1Var, Cthrow.Cdo.m15393if());
        }
        Csuper csuperM16540try2 = y1Var.m16540try();
        Csuper csuper2 = Csuper.WEAK;
        if (csuperM16540try2 == csuper2 && y1Var.m16529case() == csuper) {
            return new MapMakerInternalMap<>(y1Var, Cthrows.Cdo.m15401if());
        }
        if (y1Var.m16529case() == csuper2) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: do, reason: not valid java name */
    public static <E> ArrayList<E> m15348do(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        s1.m16222do(arrayList, collection.iterator());
        return arrayList;
    }

    public static int rehash(int i) {
        int i2 = i + ((i << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    public static <K, V, E extends InternalEntry<K, V, E>> WeakValueReference<K, V, E> unsetWeakValueReference() {
        return (WeakValueReference<K, V, E>) UNSET_WEAK_VALUE_REFERENCE;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Cconst<K, V, E, S> cconst : this.segments) {
            cconst.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@b51 Object obj) {
        if (obj == null) {
            return false;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).containsKey(obj, iHash);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@b51 Object obj) {
        if (obj == null) {
            return false;
        }
        Cconst<K, V, E, S>[] cconstArr = this.segments;
        long j = -1;
        int i = 0;
        while (i < 3) {
            long j2 = 0;
            for (Cconst<K, V, E, S> cconst : cconstArr) {
                int i2 = cconst.count;
                AtomicReferenceArray<E> atomicReferenceArray = cconst.table;
                for (int i3 = 0; i3 < atomicReferenceArray.length(); i3++) {
                    for (E next = atomicReferenceArray.get(i3); next != null; next = next.getNext()) {
                        V liveValue = cconst.getLiveValue(next);
                        if (liveValue != null && valueEquivalence().equivalent(obj, liveValue)) {
                            return true;
                        }
                    }
                }
                j2 += cconst.modCount;
            }
            if (j2 == j) {
                return false;
            }
            i++;
            j = j2;
        }
        return false;
    }

    @af2
    public E copyEntry(E e, E e2) {
        return (E) segmentFor(e.getHash()).copyEntry(e, e2);
    }

    public Cconst<K, V, E, S> createSegment(int i, int i2) {
        return this.entryHelper.newSegment(this, i, i2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        Cgoto cgoto = new Cgoto();
        this.entrySet = cgoto;
        return cgoto;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@b51 Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).get(obj, iHash);
    }

    public E getEntry(@b51 Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return (E) segmentFor(iHash).getEntry(obj, iHash);
    }

    public V getLiveValue(E e) {
        if (e.getKey() == null) {
            return null;
        }
        return (V) e.getValue();
    }

    public int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Cconst<K, V, E, S>[] cconstArr = this.segments;
        long j = 0;
        for (int i = 0; i < cconstArr.length; i++) {
            if (cconstArr[i].count != 0) {
                return false;
            }
            j += cconstArr[i].modCount;
        }
        if (j == 0) {
            return true;
        }
        for (int i2 = 0; i2 < cconstArr.length; i2++) {
            if (cconstArr[i2].count != 0) {
                return false;
            }
            j -= cconstArr[i2].modCount;
        }
        return j == 0;
    }

    @af2
    public boolean isLiveForTesting(InternalEntry<K, V, ?> internalEntry) {
        return segmentFor(internalEntry.getHash()).getLiveValueForTesting(internalEntry) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        Ccatch ccatch = new Ccatch();
        this.keySet = ccatch;
        return ccatch;
    }

    @af2
    public Csuper keyStrength() {
        return this.entryHelper.keyStrength();
    }

    public final Cconst<K, V, E, S>[] newSegmentArray(int i) {
        return new Cconst[i];
    }

    @Override // java.util.AbstractMap, java.util.Map
    @lf
    public V put(K k, V v) {
        af1.m205continue(k);
        af1.m205continue(v);
        int iHash = hash(k);
        return segmentFor(iHash).put(k, iHash, v, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public V putIfAbsent(K k, V v) {
        af1.m205continue(k);
        af1.m205continue(v);
        int iHash = hash(k);
        return segmentFor(iHash).put(k, iHash, v, true);
    }

    public void reclaimKey(E e) {
        int hash = e.getHash();
        segmentFor(hash).reclaimKey(e, hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reclaimValue(WeakValueReference<K, V, E> weakValueReference) {
        InternalEntry entry = weakValueReference.getEntry();
        int hash = entry.getHash();
        segmentFor(hash).reclaimValue(entry.getKey(), hash, weakValueReference);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @lf
    public V remove(@b51 Object obj) {
        if (obj == null) {
            return null;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).remove(obj, iHash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public boolean replace(K k, @b51 V v, V v2) {
        af1.m205continue(k);
        af1.m205continue(v2);
        if (v == null) {
            return false;
        }
        int iHash = hash(k);
        return segmentFor(iHash).replace(k, iHash, v, v2);
    }

    public Cconst<K, V, E, S> segmentFor(int i) {
        return this.segments[(i >>> this.segmentShift) & this.segmentMask];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j = 0;
        for (int i = 0; i < this.segments.length; i++) {
            j += r0[i].count;
        }
        return com.google.common.primitives.Cthis.m17704throws(j);
    }

    @af2
    public com.google.common.base.Cthis<Object> valueEquivalence() {
        return this.entryHelper.valueStrength().defaultEquivalence();
    }

    @af2
    public Csuper valueStrength() {
        return this.entryHelper.valueStrength();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Cswitch cswitch = new Cswitch();
        this.values = cswitch;
        return cswitch;
    }

    public Object writeReplace() {
        return new Cfinal(this.entryHelper.keyStrength(), this.entryHelper.valueStrength(), this.keyEquivalence, this.entryHelper.valueStrength().defaultEquivalence(), this.concurrencyLevel, this);
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$if, reason: invalid class name */
    public static abstract class Cif<K, V> extends rd0<K, V> implements Serializable {
        private static final long serialVersionUID = 3;
        public final int concurrencyLevel;
        public transient ConcurrentMap<K, V> delegate;
        public final com.google.common.base.Cthis<Object> keyEquivalence;
        public final Csuper keyStrength;
        public final com.google.common.base.Cthis<Object> valueEquivalence;
        public final Csuper valueStrength;

        public Cif(Csuper csuper, Csuper csuper2, com.google.common.base.Cthis<Object> cthis, com.google.common.base.Cthis<Object> cthis2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = csuper;
            this.valueStrength = csuper2;
            this.keyEquivalence = cthis;
            this.valueEquivalence = cthis2;
            this.concurrencyLevel = i;
            this.delegate = concurrentMap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void readEntries(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            while (true) {
                Object object = objectInputStream.readObject();
                if (object == null) {
                    return;
                }
                this.delegate.put(object, objectInputStream.readObject());
            }
        }

        public y1 readMapMaker(ObjectInputStream objectInputStream) throws IOException {
            return new y1().m16534else(objectInputStream.readInt()).m16528break(this.keyStrength).m16530catch(this.valueStrength).m16536goto(this.keyEquivalence).m16533do(this.concurrencyLevel);
        }

        public void writeMapTo(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        @Override // android.support.v4.rd0, com.google.common.collect.z, android.support.v4.ae0
        public ConcurrentMap<K, V> delegate() {
            return this.delegate;
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public boolean remove(@b51 Object obj, @b51 Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int iHash = hash(obj);
        return segmentFor(iHash).remove(obj, iHash, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @lf
    public V replace(K k, V v) {
        af1.m205continue(k);
        af1.m205continue(v);
        int iHash = hash(k);
        return segmentFor(iHash).replace(k, iHash, v);
    }

    /* renamed from: com.google.common.collect.MapMakerInternalMap$const, reason: invalid class name */
    public static abstract class Cconst<K, V, E extends InternalEntry<K, V, E>, S extends Cconst<K, V, E, S>> extends ReentrantLock {
        public volatile int count;

        @hf2
        public final MapMakerInternalMap<K, V, E, S> map;
        public final int maxSegmentSize;
        public int modCount;
        public final AtomicInteger readCount = new AtomicInteger();

        @l01
        public volatile AtomicReferenceArray<E> table;
        public int threshold;

        public Cconst(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2) {
            this.map = mapMakerInternalMap;
            this.maxSegmentSize = i2;
            initTable(newEntryArray(i));
        }

        public static <K, V, E extends InternalEntry<K, V, E>> boolean isCollected(E e) {
            return e.getValue() == null;
        }

        public abstract E castForTesting(InternalEntry<K, V, ?> internalEntry);

        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        public <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            while (referenceQueue.poll() != null) {
            }
        }

        @lf
        public boolean clearValueForTesting(K k, int i, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((WeakValueEntry) next).getValueReference() != weakValueReference) {
                            return false;
                        }
                        atomicReferenceArray.set(length, removeFromChain(internalEntry, next));
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public boolean containsKey(Object obj, int i) {
            try {
                boolean z = false;
                if (this.count == 0) {
                    return false;
                }
                InternalEntry liveEntry = getLiveEntry(obj, i);
                if (liveEntry != null) {
                    if (liveEntry.getValue() != null) {
                        z = true;
                    }
                }
                return z;
            } finally {
                postReadCleanup();
            }
        }

        @af2
        public boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (E next = atomicReferenceArray.get(i); next != null; next = next.getNext()) {
                            V liveValue = getLiveValue(next);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                return false;
            } finally {
                postReadCleanup();
            }
        }

        public E copyEntry(E e, E e2) {
            return (E) this.map.entryHelper.copy(self(), e, e2);
        }

        public E copyForTesting(InternalEntry<K, V, ?> internalEntry, @b51 InternalEntry<K, V, ?> internalEntry2) {
            return (E) this.map.entryHelper.copy(self(), castForTesting(internalEntry), castForTesting(internalEntry2));
        }

        @ji0("this")
        public void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends K> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimKey((InternalEntry) referencePoll);
                i++;
            } while (i != 16);
        }

        @ji0("this")
        public void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends V> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                this.map.reclaimValue((WeakValueReference) referencePoll);
                i++;
            } while (i != 16);
        }

        @ji0("this")
        public void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.count;
            AtomicReferenceArray<E> atomicReferenceArrayNewEntryArray = newEntryArray(length << 1);
            this.threshold = (atomicReferenceArrayNewEntryArray.length() * 3) / 4;
            int length2 = atomicReferenceArrayNewEntryArray.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                E next = atomicReferenceArray.get(i2);
                if (next != null) {
                    InternalEntry next2 = next.getNext();
                    int hash = next.getHash() & length2;
                    if (next2 == null) {
                        atomicReferenceArrayNewEntryArray.set(hash, next);
                    } else {
                        InternalEntry internalEntry = next;
                        while (next2 != null) {
                            int hash2 = next2.getHash() & length2;
                            if (hash2 != hash) {
                                internalEntry = next2;
                                hash = hash2;
                            }
                            next2 = next2.getNext();
                        }
                        atomicReferenceArrayNewEntryArray.set(hash, internalEntry);
                        while (next != internalEntry) {
                            int hash3 = next.getHash() & length2;
                            InternalEntry internalEntryCopyEntry = copyEntry(next, (InternalEntry) atomicReferenceArrayNewEntryArray.get(hash3));
                            if (internalEntryCopyEntry != null) {
                                atomicReferenceArrayNewEntryArray.set(hash3, internalEntryCopyEntry);
                            } else {
                                i--;
                            }
                            next = next.getNext();
                        }
                    }
                }
            }
            this.table = atomicReferenceArrayNewEntryArray;
            this.count = i;
        }

        public V get(Object obj, int i) {
            try {
                InternalEntry liveEntry = getLiveEntry(obj, i);
                if (liveEntry == null) {
                    return null;
                }
                V v = (V) liveEntry.getValue();
                if (v == null) {
                    tryDrainReferenceQueues();
                }
                return v;
            } finally {
                postReadCleanup();
            }
        }

        public E getEntry(Object obj, int i) {
            if (this.count == 0) {
                return null;
            }
            for (E e = (E) getFirst(i); e != null; e = (E) e.getNext()) {
                if (e.getHash() == i) {
                    Object key = e.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return e;
                    }
                }
            }
            return null;
        }

        public E getFirst(int i) {
            return this.table.get(i & (r0.length() - 1));
        }

        public ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public E getLiveEntry(Object obj, int i) {
            return (E) getEntry(obj, i);
        }

        @b51
        public V getLiveValue(E e) {
            if (e.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = (V) e.getValue();
            if (v != null) {
                return v;
            }
            tryDrainReferenceQueues();
            return null;
        }

        @b51
        public V getLiveValueForTesting(InternalEntry<K, V, ?> internalEntry) {
            return getLiveValue(castForTesting(internalEntry));
        }

        public ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        public WeakValueReference<K, V, E> getWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry) {
            throw new AssertionError();
        }

        public void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.threshold = length;
            if (length == this.maxSegmentSize) {
                this.threshold = length + 1;
            }
            this.table = atomicReferenceArray;
        }

        public void maybeClearReferenceQueues() {
        }

        @ji0("this")
        public void maybeDrainReferenceQueues() {
        }

        public AtomicReferenceArray<E> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        public E newEntryForTesting(K k, int i, @b51 InternalEntry<K, V, ?> internalEntry) {
            return (E) this.map.entryHelper.newEntry(self(), k, i, castForTesting(internalEntry));
        }

        public WeakValueReference<K, V, E> newWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            throw new AssertionError();
        }

        public void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runCleanup();
            }
        }

        @ji0("this")
        public void preWriteCleanup() {
            runLockedCleanup();
        }

        public V put(K k, int i, V v, boolean z) {
            lock();
            try {
                preWriteCleanup();
                int i2 = this.count + 1;
                if (i2 > this.threshold) {
                    expand();
                    i2 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) next.getValue();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(next, v);
                            this.count = this.count;
                            return null;
                        }
                        if (z) {
                            return v2;
                        }
                        this.modCount++;
                        setValue(next, v);
                        return v2;
                    }
                }
                this.modCount++;
                InternalEntry internalEntryNewEntry = this.map.entryHelper.newEntry(self(), k, i, internalEntry);
                setValue(internalEntryNewEntry, v);
                atomicReferenceArray.set(length, internalEntryNewEntry);
                this.count = i2;
                return null;
            } finally {
                unlock();
            }
        }

        @lf
        public boolean reclaimKey(E e, int i) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                    if (next == e) {
                        this.modCount++;
                        InternalEntry internalEntryRemoveFromChain = removeFromChain(internalEntry, next);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, internalEntryRemoveFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        @lf
        public boolean reclaimValue(K k, int i, WeakValueReference<K, V, E> weakValueReference) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((WeakValueEntry) next).getValueReference() != weakValueReference) {
                            return false;
                        }
                        this.modCount++;
                        InternalEntry internalEntryRemoveFromChain = removeFromChain(internalEntry, next);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, internalEntryRemoveFromChain);
                        this.count = i2;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        @lf
        public V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v = (V) next.getValue();
                        if (v == null && !isCollected(next)) {
                            return null;
                        }
                        this.modCount++;
                        InternalEntry internalEntryRemoveFromChain = removeFromChain(internalEntry, next);
                        int i2 = this.count - 1;
                        atomicReferenceArray.set(length, internalEntryRemoveFromChain);
                        this.count = i2;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        @ji0("this")
        public boolean removeEntryForTesting(E e) {
            int hash = e.getHash();
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = hash & (atomicReferenceArray.length() - 1);
            InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
            for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                if (next == e) {
                    this.modCount++;
                    InternalEntry internalEntryRemoveFromChain = removeFromChain(internalEntry, next);
                    int i = this.count - 1;
                    atomicReferenceArray.set(length, internalEntryRemoveFromChain);
                    this.count = i;
                    return true;
                }
            }
            return false;
        }

        @ji0("this")
        public E removeFromChain(E e, E e2) {
            int i = this.count;
            E e3 = (E) e2.getNext();
            while (e != e2) {
                InternalEntry internalEntryCopyEntry = copyEntry(e, e3);
                if (internalEntryCopyEntry != null) {
                    e3 = (E) internalEntryCopyEntry;
                } else {
                    i--;
                }
                e = (E) e.getNext();
            }
            this.count = i;
            return e3;
        }

        public E removeFromChainForTesting(InternalEntry<K, V, ?> internalEntry, InternalEntry<K, V, ?> internalEntry2) {
            return (E) removeFromChain(castForTesting(internalEntry), castForTesting(internalEntry2));
        }

        @lf
        public boolean removeTableEntryForTesting(InternalEntry<K, V, ?> internalEntry) {
            return removeEntryForTesting(castForTesting(internalEntry));
        }

        public boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        Object value = next.getValue();
                        if (value != null) {
                            if (!this.map.valueEquivalence().equivalent(v, value)) {
                                return false;
                            }
                            this.modCount++;
                            setValue(next, v2);
                            return true;
                        }
                        if (isCollected(next)) {
                            this.modCount++;
                            InternalEntry internalEntryRemoveFromChain = removeFromChain(internalEntry, next);
                            int i2 = this.count - 1;
                            atomicReferenceArray.set(length, internalEntryRemoveFromChain);
                            this.count = i2;
                        }
                        return false;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        public void runCleanup() {
            runLockedCleanup();
        }

        public void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public abstract S self();

        public void setTableEntryForTesting(int i, InternalEntry<K, V, ?> internalEntry) {
            this.table.set(i, castForTesting(internalEntry));
        }

        public void setValue(E e, V v) {
            this.map.entryHelper.setValue(self(), e, v);
        }

        public void setValueForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            this.map.entryHelper.setValue(self(), castForTesting(internalEntry), v);
        }

        public void setWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            throw new AssertionError();
        }

        public void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        
            if (r8.map.valueEquivalence().equivalent(r11, r4.getValue()) == false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
        
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        
            if (isCollected(r4) == false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
        
            r8.modCount++;
            r9 = removeFromChain(r3, r4);
            r10 = r8.count - 1;
            r0.set(r1, r9);
            r8.count = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
        
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean remove(Object obj, int i, Object obj2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                InternalEntry next = internalEntry;
                while (true) {
                    boolean z = false;
                    if (next == null) {
                        return false;
                    }
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        break;
                    }
                    next = next.getNext();
                }
            } finally {
                unlock();
            }
        }

        public V replace(K k, int i, V v) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry next = internalEntry; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) next.getValue();
                        if (v2 == null) {
                            if (isCollected(next)) {
                                this.modCount++;
                                InternalEntry internalEntryRemoveFromChain = removeFromChain(internalEntry, next);
                                int i2 = this.count - 1;
                                atomicReferenceArray.set(length, internalEntryRemoveFromChain);
                                this.count = i2;
                            }
                            return null;
                        }
                        this.modCount++;
                        setValue(next, v);
                        return v2;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }
    }
}
