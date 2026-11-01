package rx.internal.util.atomic;

import android.support.v4.ve1;
import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* renamed from: rx.internal.util.atomic.do, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cdo<E> extends AbstractQueue<E> {

    /* renamed from: do, reason: not valid java name */
    public final AtomicReferenceArray<E> f35791do;

    /* renamed from: if, reason: not valid java name */
    public final int f35792if;

    public Cdo(int i) {
        int iM8842if = ve1.m8842if(i);
        this.f35792if = iM8842if - 1;
        this.f35791do = new AtomicReferenceArray<>(iM8842if);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m38858break(AtomicReferenceArray<E> atomicReferenceArray, int i, E e) {
        atomicReferenceArray.lazySet(i, e);
    }

    /* renamed from: case, reason: not valid java name */
    public final E m38859case(AtomicReferenceArray<E> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m38860catch(AtomicReferenceArray<E> atomicReferenceArray, int i, E e) {
        atomicReferenceArray.set(i, e);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final int m38861do(long j) {
        return this.f35792if & ((int) j);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m38862else(int i, E e) {
        this.f35791do.lazySet(i, e);
    }

    /* renamed from: for, reason: not valid java name */
    public final E m38863for(int i) {
        return this.f35791do.get(i);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m38864goto(AtomicReferenceArray<E> atomicReferenceArray, int i, E e) {
        atomicReferenceArray.lazySet(i, e);
    }

    /* renamed from: if, reason: not valid java name */
    public final int m38865if(long j, int i) {
        return ((int) j) & i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: new, reason: not valid java name */
    public final E m38866new(AtomicReferenceArray<E> atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m38867this(int i, E e) {
        this.f35791do.lazySet(i, e);
    }

    /* renamed from: try, reason: not valid java name */
    public final E m38868try(int i) {
        return m38859case(this.f35791do, i);
    }
}
