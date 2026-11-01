package android.support.v4;

import java.util.Collection;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public abstract class ce0<E> extends qd0<E> implements Set<E> {
    @Override // android.support.v4.qd0, android.support.v4.ae0
    public abstract Set<E> delegate();

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@b51 Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return delegate().hashCode();
    }

    public boolean standardEquals(@b51 Object obj) {
        return com.google.common.collect.c3.m15689else(this, obj);
    }

    public int standardHashCode() {
        return com.google.common.collect.c3.m15683catch(this);
    }

    @Override // android.support.v4.qd0
    public boolean standardRemoveAll(Collection<?> collection) {
        return com.google.common.collect.c3.m15704protected(this, (Collection) af1.m205continue(collection));
    }
}
