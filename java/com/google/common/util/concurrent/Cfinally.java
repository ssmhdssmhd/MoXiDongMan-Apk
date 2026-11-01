package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.ki0;
import android.support.v4.lf;
import java.util.concurrent.Executor;

@lf
@ki0
/* renamed from: com.google.common.util.concurrent.finally, reason: invalid class name */
/* loaded from: classes2.dex */
public abstract class Cfinally<V> extends Cextends<V> implements ListenableFuture<V> {

    /* renamed from: com.google.common.util.concurrent.finally$do, reason: invalid class name */
    public static abstract class Cdo<V> extends Cfinally<V> {

        /* renamed from: do, reason: not valid java name */
        private final ListenableFuture<V> f15753do;

        public Cdo(ListenableFuture<V> listenableFuture) {
            this.f15753do = (ListenableFuture) af1.m205continue(listenableFuture);
        }

        @Override // com.google.common.util.concurrent.Cfinally, com.google.common.util.concurrent.Cextends
        /* renamed from: if, reason: merged with bridge method [inline-methods] */
        public final ListenableFuture<V> delegate() {
            return this.f15753do;
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        delegate().addListener(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.Cextends
    /* renamed from: if, reason: not valid java name */
    public abstract ListenableFuture<? extends V> delegate();
}
