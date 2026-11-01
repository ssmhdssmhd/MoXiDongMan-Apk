package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import java.util.Comparator;
import java.util.SortedSet;

@ki0
/* loaded from: classes2.dex */
final class f3 {
    private f3() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <E> Comparator<? super E> m15791do(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        return comparator == null ? k2.natural() : comparator;
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m15792if(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        af1.m205continue(comparator);
        af1.m205continue(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = m15791do((SortedSet) iterable);
        } else {
            if (!(iterable instanceof SortedIterable)) {
                return false;
            }
            comparator2 = ((SortedIterable) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
