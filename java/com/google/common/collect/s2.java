package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.ki0;

@ki0(emulated = true, serializable = true)
/* loaded from: classes2.dex */
class s2<E> extends v0<E> {
    public static final v0<Object> EMPTY = new s2(new Object[0], 0);

    @af2
    public final transient Object[] array;

    /* renamed from: for, reason: not valid java name */
    private final transient int f14620for;

    public s2(Object[] objArr, int i) {
        this.array = objArr;
        this.f14620for = i;
    }

    @Override // com.google.common.collect.v0, com.google.common.collect.r0
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.array, 0, objArr, i, this.f14620for);
        return i + this.f14620for;
    }

    @Override // java.util.List
    public E get(int i) {
        af1.m222private(i, this.f14620for);
        return (E) this.array[i];
    }

    @Override // com.google.common.collect.r0
    public Object[] internalArray() {
        return this.array;
    }

    @Override // com.google.common.collect.r0
    public int internalArrayEnd() {
        return this.f14620for;
    }

    @Override // com.google.common.collect.r0
    public int internalArrayStart() {
        return 0;
    }

    @Override // com.google.common.collect.r0
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f14620for;
    }
}
