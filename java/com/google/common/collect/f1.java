package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fs0;
import android.support.v4.l01;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.collect.g3;
import com.google.common.collect.v0;
import com.google.common.primitives.Cthis;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

@li0
@o8
/* loaded from: classes2.dex */
public final class f1<C extends Comparable> extends Ccatch<C> implements Serializable {

    /* renamed from: for, reason: not valid java name */
    private static final f1<Comparable<?>> f14255for = new f1<>(v0.of());

    /* renamed from: new, reason: not valid java name */
    private static final f1<Comparable<?>> f14256new = new f1<>(v0.of(n2.all()));

    /* renamed from: do, reason: not valid java name */
    private final transient v0<n2<C>> f14257do;

    /* renamed from: if, reason: not valid java name */
    @fs0
    private transient f1<C> f14258if;

    /* renamed from: com.google.common.collect.f1$case, reason: invalid class name */
    public static final class Ccase<C extends Comparable> implements Serializable {
        private final v0<n2<C>> ranges;

        public Ccase(v0<n2<C>> v0Var) {
            this.ranges = v0Var;
        }

        public Object readResolve() {
            return this.ranges.isEmpty() ? f1.of() : this.ranges.equals(v0.of(n2.all())) ? f1.all() : new f1(this.ranges);
        }
    }

    /* renamed from: com.google.common.collect.f1$do, reason: invalid class name */
    public class Cdo extends v0<n2<C>> {
        public final /* synthetic */ int val$fromIndex;
        public final /* synthetic */ int val$length;
        public final /* synthetic */ n2 val$range;

        public Cdo(int i, int i2, n2 n2Var) {
            this.val$length = i;
            this.val$fromIndex = i2;
            this.val$range = n2Var;
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.val$length;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public n2<C> get(int i) {
            af1.m222private(i, this.val$length);
            return (i == 0 || i == this.val$length + (-1)) ? ((n2) f1.this.f14257do.get(i + this.val$fromIndex)).intersection(this.val$range) : (n2) f1.this.f14257do.get(i + this.val$fromIndex);
        }
    }

    /* renamed from: com.google.common.collect.f1$for, reason: invalid class name */
    public static class Cfor<C extends Comparable> implements Serializable {
        private final f<C> domain;
        private final v0<n2<C>> ranges;

        public Cfor(v0<n2<C>> v0Var, f<C> fVar) {
            this.ranges = v0Var;
            this.domain = fVar;
        }

        public Object readResolve() {
            return new f1(this.ranges).asSet(this.domain);
        }
    }

    /* renamed from: com.google.common.collect.f1$if, reason: invalid class name */
    public final class Cif extends m1<C> {
        private final f<C> domain;

        /* renamed from: try, reason: not valid java name */
        @l01
        private transient Integer f14259try;

        /* renamed from: com.google.common.collect.f1$if$do, reason: invalid class name */
        public class Cdo extends com.google.common.collect.Cfor<C> {

            /* renamed from: for, reason: not valid java name */
            public final Iterator<n2<C>> f14260for;

            /* renamed from: new, reason: not valid java name */
            public Iterator<C> f14261new = s1.m16240return();

            public Cdo() {
                this.f14260for = f1.this.f14257do.iterator();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public C mo15521do() {
                while (!this.f14261new.hasNext()) {
                    if (!this.f14260for.hasNext()) {
                        return (C) m15805if();
                    }
                    this.f14261new = Cinstanceof.create(this.f14260for.next(), Cif.this.domain).iterator();
                }
                return this.f14261new.next();
            }
        }

        /* renamed from: com.google.common.collect.f1$if$if, reason: invalid class name and collision with other inner class name */
        public class C0096if extends com.google.common.collect.Cfor<C> {

            /* renamed from: for, reason: not valid java name */
            public final Iterator<n2<C>> f14263for;

            /* renamed from: new, reason: not valid java name */
            public Iterator<C> f14264new = s1.m16240return();

            public C0096if() {
                this.f14263for = f1.this.f14257do.reverse().iterator();
            }

            @Override // com.google.common.collect.Cfor
            /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
            public C mo15521do() {
                while (!this.f14264new.hasNext()) {
                    if (!this.f14263for.hasNext()) {
                        return (C) m15805if();
                    }
                    this.f14264new = Cinstanceof.create(this.f14263for.next(), Cif.this.domain).descendingIterator();
                }
                return this.f14264new.next();
            }
        }

