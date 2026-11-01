package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import java.util.Collections;
import java.util.Set;

@ki0
/* renamed from: com.google.common.base.return, reason: invalid class name */
/* loaded from: classes.dex */
final class Creturn<T> extends Cwhile<T> {
    private static final long serialVersionUID = 0;
    private final T reference;

    public Creturn(T t) {
        this.reference = t;
    }

    @Override // com.google.common.base.Cwhile
    public Set<T> asSet() {
        return Collections.singleton(this.reference);
    }

    @Override // com.google.common.base.Cwhile
    public boolean equals(@b51 Object obj) {
        if (obj instanceof Creturn) {
            return this.reference.equals(((Creturn) obj).reference);
        }
        return false;
    }

    @Override // com.google.common.base.Cwhile
    public T get() {
        return this.reference;
    }

    @Override // com.google.common.base.Cwhile
    public int hashCode() {
        return this.reference.hashCode() + 1502476572;
    }

    @Override // com.google.common.base.Cwhile
    public boolean isPresent() {
        return true;
    }

    @Override // com.google.common.base.Cwhile
    public T or(T t) {
        af1.m227strictfp(t, "use Optional.orNull() instead of Optional.or(null)");
        return this.reference;
    }

    @Override // com.google.common.base.Cwhile
    public T orNull() {
        return this.reference;
    }

    @Override // com.google.common.base.Cwhile
    public String toString() {
        return "Optional.of(" + this.reference + ")";
    }

    @Override // com.google.common.base.Cwhile
    public <V> Cwhile<V> transform(Function<? super T, V> function) {
        return new Creturn(af1.m227strictfp(function.apply(this.reference), "the Function passed to Optional.transform() must not return null."));
    }

    @Override // com.google.common.base.Cwhile
    public Cwhile<T> or(Cwhile<? extends T> cwhile) {
        af1.m205continue(cwhile);
        return this;
    }

    @Override // com.google.common.base.Cwhile
    public T or(Supplier<? extends T> supplier) {
        af1.m205continue(supplier);
        return this.reference;
    }
}
