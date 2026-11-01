package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.ki0;
import android.support.v4.li0;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class h3 {

    /* renamed from: com.google.common.collect.h3$do, reason: invalid class name */
    public static class Cdo<E> extends c2.Cgoto<E> implements SortedSet<E> {

        /* renamed from: do, reason: not valid java name */
        @hf2
        private final SortedMultiset<E> f14315do;

        public Cdo(SortedMultiset<E> sortedMultiset) {
            this.f14315do = sortedMultiset;
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return mo15489do().comparator();
        }

        @Override // java.util.SortedSet
        public E first() {
            return (E) h3.m15850new(mo15489do().firstEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return mo15489do().headMultiset(e, Cstatic.OPEN).elementSet();
        }

        @Override // com.google.common.collect.c2.Cgoto
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public final SortedMultiset<E> mo15489do() {
            return this.f14315do;
        }

        @Override // com.google.common.collect.c2.Cgoto, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return c2.m15655goto(mo15489do().entrySet().iterator());
        }

        @Override // java.util.SortedSet
        public E last() {
            return (E) h3.m15850new(mo15489do().lastEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return mo15489do().subMultiset(e, Cstatic.CLOSED, e2, Cstatic.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return mo15489do().tailMultiset(e, Cstatic.CLOSED).elementSet();
        }
    }

    @li0
    /* renamed from: com.google.common.collect.h3$if, reason: invalid class name */
    public static class Cif<E> extends Cdo<E> implements NavigableSet<E> {
        public Cif(SortedMultiset<E> sortedMultiset) {
            super(sortedMultiset);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return (E) h3.m15848for(mo15489do().tailMultiset(e, Cstatic.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return new Cif(mo15489do().descendingMultiset());
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            return (E) h3.m15848for(mo15489do().headMultiset(e, Cstatic.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return new Cif(mo15489do().headMultiset(e, Cstatic.forBoolean(z)));
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return (E) h3.m15848for(mo15489do().tailMultiset(e, Cstatic.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        public E lower(E e) {
            return (E) h3.m15848for(mo15489do().headMultiset(e, Cstatic.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) h3.m15848for(mo15489do().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) h3.m15848for(mo15489do().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return new Cif(mo15489do().subMultiset(e, Cstatic.forBoolean(z), e2, Cstatic.forBoolean(z2)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return new Cif(mo15489do().tailMultiset(e, Cstatic.forBoolean(z)));
        }
    }

    private h3() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static <E> E m15848for(@b51 Multiset.Entry<E> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getElement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static <E> E m15850new(Multiset.Entry<E> entry) {
        if (entry != null) {
            return entry.getElement();
        }
        throw new NoSuchElementException();
    }
}
