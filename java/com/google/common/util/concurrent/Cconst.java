package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.b51;
import android.support.v4.ki0;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Supplier;
import java.util.concurrent.Callable;

@ki0(emulated = true)
/* renamed from: com.google.common.util.concurrent.const, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cconst {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.util.concurrent.const$do, reason: invalid class name */
    public static class Cdo<T> implements Callable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f15707do;

        public Cdo(Object obj) {
            this.f15707do = obj;
        }

        @Override // java.util.concurrent.Callable
        public T call() {
            return (T) this.f15707do;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.util.concurrent.const$for, reason: invalid class name */
    public static class Cfor<T> implements Callable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Supplier f15708do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Callable f15709if;

        public Cfor(Supplier supplier, Callable callable) {
            this.f15708do = supplier;
            this.f15709if = callable;
        }

        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            boolean zM18101case = Cconst.m18101case((String) this.f15708do.get(), threadCurrentThread);
            try {
                return (T) this.f15709if.call();
            } finally {
                if (zM18101case) {
                    Cconst.m18101case(name, threadCurrentThread);
                }
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.util.concurrent.const$if, reason: invalid class name */
    public static class Cif<T> implements AsyncCallable<T> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ListeningExecutorService f15710do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Callable f15711if;

        public Cif(ListeningExecutorService listeningExecutorService, Callable callable) {
            this.f15710do = listeningExecutorService;
            this.f15711if = callable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            return this.f15710do.submit((Callable) this.f15711if);
        }
    }

    /* renamed from: com.google.common.util.concurrent.const$new, reason: invalid class name */
    public static class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Supplier f15712do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Runnable f15713if;

        public Cnew(Supplier supplier, Runnable runnable) {
            this.f15712do = supplier;
            this.f15713if = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            boolean zM18101case = Cconst.m18101case((String) this.f15712do.get(), threadCurrentThread);
            try {
                this.f15713if.run();
            } finally {
                if (zM18101case) {
                    Cconst.m18101case(name, threadCurrentThread);
                }
            }
        }
    }

    private Cconst() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @li0
    /* renamed from: case, reason: not valid java name */
    public static boolean m18101case(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Callable<T> m18103for(@b51 T t) {
        return new Cdo(t);
    }

    @li0
    @o8
    /* renamed from: if, reason: not valid java name */
    public static <T> AsyncCallable<T> m18104if(Callable<T> callable, ListeningExecutorService listeningExecutorService) {
        af1.m205continue(callable);
        af1.m205continue(listeningExecutorService);
        return new Cif(listeningExecutorService, callable);
    }

    @li0
    /* renamed from: new, reason: not valid java name */
    public static Runnable m18105new(Runnable runnable, Supplier<String> supplier) {
        af1.m205continue(supplier);
        af1.m205continue(runnable);
        return new Cnew(supplier, runnable);
    }

    @li0
    /* renamed from: try, reason: not valid java name */
    public static <T> Callable<T> m18106try(Callable<T> callable, Supplier<String> supplier) {
        af1.m205continue(supplier);
        af1.m205continue(callable);
        return new Cfor(supplier, callable);
    }
}
