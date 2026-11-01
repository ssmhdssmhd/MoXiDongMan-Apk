package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.l01;
import java.io.Serializable;

@ki0(serializable = true)
/* loaded from: classes2.dex */
final class e2 extends k2<Comparable> implements Serializable {
    public static final e2 INSTANCE = new e2();
    private static final long serialVersionUID = 0;

    /* renamed from: do, reason: not valid java name */
    @l01
    private transient k2<Comparable> f14234do;

    /* renamed from: if, reason: not valid java name */
    @l01
    private transient k2<Comparable> f14235if;

    private e2() {
    }

    private Object readResolve() {
        return INSTANCE;
    }

    @Override // com.google.common.collect.k2
    public <S extends Comparable> k2<S> nullsFirst() {
        k2<S> k2Var = (k2<S>) this.f14234do;
        if (k2Var != null) {
            return k2Var;
        }
        k2<S> k2VarNullsFirst = super.nullsFirst();
        this.f14234do = k2VarNullsFirst;
        return k2VarNullsFirst;
    }

    @Override // com.google.common.collect.k2
    public <S extends Comparable> k2<S> nullsLast() {
        k2<S> k2Var = (k2<S>) this.f14235if;
        if (k2Var != null) {
            return k2Var;
        }
        k2<S> k2VarNullsLast = super.nullsLast();
        this.f14235if = k2VarNullsLast;
        return k2VarNullsLast;
    }

    @Override // com.google.common.collect.k2
    public <S extends Comparable> k2<S> reverse() {
        return z2.INSTANCE;
    }

    public String toString() {
        return "Ordering.natural()";
    }

    @Override // com.google.common.collect.k2, java.util.Comparator
    public int compare(Comparable comparable, Comparable comparable2) {
        af1.m205continue(comparable);
        af1.m205continue(comparable2);
        return comparable.compareTo(comparable2);
    }
}
