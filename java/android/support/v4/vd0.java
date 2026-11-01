package android.support.v4;

import java.util.ListIterator;

@ki0
/* loaded from: classes2.dex */
public abstract class vd0<E> extends td0<E> implements ListIterator<E> {
    @Override // java.util.ListIterator
    public void add(E e) {
        delegate().add(e);
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return delegate().hasPrevious();
    }

    @Override // android.support.v4.td0
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract ListIterator<E> delegate();

    @Override // java.util.ListIterator
    public int nextIndex() {
        return delegate().nextIndex();
    }

    @Override // java.util.ListIterator
    @lf
    public E previous() {
        return delegate().previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return delegate().previousIndex();
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        delegate().set(e);
    }
}
