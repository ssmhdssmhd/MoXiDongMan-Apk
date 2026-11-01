package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import com.google.common.collect.Multiset;
import com.google.common.collect.c2;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

@ki0
/* renamed from: com.google.common.collect.this, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cthis<E> extends AbstractCollection<E> implements Multiset<E> {

    /* renamed from: do, reason: not valid java name */
    @fs0
    @l01
    private transient Set<E> f14684do;

    /* renamed from: if, reason: not valid java name */
    @fs0
    @l01
    private transient Set<Multiset.Entry<E>> f14685if;

    /* renamed from: com.google.common.collect.this$do, reason: invalid class name */
    public class Cdo extends c2.Cgoto<E> {
        public Cdo() {
        }

        @Override // com.google.common.collect.c2.Cgoto
        /* renamed from: do */
        public Multiset<E> mo15489do() {
            return Cthis.this;
        }

        @Override // com.google.common.collect.c2.Cgoto, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return Cthis.this.elementIterator();
        }
    }

    /* renamed from: com.google.common.collect.this$if, reason: invalid class name */
    public class Cif extends c2.Cthis<E> {
        public Cif() {
        }

        @Override // com.google.common.collect.c2.Cthis
        /* renamed from: do */
        public Multiset<E> mo15678do() {
            return Cthis.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Multiset.Entry<E>> iterator() {
            return Cthis.this.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Cthis.this.distinctElements();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @lf
    public final boolean add(@b51 E e) {
        add(e, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @lf
    public final boolean addAll(Collection<? extends E> collection) {
        return c2.m15654for(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public abstract void clear();

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public boolean contains(@b51 Object obj) {
        return count(obj) > 0;
    }

    public Set<E> createElementSet() {
        return new Cdo();
    }

    public Set<Multiset.Entry<E>> createEntrySet() {
        return new Cif();
    }

    public abstract int distinctElements();

    public abstract Iterator<E> elementIterator();

    public Set<E> elementSet() {
        Set<E> set = this.f14684do;
        if (set != null) {
            return set;
        }
        Set<E> setCreateElementSet = createElementSet();
        this.f14684do = setCreateElementSet;
        return setCreateElementSet;
    }

    public abstract Iterator<Multiset.Entry<E>> entryIterator();

    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.f14685if;
        if (set != null) {
            return set;
        }
        Set<Multiset.Entry<E>> setCreateEntrySet = createEntrySet();
        this.f14685if = setCreateEntrySet;
        return setCreateEntrySet;
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final boolean equals(@b51 Object obj) {
        return c2.m15666this(this, obj);
    }

    @Override // java.util.Collection, com.google.common.collect.Multiset
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @lf
    public final boolean remove(@b51 Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @lf
    public final boolean removeAll(Collection<?> collection) {
        return c2.m15667throw(this, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    @lf
    public final boolean retainAll(Collection<?> collection) {
        return c2.m15658native(this, collection);
    }

    @lf
    public int setCount(@b51 E e, int i) {
        return c2.m15663static(this, e, i);
    }

    @Override // java.util.AbstractCollection, com.google.common.collect.Multiset
    public final String toString() {
        return entrySet().toString();
    }

    @lf
    public int add(@b51 E e, int i) {
        throw new UnsupportedOperationException();
    }

    @lf
    public int remove(@b51 Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    @lf
    public boolean setCount(@b51 E e, int i, int i2) {
        return c2.m15665switch(this, e, i, i2);
    }
}
