package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import com.google.common.base.Cthrow;
import com.google.common.base.Function;
import java.io.Serializable;

@ki0(serializable = true)
/* renamed from: com.google.common.collect.switch, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cswitch<F, T> extends k2<F> implements Serializable {
    private static final long serialVersionUID = 0;
    public final Function<F, ? extends T> function;
    public final k2<T> ordering;

    public Cswitch(Function<F, ? extends T> function, k2<T> k2Var) {
        this.function = (Function) af1.m205continue(function);
        this.ordering = (k2) af1.m205continue(k2Var);
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(F f, F f2) {
        return this.ordering.compare(this.function.apply(f), this.function.apply(f2));
    }

    @Override // java.util.Comparator
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cswitch)) {
            return false;
        }
        Cswitch cswitch = (Cswitch) obj;
        return this.function.equals(cswitch.function) && this.ordering.equals(cswitch.ordering);
    }

    public int hashCode() {
        return Cthrow.m15206if(this.function, this.ordering);
    }

    public String toString() {
        return this.ordering + ".onResultOf(" + this.function + ")";
    }
}
