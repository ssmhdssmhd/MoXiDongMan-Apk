package android.support.v4;

import java.util.NoSuchElementException;
import java.util.Queue;

@ki0
/* loaded from: classes2.dex */
public abstract class be0<E> extends qd0<E> implements Queue<E> {
    @Override // android.support.v4.qd0, android.support.v4.ae0
    public abstract Queue<E> delegate();

    @Override // java.util.Queue
    public E element() {
        return delegate().element();
    }

    @Override // java.util.Queue
    @lf
    public boolean offer(E e) {
        return delegate().offer(e);
    }

    @Override // java.util.Queue
    public E peek() {
        return delegate().peek();
    }

    @Override // java.util.Queue
    @lf
    public E poll() {
        return delegate().poll();
    }

    @Override // java.util.Queue
    @lf
    public E remove() {
        return delegate().remove();
    }

    public boolean standardOffer(E e) {
        try {
            return add(e);
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    public E standardPeek() {
        try {
            return element();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    public E standardPoll() {
        try {
            return remove();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }
}
