package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class x2<E> extends m1<E> {
    public static final x2<Comparable> NATURAL_EMPTY_SET = new x2<>(v0.of(), k2.natural());

    @af2
    public final transient v0<E> elements;

    public x2(v0<E> v0Var, Comparator<? super E> comparator) {
        super(comparator);
        this.elements = v0Var;
    }

    /* renamed from: for, reason: not valid java name */
    private int m16527for(Object obj) throws ClassCastException {
        return Collections.binarySearch(this.elements, obj, unsafeComparator());
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0
    public v0<E> asList() {
        return this.elements;
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E ceiling(E e) {
        int iTailIndex = tailIndex(e, true);
        if (iTailIndex == size()) {
            return null;
        }
        return this.elements.get(iTailIndex);
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return m16527for(obj) >= 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        if (!f3.m15792if(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        ac2<E> it = iterator();
        Iterator<?> it2 = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        E next2 = it.next();
        while (true) {
            try {
                int iUnsafeCompare = unsafeCompare(next2, next);
                if (iUnsafeCompare < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (iUnsafeCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iUnsafeCompare > 0) {
                    break;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // com.google.common.collect.r0
    public int copyIntoArray(Object[] objArr, int i) {
        return this.elements.copyIntoArray(objArr, i);
    }

    @Override // com.google.common.collect.m1
    public m1<E> createDescendingSet() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(this.comparator);
        return isEmpty() ? m1.emptySet(comparatorReverseOrder) : new x2(this.elements.reverse(), comparatorReverseOrder);
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        if (!f3.m15792if(this.comparator, set)) {
            return containsAll(set);
        }
        Iterator<E> it = set.iterator();
        try {
            ac2<E> it2 = iterator();
            while (it2.hasNext()) {
                E next = it2.next();
                E next2 = it.next();
                if (next2 == null || unsafeCompare(next, next2) != 0) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override // com.google.common.collect.m1, java.util.SortedSet
    public E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.elements.get(0);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E floor(E e) {
        int iHeadIndex = headIndex(e, true) - 1;
        if (iHeadIndex == -1) {
            return null;
        }
        return this.elements.get(iHeadIndex);
    }

    public x2<E> getSubSet(int i, int i2) {
        return (i == 0 && i2 == size()) ? this : i < i2 ? new x2<>(this.elements.subList(i, i2), this.comparator) : m1.emptySet(this.comparator);
    }

    public int headIndex(E e, boolean z) {
        int iBinarySearch = Collections.binarySearch(this.elements, af1.m205continue(e), comparator());
        return iBinarySearch >= 0 ? z ? iBinarySearch + 1 : iBinarySearch : iBinarySearch ^ (-1);
    }

    @Override // com.google.common.collect.m1
    public m1<E> headSetImpl(E e, boolean z) {
        return getSubSet(0, headIndex(e, z));
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E higher(E e) {
        int iTailIndex = tailIndex(e, false);
        if (iTailIndex == size()) {
            return null;
        }
        return this.elements.get(iTailIndex);
    }

    @Override // com.google.common.collect.m1
    public int indexOf(@b51 Object obj) {
        if (obj == null) {
            return -1;
        }
        try {
            int iBinarySearch = Collections.binarySearch(this.elements, obj, unsafeComparator());
            if (iBinarySearch >= 0) {
                return iBinarySearch;
            }
            return -1;
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    @Override // com.google.common.collect.r0
    public Object[] internalArray() {
        return this.elements.internalArray();
    }

    @Override // com.google.common.collect.r0
    public int internalArrayEnd() {
        return this.elements.internalArrayEnd();
    }

    @Override // com.google.common.collect.r0
    public int internalArrayStart() {
        return this.elements.internalArrayStart();
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return this.elements.isPartialView();
    }

    @Override // com.google.common.collect.m1, java.util.SortedSet
    public E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.elements.get(size() - 1);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E lower(E e) {
        int iHeadIndex = headIndex(e, false) - 1;
        if (iHeadIndex == -1) {
            return null;
        }
        return this.elements.get(iHeadIndex);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.elements.size();
    }

    @Override // com.google.common.collect.m1
    public m1<E> subSetImpl(E e, boolean z, E e2, boolean z2) {
        return tailSetImpl(e, z).headSetImpl(e2, z2);
    }

    public int tailIndex(E e, boolean z) {
        int iBinarySearch = Collections.binarySearch(this.elements, af1.m205continue(e), comparator());
        return iBinarySearch >= 0 ? z ? iBinarySearch : iBinarySearch + 1 : iBinarySearch ^ (-1);
    }

    @Override // com.google.common.collect.m1
    public m1<E> tailSetImpl(E e, boolean z) {
        return getSubSet(tailIndex(e, z), size());
    }

    public Comparator<Object> unsafeComparator() {
        return this.comparator;
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0
    public ac2<E> descendingIterator() {
        return this.elements.reverse().iterator();
    }

    @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return this.elements.iterator();
    }
}
