package com.google.common.collect;

import android.support.v4.ki0;
import java.util.ListIterator;

@ki0
/* loaded from: classes2.dex */
abstract class p3<F, T> extends o3<F, T> implements ListIterator<T> {
    public p3(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    /* renamed from: if, reason: not valid java name */
    private ListIterator<? extends F> m16121if() {
        return s1.m16216case(this.f14492do);
    }

    @Override // java.util.ListIterator
    public void add(T t) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return m16121if().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return m16121if().nextIndex();
    }

    @Override // java.util.ListIterator
    public final T previous() {
        return mo15451do(m16121if().previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return m16121if().previousIndex();
    }

    @Override // java.util.ListIterator
    public void set(T t) {
        throw new UnsupportedOperationException();
    }
}
