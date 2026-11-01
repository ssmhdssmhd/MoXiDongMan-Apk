package com.wsw.cospa.utils;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.wsw.cospa.utils.Ccase;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.wsw.cospa.utils.case, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccase {

    /* renamed from: case, reason: not valid java name */
    private static volatile Ccase f22559case = null;

    /* renamed from: try, reason: not valid java name */
    private static final String f22560try = "AppExecutors";

    /* renamed from: do, reason: not valid java name */
    private final ExecutorService f22561do;

    /* renamed from: for, reason: not valid java name */
    private final Executor f22562for;

    /* renamed from: if, reason: not valid java name */
    private final ExecutorService f22563if;

    /* renamed from: new, reason: not valid java name */
    private final ScheduledExecutorService f22564new;

    /* renamed from: com.wsw.cospa.utils.case$if, reason: invalid class name */
    public static class Cif implements Executor {

        /* renamed from: do, reason: not valid java name */
        private final Handler f22565do;

        private Cif() {
            this.f22565do = new Handler(Looper.getMainLooper());
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f22565do.post(runnable);
        }
    }

    public Ccase(ExecutorService executorService, ExecutorService executorService2, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f22561do = executorService;
        this.f22563if = executorService2;
        this.f22562for = executor;
        this.f22564new = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public static /* synthetic */ Thread m26709break(Runnable runnable) {
        return new Thread(runnable, "disk_executor");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ void m26711catch(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ Thread m26712class(Runnable runnable) {
        return new Thread(runnable, "network_executor");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ void m26713const(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ Thread m26715final(Runnable runnable) {
        return new Thread(runnable, "scheduled_executor");
    }

    /* renamed from: goto, reason: not valid java name */
    private static ExecutorService m26717goto() {
        return new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(1024), new ThreadFactory() { // from class: android.support.v4.p2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Ccase.m26709break(runnable);
            }
        }, new RejectedExecutionHandler() { // from class: android.support.v4.n2
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                Ccase.m26711catch(runnable, threadPoolExecutor);
            }
        });
    }

    /* renamed from: public, reason: not valid java name */
    private static ScheduledExecutorService m26720public() {
        return new ScheduledThreadPoolExecutor(16, new ThreadFactory() { // from class: android.support.v4.o2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Ccase.m26715final(runnable);
            }
        }, new RejectedExecutionHandler() { // from class: android.support.v4.l2
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                Ccase.m26721super(runnable, threadPoolExecutor);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ void m26721super(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
    }

    /* renamed from: this, reason: not valid java name */
    public static Ccase m26722this() {
        if (f22559case == null) {
            synchronized (Ccase.class) {
                if (f22559case == null) {
                    f22559case = new Ccase();
                }
            }
        }
        return f22559case;
    }

    /* renamed from: while, reason: not valid java name */
    private static ExecutorService m26724while() {
        return new ThreadPoolExecutor(3, 6, 1000L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(6), new ThreadFactory() { // from class: android.support.v4.q2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Ccase.m26712class(runnable);
            }
        }, new RejectedExecutionHandler() { // from class: android.support.v4.m2
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                Ccase.m26713const(runnable, threadPoolExecutor);
            }
        });
    }

    /* renamed from: else, reason: not valid java name */
    public ExecutorService m26725else() {
        return this.f22561do;
    }

    /* renamed from: import, reason: not valid java name */
    public ExecutorService m26726import() {
        return this.f22563if;
    }

    /* renamed from: native, reason: not valid java name */
    public ScheduledExecutorService m26727native() {
        return this.f22564new;
    }

    /* renamed from: throw, reason: not valid java name */
    public Executor m26728throw() {
        return this.f22562for;
    }

    public Ccase() {
        this(m26717goto(), m26724while(), new Cif(), m26720public());
    }
}
