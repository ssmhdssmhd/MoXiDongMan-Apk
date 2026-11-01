package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.o8;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

@o8
/* renamed from: com.google.common.util.concurrent.import, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cimport {

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<ListenableFuture<Object>> f15840do = new AtomicReference<>(Cprivate.m18266class(null));

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.util.concurrent.import$do, reason: invalid class name */
    public class Cdo<T> implements AsyncCallable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Callable f15841do;

        public Cdo(Callable callable) {
            this.f15841do = callable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            return Cprivate.m18266class(this.f15841do.call());
        }

        public String toString() {
            return this.f15841do.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.import$for, reason: invalid class name */
    public class Cfor implements Executor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ListenableFuture f15843do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Executor f15845if;

        public Cfor(ListenableFuture listenableFuture, Executor executor) {
            this.f15843do = listenableFuture;
            this.f15845if = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f15843do.addListener(runnable, this.f15845if);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.util.concurrent.import$if, reason: invalid class name */
    public class Cif<T> implements AsyncCallable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicReference f15846do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AsyncCallable f15848if;

        public Cif(AtomicReference atomicReference, AsyncCallable asyncCallable) {
            this.f15846do = atomicReference;
            this.f15848if = asyncCallable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            return !this.f15846do.compareAndSet(Ctry.NOT_RUN, Ctry.STARTED) ? Cprivate.m18263break() : this.f15848if.call();
        }

        public String toString() {
            return this.f15848if.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.import$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ListenableFuture f15850do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AtomicReference f15851for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ListenableFuture f15852if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ e f15853new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ ListenableFuture f15854try;

        public Cnew(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, AtomicReference atomicReference, e eVar, ListenableFuture listenableFuture3) {
            this.f15850do = listenableFuture;
            this.f15852if = listenableFuture2;
            this.f15851for = atomicReference;
            this.f15853new = eVar;
            this.f15854try = listenableFuture3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f15850do.isDone() || (this.f15852if.isCancelled() && this.f15851for.compareAndSet(Ctry.NOT_RUN, Ctry.CANCELLED))) {
                this.f15853new.mo17975abstract(this.f15854try);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.import$try, reason: invalid class name */
    public enum Ctry {
        NOT_RUN,
        CANCELLED,
        STARTED
    }

    private Cimport() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Cimport m18246do() {
        return new Cimport();
    }

    /* renamed from: for, reason: not valid java name */
    public <T> ListenableFuture<T> m18247for(AsyncCallable<T> asyncCallable, Executor executor) {
        af1.m205continue(asyncCallable);
        AtomicReference atomicReference = new AtomicReference(Ctry.NOT_RUN);
        Cif cif = new Cif(atomicReference, asyncCallable);
        e eVarM18143strictfp = e.m18143strictfp();
        ListenableFuture<Object> andSet = this.f15840do.getAndSet(eVarM18143strictfp);
        ListenableFuture listenableFutureM18278native = Cprivate.m18278native(cif, new Cfor(andSet, executor));
        ListenableFuture<T> listenableFutureM18285super = Cprivate.m18285super(listenableFutureM18278native);
        Cnew cnew = new Cnew(listenableFutureM18278native, listenableFutureM18285super, atomicReference, eVarM18143strictfp, andSet);
        listenableFutureM18285super.addListener(cnew, Cimplements.m18221for());
        listenableFutureM18278native.addListener(cnew, Cimplements.m18221for());
        return listenableFutureM18285super;
    }

    /* renamed from: if, reason: not valid java name */
    public <T> ListenableFuture<T> m18248if(Callable<T> callable, Executor executor) {
        af1.m205continue(callable);
        return m18247for(new Cdo(callable), executor);
    }
}
