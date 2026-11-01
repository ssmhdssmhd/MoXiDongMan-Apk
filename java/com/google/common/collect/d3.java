package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.fs0;
import android.support.v4.ki0;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
final class d3<E> extends g1<E> {
    public final transient E element;

    /* renamed from: try, reason: not valid java name */
    @fs0
    private transient int f14209try;

    public d3(E e) {
        this.element = (E) af1.m205continue(e);
    }

    @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.element.equals(obj);
    }

    @Override // com.google.common.collect.r0
    public int copyIntoArray(Object[] objArr, int i) {
        objArr[i] = this.element;
        return i + 1;
    }

    @Override // com.google.common.collect.g1
    public v0<E> createAsList() {
        return v0.of((Object) this.element);
    }

    @Override // com.google.common.collect.g1, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.f14209try;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.element.hashCode();
        this.f14209try = iHashCode;
        return iHashCode;
    }

    @Override // com.google.common.collect.g1
    public boolean isHashCodeFast() {
        return this.f14209try != 0;
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return '[' + this.element.toString() + ']';
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return s1.l(this.element);
    }

    public d3(E e, int i) {
        this.element = e;
        this.f14209try = i;
    }
}
