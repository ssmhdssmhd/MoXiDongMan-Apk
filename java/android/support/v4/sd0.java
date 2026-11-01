package android.support.v4;

import java.util.Deque;
import java.util.Iterator;

@li0
/* loaded from: classes2.dex */
public abstract class sd0<E> extends be0<E> implements Deque<E> {
    @Override // java.util.Deque
    public void addFirst(E e) {
        delegate().addFirst(e);
    }

    @Override // java.util.Deque
    public void addLast(E e) {
        delegate().addLast(e);
    }

    @Override // java.util.Deque
    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    @Override // android.support.v4.be0, android.support.v4.qd0, android.support.v4.ae0
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract Deque<E> delegate();

    @Override // java.util.Deque
    public E getFirst() {
        return delegate().getFirst();
    }

    @Override // java.util.Deque
    public E getLast() {
        return delegate().getLast();
    }

    @Override // java.util.Deque
    @lf
    public boolean offerFirst(E e) {
        return delegate().offerFirst(e);
    }

    @Override // java.util.Deque
    @lf
    public boolean offerLast(E e) {
        return delegate().offerLast(e);
    }

    @Override // java.util.Deque
    public E peekFirst() {
        return delegate().peekFirst();
    }

    @Override // java.util.Deque
    public E peekLast() {
        return delegate().peekLast();
    }

    @Override // java.util.Deque
    @lf
    public E pollFirst() {
        return delegate().pollFirst();
    }

    @Override // java.util.Deque
    @lf
    public E pollLast() {
        return delegate().pollLast();
    }

    @Override // java.util.Deque
    @lf
    public E pop() {
        return delegate().pop();
    }

    @Override // java.util.Deque
    public void push(E e) {
        delegate().push(e);
    }

    @Override // java.util.Deque
    @lf
    public E removeFirst() {
        return delegate().removeFirst();
    }

    @Override // java.util.Deque
    @lf
    public boolean removeFirstOccurrence(Object obj) {
        return delegate().removeFirstOccurrence(obj);
    }

    @Override // java.util.Deque
    @lf
    public E removeLast() {
        return delegate().removeLast();
    }

    @Override // java.util.Deque
    @lf
    public boolean removeLastOccurrence(Object obj) {
        return delegate().removeLastOccurrence(obj);
    }
}
