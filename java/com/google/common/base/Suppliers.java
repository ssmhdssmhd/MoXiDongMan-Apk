package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;

@ki0
/* loaded from: classes.dex */
public final class Suppliers {

    public interface SupplierFunction<T> extends Function<Supplier<T>, T> {
    }

    /* renamed from: com.google.common.base.Suppliers$case, reason: invalid class name */
    public static class Ccase<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;

        @b51
        public final T instance;

        public Ccase(@b51 T t) {
            this.instance = t;
        }

        public boolean equals(@b51 Object obj) {
            if (obj instanceof Ccase) {
                return Cthrow.m15205do(this.instance, ((Ccase) obj).instance);
            }
            return false;
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return this.instance;
        }

        public int hashCode() {
            return Cthrow.m15206if(this.instance);
        }

        public String toString() {
            return "Suppliers.ofInstance(" + this.instance + ")";
        }
    }

    @af2
    /* renamed from: com.google.common.base.Suppliers$do, reason: invalid class name */
    public static class Cdo<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        public final Supplier<T> delegate;
        public final long durationNanos;
        public volatile transient long expirationNanos;

        @b51
        public volatile transient T value;

        public Cdo(Supplier<T> supplier, long j, TimeUnit timeUnit) {
            this.delegate = (Supplier) af1.m205continue(supplier);
            this.durationNanos = timeUnit.toNanos(j);
            af1.m224public(j > 0, "duration (%s %s) must be > 0", j, timeUnit);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            long j = this.expirationNanos;
            long jM15112class = Cnative.m15112class();
            if (j == 0 || jM15112class - j >= 0) {
                synchronized (this) {
                    if (j == this.expirationNanos) {
                        T t = this.delegate.get();
                        this.value = t;
                        long j2 = jM15112class + this.durationNanos;
                        if (j2 == 0) {
                            j2 = 1;
                        }
                        this.expirationNanos = j2;
                        return t;
                    }
                }
            }
            return this.value;
        }

        public String toString() {
            return "Suppliers.memoizeWithExpiration(" + this.delegate + ", " + this.durationNanos + ", NANOS)";
        }
    }

    /* renamed from: com.google.common.base.Suppliers$else, reason: invalid class name */
    public static class Celse<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        public final Supplier<T> delegate;

        public Celse(Supplier<T> supplier) {
            this.delegate = (Supplier) af1.m205continue(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            T t;
            synchronized (this.delegate) {
                t = this.delegate.get();
            }
            return t;
        }

        public String toString() {
            return "Suppliers.synchronizedSupplier(" + this.delegate + ")";
        }
    }

    @af2
    /* renamed from: com.google.common.base.Suppliers$for, reason: invalid class name */
    public static class Cfor<T> implements Supplier<T> {

        /* renamed from: do, reason: not valid java name */
        public volatile Supplier<T> f13642do;

        /* renamed from: for, reason: not valid java name */
        @b51
        public T f13643for;

        /* renamed from: if, reason: not valid java name */
        public volatile boolean f13644if;

        public Cfor(Supplier<T> supplier) {
            this.f13642do = (Supplier) af1.m205continue(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.f13644if) {
                synchronized (this) {
                    if (!this.f13644if) {
                        T t = this.f13642do.get();
                        this.f13643for = t;
                        this.f13644if = true;
                        this.f13642do = null;
                        return t;
                    }
                }
            }
            return this.f13643for;
        }

        public String toString() {
            Object obj = this.f13642do;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (obj == null) {
                obj = "<supplier that returned " + this.f13643for + ">";
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    @af2
    /* renamed from: com.google.common.base.Suppliers$if, reason: invalid class name */
    public static class Cif<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        public final Supplier<T> delegate;
        public volatile transient boolean initialized;

        @b51
        public transient T value;

        public Cif(Supplier<T> supplier) {
            this.delegate = (Supplier) af1.m205continue(supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    if (!this.initialized) {
                        T t = this.delegate.get();
                        this.value = t;
                        this.initialized = true;
                        return t;
                    }
                }
            }
            return this.value;
        }

        public String toString() {
            Object obj;
            StringBuilder sb = new StringBuilder();
            sb.append("Suppliers.memoize(");
            if (this.initialized) {
                obj = "<supplier that returned " + this.value + ">";
            } else {
                obj = this.delegate;
            }
            sb.append(obj);
            sb.append(")");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.base.Suppliers$new, reason: invalid class name */
    public static class Cnew<F, T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        public final Function<? super F, T> function;
        public final Supplier<F> supplier;

        public Cnew(Function<? super F, T> function, Supplier<F> supplier) {
            this.function = (Function) af1.m205continue(function);
            this.supplier = (Supplier) af1.m205continue(supplier);
        }

        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Cnew)) {
                return false;
            }
            Cnew cnew = (Cnew) obj;
            return this.function.equals(cnew.function) && this.supplier.equals(cnew.supplier);
        }

        @Override // com.google.common.base.Supplier
        public T get() {
            return this.function.apply(this.supplier.get());
        }

        public int hashCode() {
            return Cthrow.m15206if(this.function, this.supplier);
        }

        public String toString() {
            return "Suppliers.compose(" + this.function + ", " + this.supplier + ")";
        }
    }

    /* renamed from: com.google.common.base.Suppliers$try, reason: invalid class name */
    public enum Ctry implements SupplierFunction<Object> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Suppliers.supplierFunction()";
        }

        @Override // com.google.common.base.Function
        public Object apply(Supplier<Object> supplier) {
            return supplier.get();
        }
    }

    private Suppliers() {
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Supplier<T> m15013case(Supplier<T> supplier) {
        return new Celse(supplier);
    }

    /* renamed from: do, reason: not valid java name */
    public static <F, T> Supplier<T> m15014do(Function<? super F, T> function, Supplier<F> supplier) {
        return new Cnew(function, supplier);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Supplier<T> m15015for(Supplier<T> supplier, long j, TimeUnit timeUnit) {
        return new Cdo(supplier, j, timeUnit);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Supplier<T> m15016if(Supplier<T> supplier) {
        return ((supplier instanceof Cfor) || (supplier instanceof Cif)) ? supplier : supplier instanceof Serializable ? new Cif(supplier) : new Cfor(supplier);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> Supplier<T> m15017new(@b51 T t) {
        return new Ccase(t);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Function<Supplier<T>, T> m15018try() {
        return Ctry.INSTANCE;
    }
}
