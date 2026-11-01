package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.on0;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;

@ki0
/* loaded from: classes2.dex */
abstract class a<C extends Comparable> implements Comparable<a<C>>, Serializable {
    private static final long serialVersionUID = 0;

    @b51
    public final C endpoint;

    /* renamed from: com.google.common.collect.a$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f14051do;

        static {
            int[] iArr = new int[Cstatic.values().length];
            f14051do = iArr;
            try {
                iArr[Cstatic.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14051do[Cstatic.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.google.common.collect.a$for, reason: invalid class name */
    public static final class Cfor<C extends Comparable> extends a<C> {
        private static final long serialVersionUID = 0;

        public Cfor(C c) {
            super((Comparable) af1.m205continue(c));
        }

        @Override // com.google.common.collect.a
        public a<C> canonical(f<C> fVar) {
            Comparable comparableLeastValueAbove = leastValueAbove(fVar);
            return comparableLeastValueAbove != null ? a.belowValue(comparableLeastValueAbove) : a.aboveAll();
        }

        @Override // com.google.common.collect.a, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((a) obj);
        }

        @Override // com.google.common.collect.a
        public void describeAsLowerBound(StringBuilder sb) {
            sb.append('(');
            sb.append(this.endpoint);
        }

        @Override // com.google.common.collect.a
        public void describeAsUpperBound(StringBuilder sb) {
            sb.append(this.endpoint);
            sb.append(']');
        }

        @Override // com.google.common.collect.a
        public C greatestValueBelow(f<C> fVar) {
            return this.endpoint;
        }

        @Override // com.google.common.collect.a
        public int hashCode() {
            return this.endpoint.hashCode() ^ (-1);
        }

        @Override // com.google.common.collect.a
        public boolean isLessThan(C c) {
            return n2.compareOrThrow(this.endpoint, c) < 0;
        }

        @Override // com.google.common.collect.a
        public C leastValueAbove(f<C> fVar) {
            return (C) fVar.next(this.endpoint);
        }

