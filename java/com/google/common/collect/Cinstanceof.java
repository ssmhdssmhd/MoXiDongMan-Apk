package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.collect.m1;
import java.lang.Comparable;
import java.util.NoSuchElementException;

@ki0(emulated = true)
/* renamed from: com.google.common.collect.instanceof, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cinstanceof<C extends Comparable> extends m1<C> {
    public final f<C> domain;

    public Cinstanceof(f<C> fVar) {
        super(k2.natural());
        this.domain = fVar;
    }

    @Deprecated
    public static <E> m1.Cdo<E> builder() {
        throw new UnsupportedOperationException();
    }

    @o8
    public static Cinstanceof<Integer> closed(int i, int i2) {
        return create(n2.closed(Integer.valueOf(i), Integer.valueOf(i2)), f.integers());
    }

    @o8
    public static Cinstanceof<Integer> closedOpen(int i, int i2) {
        return create(n2.closedOpen(Integer.valueOf(i), Integer.valueOf(i2)), f.integers());
    }

    public static <C extends Comparable> Cinstanceof<C> create(n2<C> n2Var, f<C> fVar) {
        af1.m205continue(n2Var);
        af1.m205continue(fVar);
        try {
            n2<C> n2VarIntersection = !n2Var.hasLowerBound() ? n2Var.intersection(n2.atLeast(fVar.minValue())) : n2Var;
            if (!n2Var.hasUpperBound()) {
                n2VarIntersection = n2VarIntersection.intersection(n2.atMost(fVar.maxValue()));
            }
            return n2VarIntersection.isEmpty() || n2.compareOrThrow(n2Var.lowerBound.leastValueAbove(fVar), n2Var.upperBound.greatestValueBelow(fVar)) > 0 ? new g(fVar) : new p2(n2VarIntersection, fVar);
        } catch (NoSuchElementException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // com.google.common.collect.m1
    @li0
    public m1<C> createDescendingSet() {
        return new d(this);
    }

    @Override // com.google.common.collect.m1
    public abstract Cinstanceof<C> headSetImpl(C c, boolean z);

    public abstract Cinstanceof<C> intersection(Cinstanceof<C> cinstanceof);

    public abstract n2<C> range();

    public abstract n2<C> range(Cstatic cstatic, Cstatic cstatic2);

    @Override // com.google.common.collect.m1
    public abstract Cinstanceof<C> subSetImpl(C c, boolean z, C c2, boolean z2);

    @Override // com.google.common.collect.m1
    public abstract Cinstanceof<C> tailSetImpl(C c, boolean z);

    @Override // java.util.AbstractCollection
    public String toString() {
        return range().toString();
    }

    @o8
    public static Cinstanceof<Long> closed(long j, long j2) {
        return create(n2.closed(Long.valueOf(j), Long.valueOf(j2)), f.longs());
    }

    @o8
    public static Cinstanceof<Long> closedOpen(long j, long j2) {
        return create(n2.closedOpen(Long.valueOf(j), Long.valueOf(j2)), f.longs());
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet, java.util.SortedSet
    public Cinstanceof<C> headSet(C c) {
        return headSetImpl((Cinstanceof<C>) af1.m205continue(c), false);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet, java.util.SortedSet
    public Cinstanceof<C> subSet(C c, C c2) {
        af1.m205continue(c);
        af1.m205continue(c2);
        af1.m220new(comparator().compare(c, c2) <= 0);
        return subSetImpl((boolean) c, true, (boolean) c2, false);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet, java.util.SortedSet
    public Cinstanceof<C> tailSet(C c) {
        return tailSetImpl((Cinstanceof<C>) af1.m205continue(c), true);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0
    public Cinstanceof<C> headSet(C c, boolean z) {
        return headSetImpl((Cinstanceof<C>) af1.m205continue(c), z);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0
    public Cinstanceof<C> tailSet(C c, boolean z) {
        return tailSetImpl((Cinstanceof<C>) af1.m205continue(c), z);
    }

    @Override // com.google.common.collect.m1, java.util.NavigableSet
    @li0
    public Cinstanceof<C> subSet(C c, boolean z, C c2, boolean z2) {
        af1.m205continue(c);
        af1.m205continue(c2);
        af1.m220new(comparator().compare(c, c2) <= 0);
        return subSetImpl((boolean) c, z, (boolean) c2, z2);
    }
}
