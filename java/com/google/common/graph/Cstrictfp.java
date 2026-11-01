package com.google.common.graph;

import android.support.v4.ac2;
import android.support.v4.af1;
import android.support.v4.b51;
import com.google.common.collect.Cfor;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.common.graph.strictfp, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cstrictfp<E> extends AbstractSet<E> {

    /* renamed from: do, reason: not valid java name */
    private final Map<E, ?> f15097do;

    /* renamed from: if, reason: not valid java name */
    private final Object f15098if;

    /* renamed from: com.google.common.graph.strictfp$do, reason: invalid class name */
    public class Cdo extends Cfor<E> {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Iterator f15099for;

        public Cdo(Iterator it) {
            this.f15099for = it;
        }

        @Override // com.google.common.collect.Cfor
        /* renamed from: do */
        public E mo15521do() {
            while (this.f15099for.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f15099for.next();
                if (Cstrictfp.this.f15098if.equals(entry.getValue())) {
                    return (E) entry.getKey();
                }
            }
            return m15805if();
        }
    }

    public Cstrictfp(Map<E, ?> map, Object obj) {
        this.f15097do = (Map) af1.m205continue(map);
        this.f15098if = af1.m205continue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@b51 Object obj) {
        return this.f15098if.equals(this.f15097do.get(obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public ac2<E> iterator() {
        return new Cdo(this.f15097do.entrySet().iterator());
    }
}
