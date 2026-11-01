package com.google.common.collect;

import android.support.v4.ee0;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.collect.c3;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

@li0
/* loaded from: classes2.dex */
public abstract class c0<E> extends ee0<E> implements NavigableSet<E> {

    @o8
    /* renamed from: com.google.common.collect.c0$do, reason: invalid class name */
    public class Cdo extends c3.Celse<E> {
        public Cdo() {
            super(c0.this);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public E m15617break() {
        return (E) s1.h(iterator());
    }

    /* renamed from: case, reason: not valid java name */
    public SortedSet<E> m15618case(E e) {
        return headSet(e, false);
    }

    /* renamed from: catch, reason: not valid java name */
    public E m15619catch() {
        return (E) s1.h(descendingIterator());
    }

    @Override // java.util.NavigableSet
    public E ceiling(E e) {
        return delegate().ceiling(e);
    }

    @o8
    /* renamed from: class, reason: not valid java name */
    public NavigableSet<E> m15620class(E e, boolean z, E e2, boolean z2) {
        return tailSet(e, z).headSet(e2, z2);
    }

    /* renamed from: const, reason: not valid java name */
    public SortedSet<E> m15621const(E e) {
        return tailSet(e, true);
    }

    @Override // java.util.NavigableSet
    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    public NavigableSet<E> descendingSet() {
        return delegate().descendingSet();
    }

    /* renamed from: else, reason: not valid java name */
    public E m15622else(E e) {
        return (E) s1.m16249transient(tailSet(e, false).iterator(), null);
    }

    @Override // java.util.NavigableSet
    public E floor(E e) {
        return delegate().floor(e);
    }

    /* renamed from: for, reason: not valid java name */
    public E m15623for(E e) {
        return (E) s1.m16249transient(tailSet(e, true).iterator(), null);
    }

    /* renamed from: goto, reason: not valid java name */
    public E m15624goto() {
        return descendingIterator().next();
    }

    public NavigableSet<E> headSet(E e, boolean z) {
        return delegate().headSet(e, z);
    }

    @Override // java.util.NavigableSet
    public E higher(E e) {
        return delegate().higher(e);
    }

    @Override // android.support.v4.ee0, android.support.v4.ce0, android.support.v4.qd0, android.support.v4.ae0
    /* renamed from: if */
    public abstract NavigableSet<E> delegate();

    @Override // java.util.NavigableSet
    public E lower(E e) {
        return delegate().lower(e);
    }

    /* renamed from: new, reason: not valid java name */
    public E m15625new() {
        return iterator().next();
    }

    @Override // java.util.NavigableSet
    public E pollFirst() {
        return delegate().pollFirst();
    }

    @Override // java.util.NavigableSet
    public E pollLast() {
        return delegate().pollLast();
    }

    @Override // android.support.v4.ee0
    public SortedSet<E> standardSubSet(E e, E e2) {
        return subSet(e, true, e2, false);
    }

    public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
        return delegate().subSet(e, z, e2, z2);
    }

    public NavigableSet<E> tailSet(E e, boolean z) {
        return delegate().tailSet(e, z);
    }

    /* renamed from: this, reason: not valid java name */
    public E m15626this(E e) {
        return (E) s1.m16249transient(headSet(e, false).descendingIterator(), null);
    }

    /* renamed from: try, reason: not valid java name */
    public E m15627try(E e) {
        return (E) s1.m16249transient(headSet(e, true).descendingIterator(), null);
    }
}
