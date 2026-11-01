package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;
import java.util.List;

@ki0(serializable = true)
/* renamed from: com.google.common.collect.while, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cwhile extends k2<Object> implements Serializable {
    public static final Cwhile INSTANCE = new Cwhile();
    private static final long serialVersionUID = 0;

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(@b51 Object obj, @b51 Object obj2) {
        return 0;
    }

    @Override // com.google.common.collect.k2
    public <E> v0<E> immutableSortedCopy(Iterable<E> iterable) {
        return v0.copyOf(iterable);
    }

    @Override // com.google.common.collect.k2
    public <S> k2<S> reverse() {
        return this;
    }

    @Override // com.google.common.collect.k2
    public <E> List<E> sortedCopy(Iterable<E> iterable) {
        return x1.m16506import(iterable);
    }

    public String toString() {
        return "Ordering.allEqual()";
    }
}
