package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import com.google.common.collect.Multiset;
import com.google.common.collect.h3;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

@ki0(emulated = true)
/* renamed from: com.google.common.collect.final, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cfinal<E> extends Cthis<E> implements SortedMultiset<E> {

    @h0
    public final Comparator<? super E> comparator;

    /* renamed from: for, reason: not valid java name */
    @l01
    private transient SortedMultiset<E> f14267for;

    /* renamed from: com.google.common.collect.final$do, reason: invalid class name */
    public class Cdo extends e<E> {
        public Cdo() {
        }

        @Override // com.google.common.collect.e
        /* renamed from: for */
        public SortedMultiset<E> mo15751for() {
            return Cfinal.this;
        }

        @Override // com.google.common.collect.e
        /* renamed from: if */
        public Iterator<Multiset.Entry<E>> mo15752if() {
            return Cfinal.this.descendingEntryIterator();
        }

        @Override // com.google.common.collect.e, android.support.v4.qd0, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Cfinal.this.descendingIterator();
        }
    }

    public Cfinal() {
        this(k2.natural());
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    public SortedMultiset<E> createDescendingMultiset() {
        return new Cdo();
    }

    public abstract Iterator<Multiset.Entry<E>> descendingEntryIterator();

    Iterator<E> descendingIterator() {
        return c2.m15652final(descendingMultiset());
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> descendingMultiset() {
        SortedMultiset<E> sortedMultiset = this.f14267for;
        if (sortedMultiset != null) {
            return sortedMultiset;
        }
        SortedMultiset<E> sortedMultisetCreateDescendingMultiset = createDescendingMultiset();
        this.f14267for = sortedMultisetCreateDescendingMultiset;
        return sortedMultisetCreateDescendingMultiset;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        Iterator<Multiset.Entry<E>> itEntryIterator = entryIterator();
        if (itEntryIterator.hasNext()) {
            return itEntryIterator.next();
        }
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        Iterator<Multiset.Entry<E>> itDescendingEntryIterator = descendingEntryIterator();
        if (itDescendingEntryIterator.hasNext()) {
            return itDescendingEntryIterator.next();
        }
        return null;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollFirstEntry() {
        Iterator<Multiset.Entry<E>> itEntryIterator = entryIterator();
        if (!itEntryIterator.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = itEntryIterator.next();
        Multiset.Entry<E> entryM15645catch = c2.m15645catch(next.getElement(), next.getCount());
        itEntryIterator.remove();
        return entryM15645catch;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollLastEntry() {
        Iterator<Multiset.Entry<E>> itDescendingEntryIterator = descendingEntryIterator();
        if (!itDescendingEntryIterator.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = itDescendingEntryIterator.next();
        Multiset.Entry<E> entryM15645catch = c2.m15645catch(next.getElement(), next.getCount());
        itDescendingEntryIterator.remove();
        return entryM15645catch;
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> subMultiset(@b51 E e, Cstatic cstatic, @b51 E e2, Cstatic cstatic2) {
        af1.m205continue(cstatic);
        af1.m205continue(cstatic2);
        return tailMultiset(e, cstatic).headMultiset(e2, cstatic2);
    }

    public Cfinal(Comparator<? super E> comparator) {
        this.comparator = (Comparator) af1.m205continue(comparator);
    }

    @Override // com.google.common.collect.Cthis
    public NavigableSet<E> createElementSet() {
        return new h3.Cif(this);
    }

    @Override // com.google.common.collect.Cthis, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }
}
