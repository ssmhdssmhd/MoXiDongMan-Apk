package butterknife.internal;

import java.util.AbstractList;
import java.util.RandomAccess;

/* renamed from: butterknife.internal.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo<T> extends AbstractList<T> implements RandomAccess {

    /* renamed from: do, reason: not valid java name */
    private final T[] f8703do;

    public Cdo(T[] tArr) {
        this.f8703do = tArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        for (T t : this.f8703do) {
            if (t == obj) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        return this.f8703do[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f8703do.length;
    }
}
