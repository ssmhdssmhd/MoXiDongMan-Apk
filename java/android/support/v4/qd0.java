package android.support.v4;

import com.google.common.base.Cthrow;
import com.google.common.collect.Cextends;
import java.util.Collection;
import java.util.Iterator;

@ki0
/* loaded from: classes2.dex */
public abstract class qd0<E> extends ae0 implements Collection<E> {
    @lf
    public boolean add(E e) {
        return delegate().add(e);
    }

    @lf
    public boolean addAll(Collection<? extends E> collection) {
        return delegate().addAll(collection);
    }

    @Override // java.util.Collection
    public void clear() {
        delegate().clear();
    }

    public boolean contains(Object obj) {
        return delegate().contains(obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return delegate().containsAll(collection);
    }

    @Override // android.support.v4.ae0
    public abstract Collection<E> delegate();

    @Override // java.util.Collection
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return delegate().iterator();
    }

    @lf
    public boolean remove(Object obj) {
        return delegate().remove(obj);
    }

    @Override // java.util.Collection
    @lf
    public boolean removeAll(Collection<?> collection) {
        return delegate().removeAll(collection);
    }

    @Override // java.util.Collection
    @lf
    public boolean retainAll(Collection<?> collection) {
        return delegate().retainAll(collection);
    }

    @Override // java.util.Collection
    public int size() {
        return delegate().size();
    }

    public boolean standardAddAll(Collection<? extends E> collection) {
        return com.google.common.collect.s1.m16222do(this, collection.iterator());
    }

    public void standardClear() {
        com.google.common.collect.s1.m16228goto(iterator());
    }

    public boolean standardContains(@b51 Object obj) {
        return com.google.common.collect.s1.m16252while(iterator(), obj);
    }

    public boolean standardContainsAll(Collection<?> collection) {
        return Cextends.m15769for(this, collection);
    }

    public boolean standardIsEmpty() {
        return !iterator().hasNext();
    }

    public boolean standardRemove(@b51 Object obj) {
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (Cthrow.m15205do(it.next(), obj)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public boolean standardRemoveAll(Collection<?> collection) {
        return com.google.common.collect.s1.i(iterator(), collection);
    }

    public boolean standardRetainAll(Collection<?> collection) {
        return com.google.common.collect.s1.k(iterator(), collection);
    }

    public Object[] standardToArray() {
        return toArray(new Object[size()]);
    }

    public String standardToString() {
        return Cextends.m15765const(this);
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return delegate().toArray();
    }

    @Override // java.util.Collection
    @lf
    public <T> T[] toArray(T[] tArr) {
        return (T[]) delegate().toArray(tArr);
    }

    public <T> T[] standardToArray(T[] tArr) {
        return (T[]) com.google.common.collect.h2.m15837const(this, tArr);
    }
}