        public Cif(f<C> fVar) {
            super(k2.natural());
            this.domain = fVar;
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return f1.this.contains((Comparable) obj);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        @Override // com.google.common.collect.m1
        public m1<C> createDescendingSet() {
            return new d(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.m1
        public int indexOf(Object obj) {
            if (!contains(obj)) {
                return -1;
            }
            Comparable comparable = (Comparable) obj;
            long size = 0;
            ac2 it = f1.this.f14257do.iterator();
            while (it.hasNext()) {
                if (((n2) it.next()).contains(comparable)) {
                    return Cthis.m17704throws(size + Cinstanceof.create(r3, this.domain).indexOf(comparable));
                }
                size += Cinstanceof.create(r3, this.domain).size();
            }
            throw new AssertionError("impossible");
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return f1.this.f14257do.isPartialView();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Integer numValueOf = this.f14259try;
            if (numValueOf == null) {
                long size = 0;
                ac2 it = f1.this.f14257do.iterator();
                while (it.hasNext()) {
                    size += Cinstanceof.create((n2) it.next(), this.domain).size();
                    if (size >= 2147483647L) {
                        break;
                    }
                }
                numValueOf = Integer.valueOf(Cthis.m17704throws(size));
                this.f14259try = numValueOf;
            }
            return numValueOf.intValue();
        }

        public m1<C> subSet(n2<C> n2Var) {
            return f1.this.subRangeSet((n2) n2Var).asSet(this.domain);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return f1.this.f14257do.toString();
        }

        @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0
        public Object writeReplace() {
            return new Cfor(f1.this.f14257do, this.domain);
        }

        @Override // com.google.common.collect.m1, java.util.NavigableSet
        @li0("NavigableSet")
        public ac2<C> descendingIterator() {
            return new C0096if();
        }

        @Override // com.google.common.collect.m1
        public m1<C> headSetImpl(C c, boolean z) {
            return subSet(n2.upTo(c, Cstatic.forBoolean(z)));
        }

        @Override // com.google.common.collect.m1, com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public ac2<C> iterator() {
            return new Cdo();
        }

        @Override // com.google.common.collect.m1
        public m1<C> subSetImpl(C c, boolean z, C c2, boolean z2) {
            return (z || z2 || n2.compareOrThrow(c, c2) != 0) ? subSet(n2.range(c, Cstatic.forBoolean(z), c2, Cstatic.forBoolean(z2))) : m1.of();
        }

        @Override // com.google.common.collect.m1
        public m1<C> tailSetImpl(C c, boolean z) {
            return subSet(n2.downTo(c, Cstatic.forBoolean(z)));
        }
    }

    /* renamed from: com.google.common.collect.f1$new, reason: invalid class name */
    public static class Cnew<C extends Comparable<?>> {

        /* renamed from: do, reason: not valid java name */
        private final List<n2<C>> f14266do = x1.m16520while();

        @lf
        /* renamed from: do, reason: not valid java name */
        public Cnew<C> m15787do(n2<C> n2Var) {
            af1.m225return(!n2Var.isEmpty(), "range must not be empty, but was %s", n2Var);
            this.f14266do.add(n2Var);
            return this;
        }

        @lf
        /* renamed from: for, reason: not valid java name */
        public Cnew<C> m15788for(Iterable<n2<C>> iterable) {
            Iterator<n2<C>> it = iterable.iterator();
            while (it.hasNext()) {
                m15787do(it.next());
            }
            return this;
        }

        @lf
        /* renamed from: if, reason: not valid java name */
        public Cnew<C> m15789if(RangeSet<C> rangeSet) {
            return m15788for(rangeSet.asRanges());
        }

        /* renamed from: new, reason: not valid java name */
        public f1<C> m15790new() {
            v0.Cdo cdo = new v0.Cdo(this.f14266do.size());
            Collections.sort(this.f14266do, n2.rangeLexOrdering());
            PeekingIterator peekingIteratorG = s1.g(this.f14266do.iterator());
            while (peekingIteratorG.hasNext()) {
                n2 n2VarSpan = (n2) peekingIteratorG.next();
                while (peekingIteratorG.hasNext()) {
                    n2<C> n2Var = (n2) peekingIteratorG.peek();
                    if (n2VarSpan.isConnected(n2Var)) {
                        af1.m206default(n2VarSpan.intersection(n2Var).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", n2VarSpan, n2Var);
                        n2VarSpan = n2VarSpan.span((n2) peekingIteratorG.next());
                    }
                }
                cdo.mo15635do(n2VarSpan);
            }
            v0 v0VarMo15642try = cdo.mo15642try();
            return v0VarMo15642try.isEmpty() ? f1.of() : (v0VarMo15642try.size() == 1 && ((n2) r1.m16184extends(v0VarMo15642try)).equals(n2.all())) ? f1.all() : new f1<>(v0VarMo15642try);
        }
    }

    /* renamed from: com.google.common.collect.f1$try, reason: invalid class name */
    public final class Ctry extends v0<n2<C>> {
        private final boolean positiveBoundedAbove;
        private final boolean positiveBoundedBelow;
        private final int size;

        /* JADX WARN: Multi-variable type inference failed */
        public Ctry() {
            boolean zHasLowerBound = ((n2) f1.this.f14257do.get(0)).hasLowerBound();
            this.positiveBoundedBelow = zHasLowerBound;
            boolean zHasUpperBound = ((n2) r1.m16204switch(f1.this.f14257do)).hasUpperBound();
            this.positiveBoundedAbove = zHasUpperBound;
            int size = f1.this.f14257do.size() - 1;
            size = zHasLowerBound ? size + 1 : size;
            this.size = zHasUpperBound ? size + 1 : size;
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public n2<C> get(int i) {
            af1.m222private(i, this.size);
            return n2.create(this.positiveBoundedBelow ? i == 0 ? a.belowAll() : ((n2) f1.this.f14257do.get(i - 1)).upperBound : ((n2) f1.this.f14257do.get(i)).upperBound, (this.positiveBoundedAbove && i == this.size + (-1)) ? a.aboveAll() : ((n2) f1.this.f14257do.get(i + (!this.positiveBoundedBelow ? 1 : 0))).lowerBound);
        }
    }

    public f1(v0<n2<C>> v0Var) {
        this.f14257do = v0Var;
    }

    public static <C extends Comparable> f1<C> all() {
        return f14256new;
    }

    public static <C extends Comparable<?>> Cnew<C> builder() {
        return new Cnew<>();
    }

    public static <C extends Comparable> f1<C> copyOf(RangeSet<C> rangeSet) {
        af1.m205continue(rangeSet);
        if (rangeSet.isEmpty()) {
            return of();
        }
        if (rangeSet.encloses(n2.all())) {
            return all();
        }
        if (rangeSet instanceof f1) {
            f1<C> f1Var = (f1) rangeSet;
            if (!f1Var.isPartialView()) {
                return f1Var;
            }
        }
        return new f1<>(v0.copyOf((Collection) rangeSet.asRanges()));
    }

    /* renamed from: do, reason: not valid java name */
    private v0<n2<C>> m15784do(n2<C> n2Var) {
        if (this.f14257do.isEmpty() || n2Var.isEmpty()) {
            return v0.of();
        }
        if (n2Var.encloses(span())) {
            return this.f14257do;
        }
        int iM15815do = n2Var.hasLowerBound() ? g3.m15815do(this.f14257do, n2.upperBoundFn(), n2Var.lowerBound, g3.Cfor.FIRST_AFTER, g3.Cif.NEXT_HIGHER) : 0;
        int iM15815do2 = (n2Var.hasUpperBound() ? g3.m15815do(this.f14257do, n2.lowerBoundFn(), n2Var.upperBound, g3.Cfor.FIRST_PRESENT, g3.Cif.NEXT_HIGHER) : this.f14257do.size()) - iM15815do;
        return iM15815do2 == 0 ? v0.of() : new Cdo(iM15815do2, iM15815do, n2Var);
    }

    public static <C extends Comparable> f1<C> of() {
        return f14255for;
    }

    public static <C extends Comparable<?>> f1<C> unionOf(Iterable<n2<C>> iterable) {
        return copyOf(u3.create(iterable));
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    @Deprecated
    public void add(n2<C> n2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    @Deprecated
    public void addAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    public m1<C> asSet(f<C> fVar) {
        af1.m205continue(fVar);
        if (isEmpty()) {
            return m1.of();
        }
        n2<C> n2VarCanonical = span().canonical(fVar);
        if (!n2VarCanonical.hasLowerBound()) {
            throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
        }
        if (!n2VarCanonical.hasUpperBound()) {
            try {
                fVar.maxValue();
            } catch (NoSuchElementException unused) {
                throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
            }
        }
        return new Cif(fVar);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    public f1<C> difference(RangeSet<C> rangeSet) {
        u3 u3VarCreate = u3.create(this);
        u3VarCreate.removeAll(rangeSet);
        return copyOf(u3VarCreate);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public boolean encloses(n2<C> n2Var) {
        int iM15817if = g3.m15817if(this.f14257do, n2.lowerBoundFn(), n2Var.lowerBound, k2.natural(), g3.Cfor.ANY_PRESENT, g3.Cif.NEXT_LOWER);
        return iM15817if != -1 && this.f14257do.get(iM15817if).encloses(n2Var);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(RangeSet rangeSet) {
        return super.enclosesAll(rangeSet);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    public f1<C> intersection(RangeSet<C> rangeSet) {
        u3 u3VarCreate = u3.create(this);
        u3VarCreate.removeAll(rangeSet.complement());
        return copyOf(u3VarCreate);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public boolean intersects(n2<C> n2Var) {
        int iM15817if = g3.m15817if(this.f14257do, n2.lowerBoundFn(), n2Var.lowerBound, k2.natural(), g3.Cfor.ANY_PRESENT, g3.Cif.NEXT_HIGHER);
        if (iM15817if < this.f14257do.size() && this.f14257do.get(iM15817if).isConnected(n2Var) && !this.f14257do.get(iM15817if).intersection(n2Var).isEmpty()) {
            return true;
        }
        if (iM15817if > 0) {
            int i = iM15817if - 1;
            if (this.f14257do.get(i).isConnected(n2Var) && !this.f14257do.get(i).intersection(n2Var).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public boolean isEmpty() {
        return this.f14257do.isEmpty();
    }

    public boolean isPartialView() {
        return this.f14257do.isPartialView();
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public n2<C> rangeContaining(C c) {
        int iM15817if = g3.m15817if(this.f14257do, n2.lowerBoundFn(), a.belowValue(c), k2.natural(), g3.Cfor.ANY_PRESENT, g3.Cif.NEXT_LOWER);
        if (iM15817if == -1) {
            return null;
        }
        n2<C> n2Var = this.f14257do.get(iM15817if);
        if (n2Var.contains(c)) {
            return n2Var;
        }
        return null;
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    @Deprecated
    public void remove(n2<C> n2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    @Deprecated
    public void removeAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public n2<C> span() {
        if (this.f14257do.isEmpty()) {
            throw new NoSuchElementException();
        }
        return n2.create(this.f14257do.get(0).lowerBound, this.f14257do.get(r1.size() - 1).upperBound);
    }

    public f1<C> union(RangeSet<C> rangeSet) {
        return unionOf(r1.m16176case(asRanges(), rangeSet.asRanges()));
    }

    public Object writeReplace() {
        return new Ccase(this.f14257do);
    }

    public static <C extends Comparable> f1<C> of(n2<C> n2Var) {
        af1.m205continue(n2Var);
        return n2Var.isEmpty() ? of() : n2Var.equals(n2.all()) ? all() : new f1<>(v0.of(n2Var));
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    @Deprecated
    public void addAll(Iterable<n2<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public g1<n2<C>> asDescendingSetOfRanges() {
        return this.f14257do.isEmpty() ? g1.of() : new x2(this.f14257do.reverse(), n2.rangeLexOrdering().reverse());
    }

    @Override // com.google.common.collect.RangeSet
    public g1<n2<C>> asRanges() {
        return this.f14257do.isEmpty() ? g1.of() : new x2(this.f14257do, n2.rangeLexOrdering());
    }

    @Override // com.google.common.collect.RangeSet
    public f1<C> complement() {
        f1<C> f1Var = this.f14258if;
        if (f1Var != null) {
            return f1Var;
        }
        if (this.f14257do.isEmpty()) {
            f1<C> f1VarAll = all();
            this.f14258if = f1VarAll;
            return f1VarAll;
        }
        if (this.f14257do.size() == 1 && this.f14257do.get(0).equals(n2.all())) {
            f1<C> f1VarOf = of();
            this.f14258if = f1VarOf;
            return f1VarOf;
        }
        f1<C> f1Var2 = new f1<>(new Ctry(), this);
        this.f14258if = f1Var2;
        return f1Var2;
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // com.google.common.collect.Ccatch, com.google.common.collect.RangeSet
    @Deprecated
    public void removeAll(Iterable<n2<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public f1<C> subRangeSet(n2<C> n2Var) {
        if (!isEmpty()) {
            n2<C> n2VarSpan = span();
            if (n2Var.encloses(n2VarSpan)) {
                return this;
            }
            if (n2Var.isConnected(n2VarSpan)) {
                return new f1<>(m15784do(n2Var));
            }
        }
        return of();
    }

    private f1(v0<n2<C>> v0Var, f1<C> f1Var) {
        this.f14257do = v0Var;
        this.f14258if = f1Var;
    }

    public static <C extends Comparable<?>> f1<C> copyOf(Iterable<n2<C>> iterable) {
        return new Cnew().m15788for(iterable).m15790new();
    }
}
