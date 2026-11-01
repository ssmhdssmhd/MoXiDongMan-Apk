package rx.internal.util.atomic;

import android.support.v4.ht0;
import java.util.AbstractQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: rx.internal.util.atomic.if, reason: invalid class name */
/* loaded from: classes4.dex */
abstract class Cif<E> extends AbstractQueue<E> {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<ht0<E>> f35793do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final AtomicReference<ht0<E>> f35794if = new AtomicReference<>();

    /* renamed from: case, reason: not valid java name */
    public final void m38869case(ht0<E> ht0Var) {
        this.f35793do.lazySet(ht0Var);
    }

    /* renamed from: do, reason: not valid java name */
    public final ht0<E> m38870do() {
        return this.f35794if.get();
    }

    /* renamed from: else, reason: not valid java name */
    public final ht0<E> m38871else(ht0<E> ht0Var) {
        return this.f35793do.getAndSet(ht0Var);
    }

    /* renamed from: for, reason: not valid java name */
    public final ht0<E> m38872for() {
        return this.f35794if.get();
    }

    /* renamed from: if, reason: not valid java name */
    public final ht0<E> m38873if() {
        return this.f35793do.get();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return m38872for() == m38874new();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: new, reason: not valid java name */
    public final ht0<E> m38874new() {
        return this.f35793do.get();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        ht0<E> ht0VarLvNext;
        ht0<E> ht0VarM38872for = m38872for();
        ht0<E> ht0VarM38874new = m38874new();
        int i = 0;
        while (ht0VarM38872for != ht0VarM38874new && i < Integer.MAX_VALUE) {
            do {
                ht0VarLvNext = ht0VarM38872for.lvNext();
            } while (ht0VarLvNext == null);
            i++;
            ht0VarM38872for = ht0VarLvNext;
        }
        return i;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m38875try(ht0<E> ht0Var) {
        this.f35794if.lazySet(ht0Var);
    }
}
