package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.b51;
import android.support.v4.li0;

@li0
/* loaded from: classes2.dex */
final class d<E> extends m1<E> {
    private final m1<E> forward;

    public d(m1<E> m1Var) {
        super(k2.from(m1Var.comparator()).reverse());
        this.forward = m1Var;
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E ceiling(E e) {
        return this.forward.floor(e);
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@b51 Object obj) {
        return this.forward.contains(obj);
    }

    @Override // com.google.common.collect.m1
    @li0("NavigableSet")
    public m1<E> createDescendingSet() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E floor(E e) {
        return this.forward.ceiling(e);
    }

    @Override // com.google.common.collect.m1
    public m1<E> headSetImpl(E e, boolean z) {
        return this.forward.tailSet((m1<E>) e, z).descendingSet();
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E higher(E e) {
        return this.forward.lower(e);
    }

    @Override // com.google.common.collect.m1
    public int indexOf(@b51 Object obj) {
        int iIndexOf = this.forward.indexOf(obj);
        return iIndexOf == -1 ? iIndexOf : (size() - 1) - iIndexOf;
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return this.forward.isPartialView();
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    public E lower(E e) {
        return this.forward.higher(e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.forward.size();
    }

    @Override // com.google.common.collect.m1
    public m1<E> subSetImpl(E e, boolean z, E e2, boolean z2) {
        return this.forward.subSet((boolean) e2, z2, (boolean) e, z).descendingSet();
    }

    @Override // com.google.common.collect.m1
    public m1<E> tailSetImpl(E e, boolean z) {
        return this.forward.headSet((m1<E>) e, z).descendingSet();
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0("NavigableSet")
    public ac2<E> descendingIterator() {
        return this.forward.iterator();
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0("NavigableSet")
    public m1<E> descendingSet() {
        return this.forward;
    }

    @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return this.forward.descendingIterator();
    }
}
