package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.li0;
import java.lang.Comparable;
import java.util.Iterator;

@li0
/* renamed from: com.google.common.collect.catch, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Ccatch<C extends Comparable> implements RangeSet<C> {
    @Override // com.google.common.collect.RangeSet
    public void add(n2<C> n2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public void addAll(RangeSet<C> rangeSet) {
        addAll(rangeSet.asRanges());
    }

    @Override // com.google.common.collect.RangeSet
    public void clear() {
        remove(n2.all());
    }

    @Override // com.google.common.collect.RangeSet
    public boolean contains(C c) {
        return rangeContaining(c) != null;
    }

    @Override // com.google.common.collect.RangeSet
    public abstract boolean encloses(n2<C> n2Var);

    @Override // com.google.common.collect.RangeSet
    public boolean enclosesAll(RangeSet<C> rangeSet) {
        return enclosesAll(rangeSet.asRanges());
    }

    @Override // com.google.common.collect.RangeSet
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RangeSet) {
            return asRanges().equals(((RangeSet) obj).asRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.RangeSet
    public final int hashCode() {
        return asRanges().hashCode();
    }

    @Override // com.google.common.collect.RangeSet
    public boolean intersects(n2<C> n2Var) {
        return !subRangeSet(n2Var).isEmpty();
    }

    @Override // com.google.common.collect.RangeSet
    public boolean isEmpty() {
        return asRanges().isEmpty();
    }

    @Override // com.google.common.collect.RangeSet
    public abstract n2<C> rangeContaining(C c);

    @Override // com.google.common.collect.RangeSet
    public void remove(n2<C> n2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public void removeAll(RangeSet<C> rangeSet) {
        removeAll(rangeSet.asRanges());
    }

    @Override // com.google.common.collect.RangeSet
    public final String toString() {
        return asRanges().toString();
    }

    @Override // com.google.common.collect.RangeSet
    public void addAll(Iterable<n2<C>> iterable) {
        Iterator<n2<C>> it = iterable.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
    }

    @Override // com.google.common.collect.RangeSet
    public boolean enclosesAll(Iterable<n2<C>> iterable) {
        Iterator<n2<C>> it = iterable.iterator();
        while (it.hasNext()) {
            if (!encloses(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.common.collect.RangeSet
    public void removeAll(Iterable<n2<C>> iterable) {
        Iterator<n2<C>> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }
}
