package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import com.google.common.base.Function;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;

@ki0
/* loaded from: classes2.dex */
public abstract class k2<T> implements Comparator<T> {
    public static final int LEFT_IS_GREATER = 1;
    public static final int RIGHT_IS_GREATER = -1;

    @af2
    /* renamed from: com.google.common.collect.k2$do, reason: invalid class name */
    public static class Cdo extends k2<Object> {

        /* renamed from: do, reason: not valid java name */
        private final AtomicInteger f14394do = new AtomicInteger(0);

        /* renamed from: if, reason: not valid java name */
        private final ConcurrentMap<Object, Integer> f14395if = l2.m15989class(new y1()).m16539this();

        /* renamed from: do, reason: not valid java name */
        private Integer m15961do(Object obj) {
            Integer num = this.f14395if.get(obj);
            if (num != null) {
                return num;
            }
            Integer numValueOf = Integer.valueOf(this.f14394do.getAndIncrement());
            Integer numPutIfAbsent = this.f14395if.putIfAbsent(obj, numValueOf);
            return numPutIfAbsent != null ? numPutIfAbsent : numValueOf;
        }

        @Override // com.google.common.collect.k2, java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int iM15962if = m15962if(obj);
            int iM15962if2 = m15962if(obj2);
            if (iM15962if != iM15962if2) {
                return iM15962if < iM15962if2 ? -1 : 1;
            }
            int iCompareTo = m15961do(obj).compareTo(m15961do(obj2));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
            throw new AssertionError();
        }

        /* renamed from: if, reason: not valid java name */
        public int m15962if(Object obj) {
            return System.identityHashCode(obj);
        }

        public String toString() {
            return "Ordering.arbitrary()";
        }
    }

    @af2
    /* renamed from: com.google.common.collect.k2$for, reason: invalid class name */
    public static class Cfor extends ClassCastException {
        private static final long serialVersionUID = 0;
        public final Object value;

        public Cfor(Object obj) {
            super("Cannot compare value: " + obj);
            this.value = obj;
        }
    }

    /* renamed from: com.google.common.collect.k2$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public static final k2<Object> f14396do = new Cdo();

        private Cif() {
        }
    }

    @ki0(serializable = true)
    public static k2<Object> allEqual() {
        return Cwhile.INSTANCE;
    }

    public static k2<Object> arbitrary() {
        return Cif.f14396do;
    }

    @ki0(serializable = true)
    public static <T> k2<T> explicit(List<T> list) {
        return new m(list);
    }

    @ki0(serializable = true)
    public static <T> k2<T> from(Comparator<T> comparator) {
        return comparator instanceof k2 ? (k2) comparator : new Cstrictfp(comparator);
    }

    @ki0(serializable = true)
    public static <C extends Comparable> k2<C> natural() {
        return e2.INSTANCE;
    }

    @ki0(serializable = true)
    public static k2<Object> usingToString() {
        return x3.INSTANCE;
    }

    @Deprecated
    public int binarySearch(List<? extends T> list, @b51 T t) {
        return Collections.binarySearch(list, t, this);
    }

    @Override // java.util.Comparator
    @lf
    public abstract int compare(@b51 T t, @b51 T t2);

    @ki0(serializable = true)
    public <U extends T> k2<U> compound(Comparator<? super U> comparator) {
        return new Cprotected(this, (Comparator) af1.m205continue(comparator));
    }

    public <E extends T> List<E> greatestOf(Iterable<E> iterable, int i) {
        return reverse().leastOf(iterable, i);
    }

    public <E extends T> v0<E> immutableSortedCopy(Iterable<E> iterable) {
        return v0.sortedCopyOf(this, iterable);
    }

    public boolean isOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public boolean isStrictlyOrdered(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public <E extends T> List<E> leastOf(Iterable<E> iterable, int i) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= i * 2) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                if (array.length > i) {
                    array = Arrays.copyOf(array, i);
                }
                return Collections.unmodifiableList(Arrays.asList(array));
            }
        }
        return leastOf(iterable.iterator(), i);
    }

    @ki0(serializable = true)
    public <S extends T> k2<Iterable<S>> lexicographical() {
        return new t1(this);
    }

    public <E extends T> E max(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) max(next, it.next());
        }
        return next;
    }

    public <E extends T> E min(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) min(next, it.next());
        }
        return next;
    }

    @ki0(serializable = true)
    public <S extends T> k2<S> nullsFirst() {
        return new f2(this);
    }

    @ki0(serializable = true)
    public <S extends T> k2<S> nullsLast() {
        return new g2(this);
    }

    public <T2 extends T> k2<Map.Entry<T2, ?>> onKeys() {
        return (k2<Map.Entry<T2, ?>>) onResultOf(Maps.e());
    }

    @ki0(serializable = true)
    public <F> k2<F> onResultOf(Function<F, ? extends T> function) {
        return new Cswitch(function, this);
    }

    @ki0(serializable = true)
    public <S extends T> k2<S> reverse() {
        return new a3(this);
    }

    public <E extends T> List<E> sortedCopy(Iterable<E> iterable) {
        Object[] objArrC = r1.c(iterable);
        Arrays.sort(objArrC, this);
        return x1.m16506import(Arrays.asList(objArrC));
    }

    @ki0(serializable = true)
    public static <T> k2<T> compound(Iterable<? extends Comparator<? super T>> iterable) {
        return new Cprotected(iterable);
    }

    @ki0(serializable = true)
    public static <T> k2<T> explicit(T t, T... tArr) {
        return explicit(x1.m16503for(t, tArr));
    }

    @ki0(serializable = true)
    @Deprecated
    public static <T> k2<T> from(k2<T> k2Var) {
        return (k2) af1.m205continue(k2Var);
    }

    public <E extends T> List<E> greatestOf(Iterator<E> it, int i) {
        return reverse().leastOf(it, i);
    }

    public <E extends T> E max(Iterable<E> iterable) {
        return (E) max(iterable.iterator());
    }

    public <E extends T> E min(Iterable<E> iterable) {
        return (E) min(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E max(@b51 E e, @b51 E e2) {
        return compare(e, e2) >= 0 ? e : e2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <E extends T> E min(@b51 E e, @b51 E e2) {
        return compare(e, e2) <= 0 ? e : e2;
    }

    public <E extends T> E max(@b51 E e, @b51 E e2, @b51 E e3, E... eArr) {
        E e4 = (E) max(max(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) max(e4, e5);
        }
        return e4;
    }

    public <E extends T> E min(@b51 E e, @b51 E e2, @b51 E e3, E... eArr) {
        E e4 = (E) min(min(e, e2), e3);
        for (E e5 : eArr) {
            e4 = (E) min(e4, e5);
        }
        return e4;
    }

    public <E extends T> List<E> leastOf(Iterator<E> it, int i) {
        af1.m205continue(it);
        Cdefault.m15742if(i, "k");
        if (i == 0 || !it.hasNext()) {
            return Collections.emptyList();
        }
        if (i >= 1073741823) {
            ArrayList arrayListM16507native = x1.m16507native(it);
            Collections.sort(arrayListM16507native, this);
            if (arrayListM16507native.size() > i) {
                arrayListM16507native.subList(i, arrayListM16507native.size()).clear();
            }
            arrayListM16507native.trimToSize();
            return Collections.unmodifiableList(arrayListM16507native);
        }
        n3 n3VarM16096new = n3.m16096new(i, this);
        n3VarM16096new.m16100else(it);
        return n3VarM16096new.m16098break();
    }
}
