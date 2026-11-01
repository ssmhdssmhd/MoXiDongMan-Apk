package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.o8;
import java.io.Serializable;

@ki0
@o8
/* renamed from: com.google.common.base.catch, reason: invalid class name */
/* loaded from: classes.dex */
final class Ccatch<F, T> extends Cthis<F> implements Serializable {
    private static final long serialVersionUID = 0;
    private final Function<F, ? extends T> function;
    private final Cthis<T> resultEquivalence;

    public Ccatch(Function<F, ? extends T> function, Cthis<T> cthis) {
        this.function = (Function) af1.m205continue(function);
        this.resultEquivalence = (Cthis) af1.m205continue(cthis);
    }

    @Override // com.google.common.base.Cthis
    public boolean doEquivalent(F f, F f2) {
        return this.resultEquivalence.equivalent(this.function.apply(f), this.function.apply(f2));
    }

    @Override // com.google.common.base.Cthis
    public int doHash(F f) {
        return this.resultEquivalence.hash(this.function.apply(f));
    }

    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ccatch)) {
            return false;
        }
        Ccatch ccatch = (Ccatch) obj;
        return this.function.equals(ccatch.function) && this.resultEquivalence.equals(ccatch.resultEquivalence);
    }

    public int hashCode() {
        return Cthrow.m15206if(this.function, this.resultEquivalence);
    }

    public String toString() {
        return this.resultEquivalence + ".onResultOf(" + this.function + ")";
    }
}
