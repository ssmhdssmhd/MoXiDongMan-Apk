package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.jd0;
import android.support.v4.ki0;
import java.io.Serializable;

@ki0
/* renamed from: com.google.common.base.this, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cthis<T> {

    /* renamed from: com.google.common.base.this$for, reason: invalid class name */
    public static final class Cfor<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Cthis<T> equivalence;

        @b51
        private final T target;

        public Cfor(Cthis<T> cthis, @b51 T t) {
            this.equivalence = (Cthis) af1.m205continue(cthis);
            this.target = t;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@b51 T t) {
            return this.equivalence.equivalent(t, this.target);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@b51 Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cfor)) {
                return false;
            }
            Cfor cfor = (Cfor) obj;
            return this.equivalence.equals(cfor.equivalence) && Cthrow.m15205do(this.target, cfor.target);
        }

        public int hashCode() {
            return Cthrow.m15206if(this.equivalence, this.target);
        }

        public String toString() {
            return this.equivalence + ".equivalentTo(" + this.target + ")";
        }
    }

    /* renamed from: com.google.common.base.this$if, reason: invalid class name */
    public static final class Cif extends Cthis<Object> implements Serializable {
        public static final Cif INSTANCE = new Cif();
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Cthis
        public boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Cthis
        public int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    /* renamed from: com.google.common.base.this$new, reason: invalid class name */
    public static final class Cnew extends Cthis<Object> implements Serializable {
        public static final Cnew INSTANCE = new Cnew();
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Cthis
        public boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Cthis
        public int doHash(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    /* renamed from: com.google.common.base.this$try, reason: invalid class name */
    public static final class Ctry<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Cthis<? super T> equivalence;

        @b51
        private final T reference;

        public boolean equals(@b51 Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Ctry)) {
                return false;
            }
            Ctry ctry = (Ctry) obj;
            if (this.equivalence.equals(ctry.equivalence)) {
                return this.equivalence.equivalent(this.reference, ctry.reference);
            }
            return false;
        }

        @b51
        public T get() {
            return this.reference;
        }

        public int hashCode() {
            return this.equivalence.hash(this.reference);
        }

        public String toString() {
            return this.equivalence + ".wrap(" + this.reference + ")";
        }

        private Ctry(Cthis<? super T> cthis, @b51 T t) {
            this.equivalence = (Cthis) af1.m205continue(cthis);
            this.reference = t;
        }
    }

    public static Cthis<Object> equals() {
        return Cif.INSTANCE;
    }

    public static Cthis<Object> identity() {
        return Cnew.INSTANCE;
    }

    @jd0
    public abstract boolean doEquivalent(T t, T t2);

    @jd0
    public abstract int doHash(T t);

    public final boolean equivalent(@b51 T t, @b51 T t2) {
        if (t == t2) {
            return true;
        }
        if (t == null || t2 == null) {
            return false;
        }
        return doEquivalent(t, t2);
    }

    public final Predicate<T> equivalentTo(@b51 T t) {
        return new Cfor(this, t);
    }

    public final int hash(@b51 T t) {
        if (t == null) {
            return 0;
        }
        return doHash(t);
    }

    public final <F> Cthis<F> onResultOf(Function<F, ? extends T> function) {
        return new Ccatch(function, this);
    }

    @ki0(serializable = true)
    public final <S extends T> Cthis<Iterable<S>> pairwise() {
        return new Cimport(this);
    }

    public final <S extends T> Ctry<S> wrap(@b51 S s) {
        return new Ctry<>(s);
    }
}
