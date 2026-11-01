package android.support.v4;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

@ki0
@o8
/* loaded from: classes2.dex */
public final class m80<E> extends be0<E> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Queue<E> delegate;

    @af2
    public final int maxSize;

    private m80(int i) {
        af1.m202catch(i >= 0, "maxSize (%s) must >= 0", i);
        this.delegate = new ArrayDeque(i);
        this.maxSize = i;
    }

    public static <E> m80<E> create(int i) {
        return new m80<>(i);
    }

    @Override // android.support.v4.qd0, java.util.Collection, java.util.Queue
    @lf
    public boolean add(E e) {
        af1.m205continue(e);
        if (this.maxSize == 0) {
            return true;
        }
        if (size() == this.maxSize) {
            this.delegate.remove();
        }
        this.delegate.add(e);
        return true;
    }

    @Override // android.support.v4.qd0, java.util.Collection
    @lf
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size < this.maxSize) {
            return standardAddAll(collection);
        }
        clear();
        return com.google.common.collect.r1.m16182do(this, com.google.common.collect.r1.a(collection, size - this.maxSize));
    }

    @Override // android.support.v4.qd0, java.util.Collection
    public boolean contains(Object obj) {
        return delegate().contains(af1.m205continue(obj));
    }

    @Override // android.support.v4.be0, java.util.Queue
    @lf
    public boolean offer(E e) {
        return add(e);
    }

    public int remainingCapacity() {
        return this.maxSize - size();
    }

    @Override // android.support.v4.qd0, java.util.Collection
    @lf
    public boolean remove(Object obj) {
        return delegate().remove(af1.m205continue(obj));
    }

    @Override // android.support.v4.be0, android.support.v4.qd0, android.support.v4.ae0
    public Queue<E> delegate() {
        return this.delegate;
    }
}
