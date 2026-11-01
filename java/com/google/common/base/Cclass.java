package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;
import java.util.Map;

@ki0
/* renamed from: com.google.common.base.class, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cclass {

    /* renamed from: com.google.common.base.class$case, reason: invalid class name */
    public enum Ccase implements Function<Object, Object> {
        INSTANCE;

        @Override // com.google.common.base.Function
        @b51
        public Object apply(@b51 Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.identity()";
        }
    }

    /* renamed from: com.google.common.base.class$else, reason: invalid class name */
    public static class Celse<T> implements Function<T, Boolean>, Serializable {
        private static final long serialVersionUID = 0;
        private final Predicate<T> predicate;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.Function
        public /* bridge */ /* synthetic */ Boolean apply(@b51 Object obj) {
            return apply((Celse<T>) obj);
        }

        @Override // com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Celse) {
                return this.predicate.equals(((Celse) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        public String toString() {
            return "Functions.forPredicate(" + this.predicate + ")";
        }

        private Celse(Predicate<T> predicate) {
            this.predicate = (Predicate) af1.m205continue(predicate);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Function
        public Boolean apply(@b51 T t) {
            return Boolean.valueOf(this.predicate.apply(t));
        }
    }

    /* renamed from: com.google.common.base.class$for, reason: invalid class name */
    public static class Cfor<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;

        @b51
        public final V defaultValue;
        public final Map<K, ? extends V> map;

        public Cfor(Map<K, ? extends V> map, @b51 V v) {
            this.map = (Map) af1.m205continue(map);
            this.defaultValue = v;
        }

        @Override // com.google.common.base.Function
        public V apply(@b51 K k) {
            V v = this.map.get(k);
            return (v != null || this.map.containsKey(k)) ? v : this.defaultValue;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Cfor)) {
                return false;
            }
            Cfor cfor = (Cfor) obj;
            return this.map.equals(cfor.map) && Cthrow.m15205do(this.defaultValue, cfor.defaultValue);
        }

        public int hashCode() {
            return Cthrow.m15206if(this.map, this.defaultValue);
        }

        public String toString() {
            return "Functions.forMap(" + this.map + ", defaultValue=" + this.defaultValue + ")";
        }
    }

    /* renamed from: com.google.common.base.class$goto, reason: invalid class name */
    public static class Cgoto<T> implements Function<Object, T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Supplier<T> supplier;

        @Override // com.google.common.base.Function
        public T apply(@b51 Object obj) {
            return this.supplier.get();
        }

        @Override // com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cgoto) {
                return this.supplier.equals(((Cgoto) obj).supplier);
            }
            return false;
        }

        public int hashCode() {
            return this.supplier.hashCode();
        }

        public String toString() {
            return "Functions.forSupplier(" + this.supplier + ")";
        }

        private Cgoto(Supplier<T> supplier) {
            this.supplier = (Supplier) af1.m205continue(supplier);
        }
    }

    /* renamed from: com.google.common.base.class$if, reason: invalid class name */
    public static class Cif<E> implements Function<Object, E>, Serializable {
        private static final long serialVersionUID = 0;

        @b51
        private final E value;

        public Cif(@b51 E e) {
            this.value = e;
        }

        @Override // com.google.common.base.Function
        public E apply(@b51 Object obj) {
            return this.value;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Cif) {
                return Cthrow.m15205do(this.value, ((Cif) obj).value);
            }
            return false;
        }

        public int hashCode() {
            E e = this.value;
            if (e == null) {
                return 0;
            }
            return e.hashCode();
        }

        public String toString() {
            return "Functions.constant(" + this.value + ")";
        }
    }

    /* renamed from: com.google.common.base.class$new, reason: invalid class name */
    public static class Cnew<A, B, C> implements Function<A, C>, Serializable {
        private static final long serialVersionUID = 0;
        private final Function<A, ? extends B> f;
        private final Function<B, C> g;

        public Cnew(Function<B, C> function, Function<A, ? extends B> function2) {
            this.g = (Function) af1.m205continue(function);
            this.f = (Function) af1.m205continue(function2);
        }

        @Override // com.google.common.base.Function
        public C apply(@b51 A a) {
            return (C) this.g.apply(this.f.apply(a));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (!(obj instanceof Cnew)) {
                return false;
            }
            Cnew cnew = (Cnew) obj;
            return this.f.equals(cnew.f) && this.g.equals(cnew.g);
        }

        public int hashCode() {
            return this.f.hashCode() ^ this.g.hashCode();
        }

        public String toString() {
            return this.g + "(" + this.f + ")";
        }
    }

    /* renamed from: com.google.common.base.class$this, reason: invalid class name */
    public enum Cthis implements Function<Object, String> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return "Functions.toStringFunction()";
        }

        @Override // com.google.common.base.Function
        public String apply(Object obj) {
            af1.m205continue(obj);
            return obj.toString();
        }
    }

    /* renamed from: com.google.common.base.class$try, reason: invalid class name */
    public static class Ctry<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        public final Map<K, V> map;

        public Ctry(Map<K, V> map) {
            this.map = (Map) af1.m205continue(map);
        }

        @Override // com.google.common.base.Function
        public V apply(@b51 K k) {
            V v = this.map.get(k);
            af1.m225return(v != null || this.map.containsKey(k), "Key '%s' not present in map", k);
            return v;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@b51 Object obj) {
            if (obj instanceof Ctry) {
                return this.map.equals(((Ctry) obj).map);
            }
            return false;
        }

        public int hashCode() {
            return this.map.hashCode();
        }

        public String toString() {
            return "Functions.forMap(" + this.map + ")";
        }
    }

    private Cclass() {
    }

    /* renamed from: case, reason: not valid java name */
    public static <T> Function<Object, T> m15019case(Supplier<T> supplier) {
        return new Cgoto(supplier);
    }

    /* renamed from: do, reason: not valid java name */
    public static <A, B, C> Function<A, C> m15020do(Function<B, C> function, Function<A, ? extends B> function2) {
        return new Cnew(function, function2);
    }

    /* renamed from: else, reason: not valid java name */
    public static <E> Function<E, E> m15021else() {
        return Ccase.INSTANCE;
    }

    /* renamed from: for, reason: not valid java name */
    public static <K, V> Function<K, V> m15022for(Map<K, V> map) {
        return new Ctry(map);
    }

    /* renamed from: goto, reason: not valid java name */
    public static Function<Object, String> m15023goto() {
        return Cthis.INSTANCE;
    }

    /* renamed from: if, reason: not valid java name */
    public static <E> Function<Object, E> m15024if(@b51 E e) {
        return new Cif(e);
    }

    /* renamed from: new, reason: not valid java name */
    public static <K, V> Function<K, V> m15025new(Map<K, ? extends V> map, @b51 V v) {
        return new Cfor(map, v);
    }

    /* renamed from: try, reason: not valid java name */
    public static <T> Function<T, Boolean> m15026try(Predicate<T> predicate) {
        return new Celse(predicate);
    }
}
