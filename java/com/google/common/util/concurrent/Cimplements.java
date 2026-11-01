package com.google.common.util.concurrent;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.ji0;
import android.support.v4.ki0;
import android.support.v4.lf;
import android.support.v4.li0;
import android.support.v4.o8;
import com.google.common.base.Cextends;
import com.google.common.base.Supplier;
import com.google.common.collect.m2;
import com.google.common.collect.x1;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.Cfinally;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ki0(emulated = true)
/* renamed from: com.google.common.util.concurrent.implements, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cimplements {

    @af2
    @li0
    /* renamed from: com.google.common.util.concurrent.implements$case, reason: invalid class name */
    public static class Ccase {

        /* renamed from: com.google.common.util.concurrent.implements$case$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ExecutorService f15818do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ TimeUnit f15819for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ long f15820if;

            public Cdo(ExecutorService executorService, long j, TimeUnit timeUnit) {
                this.f15818do = executorService;
                this.f15820if = j;
                this.f15819for = timeUnit;
            }

            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                try {
                    this.f15818do.shutdown();
                    this.f15818do.awaitTermination(this.f15820if, this.f15819for);
                } catch (InterruptedException unused) {
                }
            }
        }

        /* renamed from: case, reason: not valid java name */
        public final ScheduledExecutorService m18235case(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
            Cimplements.m18229static(scheduledThreadPoolExecutor);
            ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            m18236do(scheduledThreadPoolExecutor, j, timeUnit);
            return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
        }

        /* renamed from: do, reason: not valid java name */
        public final void m18236do(ExecutorService executorService, long j, TimeUnit timeUnit) {
            af1.m205continue(executorService);
            af1.m205continue(timeUnit);
            m18238if(Cimplements.m18220final("DelayedShutdownHook-for-" + executorService, new Cdo(executorService, j, timeUnit)));
        }

        /* renamed from: for, reason: not valid java name */
        public final ExecutorService m18237for(ThreadPoolExecutor threadPoolExecutor) {
            return m18239new(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        @af2
        /* renamed from: if, reason: not valid java name */
        public void m18238if(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }

        /* renamed from: new, reason: not valid java name */
        public final ExecutorService m18239new(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
            Cimplements.m18229static(threadPoolExecutor);
            ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            m18236do(threadPoolExecutor, j, timeUnit);
            return executorServiceUnconfigurableExecutorService;
        }

        /* renamed from: try, reason: not valid java name */
        public final ScheduledExecutorService m18240try(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return m18235case(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }
    }

    /* renamed from: com.google.common.util.concurrent.implements$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ BlockingQueue f15822do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ListenableFuture f15823if;

        public Cdo(BlockingQueue blockingQueue, ListenableFuture listenableFuture) {
            this.f15822do = blockingQueue;
            this.f15823if = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15822do.add(this.f15823if);
        }
    }

    /* renamed from: com.google.common.util.concurrent.implements$for, reason: invalid class name */
    public static class Cfor extends n {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Supplier f15827if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(ExecutorService executorService, Supplier supplier) {
            super(executorService);
            this.f15827if = supplier;
        }

        @Override // com.google.common.util.concurrent.n
        /* renamed from: do, reason: not valid java name */
        public Runnable mo18243do(Runnable runnable) {
            return Cconst.m18105new(runnable, this.f15827if);
        }

        @Override // com.google.common.util.concurrent.n
        /* renamed from: if, reason: not valid java name */
        public <T> Callable<T> mo18244if(Callable<T> callable) {
            return Cconst.m18106try(callable, this.f15827if);
        }
    }

    @li0
    /* renamed from: com.google.common.util.concurrent.implements$goto, reason: invalid class name */
    public static class Cgoto extends com.google.common.util.concurrent.Cnew {

        /* renamed from: do, reason: not valid java name */
        private final ExecutorService f15828do;

        public Cgoto(ExecutorService executorService) {
            this.f15828do = (ExecutorService) af1.m205continue(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f15828do.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f15828do.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.f15828do.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.f15828do.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f15828do.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.f15828do.shutdownNow();
        }
    }

    /* renamed from: com.google.common.util.concurrent.implements$if, reason: invalid class name */
    public static class Cif implements Executor {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Executor f15829do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Supplier f15830if;

        public Cif(Executor executor, Supplier supplier) {
            this.f15829do = executor;
            this.f15830if = supplier;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f15829do.execute(Cconst.m18105new(runnable, this.f15830if));
        }
    }

    /* renamed from: com.google.common.util.concurrent.implements$new, reason: invalid class name */
    public static class Cnew extends o {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Supplier f15831for;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(ScheduledExecutorService scheduledExecutorService, Supplier supplier) {
            super(scheduledExecutorService);
            this.f15831for = supplier;
        }

        @Override // com.google.common.util.concurrent.n
        /* renamed from: do */
        public Runnable mo18243do(Runnable runnable) {
            return Cconst.m18105new(runnable, this.f15831for);
        }

        @Override // com.google.common.util.concurrent.n
        /* renamed from: if */
        public <T> Callable<T> mo18244if(Callable<T> callable) {
            return Cconst.m18106try(callable, this.f15831for);
        }
    }

    @li0
    /* renamed from: com.google.common.util.concurrent.implements$this, reason: invalid class name */
    public static final class Cthis extends Cgoto implements ListeningScheduledExecutorService {

        /* renamed from: if, reason: not valid java name */
        public final ScheduledExecutorService f15832if;

        /* renamed from: com.google.common.util.concurrent.implements$this$do, reason: invalid class name */
        public static final class Cdo<V> extends Cfinally.Cdo<V> implements ListenableScheduledFuture<V> {

            /* renamed from: if, reason: not valid java name */
            private final ScheduledFuture<?> f15833if;

            public Cdo(ListenableFuture<V> listenableFuture, ScheduledFuture<?> scheduledFuture) {
                super(listenableFuture);
                this.f15833if = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.Cextends, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.f15833if.cancel(z);
                }
                return zCancel;
            }

            @Override // java.lang.Comparable
            /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
            public int compareTo(Delayed delayed) {
                return this.f15833if.compareTo(delayed);
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.f15833if.getDelay(timeUnit);
            }
        }

        @li0
        /* renamed from: com.google.common.util.concurrent.implements$this$if, reason: invalid class name */
        public static final class Cif extends AbstractFuture.Cthis<Void> implements Runnable {

            /* renamed from: this, reason: not valid java name */
            private final Runnable f15834this;

            public Cif(Runnable runnable) {
                this.f15834this = (Runnable) af1.m205continue(runnable);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f15834this.run();
                } catch (Throwable th) {
                    mo17980private(th);
                    throw Cextends.m15066while(th);
                }
            }
        }

        public Cthis(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f15832if = (ScheduledExecutorService) af1.m205continue(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            Cif cif = new Cif(runnable);
            return new Cdo(cif, this.f15832if.scheduleAtFixedRate(cif, j, j2, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            Cif cif = new Cif(runnable);
            return new Cdo(cif, this.f15832if.scheduleWithFixedDelay(cif, j, j2, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            k kVarB = k.b(runnable, null);
            return new Cdo(kVarB, this.f15832if.schedule(kVarB, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            k kVarC = k.c(callable);
            return new Cdo(kVarC, this.f15832if.schedule(kVarC, j, timeUnit));
        }
    }

    /* renamed from: com.google.common.util.concurrent.implements$try, reason: invalid class name */
    public static class Ctry implements Executor {

        /* renamed from: do, reason: not valid java name */
        public boolean f15835do = true;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ AbstractFuture f15836for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Executor f15837if;

        /* renamed from: com.google.common.util.concurrent.implements$try$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Runnable f15838do;

            public Cdo(Runnable runnable) {
                this.f15838do = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Ctry.this.f15835do = false;
                this.f15838do.run();
            }
        }

        public Ctry(Executor executor, AbstractFuture abstractFuture) {
            this.f15837if = executor;
            this.f15836for = abstractFuture;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.f15837if.execute(new Cdo(runnable));
            } catch (RejectedExecutionException e) {
                if (this.f15835do) {
                    this.f15836for.mo17980private(e);
                }
            }
        }
    }

    private Cimplements() {
    }

    @li0
    /* renamed from: break, reason: not valid java name */
    public static ListeningExecutorService m18213break(ExecutorService executorService) {
        if (executorService instanceof ListeningExecutorService) {
            return (ListeningExecutorService) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new Cthis((ScheduledExecutorService) executorService) : new Cgoto(executorService);
    }

    @li0
    @o8
    /* renamed from: case, reason: not valid java name */
    public static ScheduledExecutorService m18214case(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new Ccase().m18240try(scheduledThreadPoolExecutor);
    }

    @li0
    /* renamed from: catch, reason: not valid java name */
    public static ListeningScheduledExecutorService m18215catch(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof ListeningScheduledExecutorService ? (ListeningScheduledExecutorService) scheduledExecutorService : new Cthis(scheduledExecutorService);
    }

    @li0
    /* renamed from: class, reason: not valid java name */
    public static ListeningExecutorService m18216class() {
        return new Celse(null);
    }

    @li0
    @o8
    /* renamed from: const, reason: not valid java name */
    public static Executor m18217const(Executor executor) {
        return new c(executor);
    }

    @li0
    @o8
    /* renamed from: else, reason: not valid java name */
    public static ScheduledExecutorService m18219else(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
        return new Ccase().m18235case(scheduledThreadPoolExecutor, j, timeUnit);
    }

    @li0
    /* renamed from: final, reason: not valid java name */
    public static Thread m18220final(String str, Runnable runnable) {
        af1.m205continue(str);
        af1.m205continue(runnable);
        Thread threadNewThread = m18230super().newThread(runnable);
        try {
            threadNewThread.setName(str);
        } catch (SecurityException unused) {
        }
        return threadNewThread;
    }

    /* renamed from: for, reason: not valid java name */
    public static Executor m18221for() {
        return Cthrow.INSTANCE;
    }

    @li0
    /* renamed from: goto, reason: not valid java name */
    public static <T> T m18222goto(ListeningExecutorService listeningExecutorService, Collection<? extends Callable<T>> collection, boolean z, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long jNanoTime;
        long jNanoTime2;
        af1.m205continue(listeningExecutorService);
        af1.m205continue(timeUnit);
        int size = collection.size();
        af1.m220new(size > 0);
        ArrayList arrayListM16512return = x1.m16512return(size);
        LinkedBlockingQueue linkedBlockingQueueM16039catch = m2.m16039catch();
        long nanos = timeUnit.toNanos(j);
        if (z) {
            try {
                jNanoTime = System.nanoTime();
            } catch (Throwable th) {
                Iterator it = arrayListM16512return.iterator();
                while (it.hasNext()) {
                    ((Future) it.next()).cancel(true);
                }
                throw th;
            }
        } else {
            jNanoTime = 0;
        }
        Iterator<? extends Callable<T>> it2 = collection.iterator();
        arrayListM16512return.add(m18228return(listeningExecutorService, it2.next(), linkedBlockingQueueM16039catch));
        int i = size - 1;
        ExecutionException executionException = null;
        int i2 = 1;
        while (true) {
            Future future = (Future) linkedBlockingQueueM16039catch.poll();
            if (future != null) {
                jNanoTime2 = jNanoTime;
            } else {
                if (i > 0) {
                    i--;
                    arrayListM16512return.add(m18228return(listeningExecutorService, it2.next(), linkedBlockingQueueM16039catch));
                    i2++;
                } else {
                    if (i2 == 0) {
                        if (executionException == null) {
                            throw new ExecutionException((Throwable) null);
                        }
                        throw executionException;
                    }
                    if (z) {
                        future = (Future) linkedBlockingQueueM16039catch.poll(nanos, TimeUnit.NANOSECONDS);
                        if (future == null) {
                            throw new TimeoutException();
                        }
                        jNanoTime2 = System.nanoTime();
                        nanos -= jNanoTime2 - jNanoTime;
                    } else {
                        future = (Future) linkedBlockingQueueM16039catch.take();
                    }
                }
                jNanoTime2 = jNanoTime;
            }
            long j2 = nanos;
            int i3 = i;
            if (future != null) {
                i2--;
                try {
                    T t = (T) future.get();
                    Iterator it3 = arrayListM16512return.iterator();
                    while (it3.hasNext()) {
                        ((Future) it3.next()).cancel(true);
                    }
                    return t;
                } catch (RuntimeException e) {
                    executionException = new ExecutionException(e);
                } catch (ExecutionException e2) {
                    executionException = e2;
                }
            }
            i = i3;
            nanos = j2;
            jNanoTime = jNanoTime2;
        }
    }

    @li0
    @o8
    /* renamed from: if, reason: not valid java name */
    public static void m18223if(ExecutorService executorService, long j, TimeUnit timeUnit) {
        new Ccase().m18236do(executorService, j, timeUnit);
    }

    @li0
    /* renamed from: import, reason: not valid java name */
    public static ExecutorService m18224import(ExecutorService executorService, Supplier<String> supplier) {
        af1.m205continue(executorService);
        af1.m205continue(supplier);
        return new Cfor(executorService, supplier);
    }

    @li0
    /* renamed from: native, reason: not valid java name */
    public static ScheduledExecutorService m18225native(ScheduledExecutorService scheduledExecutorService, Supplier<String> supplier) {
        af1.m205continue(scheduledExecutorService);
        af1.m205continue(supplier);
        return new Cnew(scheduledExecutorService, supplier);
    }

    @li0
    @o8
    /* renamed from: new, reason: not valid java name */
    public static ExecutorService m18226new(ThreadPoolExecutor threadPoolExecutor) {
        return new Ccase().m18237for(threadPoolExecutor);
    }

    @lf
    @li0
    @o8
    /* renamed from: public, reason: not valid java name */
    public static boolean m18227public(ExecutorService executorService, long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j) / 2;
        executorService.shutdown();
        try {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (!executorService.awaitTermination(nanos, timeUnit2)) {
                executorService.shutdownNow();
                executorService.awaitTermination(nanos, timeUnit2);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }

    @li0
    /* renamed from: return, reason: not valid java name */
    private static <T> ListenableFuture<T> m18228return(ListeningExecutorService listeningExecutorService, Callable<T> callable, BlockingQueue<Future<T>> blockingQueue) {
        ListenableFuture<T> listenableFutureSubmit = listeningExecutorService.submit((Callable) callable);
        listenableFutureSubmit.addListener(new Cdo(blockingQueue, listenableFutureSubmit), m18221for());
        return listenableFutureSubmit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @li0
    /* renamed from: static, reason: not valid java name */
    public static void m18229static(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new i().m18204try(true).m18201goto(threadPoolExecutor.getThreadFactory()).m18202if());
    }

    @li0
    @o8
    /* renamed from: super, reason: not valid java name */
    public static ThreadFactory m18230super() {
        if (!m18231this()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e3);
        } catch (InvocationTargetException e4) {
            throw Cextends.m15066while(e4.getCause());
        }
    }

    @li0
    /* renamed from: this, reason: not valid java name */
    private static boolean m18231this() throws ClassNotFoundException {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            Class.forName("com.google.appengine.api.utils.SystemProperty");
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static Executor m18232throw(Executor executor, AbstractFuture<?> abstractFuture) {
        af1.m205continue(executor);
        af1.m205continue(abstractFuture);
        return executor == m18221for() ? executor : new Ctry(executor, abstractFuture);
    }

    @li0
    @o8
    /* renamed from: try, reason: not valid java name */
    public static ExecutorService m18233try(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
        return new Ccase().m18239new(threadPoolExecutor, j, timeUnit);
    }

    @li0
    /* renamed from: while, reason: not valid java name */
    public static Executor m18234while(Executor executor, Supplier<String> supplier) {
        af1.m205continue(executor);
        af1.m205continue(supplier);
        return new Cif(executor, supplier);
    }

    @li0
    /* renamed from: com.google.common.util.concurrent.implements$else, reason: invalid class name */
    public static final class Celse extends com.google.common.util.concurrent.Cnew {

        /* renamed from: do, reason: not valid java name */
        private final Object f15824do;

        /* renamed from: for, reason: not valid java name */
        @ji0("lock")
        private boolean f15825for;

        /* renamed from: if, reason: not valid java name */
        @ji0("lock")
        private int f15826if;

        private Celse() {
            this.f15824do = new Object();
            this.f15826if = 0;
            this.f15825for = false;
        }

        /* renamed from: do, reason: not valid java name */
        private void m18241do() {
            synchronized (this.f15824do) {
                int i = this.f15826if - 1;
                this.f15826if = i;
                if (i == 0) {
                    this.f15824do.notifyAll();
                }
            }
        }

        /* renamed from: if, reason: not valid java name */
        private void m18242if() {
            synchronized (this.f15824do) {
                if (this.f15825for) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.f15826if++;
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            long nanos = timeUnit.toNanos(j);
            synchronized (this.f15824do) {
                while (true) {
                    if (this.f15825for && this.f15826if == 0) {
                        return true;
                    }
                    if (nanos <= 0) {
                        return false;
                    }
                    long jNanoTime = System.nanoTime();
                    TimeUnit.NANOSECONDS.timedWait(this.f15824do, nanos);
                    nanos -= System.nanoTime() - jNanoTime;
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            m18242if();
            try {
                runnable.run();
            } finally {
                m18241do();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            boolean z;
            synchronized (this.f15824do) {
                z = this.f15825for;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            boolean z;
            synchronized (this.f15824do) {
                z = this.f15825for && this.f15826if == 0;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            synchronized (this.f15824do) {
                this.f15825for = true;
                if (this.f15826if == 0) {
                    this.f15824do.notifyAll();
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }

        public /* synthetic */ Celse(Cdo cdo) {
            this();
        }
    }
}
