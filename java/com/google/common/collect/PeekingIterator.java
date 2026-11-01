package com.google.common.collect;

import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.v10;
import java.util.Iterator;

@v10("Use Iterators.peekingIterator")
@ki0
/* loaded from: classes2.dex */
public interface PeekingIterator<E> extends Iterator<E> {
    @Override // java.util.Iterator
    @lf
    E next();

    E peek();

    @Override // java.util.Iterator
    void remove();
}
