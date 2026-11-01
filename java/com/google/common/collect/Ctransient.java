package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ce0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.td0;
import com.google.common.collect.Multiset;
import com.google.common.collect.b3;
import com.google.common.primitives.Cthis;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

@li0
/* renamed from: com.google.common.collect.transient, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ctransient<E> extends Cthis<E> implements Serializable {
    private static final long serialVersionUID = 1;

    /* renamed from: for, reason: not valid java name */
    private final transient ConcurrentMap<E, AtomicInteger> f14695for;

    /* renamed from: com.google.common.collect.transient$for, reason: invalid class name */
    public class Cfor extends td0<Multiset.Entry<E>> {

        /* renamed from: do, reason: not valid java name */
        @b51
        private Multiset.Entry<E> f14698do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Iterator f14700if;

        public Cfor(Iterator it) {
            this.f14700if = it;
        }

        @Override // android.support.v4.td0, android.support.v4.ae0
        /* renamed from: do */
        public Iterator<Multiset.Entry<E>> delegate() {
            return this.f14700if;
        }

        @Override // android.support.v4.td0, java.util.Iterator
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Multiset.Entry<E> next() {
            Multiset.Entry<E> entry = (Multiset.Entry) super.next();
            this.f14698do = entry;
            return entry;
        }

        @Override // android.support.v4.td0, java.util.Iterator
        public void remove() {
            Cdefault.m15744try(this.f14698do != null);
            Ctransient.this.setCount(this.f14698do.getElement(), 0);
            this.f14698do = null;
        }
    }

    /* renamed from: com.google.common.collect.transient$if, reason: invalid class name */
    public class Cif extends com.google.common.collect.Cfor<Multiset.Entry<E>> {

        /* renamed from: for, reason: not valid java name */
        private final Iterator<Map.Entry<E, AtomicInteger>> f14701for;

        public Cif() {
            this.f14701for = Ctransient.this.f14695for.entrySet().iterator();
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
        public Multiset.Entry<E> mo15521do() {
            while (this.f14701for.hasNext()) {
                Map.Entry<E, AtomicInteger> next = this.f14701for.next();
                int i = next.getValue().get();
                if (i != 0) {
                    return c2.m15645catch(next.getKey(), i);
                }
            }
            return m15805if();
        }
    }

    /* renamed from: com.google.common.collect.transient$new, reason: invalid class name */
    public class Cnew extends Cthis<E>.Cif {
        private Cnew() {
            super();
        }

        /* renamed from: for, reason: not valid java name */
        private List<Multiset.Entry<E>> m16374for() {
            ArrayList arrayListM16513static = x1.m16513static(size());
            s1.m16222do(arrayListM16513static, iterator());
            return arrayListM16513static;
        }

        @Override // com.google.common.collect.Cthis.Cif, com.google.common.collect.c2.Cthis
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Ctransient<E> mo15678do() {
            return Ctransient.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return m16374for().toArray();
        }

        public /* synthetic */ Cnew(Ctransient ctransient, Cdo cdo) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) m16374for().toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.transient$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final b3.Cif<Ctransient> f14704do = b3.m15607do(Ctransient.class, "countMap");

        private Ctry() {
        }
    }

    @af2
    public Ctransient(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        af1.m225return(concurrentMap.isEmpty(), "the backing map (%s) must be empty", concurrentMap);
        this.f14695for = concurrentMap;
    }

    public static <E> Ctransient<E> create() {
        return new Ctransient<>(new ConcurrentHashMap());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    private List<E> m16371do() {
        ArrayList arrayListM16513static = x1.m16513static(size());
        for (Multiset.Entry entry : entrySet()) {
            Object element = entry.getElement();
            for (int count = entry.getCount(); count > 0; count--) {
                arrayListM16513static.add(element);
            }
        }
        return arrayListM16513static;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, ClassNotFoundException, IOException, IllegalArgumentException {
        objectInputStream.defaultReadObject();
        Ctry.f14704do.m15616if(this, (ConcurrentMap) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.f14695for);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int add(E e, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i2;
        AtomicInteger atomicInteger;
        af1.m205continue(e);
        if (i == 0) {
            return count(e);
        }
        Cdefault.m15743new(i, "occurences");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.C(this.f14695for, e);
            if (atomicIntegerPutIfAbsent == null && (atomicIntegerPutIfAbsent = this.f14695for.putIfAbsent(e, new AtomicInteger(i))) == null) {
                return 0;
            }
            do {
                i2 = atomicIntegerPutIfAbsent.get();
                if (i2 == 0) {
                    atomicInteger = new AtomicInteger(i);
                    if (this.f14695for.putIfAbsent(e, atomicInteger) == null) {
                        break;
                    }
                } else {
                    try {
                    } catch (ArithmeticException unused) {
                        throw new IllegalArgumentException("Overflow adding " + i + " occurrences to a count of " + i2);
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i2, com.google.common.math.Cnew.m17342for(i2, i)));
            return i2;
        } while (!this.f14695for.replace(e, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f14695for.clear();
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ boolean contains(@b51 Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@b51 Object obj) {
        AtomicInteger atomicInteger = (AtomicInteger) Maps.C(this.f14695for, obj);
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    @Override // com.google.common.collect.Cthis
    public Set<E> createElementSet() {
        return new Cdo(this.f14695for.keySet());
    }

    @Override // com.google.common.collect.Cthis
    @Deprecated
    public Set<Multiset.Entry<E>> createEntrySet() {
        return new Cnew(this, null);
    }

    @Override // com.google.common.collect.Cthis
    public int distinctElements() {
        return this.f14695for.size();
    }

    @Override // com.google.common.collect.Cthis
    public Iterator<E> elementIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.Cthis
    public Iterator<Multiset.Entry<E>> entryIterator() {
        return new Cfor(new Cif());
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.Cthis, java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f14695for.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return c2.m15652final(this);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int remove(@b51 Object obj, int i) {
        int i2;
        int iMax;
        if (i == 0) {
            return count(obj);
        }
        Cdefault.m15743new(i, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.C(this.f14695for, obj);
        if (atomicInteger == null) {
            return 0;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 == 0) {
                return 0;
            }
            iMax = Math.max(0, i2 - i);
        } while (!atomicInteger.compareAndSet(i2, iMax));
        if (iMax == 0) {
            this.f14695for.remove(obj, atomicInteger);
        }
        return i2;
    }

    @lf
    public boolean removeExactly(@b51 Object obj, int i) {
        int i2;
        int i3;
        if (i == 0) {
            return true;
        }
        Cdefault.m15743new(i, "occurences");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.C(this.f14695for, obj);
        if (atomicInteger == null) {
            return false;
        }
        do {
            i2 = atomicInteger.get();
            if (i2 < i) {
                return false;
            }
            i3 = i2 - i;
        } while (!atomicInteger.compareAndSet(i2, i3));
        if (i3 == 0) {
            this.f14695for.remove(obj, atomicInteger);
        }
        return true;
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public int setCount(E e, int i) {
        AtomicInteger atomicIntegerPutIfAbsent;
        int i2;
        AtomicInteger atomicInteger;
        af1.m205continue(e);
        Cdefault.m15742if(i, "count");
        do {
            atomicIntegerPutIfAbsent = (AtomicInteger) Maps.C(this.f14695for, e);
            if (atomicIntegerPutIfAbsent == null && (i == 0 || (atomicIntegerPutIfAbsent = this.f14695for.putIfAbsent(e, new AtomicInteger(i))) == null)) {
                return 0;
            }
            do {
                i2 = atomicIntegerPutIfAbsent.get();
                if (i2 == 0) {
                    if (i != 0) {
                        atomicInteger = new AtomicInteger(i);
                        if (this.f14695for.putIfAbsent(e, atomicInteger) == null) {
                            break;
                        }
                    } else {
                        return 0;
                    }
                }
            } while (!atomicIntegerPutIfAbsent.compareAndSet(i2, i));
            if (i == 0) {
                this.f14695for.remove(e, atomicIntegerPutIfAbsent);
            }
            return i2;
        } while (!this.f14695for.replace(e, atomicIntegerPutIfAbsent, atomicInteger));
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        long j = 0;
        while (this.f14695for.values().iterator().hasNext()) {
            j += r0.next().get();
        }
        return Cthis.m17704throws(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return m16371do().toArray();
    }

    /* renamed from: com.google.common.collect.transient$do, reason: invalid class name */
    public class Cdo extends ce0<E> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Set f14696do;

        public Cdo(Set set) {
            this.f14696do = set;
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return obj != null && Cextends.m15763catch(this.f14696do, obj);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean remove(Object obj) {
            return obj != null && Cextends.m15764class(this.f14696do, obj);
        }

        @Override // android.support.v4.qd0, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
        public Set<E> delegate() {
            return this.f14696do;
        }
    }

    public static <E> Ctransient<E> create(Iterable<? extends E> iterable) {
        Ctransient<E> ctransientCreate = create();
        r1.m16182do(ctransientCreate, iterable);
        return ctransientCreate;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) m16371do().toArray(tArr);
    }

    @o8
    public static <E> Ctransient<E> create(ConcurrentMap<E, AtomicInteger> concurrentMap) {
        return new Ctransient<>(concurrentMap);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    @lf
    public boolean setCount(E e, int i, int i2) {
        af1.m205continue(e);
        Cdefault.m15742if(i, "oldCount");
        Cdefault.m15742if(i2, "newCount");
        AtomicInteger atomicInteger = (AtomicInteger) Maps.C(this.f14695for, e);
        if (atomicInteger == null) {
            if (i != 0) {
                return false;
            }
            return i2 == 0 || this.f14695for.putIfAbsent(e, new AtomicInteger(i2)) == null;
        }
        int i3 = atomicInteger.get();
        if (i3 == i) {
            if (i3 == 0) {
                if (i2 == 0) {
                    this.f14695for.remove(e, atomicInteger);
                    return true;
                }
                AtomicInteger atomicInteger2 = new AtomicInteger(i2);
                return this.f14695for.putIfAbsent(e, atomicInteger2) == null || this.f14695for.replace(e, atomicInteger, atomicInteger2);
            }
            if (atomicInteger.compareAndSet(i3, i2)) {
                if (i2 == 0) {
                    this.f14695for.remove(e, atomicInteger);
                }
                return true;
            }
        }
        return false;
    }
}
