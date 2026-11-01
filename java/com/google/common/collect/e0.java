package com.google.common.collect;

import android.support.v4.ki0;
import android.support.v4.o8;
import com.google.common.collect.Multiset;
import com.google.common.collect.h3;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

@ki0(emulated = true)
@o8
/* loaded from: classes2.dex */
public abstract class e0<E> extends a0<E> implements SortedMultiset<E> {

    /* renamed from: com.google.common.collect.e0$do, reason: invalid class name */
    public abstract class Cdo extends e<E> {
        public Cdo() {
        }

        @Override // com.google.common.collect.e
        /* renamed from: for */
        public SortedMultiset<E> mo15751for() {
            return e0.this;
        }
    }

    /* renamed from: com.google.common.collect.e0$if, reason: invalid class name */
    public class Cif extends h3.Cif<E> {
        public Cif() {
            super(e0.this);
        }
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return delegate().comparator();
    }

    @Override // com.google.common.collect.a0, android.support.v4.qd0, android.support.v4.ae0
    public abstract SortedMultiset<E> delegate();

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> descendingMultiset() {
        return delegate().descendingMultiset();
    }

    /* renamed from: do, reason: not valid java name */
    public Multiset.Entry<E> m15753do() {
        Iterator<Multiset.Entry<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        return c2.m15645catch(next.getElement(), next.getCount());
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return delegate().firstEntry();
    }

    /* renamed from: for, reason: not valid java name */
    public Multiset.Entry<E> m15754for() {
        Iterator<Multiset.Entry<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        Multiset.Entry<E> entryM15645catch = c2.m15645catch(next.getElement(), next.getCount());
        it.remove();
        return entryM15645catch;
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(E e, Cstatic cstatic) {
        return delegate().headMultiset(e, cstatic);
    }

    /* renamed from: if, reason: not valid java name */
    public Multiset.Entry<E> m15755if() {
        Iterator<Multiset.Entry<E>> it = descendingMultiset().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        return c2.m15645catch(next.getElement(), next.getCount());
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return delegate().lastEntry();
    }

    /* renamed from: new, reason: not valid java name */
    public Multiset.Entry<E> m15756new() {
        Iterator<Multiset.Entry<E>> it = descendingMultiset().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = it.next();
        Multiset.Entry<E> entryM15645catch = c2.m15645catch(next.getElement(), next.getCount());
        it.remove();
        return entryM15645catch;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollFirstEntry() {
        return delegate().pollFirstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> pollLastEntry() {
        return delegate().pollLastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> subMultiset(E e, Cstatic cstatic, E e2, Cstatic cstatic2) {
        return delegate().subMultiset(e, cstatic, e2, cstatic2);
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(E e, Cstatic cstatic) {
        return delegate().tailMultiset(e, cstatic);
    }

    /* renamed from: try, reason: not valid java name */
    public SortedMultiset<E> m15757try(E e, Cstatic cstatic, E e2, Cstatic cstatic2) {
        return tailMultiset(e, cstatic).headMultiset(e2, cstatic2);
    }

    @Override // com.google.common.collect.a0, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return delegate().elementSet();
    }
}
