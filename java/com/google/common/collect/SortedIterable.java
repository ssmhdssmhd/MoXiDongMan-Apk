package com.google.common.collect;

import android.support.v4.ki0;
import java.util.Comparator;
import java.util.Iterator;

@ki0
/* loaded from: classes2.dex */
interface SortedIterable<T> extends Iterable<T> {
    Comparator<? super T> comparator();

    @Override // java.lang.Iterable
    Iterator<T> iterator();
}
