package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.li0;
import com.google.common.collect.Multiset;

@li0
/* loaded from: classes2.dex */
final class c<E> extends k1<E> {

    /* renamed from: new, reason: not valid java name */
    private final transient k1<E> f14116new;

    public c(k1<E> k1Var) {
        this.f14116new = k1Var;
    }

    @Override // com.google.common.collect.Multiset
    public int count(@b51 Object obj) {
        return this.f14116new.count(obj);
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        return this.f14116new.lastEntry();
    }

    @Override // com.google.common.collect.c1
    public Multiset.Entry<E> getEntry(int i) {
        return this.f14116new.entrySet().asList().reverse().get(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset headMultiset(Object obj, Cstatic cstatic) {
        return headMultiset((c<E>) obj, cstatic);
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return this.f14116new.isPartialView();
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        return this.f14116new.firstEntry();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return this.f14116new.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset tailMultiset(Object obj, Cstatic cstatic) {
        return tailMultiset((c<E>) obj, cstatic);
    }

    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public k1<E> descendingMultiset() {
        return this.f14116new;
    }

    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public k1<E> headMultiset(E e, Cstatic cstatic) {
        return this.f14116new.tailMultiset((k1<E>) e, cstatic).descendingMultiset();
    }

    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public k1<E> tailMultiset(E e, Cstatic cstatic) {
        return this.f14116new.headMultiset((k1<E>) e, cstatic).descendingMultiset();
    }

    @Override // com.google.common.collect.k1, com.google.common.collect.c1, com.google.common.collect.Multiset
    public m1<E> elementSet() {
        return this.f14116new.elementSet().descendingSet();
    }
}
