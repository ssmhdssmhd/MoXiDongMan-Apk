package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Comparator;
import java.util.Objects;

/* renamed from: org.apache.commons.lang3.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<T> implements Serializable {
    private static final long serialVersionUID = 1;
    private final Comparator<T> comparator;

    /* renamed from: do, reason: not valid java name */
    private transient int f28780do;

    /* renamed from: if, reason: not valid java name */
    private transient String f28781if;
    private final T maximum;
    private final T minimum;

    /* renamed from: org.apache.commons.lang3.this$do, reason: invalid class name */
    public enum Cdo implements Comparator {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    private Cthis(T t, T t2, Comparator<T> comparator) {
        if (t == null || t2 == null) {
            throw new IllegalArgumentException("Elements in a range must not be null: element1=" + t + ", element2=" + t2);
        }
        if (comparator == null) {
            this.comparator = Cdo.INSTANCE;
        } else {
            this.comparator = comparator;
        }
        if (this.comparator.compare(t, t2) < 1) {
            this.minimum = t;
            this.maximum = t2;
        } else {
            this.minimum = t2;
            this.maximum = t;
        }
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<TT;>;>(TT;TT;)Lorg/apache/commons/lang3/this<TT;>; */
    public static Cthis between(Comparable comparable, Comparable comparable2) {
        return between(comparable, comparable2, null);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<TT;>;>(TT;)Lorg/apache/commons/lang3/this<TT;>; */
    public static Cthis is(Comparable comparable) {
        return between(comparable, comparable, null);
    }

    public boolean contains(T t) {
        return t != null && this.comparator.compare(t, this.minimum) > -1 && this.comparator.compare(t, this.maximum) < 1;
    }

    public boolean containsRange(Cthis<T> cthis) {
        return cthis != null && contains(cthis.minimum) && contains(cthis.maximum);
    }

    public int elementCompareTo(T t) {
        Objects.requireNonNull(t, "Element is null");
        if (isAfter(t)) {
            return -1;
        }
        return isBefore(t) ? 1 : 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != Cthis.class) {
            return false;
        }
        Cthis cthis = (Cthis) obj;
        return this.minimum.equals(cthis.minimum) && this.maximum.equals(cthis.maximum);
    }

    public Comparator<T> getComparator() {
        return this.comparator;
    }

    public T getMaximum() {
        return this.maximum;
    }

    public T getMinimum() {
        return this.minimum;
    }

    public int hashCode() {
        int i = this.f28780do;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((629 + Cthis.class.hashCode()) * 37) + this.minimum.hashCode()) * 37) + this.maximum.hashCode();
        this.f28780do = iHashCode;
        return iHashCode;
    }

    public Cthis<T> intersectionWith(Cthis<T> cthis) {
        if (!isOverlappedBy(cthis)) {
            throw new IllegalArgumentException(String.format("Cannot calculate intersection with non-overlapping range %s", cthis));
        }
        if (equals(cthis)) {
            return this;
        }
        return between(getComparator().compare(this.minimum, cthis.minimum) < 0 ? cthis.minimum : this.minimum, getComparator().compare(this.maximum, cthis.maximum) < 0 ? this.maximum : cthis.maximum, getComparator());
    }

    public boolean isAfter(T t) {
        return t != null && this.comparator.compare(t, this.minimum) < 0;
    }

    public boolean isAfterRange(Cthis<T> cthis) {
        if (cthis == null) {
            return false;
        }
        return isAfter(cthis.maximum);
    }

    public boolean isBefore(T t) {
        return t != null && this.comparator.compare(t, this.maximum) > 0;
    }

    public boolean isBeforeRange(Cthis<T> cthis) {
        if (cthis == null) {
            return false;
        }
        return isBefore(cthis.minimum);
    }

    public boolean isEndedBy(T t) {
        return t != null && this.comparator.compare(t, this.maximum) == 0;
    }

    public boolean isNaturalOrdering() {
        return this.comparator == Cdo.INSTANCE;
    }

    public boolean isOverlappedBy(Cthis<T> cthis) {
        if (cthis == null) {
            return false;
        }
        return cthis.contains(this.minimum) || cthis.contains(this.maximum) || contains(cthis.minimum);
    }

    public boolean isStartedBy(T t) {
        return t != null && this.comparator.compare(t, this.minimum) == 0;
    }

    public String toString() {
        String str = this.f28781if;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('[');
        sb.append(this.minimum);
        sb.append("..");
        sb.append(this.maximum);
        sb.append(']');
        String string = sb.toString();
        this.f28781if = string;
        return string;
    }

    public static <T> Cthis<T> between(T t, T t2, Comparator<T> comparator) {
        return new Cthis<>(t, t2, comparator);
    }

    public static <T> Cthis<T> is(T t, Comparator<T> comparator) {
        return between(t, t, comparator);
    }

    public String toString(String str) {
        return String.format(str, this.minimum, this.maximum, this.comparator);
    }
}
