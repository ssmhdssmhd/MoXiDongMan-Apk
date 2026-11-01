package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Set;
import okhttp3.HttpUrl;

@ki0(emulated = true)
/* loaded from: classes2.dex */
final class g<C extends Comparable> extends Cinstanceof<C> {

    @li0
    /* renamed from: com.google.common.collect.g$if, reason: invalid class name */
    public static final class Cif<C extends Comparable> implements Serializable {
        private static final long serialVersionUID = 0;
        private final f<C> domain;

        private Object readResolve() {
            return new g(this.domain);
        }

        private Cif(f<C> fVar) {
            this.domain = fVar;
        }
    }

    public g(f<C> fVar) {
        super(fVar);
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0
    public v0<C> asList() {
        return v0.of();
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return false;
    }

    @Override // com.google.common.collect.Cinstanceof, com.google.common.collect.m1
    @li0
    public m1<C> createDescendingSet() {
        return m1.emptySet(k2.natural().reverse());
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public boolean equals(@b51 Object obj) {
        if (obj instanceof Set) {
            return ((Set) obj).isEmpty();
        }
        return false;
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public int hashCode() {
        return 0;
    }

    @Override // com.google.common.collect.Cinstanceof, com.google.common.collect.m1
    public Cinstanceof<C> headSetImpl(C c, boolean z) {
        return this;
    }

    @Override // com.google.common.collect.m1
    @li0
    public int indexOf(Object obj) {
        return -1;
    }

    @Override // com.google.common.collect.Cinstanceof
    public Cinstanceof<C> intersection(Cinstanceof<C> cinstanceof) {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return true;
    }

    @Override // com.google.common.collect.g1
    @li0
    public boolean isHashCodeFast() {
        return true;
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return false;
    }

    @Override // com.google.common.collect.Cinstanceof
    public n2<C> range() {
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 0;
    }

    @Override // com.google.common.collect.Cinstanceof, com.google.common.collect.m1
    public Cinstanceof<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
        return this;
    }

    @Override // com.google.common.collect.Cinstanceof, com.google.common.collect.m1
    public Cinstanceof<C> tailSetImpl(C c, boolean z) {
        return this;
    }

    @Override // com.google.common.collect.Cinstanceof, java.util.AbstractCollection
    public String toString() {
        return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
    }

    @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0
    @li0
    public Object writeReplace() {
        return new Cif(this.domain);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0
    public ac2<C> descendingIterator() {
        return s1.m16240return();
    }

    @Override // com.google.common.collect.m1, java.util.SortedSet
    public C first() {
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<C> iterator() {
        return s1.m16240return();
    }

    @Override // com.google.common.collect.m1, java.util.SortedSet
    public C last() {
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.Cinstanceof
    public n2<C> range(Cstatic cstatic, Cstatic cstatic2) {
        throw new NoSuchElementException();
    }
}
