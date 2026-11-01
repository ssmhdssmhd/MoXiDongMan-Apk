package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.li0;
import com.google.common.collect.Multiset;
import com.google.common.primitives.Cthis;
import java.util.Comparator;

@li0
/* loaded from: classes2.dex */
final class w2<E> extends k1<E> {

    /* renamed from: case, reason: not valid java name */
    private final transient int f14839case;

    @af2
    public final transient x2<E> elementSet;

    /* renamed from: new, reason: not valid java name */
    private final transient long[] f14840new;

    /* renamed from: try, reason: not valid java name */
    private final transient int f14841try;

    /* renamed from: else, reason: not valid java name */
    private static final long[] f14838else = {0};
    public static final k1<Comparable> NATURAL_EMPTY_MULTISET = new w2(k2.natural());

    public w2(Comparator<? super E> comparator) {
        this.elementSet = m1.emptySet(comparator);
        this.f14840new = f14838else;
        this.f14841try = 0;
        this.f14839case = 0;
    }

    /* renamed from: new, reason: not valid java name */
    private int m16486new(int i) {
        long[] jArr = this.f14840new;
        int i2 = this.f14841try;
        return (int) (jArr[(i2 + i) + 1] - jArr[i2 + i]);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@b51 Object obj) {
        int iIndexOf = this.elementSet.indexOf(obj);
        if (iIndexOf >= 0) {
            return m16486new(iIndexOf);
        }
        return 0;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(0);
    }

    @Override // com.google.common.collect.c1
    public Multiset.Entry<E> getEntry(int i) {
        return c2.m15645catch(this.elementSet.asList().get(i), m16486new(i));
    }

    public k1<E> getSubMultiset(int i, int i2) {
        af1.s(i, i2, this.f14839case);
        return i == i2 ? k1.emptyMultiset(comparator()) : (i == 0 && i2 == this.f14839case) ? this : new w2(this.elementSet.getSubSet(i, i2), this.f14840new, this.f14841try + i, i2 - i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset headMultiset(Object obj, Cstatic cstatic) {
        return headMultiset((w2<E>) obj, cstatic);
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return this.f14841try > 0 || this.f14839case < this.f14840new.length - 1;
    }

    @Override // com.google.common.collect.SortedMultiset
    public Multiset.Entry<E> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return getEntry(this.f14839case - 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        long[] jArr = this.f14840new;
        int i = this.f14841try;
        return Cthis.m17704throws(jArr[this.f14839case + i] - jArr[i]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset tailMultiset(Object obj, Cstatic cstatic) {
        return tailMultiset((w2<E>) obj, cstatic);
    }

    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public k1<E> headMultiset(E e, Cstatic cstatic) {
        return getSubMultiset(0, this.elementSet.headIndex(e, af1.m205continue(cstatic) == Cstatic.CLOSED));
    }

    @Override // com.google.common.collect.k1, com.google.common.collect.SortedMultiset
    public k1<E> tailMultiset(E e, Cstatic cstatic) {
        return getSubMultiset(this.elementSet.tailIndex(e, af1.m205continue(cstatic) == Cstatic.CLOSED), this.f14839case);
    }

    @Override // com.google.common.collect.k1, com.google.common.collect.c1, com.google.common.collect.Multiset
    public m1<E> elementSet() {
        return this.elementSet;
    }

    public w2(x2<E> x2Var, long[] jArr, int i, int i2) {
        this.elementSet = x2Var;
        this.f14840new = jArr;
        this.f14841try = i;
        this.f14839case = i2;
    }
}