        public String toString() {
            return on0.f4694final + this.endpoint + "\\";
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsLowerBound() {
            return Cstatic.OPEN;
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsUpperBound() {
            return Cstatic.CLOSED;
        }

        @Override // com.google.common.collect.a
        public a<C> withLowerBoundType(Cstatic cstatic, f<C> fVar) {
            int i = Cdo.f14051do[cstatic.ordinal()];
            if (i == 1) {
                Comparable next = fVar.next(this.endpoint);
                return next == null ? a.belowAll() : a.belowValue(next);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }

        @Override // com.google.common.collect.a
        public a<C> withUpperBoundType(Cstatic cstatic, f<C> fVar) {
            int i = Cdo.f14051do[cstatic.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i != 2) {
                throw new AssertionError();
            }
            Comparable next = fVar.next(this.endpoint);
            return next == null ? a.aboveAll() : a.belowValue(next);
        }
    }

    /* renamed from: com.google.common.collect.a$if, reason: invalid class name */
    public static final class Cif extends a<Comparable<?>> {

        /* renamed from: do, reason: not valid java name */
        private static final Cif f14052do = new Cif();
        private static final long serialVersionUID = 0;

        private Cif() {
            super(null);
        }

        private Object readResolve() {
            return f14052do;
        }

        @Override // com.google.common.collect.a, java.lang.Comparable
        public int compareTo(a<Comparable<?>> aVar) {
            return aVar == this ? 0 : 1;
        }

        @Override // com.google.common.collect.a
        public void describeAsLowerBound(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.a
        public void describeAsUpperBound(StringBuilder sb) {
            sb.append("+∞)");
        }

        @Override // com.google.common.collect.a
        public Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.a
        public Comparable<?> greatestValueBelow(f<Comparable<?>> fVar) {
            return fVar.maxValue();
        }

        @Override // com.google.common.collect.a
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.a
        public boolean isLessThan(Comparable<?> comparable) {
            return false;
        }

        @Override // com.google.common.collect.a
        public Comparable<?> leastValueAbove(f<Comparable<?>> fVar) {
            throw new AssertionError();
        }

        public String toString() {
            return "+∞";
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsLowerBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsUpperBound() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.a
        public a<Comparable<?>> withLowerBoundType(Cstatic cstatic, f<Comparable<?>> fVar) {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.a
        public a<Comparable<?>> withUpperBoundType(Cstatic cstatic, f<Comparable<?>> fVar) {
            throw new IllegalStateException();
        }
    }

    /* renamed from: com.google.common.collect.a$new, reason: invalid class name */
    public static final class Cnew extends a<Comparable<?>> {

        /* renamed from: do, reason: not valid java name */
        private static final Cnew f14053do = new Cnew();
        private static final long serialVersionUID = 0;

        private Cnew() {
            super(null);
        }

        private Object readResolve() {
            return f14053do;
        }

        @Override // com.google.common.collect.a
        public a<Comparable<?>> canonical(f<Comparable<?>> fVar) {
            try {
                return a.belowValue(fVar.minValue());
            } catch (NoSuchElementException unused) {
                return this;
            }
        }

        @Override // com.google.common.collect.a, java.lang.Comparable
        public int compareTo(a<Comparable<?>> aVar) {
            return aVar == this ? 0 : -1;
        }

        @Override // com.google.common.collect.a
        public void describeAsLowerBound(StringBuilder sb) {
            sb.append("(-∞");
        }

        @Override // com.google.common.collect.a
        public void describeAsUpperBound(StringBuilder sb) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.a
        public Comparable<?> endpoint() {
            throw new IllegalStateException("range unbounded on this side");
        }

        @Override // com.google.common.collect.a
        public Comparable<?> greatestValueBelow(f<Comparable<?>> fVar) {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.a
        public int hashCode() {
            return System.identityHashCode(this);
        }

        @Override // com.google.common.collect.a
        public boolean isLessThan(Comparable<?> comparable) {
            return true;
        }

        @Override // com.google.common.collect.a
        public Comparable<?> leastValueAbove(f<Comparable<?>> fVar) {
            return fVar.minValue();
        }

        public String toString() {
            return "-∞";
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsLowerBound() {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsUpperBound() {
            throw new AssertionError("this statement should be unreachable");
        }

        @Override // com.google.common.collect.a
        public a<Comparable<?>> withLowerBoundType(Cstatic cstatic, f<Comparable<?>> fVar) {
            throw new IllegalStateException();
        }

        @Override // com.google.common.collect.a
        public a<Comparable<?>> withUpperBoundType(Cstatic cstatic, f<Comparable<?>> fVar) {
            throw new AssertionError("this statement should be unreachable");
        }
    }

    /* renamed from: com.google.common.collect.a$try, reason: invalid class name */
    public static final class Ctry<C extends Comparable> extends a<C> {
        private static final long serialVersionUID = 0;

        public Ctry(C c) {
            super((Comparable) af1.m205continue(c));
        }

        @Override // com.google.common.collect.a, java.lang.Comparable
        public /* bridge */ /* synthetic */ int compareTo(Object obj) {
            return super.compareTo((a) obj);
        }

        @Override // com.google.common.collect.a
        public void describeAsLowerBound(StringBuilder sb) {
            sb.append('[');
            sb.append(this.endpoint);
        }

        @Override // com.google.common.collect.a
        public void describeAsUpperBound(StringBuilder sb) {
            sb.append(this.endpoint);
            sb.append(')');
        }

        @Override // com.google.common.collect.a
        public C greatestValueBelow(f<C> fVar) {
            return (C) fVar.previous(this.endpoint);
        }

        @Override // com.google.common.collect.a
        public int hashCode() {
            return this.endpoint.hashCode();
        }

        @Override // com.google.common.collect.a
        public boolean isLessThan(C c) {
            return n2.compareOrThrow(this.endpoint, c) <= 0;
        }

        @Override // com.google.common.collect.a
        public C leastValueAbove(f<C> fVar) {
            return this.endpoint;
        }

        public String toString() {
            return "\\" + this.endpoint + on0.f4694final;
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsLowerBound() {
            return Cstatic.CLOSED;
        }

        @Override // com.google.common.collect.a
        public Cstatic typeAsUpperBound() {
            return Cstatic.OPEN;
        }

        @Override // com.google.common.collect.a
        public a<C> withLowerBoundType(Cstatic cstatic, f<C> fVar) {
            int i = Cdo.f14051do[cstatic.ordinal()];
            if (i == 1) {
                return this;
            }
            if (i != 2) {
                throw new AssertionError();
            }
            Comparable comparablePrevious = fVar.previous(this.endpoint);
            return comparablePrevious == null ? a.belowAll() : new Cfor(comparablePrevious);
        }

        @Override // com.google.common.collect.a
        public a<C> withUpperBoundType(Cstatic cstatic, f<C> fVar) {
            int i = Cdo.f14051do[cstatic.ordinal()];
            if (i == 1) {
                Comparable comparablePrevious = fVar.previous(this.endpoint);
                return comparablePrevious == null ? a.aboveAll() : new Cfor(comparablePrevious);
            }
            if (i == 2) {
                return this;
            }
            throw new AssertionError();
        }
    }

    public a(@b51 C c) {
        this.endpoint = c;
    }

    public static <C extends Comparable> a<C> aboveAll() {
        return Cif.f14052do;
    }

    public static <C extends Comparable> a<C> aboveValue(C c) {
        return new Cfor(c);
    }

    public static <C extends Comparable> a<C> belowAll() {
        return Cnew.f14053do;
    }

    public static <C extends Comparable> a<C> belowValue(C c) {
        return new Ctry(c);
    }

    public a<C> canonical(f<C> fVar) {
        return this;
    }

    public abstract void describeAsLowerBound(StringBuilder sb);

    public abstract void describeAsUpperBound(StringBuilder sb);

    public C endpoint() {
        return this.endpoint;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        try {
            return compareTo((a) obj) == 0;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public abstract C greatestValueBelow(f<C> fVar);

    public abstract int hashCode();

    public abstract boolean isLessThan(C c);

    public abstract C leastValueAbove(f<C> fVar);

    public abstract Cstatic typeAsLowerBound();

    public abstract Cstatic typeAsUpperBound();

    public abstract a<C> withLowerBoundType(Cstatic cstatic, f<C> fVar);

    public abstract a<C> withUpperBoundType(Cstatic cstatic, f<C> fVar);

    @Override // java.lang.Comparable
    public int compareTo(a<C> aVar) {
        if (aVar == belowAll()) {
            return 1;
        }
        if (aVar == aboveAll()) {
            return -1;
        }
        int iCompareOrThrow = n2.compareOrThrow(this.endpoint, aVar.endpoint);
        return iCompareOrThrow != 0 ? iCompareOrThrow : com.google.common.primitives.Cdo.m17550new(this instanceof Cfor, aVar instanceof Cfor);
    }
}
