package com.google.common.collect;

import android.support.v4.ac2;
import android.support.v4.ki0;
import android.support.v4.li0;

@ki0(emulated = true)
/* loaded from: classes2.dex */
abstract class p1<E> extends g1<E> {

    /* renamed from: com.google.common.collect.p1$do, reason: invalid class name */
    public class Cdo extends v0<E> {
        public Cdo() {
        }

        @Override // java.util.List
        public E get(int i) {
            return (E) p1.this.get(i);
        }

        @Override // com.google.common.collect.r0
        public boolean isPartialView() {
            return p1.this.isPartialView();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return p1.this.size();
        }
    }

    @Override // com.google.common.collect.r0
    @li0
    public int copyIntoArray(Object[] objArr, int i) {
        return asList().copyIntoArray(objArr, i);
    }

    @Override // com.google.common.collect.g1
    public v0<E> createAsList() {
        return new Cdo();
    }

    public abstract E get(int i);

    @Override // com.google.common.collect.g1, com.google.common.collect.r0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public ac2<E> iterator() {
        return asList().iterator();
    }
}
