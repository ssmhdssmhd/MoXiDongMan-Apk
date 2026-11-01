package com.google.common.collect;

import android.support.v4.b51;
import android.support.v4.fs0;
import android.support.v4.ki0;
import android.support.v4.li0;
import com.google.common.collect.Multiset;
import com.google.common.collect.c1;
import com.google.common.primitives.Cthis;
import java.io.Serializable;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
class u2<E> extends c1<E> {
    public static final u2<Object> EMPTY = new u2<>(i2.m15876for());
    public final transient i2<E> contents;

    /* renamed from: new, reason: not valid java name */
    private final transient int f14745new;

    /* renamed from: try, reason: not valid java name */
    @fs0
    private transient g1<E> f14746try;

    @li0
    /* renamed from: com.google.common.collect.u2$for, reason: invalid class name */
    public static class Cfor implements Serializable {
        private static final long serialVersionUID = 0;
        public final int[] counts;
        public final Object[] elements;

        public Cfor(Multiset<?> multiset) {
            int size = multiset.entrySet().size();
            this.elements = new Object[size];
            this.counts = new int[size];
            int i = 0;
            for (Multiset.Entry<?> entry : multiset.entrySet()) {
                this.elements[i] = entry.getElement();
                this.counts[i] = entry.getCount();
                i++;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object readResolve() {
            c1.Cif cif = new c1.Cif(this.elements.length);
            int i = 0;
            while (true) {
                Object[] objArr = this.elements;
                if (i >= objArr.length) {
                    return cif.mo15642try();
                }
                cif.mo15632catch(objArr[i], this.counts[i]);
                i++;
            }
        }
    }

    /* renamed from: com.google.common.collect.u2$if, reason: invalid class name */
    public final class Cif extends p1<E> {
        private Cif() {
        }

        @Override // com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@b51 Object obj) {
            return u2.this.contains(obj);
        }

        @Override // com.google.common.collect.p1
        public E get(int i) {
            return u2.this.contents.m15884break(i);
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return u2.this.contents.m15883abstract();
        }
    }

    public u2(i2<E> i2Var) {
        this.contents = i2Var;
        long jM15886class = 0;
        for (int i = 0; i < i2Var.m15883abstract(); i++) {
            jM15886class += i2Var.m15886class(i);
        }
        this.f14745new = Cthis.m17704throws(jM15886class);
    }

    @Override // com.google.common.collect.Multiset
    public int count(@b51 Object obj) {
        return this.contents.m15889else(obj);
    }

    @Override // com.google.common.collect.c1
    public Multiset.Entry<E> getEntry(int i) {
        return this.contents.m15892goto(i);
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return this.f14745new;
    }

    @Override // com.google.common.collect.c1, com.google.common.collect.r0
    @li0
    public Object writeReplace() {
        return new Cfor(this);
    }

    @Override // com.google.common.collect.c1, com.google.common.collect.Multiset
    public g1<E> elementSet() {
        g1<E> g1Var = this.f14746try;
        if (g1Var != null) {
            return g1Var;
        }
        Cif cif = new Cif();
        this.f14746try = cif;
        return cif;
    }
}
