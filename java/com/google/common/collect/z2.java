package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import java.io.Serializable;
import java.util.Iterator;

@ki0(serializable = true)
/* loaded from: classes2.dex */
final class z2 extends k2<Comparable> implements Serializable {
    public static final z2 INSTANCE = new z2();
    private static final long serialVersionUID = 0;

    private z2() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.k2
    public <S extends Comparable> k2<S> reverse() {
        return k2.natural();
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(Comparable comparable, Comparable comparable2) {
        af1.m205continue(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E max(E e, E e2) {
        return (E) e2.INSTANCE.min(e, e2);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E min(E e, E e2) {
        return (E) e2.INSTANCE.max(e, e2);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E max(E e, E e2, E e3, E... eArr) {
        return (E) e2.INSTANCE.min(e, e2, e3, eArr);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E min(E e, E e2, E e3, E... eArr) {
        return (E) e2.INSTANCE.max(e, e2, e3, eArr);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E max(Iterator<E> it) {
        return (E) e2.INSTANCE.min(it);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E min(Iterator<E> it) {
        return (E) e2.INSTANCE.max(it);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E max(Iterable<E> iterable) {
        return (E) e2.INSTANCE.min(iterable);
    }

    @Override // com.google.common.collect.k2
    public <E extends Comparable> E min(Iterable<E> iterable) {
        return (E) e2.INSTANCE.max(iterable);
    }
}
