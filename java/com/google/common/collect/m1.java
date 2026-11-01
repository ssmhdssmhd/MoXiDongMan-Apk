package com.google.common.collect;

import android.R;
import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.collect.g1;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
public abstract class m1<E> extends n1<E> implements NavigableSet<E>, SortedIterable<E> {
    public final transient Comparator<? super E> comparator;

    @fs0
    @li0
    public transient m1<E> descendingSet;

    /* renamed from: com.google.common.collect.m1$do, reason: invalid class name */
    public static final class Cdo<E> extends g1.Cdo<E> {

        /* renamed from: else, reason: not valid java name */
        private final Comparator<? super E> f14454else;

        public Cdo(Comparator<? super E> comparator) {
            this.f14454else = (Comparator) af1.m205continue(comparator);
        }

        @Override // com.google.common.collect.g1.Cdo, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15640new(Iterator<? extends E> it) {
            super.mo15640new(it);
            return this;
        }

        @Override // com.google.common.collect.g1.Cdo, com.google.common.collect.r0.Cif
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public m1<E> mo15642try() {
            m1<E> m1VarConstruct = m1.construct(this.f14454else, this.f14556for, this.f14557if);
            this.f14556for = m1VarConstruct.size();
            this.f14558new = true;
            return m1VarConstruct;
        }

        @Override // com.google.common.collect.g1.Cdo
        @lf
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15812else(E e) {
            super.mo15812else(e);
            return this;
        }

