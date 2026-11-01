package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.fs0;
import android.support.v4.lf;
import android.support.v4.li0;
import com.google.common.collect.Multiset;
import com.google.common.collect.c1;
import com.google.common.collect.v0;
import com.google.common.math.Cnew;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

@li0
/* loaded from: classes2.dex */
public abstract class k1<E> extends l1<E> implements SortedMultiset<E> {

    @fs0
    public transient k1<E> descendingMultiset;

    /* renamed from: com.google.common.collect.k1$do, reason: invalid class name */
    public static class Cdo<E> extends c1.Cif<E> {

        /* renamed from: case, reason: not valid java name */
        @af2
        public E[] f14389case;

        /* renamed from: else, reason: not valid java name */
        private int[] f14390else;

        /* renamed from: goto, reason: not valid java name */
        private int f14391goto;

        /* renamed from: this, reason: not valid java name */
        private boolean f14392this;

        /* renamed from: try, reason: not valid java name */
        private final Comparator<? super E> f14393try;

        public Cdo(Comparator<? super E> comparator) {
            super(true);
            this.f14393try = (Comparator) af1.m205continue(comparator);
            this.f14389case = (E[]) new Object[4];
            this.f14390else = new int[4];
        }

        /* renamed from: return, reason: not valid java name */
        private void m15951return(boolean z) {
            int i = this.f14391goto;
            if (i == 0) {
                return;
            }
            Object[] objArr = (E[]) Arrays.copyOf(this.f14389case, i);
            Arrays.sort(objArr, this.f14393try);
            int i2 = 1;
            for (int i3 = 1; i3 < objArr.length; i3++) {
                if (this.f14393try.compare((Object) objArr[i2 - 1], (Object) objArr[i3]) < 0) {
                    objArr[i2] = objArr[i3];
                    i2++;
                }
            }
            Arrays.fill(objArr, i2, this.f14391goto, (Object) null);
            if (z) {
                int i4 = i2 * 4;
                int i5 = this.f14391goto;
                if (i4 > i5 * 3) {
                    objArr = (E[]) Arrays.copyOf(objArr, Cnew.m17348public(i5, (i5 / 2) + 1));
                }
            }
            int[] iArr = new int[objArr.length];
            for (int i6 = 0; i6 < this.f14391goto; i6++) {
                int iBinarySearch = Arrays.binarySearch(objArr, 0, i2, this.f14389case[i6], this.f14393try);
                int[] iArr2 = this.f14390else;
                if (iArr2[i6] >= 0) {
                    iArr[iBinarySearch] = iArr[iBinarySearch] + iArr2[i6];
                } else {
                    iArr[iBinarySearch] = iArr2[i6] ^ (-1);
                }
            }
            this.f14389case = (E[]) objArr;
            this.f14390else = iArr;
            this.f14391goto = i2;
        }

        /* renamed from: static, reason: not valid java name */
        private void m15952static() {
            m15951return(false);
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = this.f14391goto;
                if (i >= i3) {
                    Arrays.fill(this.f14389case, i2, i3, (Object) null);
                    Arrays.fill(this.f14390else, i2, this.f14391goto, 0);
                    this.f14391goto = i2;
                    return;
                } else {
                    int[] iArr = this.f14390else;
                    if (iArr[i] > 0) {
                        E[] eArr = this.f14389case;
                        eArr[i2] = eArr[i];
                        iArr[i2] = iArr[i];
                        i2++;
                    }
                    i++;
                }
            }
        }

        /* renamed from: switch, reason: not valid java name */
        private void m15953switch() {
            int i = this.f14391goto;
            E[] eArr = this.f14389case;
            if (i == eArr.length) {
                m15951return(true);
            } else if (this.f14392this) {
                this.f14389case = (E[]) Arrays.copyOf(eArr, eArr.length);
            }
            this.f14392this = false;
        }

