package android.support.v4;

import java.util.Iterator;

@ki0
/* loaded from: classes2.dex */
public abstract class td0<T> extends ae0 implements Iterator<T> {
    @Override // android.support.v4.ae0
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public abstract Iterator<T> delegate();

    @Override // java.util.Iterator
    public boolean hasNext() {
        return delegate().hasNext();
    }

    @Override // java.util.Iterator
    @lf
    public T next() {
        return delegate().next();
    }

    @Override // java.util.Iterator
    public void remove() {
        delegate().remove();
    }
}
