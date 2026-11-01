package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.collect.g1;
import com.google.common.collect.s1;
import java.util.AbstractSet;
import java.util.Map;

/* renamed from: com.google.common.graph.throw, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cthrow<E> extends AbstractSet<E> {

    /* renamed from: do, reason: not valid java name */
    private final Map<?, E> f15101do;

    /* renamed from: if, reason: not valid java name */
    private final Object f15102if;

    public Cthrow(Map<?, E> map, Object obj) {
        this.f15101do = (Map) af1.m205continue(map);
        this.f15102if = af1.m205continue(obj);
    }

    @b51
    /* renamed from: do, reason: not valid java name */
    private E m16832do() {
        return this.f15101do.get(this.f15102if);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@b51 Object obj) {
        E eM16832do = m16832do();
        return eM16832do != null && eM16832do.equals(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public ac2<E> iterator() {
        E eM16832do = m16832do();
        return eM16832do == null ? g1.of().iterator() : s1.l(eM16832do);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return m16832do() == null ? 0 : 1;
    }
}