        @Override // com.google.common.collect.c1.Cif, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15640new(Iterator<? extends E> it) {
            while (it.hasNext()) {
                mo15812else(it.next());
            }
            return this;
        }

        @Override // com.google.common.collect.c1.Cif
        @lf
        /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15632catch(E e, int i) {
            af1.m205continue(e);
            Cdefault.m15742if(i, "occurrences");
            if (i == 0) {
                return this;
            }
            m15953switch();
            E[] eArr = this.f14389case;
            int i2 = this.f14391goto;
            eArr[i2] = e;
            this.f14390else[i2] = i;
            this.f14391goto = i2 + 1;
            return this;
        }

        @Override // com.google.common.collect.c1.Cif, com.google.common.collect.r0.Cif
        /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
        public k1<E> mo15642try() {
            m15952static();
            int i = this.f14391goto;
            if (i == 0) {
                return k1.emptyMultiset(this.f14393try);
            }
            x2 x2Var = (x2) m1.construct(this.f14393try, i, this.f14389case);
            long[] jArr = new long[this.f14391goto + 1];
            int i2 = 0;
            while (i2 < this.f14391goto) {
                int i3 = i2 + 1;
                jArr[i3] = jArr[i2] + this.f14390else[i2];
                i2 = i3;
            }
            this.f14392this = true;
            return new w2(x2Var, jArr, 0, this.f14391goto);
        }

        @Override // com.google.common.collect.c1.Cif
        @lf
        /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15812else(E e) {
            return mo15632catch(e, 1);
        }

        @Override // com.google.common.collect.c1.Cif, com.google.common.collect.r0.Cif
        @lf
        /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15639if(E... eArr) {
            for (E e : eArr) {
                mo15812else(e);
            }
            return this;
        }

        @Override // com.google.common.collect.c1.Cif
        @lf
        /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15634const(E e, int i) {
            af1.m205continue(e);
            Cdefault.m15742if(i, "count");
            m15953switch();
            E[] eArr = this.f14389case;
            int i2 = this.f14391goto;
            eArr[i2] = e;
            this.f14390else[i2] = i ^ (-1);
            this.f14391goto = i2 + 1;
            return this;
        }

        @Override // com.google.common.collect.c1.Cif
        @lf
        /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cdo<E> mo15637for(Iterable<? extends E> iterable) {
            if (iterable instanceof Multiset) {
                for (Multiset.Entry<E> entry : ((Multiset) iterable).entrySet()) {
                    mo15632catch(entry.getElement(), entry.getCount());
                }
            } else {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    mo15812else(it.next());
                }
            }
            return this;
        }
    }

    /* renamed from: com.google.common.collect.k1$if, reason: invalid class name */
    public static final class Cif<E> implements Serializable {
        public final Comparator<? super E> comparator;
        public final int[] counts;
        public final E[] elements;

        public Cif(SortedMultiset<E> sortedMultiset) {
            this.comparator = sortedMultiset.comparator();
            int size = sortedMultiset.entrySet().size();
            this.elements = (E[]) new Object[size];
            this.counts = new int[size];
            int i = 0;
            for (Multiset.Entry<E> entry : sortedMultiset.entrySet()) {
                this.elements[i] = entry.getElement();
                this.counts[i] = entry.getCount();
                i++;
            }
        }

        public Object readResolve() {
            int length = this.elements.length;
            Cdo cdo = new Cdo(this.comparator);
            for (int i = 0; i < length; i++) {
                cdo.mo15632catch(this.elements[i], this.counts[i]);
            }
            return cdo.mo15642try();
        }
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/k1<TE;>; */
    public static k1 copyOf(Comparable[] comparableArr) {
        return copyOf(k2.natural(), Arrays.asList(comparableArr));
    }

    public static <E> k1<E> copyOfSorted(SortedMultiset<E> sortedMultiset) {
        return m15950for(sortedMultiset.comparator(), x1.m16506import(sortedMultiset.entrySet()));
    }

    public static <E> k1<E> emptyMultiset(Comparator<? super E> comparator) {
        return k2.natural().equals(comparator) ? (k1<E>) w2.NATURAL_EMPTY_MULTISET : new w2(comparator);
    }

    /* renamed from: for, reason: not valid java name */
    private static <E> k1<E> m15950for(Comparator<? super E> comparator, Collection<Multiset.Entry<E>> collection) {
        if (collection.isEmpty()) {
            return emptyMultiset(comparator);
        }
        v0.Cdo cdo = new v0.Cdo(collection.size());
        long[] jArr = new long[collection.size() + 1];
        Iterator<Multiset.Entry<E>> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            cdo.mo15635do(it.next().getElement());
            int i2 = i + 1;
            jArr[i2] = jArr[i] + r5.getCount();
            i = i2;
        }
        return new w2(new x2(cdo.mo15642try(), comparator), jArr, 0, collection.size());
    }

    public static <E extends Comparable<?>> Cdo<E> naturalOrder() {
        return new Cdo<>(k2.natural());
    }

    public static <E> k1<E> of() {
        return (k1<E>) w2.NATURAL_EMPTY_MULTISET;
    }

    public static <E> Cdo<E> orderedBy(Comparator<E> comparator) {
        return new Cdo<>(comparator);
    }

    public static <E extends Comparable<?>> Cdo<E> reverseOrder() {
        return new Cdo<>(k2.natural().reverse());
    }

    @Override // com.google.common.collect.SortedMultiset, com.google.common.collect.SortedIterable
    public final Comparator<? super E> comparator() {
        return elementSet().comparator();
    }

    @Override // com.google.common.collect.c1, com.google.common.collect.Multiset
    public abstract m1<E> elementSet();

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ SortedMultiset headMultiset(Object obj, Cstatic cstatic) {
        return headMultiset((k1<E>) obj, cstatic);
    }

    public abstract k1<E> headMultiset(E e, Cstatic cstatic);

    @Override // com.google.common.collect.SortedMultiset
    @lf
    @Deprecated
    public final Multiset.Entry<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.SortedMultiset
    @lf
    @Deprecated
    public final Multiset.Entry<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.SortedMultiset
    public /* bridge */ /* synthetic */ SortedMultiset subMultiset(Object obj, Cstatic cstatic, Object obj2, Cstatic cstatic2) {
        return subMultiset((Cstatic) obj, cstatic, (Cstatic) obj2, cstatic2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* bridge */ /* synthetic */ SortedMultiset tailMultiset(Object obj, Cstatic cstatic) {
        return tailMultiset((k1<E>) obj, cstatic);
    }

    public abstract k1<E> tailMultiset(E e, Cstatic cstatic);

    @Override // com.google.common.collect.c1, com.google.common.collect.r0
    public Object writeReplace() {
        return new Cif(this);
    }

    public static <E> k1<E> copyOf(Iterable<? extends E> iterable) {
        return copyOf(k2.natural(), iterable);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/k1<TE;>; */
    public static k1 of(Comparable comparable) {
        return new w2((x2) m1.of(comparable), new long[]{0, 1}, 0, 1);
    }

    @Override // com.google.common.collect.SortedMultiset
    public k1<E> descendingMultiset() {
        k1<E> k1VarEmptyMultiset = this.descendingMultiset;
        if (k1VarEmptyMultiset == null) {
            k1VarEmptyMultiset = isEmpty() ? emptyMultiset(k2.from(comparator()).reverse()) : new c<>(this);
            this.descendingMultiset = k1VarEmptyMultiset;
        }
        return k1VarEmptyMultiset;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.SortedMultiset
    public k1<E> subMultiset(E e, Cstatic cstatic, E e2, Cstatic cstatic2) {
        af1.m206default(comparator().compare(e, e2) <= 0, "Expected lowerBound <= upperBound but %s > %s", e, e2);
        return tailMultiset((k1<E>) e, cstatic).headMultiset((k1<E>) e2, cstatic2);
    }

    public static <E> k1<E> copyOf(Iterator<? extends E> it) {
        return copyOf(k2.natural(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/k1<TE;>; */
    public static k1 of(Comparable comparable, Comparable comparable2) {
        return copyOf(k2.natural(), Arrays.asList(comparable, comparable2));
    }

    public static <E> k1<E> copyOf(Comparator<? super E> comparator, Iterator<? extends E> it) {
        af1.m205continue(comparator);
        return new Cdo(comparator).mo15640new(it).mo15642try();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/k1<TE;>; */
    public static k1 of(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return copyOf(k2.natural(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/k1<TE;>; */
    public static k1 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return copyOf(k2.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    public static <E> k1<E> copyOf(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof k1) {
            k1<E> k1Var = (k1) iterable;
            if (comparator.equals(k1Var.comparator())) {
                return k1Var.isPartialView() ? m15950for(comparator, k1Var.entrySet().asList()) : k1Var;
            }
        }
        return new Cdo(comparator).mo15637for(iterable).mo15642try();
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/k1<TE;>; */
    public static k1 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return copyOf(k2.natural(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/k1<TE;>; */
    public static k1 of(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList arrayListM16512return = x1.m16512return(comparableArr.length + 6);
        Collections.addAll(arrayListM16512return, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(arrayListM16512return, comparableArr);
        return copyOf(k2.natural(), arrayListM16512return);
    }
}
