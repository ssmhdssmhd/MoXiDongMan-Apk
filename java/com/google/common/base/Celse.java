package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.fs0;
import android.support.v4.jd0;
import android.support.v4.ki0;
import android.support.v4.l01;
import android.support.v4.lf;
import java.io.Serializable;
import java.util.Iterator;

@ki0
/* renamed from: com.google.common.base.else, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Celse<A, B> implements Function<A, B> {

    /* renamed from: do, reason: not valid java name */
    @fs0
    @l01
    private transient Celse<B, A> f13649do;
    private final boolean handleNullAutomatically;

    /* renamed from: com.google.common.base.else$do, reason: invalid class name */
    public class Cdo implements Iterable<B> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterable f13650do;

        /* renamed from: com.google.common.base.else$do$do, reason: invalid class name and collision with other inner class name */
        public class C0074do implements Iterator<B> {

            /* renamed from: do, reason: not valid java name */
            private final Iterator<? extends A> f13652do;

            public C0074do() {
                this.f13652do = Cdo.this.f13650do.iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f13652do.hasNext();
            }

            @Override // java.util.Iterator
            public B next() {
                return (B) Celse.this.convert(this.f13652do.next());
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f13652do.remove();
            }
        }

        public Cdo(Iterable iterable) {
            this.f13650do = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<B> iterator() {
            return new C0074do();
        }
    }

    /* renamed from: com.google.common.base.else$for, reason: invalid class name */
    public static final class Cfor<A, B> extends Celse<A, B> implements Serializable {
        private final Function<? super B, ? extends A> backwardFunction;
        private final Function<? super A, ? extends B> forwardFunction;

        public /* synthetic */ Cfor(Function function, Function function2, Cdo cdo) {
            this(function, function2);
        }

        @Override // com.google.common.base.Celse
        public A doBackward(B b) {
            return this.backwardFunction.apply(b);
        }

        @Override // com.google.common.base.Celse
        public B doForward(A a) {
            return this.forwardFunction.apply(a);
        }

        @Override // com.google.common.base.Celse, com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Cfor)) {
                return false;
            }
            Cfor cfor = (Cfor) obj;
            return this.forwardFunction.equals(cfor.forwardFunction) && this.backwardFunction.equals(cfor.backwardFunction);
        }

        public int hashCode() {
            return (this.forwardFunction.hashCode() * 31) + this.backwardFunction.hashCode();
        }

        public String toString() {
            return "Converter.from(" + this.forwardFunction + ", " + this.backwardFunction + ")";
        }

        private Cfor(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
            this.forwardFunction = (Function) af1.m205continue(function);
            this.backwardFunction = (Function) af1.m205continue(function2);
        }
    }

    /* renamed from: com.google.common.base.else$if, reason: invalid class name */
    public static final class Cif<A, B, C> extends Celse<A, C> implements Serializable {
        private static final long serialVersionUID = 0;
        public final Celse<A, B> first;
        public final Celse<B, C> second;

        public Cif(Celse<A, B> celse, Celse<B, C> celse2) {
            this.first = celse;
            this.second = celse2;
        }

        @Override // com.google.common.base.Celse
        @b51
        public A correctedDoBackward(@b51 C c) {
            return (A) this.first.correctedDoBackward(this.second.correctedDoBackward(c));
        }

        @Override // com.google.common.base.Celse
        @b51
        public C correctedDoForward(@b51 A a) {
            return (C) this.second.correctedDoForward(this.first.correctedDoForward(a));
        }

        @Override // com.google.common.base.Celse
        public A doBackward(C c) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Celse
        public C doForward(A a) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Celse, com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Cif)) {
                return false;
            }
            Cif cif = (Cif) obj;
            return this.first.equals(cif.first) && this.second.equals(cif.second);
        }

        public int hashCode() {
            return (this.first.hashCode() * 31) + this.second.hashCode();
        }

        public String toString() {
            return this.first + ".andThen(" + this.second + ")";
        }
    }

    /* renamed from: com.google.common.base.else$new, reason: invalid class name */
    public static final class Cnew<T> extends Celse<T, T> implements Serializable {
        public static final Cnew<?> INSTANCE = new Cnew<>();
        private static final long serialVersionUID = 0;

        private Cnew() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Celse
        public <S> Celse<T, S> doAndThen(Celse<T, S> celse) {
            return (Celse) af1.m227strictfp(celse, "otherConverter");
        }

        @Override // com.google.common.base.Celse
        public T doBackward(T t) {
            return t;
        }

        @Override // com.google.common.base.Celse
        public T doForward(T t) {
            return t;
        }

        @Override // com.google.common.base.Celse
        public Cnew<T> reverse() {
            return this;
        }

        public String toString() {
            return "Converter.identity()";
        }
    }

    /* renamed from: com.google.common.base.else$try, reason: invalid class name */
    public static final class Ctry<A, B> extends Celse<B, A> implements Serializable {
        private static final long serialVersionUID = 0;
        public final Celse<A, B> original;

        public Ctry(Celse<A, B> celse) {
            this.original = celse;
        }

        @Override // com.google.common.base.Celse
        @b51
        public B correctedDoBackward(@b51 A a) {
            return this.original.correctedDoForward(a);
        }

        @Override // com.google.common.base.Celse
        @b51
        public A correctedDoForward(@b51 B b) {
            return this.original.correctedDoBackward(b);
        }

        @Override // com.google.common.base.Celse
        public B doBackward(A a) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Celse
        public A doForward(B b) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Celse, com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Ctry) {
                return this.original.equals(((Ctry) obj).original);
            }
            return false;
        }

        public int hashCode() {
            return this.original.hashCode() ^ (-1);
        }

        @Override // com.google.common.base.Celse
        public Celse<A, B> reverse() {
            return this.original;
        }

        public String toString() {
            return this.original + ".reverse()";
        }
    }

    public Celse() {
        this(true);
    }

    public static <A, B> Celse<A, B> from(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
        return new Cfor(function, function2, null);
    }

    public static <T> Celse<T, T> identity() {
        return Cnew.INSTANCE;
    }

    public final <C> Celse<A, C> andThen(Celse<B, C> celse) {
        return doAndThen(celse);
    }

    @Override // com.google.common.base.Function
    @lf
    @b51
    @Deprecated
    public final B apply(@b51 A a) {
        return convert(a);
    }

    @lf
    @b51
    public final B convert(@b51 A a) {
        return correctedDoForward(a);
    }

    @lf
    public Iterable<B> convertAll(Iterable<? extends A> iterable) {
        af1.m227strictfp(iterable, "fromIterable");
        return new Cdo(iterable);
    }

    @b51
    public A correctedDoBackward(@b51 B b) {
        if (!this.handleNullAutomatically) {
            return doBackward(b);
        }
        if (b == null) {
            return null;
        }
        return (A) af1.m205continue(doBackward(b));
    }

    @b51
    public B correctedDoForward(@b51 A a) {
        if (!this.handleNullAutomatically) {
            return doForward(a);
        }
        if (a == null) {
            return null;
        }
        return (B) af1.m205continue(doForward(a));
    }

    public <C> Celse<A, C> doAndThen(Celse<B, C> celse) {
        return new Cif(this, (Celse) af1.m205continue(celse));
    }

    @jd0
    public abstract A doBackward(B b);

    @jd0
    public abstract B doForward(A a);

    @Override // com.google.common.base.Function
    public boolean equals(@b51 Object obj) {
        return super.equals(obj);
    }

    @lf
    public Celse<B, A> reverse() {
        Celse<B, A> celse = this.f13649do;
        if (celse != null) {
            return celse;
        }
        Ctry ctry = new Ctry(this);
        this.f13649do = ctry;
        return ctry;
    }

    public Celse(boolean z) {
        this.handleNullAutomatically = z;
    }
}
