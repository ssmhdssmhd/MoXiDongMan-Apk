package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import android.support.v4.v10;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;

@v10("Use Optional.of(value) or Optional.absent()")
@ki0(serializable = true)
/* renamed from: com.google.common.base.while, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cwhile<T> implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: com.google.common.base.while$do, reason: invalid class name */
    public static class Cdo implements Iterable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Iterable f13741do;

        /* renamed from: com.google.common.base.while$do$do, reason: invalid class name and collision with other inner class name */
        public class C0078do extends Cif<T> {

            /* renamed from: for, reason: not valid java name */
            private final Iterator<? extends Cwhile<? extends T>> f13742for;

            public C0078do() {
                this.f13742for = (Iterator) af1.m205continue(Cdo.this.f13741do.iterator());
            }

            @Override // com.google.common.base.Cif
            /* renamed from: do */
            public T mo15008do() {
                while (this.f13742for.hasNext()) {
                    Cwhile<? extends T> next = this.f13742for.next();
                    if (next.isPresent()) {
                        return next.get();
                    }
                }
                return m15108if();
            }
        }

        public Cdo(Iterable iterable) {
            this.f13741do = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C0078do();
        }
    }

    public static <T> Cwhile<T> absent() {
        return com.google.common.base.Cdo.withType();
    }

    public static <T> Cwhile<T> fromNullable(@b51 T t) {
        return t == null ? absent() : new Creturn(t);
    }

    public static <T> Cwhile<T> of(T t) {
        return new Creturn(af1.m205continue(t));
    }

    @o8
    public static <T> Iterable<T> presentInstances(Iterable<? extends Cwhile<? extends T>> iterable) {
        af1.m205continue(iterable);
        return new Cdo(iterable);
    }

    public abstract Set<T> asSet();

    public abstract boolean equals(@b51 Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Cwhile<T> or(Cwhile<? extends T> cwhile);

    @o8
    public abstract T or(Supplier<? extends T> supplier);

    public abstract T or(T t);

    @b51
    public abstract T orNull();

    public abstract String toString();

    public abstract <V> Cwhile<V> transform(Function<? super T, V> function);
}
