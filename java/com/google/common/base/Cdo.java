package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.util.Collections;
import java.util.Set;

@ki0
/* renamed from: com.google.common.base.do, reason: invalid class name */
/* loaded from: classes.dex */
final class Cdo<T> extends Cwhile<T> {
    public static final Cdo<Object> INSTANCE = new Cdo<>();
    private static final long serialVersionUID = 0;

    private Cdo() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    public static <T> Cwhile<T> withType() {
        return INSTANCE;
    }

    @Override // com.google.common.base.Cwhile
    public Set<T> asSet() {
        return Collections.emptySet();
    }

    @Override // com.google.common.base.Cwhile
    public boolean equals(@b51 Object obj) {
        return obj == this;
    }

    @Override // com.google.common.base.Cwhile
    public T get() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Cwhile
    public int hashCode() {
        return 2040732332;
    }

    @Override // com.google.common.base.Cwhile
    public boolean isPresent() {
        return false;
    }

    @Override // com.google.common.base.Cwhile
    public T or(T t) {
        return (T) af1.m227strictfp(t, "use Optional.orNull() instead of Optional.or(null)");
    }

    @Override // com.google.common.base.Cwhile
    @b51
    public T orNull() {
        return null;
    }

    @Override // com.google.common.base.Cwhile
    public String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.common.base.Cwhile
    public <V> Cwhile<V> transform(Function<? super T, V> function) {
        af1.m205continue(function);
        return Cwhile.absent();
    }

    @Override // com.google.common.base.Cwhile
    public Cwhile<T> or(Cwhile<? extends T> cwhile) {
        return (Cwhile) af1.m205continue(cwhile);
    }

    @Override // com.google.common.base.Cwhile
    public T or(Supplier<? extends T> supplier) {
        return (T) af1.m227strictfp(supplier.get(), "use Optional.orNull() instead of a Supplier that returns null");
    }
}
