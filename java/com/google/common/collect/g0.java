package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.l01;
import com.google.common.base.Cthrow;
import java.io.Serializable;
import java.util.Comparator;

@ki0(serializable = true)
/* loaded from: classes2.dex */
final class g0<T> implements Serializable {
    private final Comparator<? super T> comparator;

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient g0<T> f14294do;
    private final boolean hasLowerBound;
    private final boolean hasUpperBound;
    private final Cstatic lowerBoundType;

    @b51
    private final T lowerEndpoint;
    private final Cstatic upperBoundType;

    @b51
    private final T upperEndpoint;

    /* JADX WARN: Multi-variable type inference failed */
    private g0(Comparator<? super T> comparator, boolean z, @b51 T t, Cstatic cstatic, boolean z2, @b51 T t2, Cstatic cstatic2) {
        this.comparator = (Comparator) af1.m205continue(comparator);
        this.hasLowerBound = z;
        this.hasUpperBound = z2;
        this.lowerEndpoint = t;
        this.lowerBoundType = (Cstatic) af1.m205continue(cstatic);
        this.upperEndpoint = t2;
        this.upperBoundType = (Cstatic) af1.m205continue(cstatic2);
        if (z) {
            comparator.compare(t, t);
        }
        if (z2) {
            comparator.compare(t2, t2);
        }
        if (z && z2) {
            int iCompare = comparator.compare(t, t2);
            af1.m206default(iCompare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", t, t2);
            if (iCompare == 0) {
                Cstatic cstatic3 = Cstatic.OPEN;
                af1.m220new((cstatic != cstatic3) | (cstatic2 != cstatic3));
            }
        }
    }

    public static <T> g0<T> all(Comparator<? super T> comparator) {
        Cstatic cstatic = Cstatic.OPEN;
        return new g0<>(comparator, false, null, cstatic, false, null, cstatic);
    }

    public static <T> g0<T> downTo(Comparator<? super T> comparator, @b51 T t, Cstatic cstatic) {
        return new g0<>(comparator, true, t, cstatic, false, null, Cstatic.OPEN);
    }

    public static <T extends Comparable> g0<T> from(n2<T> n2Var) {
        return new g0<>(k2.natural(), n2Var.hasLowerBound(), n2Var.hasLowerBound() ? n2Var.lowerEndpoint() : null, n2Var.hasLowerBound() ? n2Var.lowerBoundType() : Cstatic.OPEN, n2Var.hasUpperBound(), n2Var.hasUpperBound() ? n2Var.upperEndpoint() : null, n2Var.hasUpperBound() ? n2Var.upperBoundType() : Cstatic.OPEN);
    }

    public static <T> g0<T> range(Comparator<? super T> comparator, @b51 T t, Cstatic cstatic, @b51 T t2, Cstatic cstatic2) {
        return new g0<>(comparator, true, t, cstatic, true, t2, cstatic2);
    }

    public static <T> g0<T> upTo(Comparator<? super T> comparator, @b51 T t, Cstatic cstatic) {
        return new g0<>(comparator, false, null, Cstatic.OPEN, true, t, cstatic);
    }

    public Comparator<? super T> comparator() {
        return this.comparator;
    }

    public boolean contains(@b51 T t) {
        return (tooLow(t) || tooHigh(t)) ? false : true;
    }

    public boolean equals(@b51 Object obj) {
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.comparator.equals(g0Var.comparator) && this.hasLowerBound == g0Var.hasLowerBound && this.hasUpperBound == g0Var.hasUpperBound && getLowerBoundType().equals(g0Var.getLowerBoundType()) && getUpperBoundType().equals(g0Var.getUpperBoundType()) && Cthrow.m15205do(getLowerEndpoint(), g0Var.getLowerEndpoint()) && Cthrow.m15205do(getUpperEndpoint(), g0Var.getUpperEndpoint());
    }

    public Cstatic getLowerBoundType() {
        return this.lowerBoundType;
    }

    public T getLowerEndpoint() {
        return this.lowerEndpoint;
    }

    public Cstatic getUpperBoundType() {
        return this.upperBoundType;
    }

    public T getUpperEndpoint() {
        return this.upperEndpoint;
    }

    public boolean hasLowerBound() {
        return this.hasLowerBound;
    }

    public boolean hasUpperBound() {
        return this.hasUpperBound;
    }

    public int hashCode() {
        return Cthrow.m15206if(this.comparator, getLowerEndpoint(), getLowerBoundType(), getUpperEndpoint(), getUpperBoundType());
    }

    public g0<T> intersect(g0<T> g0Var) {
        int iCompare;
        int iCompare2;
        T t;
        Cstatic cstatic;
        Cstatic cstatic2;
        int iCompare3;
        Cstatic cstatic3;
        af1.m205continue(g0Var);
        af1.m220new(this.comparator.equals(g0Var.comparator));
        boolean z = this.hasLowerBound;
        T lowerEndpoint = getLowerEndpoint();
        Cstatic lowerBoundType = getLowerBoundType();
        if (!hasLowerBound()) {
            z = g0Var.hasLowerBound;
            lowerEndpoint = g0Var.getLowerEndpoint();
            lowerBoundType = g0Var.getLowerBoundType();
        } else if (g0Var.hasLowerBound() && ((iCompare = this.comparator.compare(getLowerEndpoint(), g0Var.getLowerEndpoint())) < 0 || (iCompare == 0 && g0Var.getLowerBoundType() == Cstatic.OPEN))) {
            lowerEndpoint = g0Var.getLowerEndpoint();
            lowerBoundType = g0Var.getLowerBoundType();
        }
        boolean z2 = z;
        boolean z3 = this.hasUpperBound;
        T upperEndpoint = getUpperEndpoint();
        Cstatic upperBoundType = getUpperBoundType();
        if (!hasUpperBound()) {
            z3 = g0Var.hasUpperBound;
            upperEndpoint = g0Var.getUpperEndpoint();
            upperBoundType = g0Var.getUpperBoundType();
        } else if (g0Var.hasUpperBound() && ((iCompare2 = this.comparator.compare(getUpperEndpoint(), g0Var.getUpperEndpoint())) > 0 || (iCompare2 == 0 && g0Var.getUpperBoundType() == Cstatic.OPEN))) {
            upperEndpoint = g0Var.getUpperEndpoint();
            upperBoundType = g0Var.getUpperBoundType();
        }
        boolean z4 = z3;
        T t2 = upperEndpoint;
        if (z2 && z4 && ((iCompare3 = this.comparator.compare(lowerEndpoint, t2)) > 0 || (iCompare3 == 0 && lowerBoundType == (cstatic3 = Cstatic.OPEN) && upperBoundType == cstatic3))) {
            cstatic = Cstatic.OPEN;
            cstatic2 = Cstatic.CLOSED;
            t = t2;
        } else {
            t = lowerEndpoint;
            cstatic = lowerBoundType;
            cstatic2 = upperBoundType;
        }
        return new g0<>(this.comparator, z2, t, cstatic, z4, t2, cstatic2);
    }

    public boolean isEmpty() {
        return (hasUpperBound() && tooLow(getUpperEndpoint())) || (hasLowerBound() && tooHigh(getLowerEndpoint()));
    }

    public g0<T> reverse() {
        g0<T> g0Var = this.f14294do;
        if (g0Var != null) {
            return g0Var;
        }
        g0<T> g0Var2 = new g0<>(k2.from(this.comparator).reverse(), this.hasUpperBound, getUpperEndpoint(), getUpperBoundType(), this.hasLowerBound, getLowerEndpoint(), getLowerBoundType());
        g0Var2.f14294do = this;
        this.f14294do = g0Var2;
        return g0Var2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.comparator);
        sb.append(":");
        Cstatic cstatic = this.lowerBoundType;
        Cstatic cstatic2 = Cstatic.CLOSED;
        sb.append(cstatic == cstatic2 ? '[' : '(');
        sb.append(this.hasLowerBound ? this.lowerEndpoint : "-∞");
        sb.append(',');
        sb.append(this.hasUpperBound ? this.upperEndpoint : "∞");
        sb.append(this.upperBoundType == cstatic2 ? ']' : ')');
        return sb.toString();
    }

    public boolean tooHigh(@b51 T t) {
        if (!hasUpperBound()) {
            return false;
        }
        int iCompare = this.comparator.compare(t, getUpperEndpoint());
        return ((iCompare == 0) & (getUpperBoundType() == Cstatic.OPEN)) | (iCompare > 0);
    }

    public boolean tooLow(@b51 T t) {
        if (!hasLowerBound()) {
            return false;
        }
        int iCompare = this.comparator.compare(t, getLowerEndpoint());
        return ((iCompare == 0) & (getLowerBoundType() == Cstatic.OPEN)) | (iCompare < 0);
    }
}
