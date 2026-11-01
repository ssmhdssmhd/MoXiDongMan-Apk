package com.google.common.collect;

import android.support.v4.af1;
import android.support.v4.ki0;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Queue;

@ki0
/* renamed from: com.google.common.collect.implements, reason: invalid class name */
/* loaded from: classes2.dex */
class Cimplements<T> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    private final Queue<T> f14344for;

    public Cimplements(T... tArr) {
        ArrayDeque arrayDeque = new ArrayDeque(tArr.length);
        this.f14344for = arrayDeque;
        Collections.addAll(arrayDeque, tArr);
    }

    @Override // com.google.common.collect.Cfor
    /* renamed from: do */
    public T mo15521do() {
        return this.f14344for.isEmpty() ? m15805if() : this.f14344for.remove();
    }

    public Cimplements(Queue<T> queue) {
        this.f14344for = (Queue) af1.m205continue(queue);
    }
}
