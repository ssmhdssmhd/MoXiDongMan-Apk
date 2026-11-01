package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.ki0;
import java.io.Serializable;

@ki0(serializable = true)
/* loaded from: classes2.dex */
final class f2<T> extends k2<T> implements Serializable {
    private static final long serialVersionUID = 0;
    public final k2<? super T> ordering;

    public f2(k2<? super T> k2Var) {
        this.ordering = k2Var;
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(@b51 T t, @b51 T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return this.ordering.compare(t, t2);
    }

    @Override // java.util.Comparator
    public boolean equals(@b51 Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f2) {
            return this.ordering.equals(((f2) obj).ordering);
        }
        return false;
    }

    public int hashCode() {
        return this.ordering.hashCode() ^ 957692532;
    }

    @Override // com.google.common.collect.k2
    public <S extends T> k2<S> nullsFirst() {
        return this;
    }

    @Override // com.google.common.collect.k2
    public <S extends T> k2<S> nullsLast() {
        return this.ordering.nullsLast();
    }

    @Override // com.google.common.collect.k2
    public <S extends T> k2<S> reverse() {
        return this.ordering.reverse().nullsLast();
    }

    public String toString() {
        return this.ordering + ".nullsFirst()";
    }
}
