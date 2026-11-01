package com.google.common.collect;

import android.support.v4.bc2;
import android.support.v4.ki0;
import android.support.v4.li0;

@ki0(emulated = true)
/* loaded from: classes2.dex */
class q2<E> extends o0<E> {
    private final r0<E> delegate;
    private final v0<? extends E> delegateList;

    public q2(r0<E> r0Var, v0<? extends E> v0Var) {
        this.delegate = r0Var;
        this.delegateList = v0Var;
    }

    @Override // com.google.common.collect.v0, com.google.common.collect.r0
    @li0
    public int copyIntoArray(Object[] objArr, int i) {
        return this.delegateList.copyIntoArray(objArr, i);
    }

    @Override // com.google.common.collect.o0
    public r0<E> delegateCollection() {
        return this.delegate;
    }

    public v0<? extends E> delegateList() {
        return this.delegateList;
    }

    @Override // java.util.List
    public E get(int i) {
        return this.delegateList.get(i);
    }

    @Override // com.google.common.collect.r0
    public Object[] internalArray() {
        return this.delegateList.internalArray();
    }

    @Override // com.google.common.collect.r0
    public int internalArrayEnd() {
        return this.delegateList.internalArrayEnd();
    }

    @Override // com.google.common.collect.r0
    public int internalArrayStart() {
        return this.delegateList.internalArrayStart();
    }

    @Override // com.google.common.collect.v0, java.util.List
    public bc2<E> listIterator(int i) {
        return this.delegateList.listIterator(i);
    }

    public q2(r0<E> r0Var, Object[] objArr) {
        this(r0Var, v0.asImmutableList(objArr));
    }

    public q2(r0<E> r0Var, Object[] objArr, int i) {
        this(r0Var, v0.asImmutableList(objArr, i));
    }
}
