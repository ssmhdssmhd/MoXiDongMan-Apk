package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.li0;
import android.support.v4.o8;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;

@li0
@o8
/* renamed from: com.google.common.util.concurrent.protected, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cprotected {

    /* renamed from: com.google.common.util.concurrent.protected$do, reason: invalid class name */
    public static class Cdo<V> extends Cextends<V> implements ListenableFuture<V> {

        /* renamed from: case, reason: not valid java name */
        private static final Executor f15889case;

        /* renamed from: try, reason: not valid java name */
        private static final ThreadFactory f15890try;

        /* renamed from: do, reason: not valid java name */
        private final Executor f15891do;

        /* renamed from: for, reason: not valid java name */
        private final AtomicBoolean f15892for;

        /* renamed from: if, reason: not valid java name */
        private final Cwhile f15893if;

        /* renamed from: new, reason: not valid java name */
        private final Future<V> f15894new;

        /* renamed from: com.google.common.util.concurrent.protected$do$do, reason: invalid class name and collision with other inner class name */
        public class RunnableC0154do implements Runnable {
            public RunnableC0154do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    m.m18259new(Cdo.this.f15894new);
                } catch (Throwable unused) {
                }
                Cdo.this.f15893if.m18390if();
            }
        }

        static {
            ThreadFactory threadFactoryM18202if = new i().m18204try(true).m18199case("ListenableFutureAdapter-thread-%d").m18202if();
            f15890try = threadFactoryM18202if;
            f15889case = Executors.newCachedThreadPool(threadFactoryM18202if);
        }

        public Cdo(Future<V> future) {
            this(future, f15889case);
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            this.f15893if.m18389do(runnable, executor);
            if (this.f15892for.compareAndSet(false, true)) {
                if (this.f15894new.isDone()) {
                    this.f15893if.m18390if();
                } else {
                    this.f15891do.execute(new RunnableC0154do());
                }
            }
        }

        @Override // com.google.common.util.concurrent.Cextends, android.support.v4.ae0
        /* renamed from: do */
        public Future<V> delegate() {
            return this.f15894new;
        }

        public Cdo(Future<V> future, Executor executor) {
            this.f15893if = new Cwhile();
            this.f15892for = new AtomicBoolean(false);
            this.f15894new = (Future) af1.m205continue(future);
            this.f15891do = (Executor) af1.m205continue(executor);
        }
    }

    private Cprotected() {
    }

    /* renamed from: do, reason: not valid java name */
    public static <V> ListenableFuture<V> m18304do(Future<V> future) {
        return future instanceof ListenableFuture ? (ListenableFuture) future : new Cdo(future);
    }

    /* renamed from: if, reason: not valid java name */
    public static <V> ListenableFuture<V> m18305if(Future<V> future, Executor executor) {
        af1.m205continue(executor);
        return future instanceof ListenableFuture ? (ListenableFuture) future : new Cdo(future, executor);
    }
}
