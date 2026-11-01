package com.google.common.collect;

import android.support.v4.ki0;
import android.support.v4.l01;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import java.util.Comparator;
import java.util.NavigableSet;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class w3<E> extends c2.Cconst<E> implements SortedMultiset<E> {
    private static final long serialVersionUID = 0;

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient w3<E> f14842do;

    public w3(SortedMultiset<E> sortedMultiset) {
        super(sortedMultiset);
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> descendingMultiset() {
        w3<E> w3Var = this.f14842do;
        if (w3Var != null) {
            return w3Var;
        }
        w3<E> w3Var2 = new w3<>(delegate().descendingMultiset());
        w3Var2.f14842do = this;
        this.f14842do = w3Var2;
        return w3Var2;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return delegate().firstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(E e, Cstatic cstatic) {
        return c2.m15660package(delegate().headMultiset(e, cstatic));
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return delegate().lastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> subMultiset(E e, Cstatic cstatic, E e2, Cstatic cstatic2) {
        return c2.m15660package(delegate().subMultiset(e, cstatic, e2, cstatic2));
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(E e, Cstatic cstatic) {
        return c2.m15660package(delegate().tailMultiset(e, cstatic));
    }

    @Override // com.google.common.collect.c2.Cconst
    public NavigableSet<E> createElementSet() {
        return c3.b(delegate().elementSet());
    }

    @Override // com.google.common.collect.c2.Cconst, com.google.common.collect.a0, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }

    @Override // com.google.common.collect.c2.Cconst, com.google.common.collect.a0, android.support.v4.qd0, android.support.v4.ae0
    public SortedMultiset<E> delegate() {
        return (SortedMultiset) super.delegate();
    }
}
