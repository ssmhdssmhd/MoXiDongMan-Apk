package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.li0;
import android.support.v4.o8;
import android.support.v4.v10;
import java.lang.Comparable;
import java.util.Set;

@v10("Use ImmutableRangeSet or TreeRangeSet")
@li0
@o8
/* loaded from: classes2.dex */
public interface RangeSet<C extends Comparable> {
    void add(n2<C> n2Var);

    void addAll(RangeSet<C> rangeSet);

    void addAll(Iterable<n2<C>> iterable);

    Set<n2<C>> asDescendingSetOfRanges();

    Set<n2<C>> asRanges();

    void clear();

    RangeSet<C> complement();

    boolean contains(C c);

    boolean encloses(n2<C> n2Var);

    boolean enclosesAll(RangeSet<C> rangeSet);

    boolean enclosesAll(Iterable<n2<C>> iterable);

    boolean equals(@b51 Object obj);

    int hashCode();

    boolean intersects(n2<C> n2Var);

    boolean isEmpty();

    n2<C> rangeContaining(C c);

    void remove(n2<C> n2Var);

    void removeAll(RangeSet<C> rangeSet);

    void removeAll(Iterable<n2<C>> iterable);

    n2<C> span();

    RangeSet<C> subRangeSet(n2<C> n2Var);

    String toString();
}
