package com.google.common.collect;

import android.support.v4.ki0;
import android.support.v4.l01;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import com.google.common.collect.h3;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

@ki0(emulated = true)
/* loaded from: classes2.dex */
abstract class e<E> extends a0<E> implements SortedMultiset<E> {

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient Comparator<? super E> f14224do;

    /* renamed from: for, reason: not valid java name */
    @l01
    private transient Set<Multiset.Entry<E>> f14225for;

    /* renamed from: if, reason: not valid java name */
    @l01
    private transient NavigableSet<E> f14226if;

    /* renamed from: com.google.common.collect.e$do, reason: invalid class name */
    public class Cdo extends c2.Cthis<E> {
        public Cdo() {
        }

        @Override // com.google.common.collect.c2.Cthis
        /* renamed from: do */
        public Multiset<E> mo15678do() {
            return e.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Multiset.Entry<E>> iterator() {
            return e.this.mo15752if();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e.this.mo15751for().entrySet().size();
        }
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        Comparator<? super E> comparator = this.f14224do;
        if (comparator != null) {
            return comparator;
        }
        k2 k2VarReverse = k2.from(mo15751for().comparator()).reverse();
        this.f14224do = k2VarReverse;
        return k2VarReverse;
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> descendingMultiset() {
        return mo15751for();
    }

    /* renamed from: do, reason: not valid java name */
    public Set<Multiset.Entry<E>> m15750do() {
        return new Cdo();
    }

    @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.f14225for;
        if (set != null) {
            return set;
        }
        Set<Multiset.Entry<E>> setM15750do = m15750do();
        this.f14225for = setM15750do;
        return setM15750do;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return mo15751for().lastEntry();
    }

    /* renamed from: for, reason: not valid java name */
    public abstract SortedMultiset<E> mo15751for();

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(E e, Cstatic cstatic) {
        return mo15751for().tailMultiset(e, cstatic).descendingMultiset();
    }

    /* renamed from: if, reason: not valid java name */
    public abstract Iterator<Multiset.Entry<E>> mo15752if();

    @Override // android.support.v4.qd0, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return c2.m15652final(this);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return mo15751for().firstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollFirstEntry() {
        return mo15751for().pollLastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollLastEntry() {
        return mo15751for().pollFirstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> subMultiset(E e, Cstatic cstatic, E e2, Cstatic cstatic2) {
        return mo15751for().subMultiset(e2, cstatic2, e, cstatic).descendingMultiset();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(E e, Cstatic cstatic) {
        return mo15751for().headMultiset(e, cstatic).descendingMultiset();
    }

    @Override // android.support.v4.qd0, java.util.Collection
    public Object[] toArray() {
        return standardToArray();
    }

    @Override // android.support.v4.ae0
    public String toString() {
        return entrySet().toString();
    }

    @Override // android.support.v4.qd0, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) standardToArray(tArr);
    }

    @Override // com.google.common.collect.a0, android.support.v4.qd0, android.support.v4.ae0
    public Multiset<E> delegate() {
        return mo15751for();
    }

    @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        NavigableSet<E> navigableSet = this.f14226if;
        if (navigableSet != null) {
            return navigableSet;
        }
        h3.Cif cif = new h3.Cif(this);
        this.f14226if = cif;
        return cif;
    }
}
