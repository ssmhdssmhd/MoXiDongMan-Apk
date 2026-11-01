package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.base.Function;
import com.google.common.base.Predicate;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Comparator;
import java.util.Iterator;
import java.util.SortedSet;

@ki0
/* loaded from: classes2.dex */
public final class n2<C extends Comparable> extends o2 implements Predicate<C>, Serializable {

    /* renamed from: do, reason: not valid java name */
    private static final n2<Comparable> f14480do = new n2<>(a.belowAll(), a.aboveAll());
    private static final long serialVersionUID = 0;
    public final a<C> lowerBound;
    public final a<C> upperBound;

    /* renamed from: com.google.common.collect.n2$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f14481do;

        static {
            int[] iArr = new int[Cstatic.values().length];
            f14481do = iArr;
            try {
                iArr[Cstatic.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14481do[Cstatic.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.collect.n2$for, reason: invalid class name */
    public static class Cfor extends k2<n2<?>> implements Serializable {
        public static final k2<n2<?>> INSTANCE = new Cfor();
        private static final long serialVersionUID = 0;

        private Cfor() {
        }

        @Override // com.google.common.collect.k2, java.util.Comparator
        public int compare(n2<?> n2Var, n2<?> n2Var2) {
            return Cinterface.m15906final().mo15917this(n2Var.lowerBound, n2Var2.lowerBound).mo15917this(n2Var.upperBound, n2Var2.upperBound).mo15913const();
        }
    }

    /* renamed from: com.google.common.collect.n2$if, reason: invalid class name */
    public static class Cif implements Function<n2, a> {

        /* renamed from: do, reason: not valid java name */
        public static final Cif f14482do = new Cif();

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public a apply(n2 n2Var) {
            return n2Var.lowerBound;
        }
    }

    /* renamed from: com.google.common.collect.n2$new, reason: invalid class name */
    public static class Cnew implements Function<n2, a> {

        /* renamed from: do, reason: not valid java name */
        public static final Cnew f14483do = new Cnew();

