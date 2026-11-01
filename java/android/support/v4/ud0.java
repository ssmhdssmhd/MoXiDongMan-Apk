package android.support.v4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

@ki0
/* loaded from: classes2.dex */
public abstract class ud0<E> extends qd0<E> implements List<E> {
    @Override // java.util.List
    public void add(int i, E e) {
        delegate().add(i, e);
    }

    @Override // java.util.List
    @lf
    public boolean addAll(int i, Collection<? extends E> collection) {
        return delegate().addAll(i, collection);
    }

    @o8
    /* renamed from: case, reason: not valid java name */
    public ListIterator<E> m8373case(int i) {
        return com.google.common.collect.x1.m16517throw(this, i);
    }

    @Override // android.support.v4.qd0, android.support.v4.ae0
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract List<E> delegate();

    @o8
    /* renamed from: else, reason: not valid java name */
    public List<E> m8375else(int i, int i2) {
        return com.google.common.collect.x1.m16510private(this, i, i2);
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@b51 Object obj) {
        return obj == this || delegate().equals(obj);
    }

    /* renamed from: for, reason: not valid java name */
    public int m8376for(@b51 Object obj) {
        return com.google.common.collect.x1.m16495class(this, obj);
    }

    @Override // java.util.List
    public E get(int i) {
        return delegate().get(i);
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        return delegate().hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m8377if(int i, Iterable<? extends E> iterable) {
        return com.google.common.collect.x1.m16498do(this, i, iterable);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        return delegate().indexOf(obj);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        return delegate().lastIndexOf(obj);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return delegate().listIterator();
    }

    /* renamed from: new, reason: not valid java name */
    public int m8378new(@b51 Object obj) {
        return com.google.common.collect.x1.m16501final(this, obj);
    }

    @Override // java.util.List
    @lf
    public E remove(int i) {
        return delegate().remove(i);
    }

    @Override // java.util.List
    @lf
    public E set(int i, E e) {
        return delegate().set(i, e);
    }

    public boolean standardAdd(E e) {
        add(size(), e);
        return true;
    }

    @o8
    public boolean standardEquals(@b51 Object obj) {
        return com.google.common.collect.x1.m16492break(this, obj);
    }

    @o8
    public int standardHashCode() {
        return com.google.common.collect.x1.m16494catch(this);
    }

    public Iterator<E> standardIterator() {
        return listIterator();
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return delegate().subList(i, i2);
    }

    /* renamed from: try, reason: not valid java name */
    public ListIterator<E> m8379try() {
        return listIterator(0);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return delegate().listIterator(i);
    }
}
