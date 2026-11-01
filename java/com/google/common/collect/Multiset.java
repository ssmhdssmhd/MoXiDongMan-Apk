package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.lp;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

@ki0
/* loaded from: classes2.dex */
public interface Multiset<E> extends Collection<E> {

    public interface Entry<E> {
        boolean equals(Object obj);

        int getCount();

        E getElement();

        int hashCode();

        String toString();
    }

    @lf
    int add(@b51 E e, int i);

    @Override // java.util.Collection
    @lf
    boolean add(E e);

    @Override // java.util.Collection
    boolean contains(@b51 Object obj);

    @Override // java.util.Collection
    boolean containsAll(Collection<?> collection);

    int count(@lp(ExifInterface.LONGITUDE_EAST) @b51 Object obj);

    Set<E> elementSet();

    Set<Entry<E>> entrySet();

    @Override // java.util.Collection
    boolean equals(@b51 Object obj);

    @Override // java.util.Collection
    int hashCode();

    @Override // java.util.Collection, java.lang.Iterable
    Iterator<E> iterator();

    @lf
    int remove(@lp(ExifInterface.LONGITUDE_EAST) @b51 Object obj, int i);

    @Override // java.util.Collection
    @lf
    boolean remove(@b51 Object obj);

    @Override // java.util.Collection
    @lf
    boolean removeAll(Collection<?> collection);

    @Override // java.util.Collection
    @lf
    boolean retainAll(Collection<?> collection);

    @lf
    int setCount(E e, int i);

    @lf
    boolean setCount(E e, int i, int i2);

    @Override // java.util.Collection
    int size();

    String toString();
}