        @Override // com.google.common.base.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public a apply(n2 n2Var) {
            return n2Var.upperBound;
        }
    }

    private n2(a<C> aVar, a<C> aVar2) {
        this.lowerBound = (a) af1.m205continue(aVar);
        this.upperBound = (a) af1.m205continue(aVar2);
        if (aVar.compareTo((a) aVar2) > 0 || aVar == a.aboveAll() || aVar2 == a.belowAll()) {
            throw new IllegalArgumentException("Invalid range: " + m16088if(aVar, aVar2));
        }
    }

    public static <C extends Comparable<?>> n2<C> all() {
        return (n2<C>) f14480do;
    }

    public static <C extends Comparable<?>> n2<C> atLeast(C c) {
        return create(a.belowValue(c), a.aboveAll());
    }

    public static <C extends Comparable<?>> n2<C> atMost(C c) {
        return create(a.belowAll(), a.aboveValue(c));
    }

    public static <C extends Comparable<?>> n2<C> closed(C c, C c2) {
        return create(a.belowValue(c), a.aboveValue(c2));
    }

    public static <C extends Comparable<?>> n2<C> closedOpen(C c, C c2) {
        return create(a.belowValue(c), a.belowValue(c2));
    }

    public static int compareOrThrow(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static <C extends Comparable<?>> n2<C> create(a<C> aVar, a<C> aVar2) {
        return new n2<>(aVar, aVar2);
    }

    /* renamed from: do, reason: not valid java name */
    private static <T> SortedSet<T> m16087do(Iterable<T> iterable) {
        return (SortedSet) iterable;
    }

    public static <C extends Comparable<?>> n2<C> downTo(C c, Cstatic cstatic) {
        int i = Cdo.f14481do[cstatic.ordinal()];
        if (i == 1) {
            return greaterThan(c);
        }
        if (i == 2) {
            return atLeast(c);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> n2<C> encloseAll(Iterable<C> iterable) {
        af1.m205continue(iterable);
        if (iterable instanceof SortedSet) {
            SortedSet sortedSetM16087do = m16087do(iterable);
            Comparator comparator = sortedSetM16087do.comparator();
            if (k2.natural().equals(comparator) || comparator == null) {
                return closed((Comparable) sortedSetM16087do.first(), (Comparable) sortedSetM16087do.last());
            }
        }
        Iterator<C> it = iterable.iterator();
        Comparable comparable = (Comparable) af1.m205continue(it.next());
        Comparable comparable2 = comparable;
        while (it.hasNext()) {
            Comparable comparable3 = (Comparable) af1.m205continue(it.next());
            comparable = (Comparable) k2.natural().min(comparable, comparable3);
            comparable2 = (Comparable) k2.natural().max(comparable2, comparable3);
        }
        return closed(comparable, comparable2);
    }

    public static <C extends Comparable<?>> n2<C> greaterThan(C c) {
        return create(a.aboveValue(c), a.aboveAll());
    }

    /* renamed from: if, reason: not valid java name */
    private static String m16088if(a<?> aVar, a<?> aVar2) {
        StringBuilder sb = new StringBuilder(16);
        aVar.describeAsLowerBound(sb);
        sb.append("..");
        aVar2.describeAsUpperBound(sb);
        return sb.toString();
    }

    public static <C extends Comparable<?>> n2<C> lessThan(C c) {
        return create(a.belowAll(), a.belowValue(c));
    }

    public static <C extends Comparable<?>> Function<n2<C>, a<C>> lowerBoundFn() {
        return Cif.f14482do;
    }

    public static <C extends Comparable<?>> n2<C> open(C c, C c2) {
        return create(a.aboveValue(c), a.belowValue(c2));
    }

    public static <C extends Comparable<?>> n2<C> openClosed(C c, C c2) {
        return create(a.aboveValue(c), a.aboveValue(c2));
    }

    public static <C extends Comparable<?>> n2<C> range(C c, Cstatic cstatic, C c2, Cstatic cstatic2) {
        af1.m205continue(cstatic);
        af1.m205continue(cstatic2);
        Cstatic cstatic3 = Cstatic.OPEN;
        return create(cstatic == cstatic3 ? a.aboveValue(c) : a.belowValue(c), cstatic2 == cstatic3 ? a.belowValue(c2) : a.aboveValue(c2));
    }

    public static <C extends Comparable<?>> k2<n2<C>> rangeLexOrdering() {
        return (k2<n2<C>>) Cfor.INSTANCE;
    }

    public static <C extends Comparable<?>> n2<C> singleton(C c) {
        return closed(c, c);
    }

    public static <C extends Comparable<?>> n2<C> upTo(C c, Cstatic cstatic) {
        int i = Cdo.f14481do[cstatic.ordinal()];
        if (i == 1) {
            return lessThan(c);
        }
        if (i == 2) {
            return atMost(c);
        }
        throw new AssertionError();
    }

    public static <C extends Comparable<?>> Function<n2<C>, a<C>> upperBoundFn() {
        return Cnew.f14483do;
    }

    public n2<C> canonical(f<C> fVar) {
        af1.m205continue(fVar);
        a<C> aVarCanonical = this.lowerBound.canonical(fVar);
        a<C> aVarCanonical2 = this.upperBound.canonical(fVar);
        return (aVarCanonical == this.lowerBound && aVarCanonical2 == this.upperBound) ? this : create(aVarCanonical, aVarCanonical2);
    }

    public boolean contains(C c) {
        af1.m205continue(c);
        return this.lowerBound.isLessThan(c) && !this.upperBound.isLessThan(c);
    }

    public boolean containsAll(Iterable<? extends C> iterable) {
        if (r1.m16197private(iterable)) {
            return true;
        }
        if (iterable instanceof SortedSet) {
            SortedSet sortedSetM16087do = m16087do(iterable);
            Comparator comparator = sortedSetM16087do.comparator();
            if (k2.natural().equals(comparator) || comparator == null) {
                return contains((Comparable) sortedSetM16087do.first()) && contains((Comparable) sortedSetM16087do.last());
            }
        }
        Iterator<? extends C> it = iterable.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean encloses(n2<C> n2Var) {
        return this.lowerBound.compareTo((a) n2Var.lowerBound) <= 0 && this.upperBound.compareTo((a) n2Var.upperBound) >= 0;
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@b51 Object obj) {
        if (!(obj instanceof n2)) {
            return false;
        }
        n2 n2Var = (n2) obj;
        return this.lowerBound.equals(n2Var.lowerBound) && this.upperBound.equals(n2Var.upperBound);
    }

    public n2<C> gap(n2<C> n2Var) {
        boolean z = this.lowerBound.compareTo((a) n2Var.lowerBound) < 0;
        n2<C> n2Var2 = z ? this : n2Var;
        if (!z) {
            n2Var = this;
        }
        return create(n2Var2.upperBound, n2Var.lowerBound);
    }

    public boolean hasLowerBound() {
        return this.lowerBound != a.belowAll();
    }

    public boolean hasUpperBound() {
        return this.upperBound != a.aboveAll();
    }

    public int hashCode() {
        return (this.lowerBound.hashCode() * 31) + this.upperBound.hashCode();
    }

    public n2<C> intersection(n2<C> n2Var) {
        int iCompareTo = this.lowerBound.compareTo((a) n2Var.lowerBound);
        int iCompareTo2 = this.upperBound.compareTo((a) n2Var.upperBound);
        if (iCompareTo >= 0 && iCompareTo2 <= 0) {
            return this;
        }
        if (iCompareTo > 0 || iCompareTo2 < 0) {
            return create(iCompareTo >= 0 ? this.lowerBound : n2Var.lowerBound, iCompareTo2 <= 0 ? this.upperBound : n2Var.upperBound);
        }
        return n2Var;
    }

    public boolean isConnected(n2<C> n2Var) {
        return this.lowerBound.compareTo((a) n2Var.upperBound) <= 0 && n2Var.lowerBound.compareTo((a) this.upperBound) <= 0;
    }

    public boolean isEmpty() {
        return this.lowerBound.equals(this.upperBound);
    }

    public Cstatic lowerBoundType() {
        return this.lowerBound.typeAsLowerBound();
    }

    public C lowerEndpoint() {
        return (C) this.lowerBound.endpoint();
    }

    public Object readResolve() {
        return equals(f14480do) ? all() : this;
    }

    public n2<C> span(n2<C> n2Var) {
        int iCompareTo = this.lowerBound.compareTo((a) n2Var.lowerBound);
        int iCompareTo2 = this.upperBound.compareTo((a) n2Var.upperBound);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            return create(iCompareTo <= 0 ? this.lowerBound : n2Var.lowerBound, iCompareTo2 >= 0 ? this.upperBound : n2Var.upperBound);
        }
        return n2Var;
    }

    public String toString() {
        return m16088if(this.lowerBound, this.upperBound);
    }

    public Cstatic upperBoundType() {
        return this.upperBound.typeAsUpperBound();
    }

    public C upperEndpoint() {
        return (C) this.upperBound.endpoint();
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(C c) {
        return contains(c);
    }
}
