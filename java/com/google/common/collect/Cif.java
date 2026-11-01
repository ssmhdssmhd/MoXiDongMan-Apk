package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.bc2;
import android.support.v4.ki0;
import java.util.NoSuchElementException;

@ki0
/* renamed from: com.google.common.collect.if, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cif<E> extends bc2<E> {

    /* renamed from: do, reason: not valid java name */
    private final int f14342do;

    /* renamed from: if, reason: not valid java name */
    private int f14343if;

    public Cif(int i) {
        this(i, 0);
    }

    /* renamed from: do */
    public abstract E mo15720do(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f14343if < this.f14342do;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f14343if > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f14343if;
        this.f14343if = i + 1;
        return mo15720do(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f14343if;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f14343if - 1;
        this.f14343if = i;
        return mo15720do(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f14343if - 1;
    }

    public Cif(int i, int i2) {
        af1.q(i2, i);
        this.f14342do = i;
        this.f14343if = i2;
    }
}