        @Override // com.google.common.collect.g1.Cdo, com.google.common.collect.r0.Cdo, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15639if(E... eArr) {
            super.mo15639if(eArr);
            return this;
        }

        @Override // com.google.common.collect.g1.Cdo, com.google.common.collect.r0.Cdo, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15637for(Iterable<? extends E> iterable) {
            super.mo15637for(iterable);
            return this;
        }
    }

    /* renamed from: com.google.common.collect.m1$if, reason: invalid class name */
    public static class Cif<E> implements Serializable {
        private static final long serialVersionUID = 0;
        public final Comparator<? super E> comparator;
        public final Object[] elements;

        public Cif(Comparator<? super E> comparator, Object[] objArr) {
            this.comparator = comparator;
            this.elements = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object readResolve() {
            return new Cdo(this.comparator).mo15639if(this.elements).mo15642try();
        }
    }

    public m1(Comparator<? super E> comparator) {
        this.comparator = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> m1<E> construct(Comparator<? super E> comparator, int i, E... eArr) {
        if (i == 0) {
            return emptySet(comparator);
        }
        h2.m15841for(eArr, i);
        Arrays.sort(eArr, 0, i, comparator);
        int i2 = 1;
        for (int i3 = 1; i3 < i; i3++) {
            R.bool boolVar = (Object) eArr[i3];
            if (comparator.compare(boolVar, (Object) eArr[i2 - 1]) != 0) {
                eArr[i2] = boolVar;
                i2++;
            }
        }
        Arrays.fill(eArr, i2, i, (Object) null);
        if (i2 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i2);
        }
        return new x2(v0.asImmutableList(eArr, i2), comparator);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/m1<TE;>; */
    public static m1 copyOf(Comparable[] comparableArr) {
        return construct(k2.natural(), comparableArr.length, (Object[]) comparableArr.clone());
    }

    public static <E> m1<E> copyOfSorted(SortedSet<E> sortedSet) {
        Comparator comparatorM15791do = f3.m15791do(sortedSet);
        v0 v0VarCopyOf = v0.copyOf((Collection) sortedSet);
        return v0VarCopyOf.isEmpty() ? emptySet(comparatorM15791do) : new x2(v0VarCopyOf, comparatorM15791do);
    }

    public static <E> x2<E> emptySet(Comparator<? super E> comparator) {
        return k2.natural().equals(comparator) ? (x2<E>) x2.NATURAL_EMPTY_SET : new x2<>(v0.of(), comparator);
    }

    public static <E extends Comparable<?>> Cdo<E> naturalOrder() {
        return new Cdo<>(k2.natural());
    }

    public static <E> m1<E> of() {
        return x2.NATURAL_EMPTY_SET;
    }

    public static <E> Cdo<E> orderedBy(Comparator<E> comparator) {
        return new Cdo<>(comparator);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> Cdo<E> reverseOrder() {
        return new Cdo<>(Collections.reverseOrder());
    }

    @li0
    public E ceiling(E e) {
        return (E) r1.m16201static(tailSet((m1<E>) e, true), null);
    }

    @Override // java.util.SortedSet, com.google.common.collect.SortedIterable
    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    @li0
    public abstract m1<E> createDescendingSet();

    @Override // java.util.NavigableSet
    @li0
    public abstract ac2<E> descendingIterator();

    public E first() {
        return iterator().next();
    }

    @li0
    public E floor(E e) {
        return (E) s1.m16249transient(headSet((m1<E>) e, true).descendingIterator(), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    public /* bridge */ /* synthetic */ NavigableSet headSet(Object obj, boolean z) {
        return headSet((m1<E>) obj, z);
    }

    public abstract m1<E> headSetImpl(E e, boolean z);

    @li0
    public E higher(E e) {
        return (E) r1.m16201static(tailSet((m1<E>) e, false), null);
    }

    public abstract int indexOf(@b51 Object obj);

    @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract ac2<E> iterator();

    public E last() {
        return descendingIterator().next();
    }

    @li0
    public E lower(E e) {
        return (E) s1.m16249transient(headSet((m1<E>) e, false).descendingIterator(), null);
    }

    @Override // java.util.NavigableSet
    @lf
    @li0
    @Deprecated
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableSet
    @lf
    @li0
    @Deprecated
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    public /* bridge */ /* synthetic */ NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return subSet((boolean) obj, z, (boolean) obj2, z2);
    }

    public abstract m1<E> subSetImpl(E e, boolean z, E e2, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    public /* bridge */ /* synthetic */ NavigableSet tailSet(Object obj, boolean z) {
        return tailSet((m1<E>) obj, z);
    }

    public abstract m1<E> tailSetImpl(E e, boolean z);

    public int unsafeCompare(Object obj, Object obj2) {
        return unsafeCompare(this.comparator, obj, obj2);
    }

    @Override // com.google.common.collect.g1, com.google.common.collect.r0
    public Object writeReplace() {
        return new Cif(this.comparator, toArray());
    }

    public static <E> m1<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(k2.natural(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/m1<TE;>; */
    public static m1 of(Comparable comparable) {
        return new x2(v0.of(comparable), k2.natural());
    }

    public static int unsafeCompare(Comparator<?> comparator, Object obj, Object obj2) {
        return comparator.compare(obj, obj2);
    }

    @Override // java.util.NavigableSet
    @li0
    public m1<E> descendingSet() {
        m1<E> m1Var = this.descendingSet;
        if (m1Var != null) {
            return m1Var;
        }
        m1<E> m1VarCreateDescendingSet = createDescendingSet();
        this.descendingSet = m1VarCreateDescendingSet;
        m1VarCreateDescendingSet.descendingSet = this;
        return m1VarCreateDescendingSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
        return headSet((m1<E>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
        return tailSet((m1<E>) obj);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/m1<TE;>; */
    public static m1 of(Comparable comparable, Comparable comparable2) {
        return construct(k2.natural(), 2, comparable, comparable2);
    }

    public m1<E> headSet(E e) {
        return headSet((m1<E>) e, false);
    }

    @Override // java.util.NavigableSet, java.util.SortedSet
    public m1<E> subSet(E e, E e2) {
        return subSet((boolean) e, true, (boolean) e2, false);
    }

    public m1<E> tailSet(E e) {
        return tailSet((m1<E>) e, true);
    }

    public static <E> m1<E> copyOf(Collection<? extends E> collection) {
        return copyOf((Comparator) k2.natural(), (Collection) collection);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/m1<TE;>; */
    public static m1 of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return construct(k2.natural(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    public m1<E> headSet(E e, boolean z) {
        return headSetImpl(af1.m205continue(e), z);
    }

    @li0
    public m1<E> subSet(E e, boolean z, E e2, boolean z2) {
        af1.m205continue(e);
        af1.m205continue(e2);
        af1.m220new(this.comparator.compare(e, e2) <= 0);
        return subSetImpl(e, z, e2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @li0
    public m1<E> tailSet(E e, boolean z) {
        return tailSetImpl(af1.m205continue(e), z);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/m1<TE;>; */
    public static m1 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return construct(k2.natural(), 4, comparable, comparable2, comparable3, comparable4);
    }

    public static <E> m1<E> copyOf(Iterator<? extends E> it) {
        return copyOf(k2.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/m1<TE;>; */
    public static m1 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return construct(k2.natural(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/m1<TE;>; */
    public static m1 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return construct(k2.natural(), length, comparableArr2);
    }

    public static <E> m1<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new Cdo(comparator).mo15640new(it).mo15642try();
    }

    public static <E> m1<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        af1.m205continue(comparator);
        if (f3.m15792if(comparator, iterable) && (iterable instanceof m1)) {
            m1<E> m1Var = (m1) iterable;
            if (!m1Var.isPartialView()) {
                return m1Var;
            }
        }
        Object[] objArrC = r1.c(iterable);
        return construct(comparator, objArrC.length, objArrC);
    }

    public static <E> m1<E> copyOf(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return copyOf((Comparator) comparator, (Iterable) collection);
    }
}
