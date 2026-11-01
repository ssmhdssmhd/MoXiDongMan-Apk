package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import java.util.Iterator;

@ki0
/* loaded from: classes2.dex */
abstract class o3<F, T> implements Iterator<T> {

    /* renamed from: do, reason: not valid java name */
    public final Iterator<? extends F> f14492do;

    public o3(Iterator<? extends F> it) {
        this.f14492do = (Iterator) af1.m205continue(it);
    }

    /* renamed from: do */
    public abstract T mo15451do(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f14492do.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return mo15451do(this.f14492do.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f14492do.remove();
    }
}
