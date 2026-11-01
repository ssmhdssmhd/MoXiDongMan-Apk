package org.chromium.base.task;

import android.os.AsyncTask;
import android.os.Binder;
import android.support.v4.b52;
import android.support.v4.q6;
import android.support.v4.rv0;
import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.lang3.Ctry;
import org.chromium.base.ThreadUtils;
import org.chromium.base.TraceEvent;
import org.chromium.base.annotations.DoNotInline;
import org.chromium.base.task.Cdo;

/* renamed from: org.chromium.base.task.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo<Result> {

    /* renamed from: case, reason: not valid java name */
    private static final String f33248case = "AsyncTask";

    /* renamed from: else, reason: not valid java name */
    public static final Executor f33249else = new Executor() { // from class: android.support.v4.d4
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            Cdo.m37238native(runnable);
        }
    };

    /* renamed from: goto, reason: not valid java name */
    public static final Executor f33250goto = new Cgoto();

    /* renamed from: this, reason: not valid java name */
    private static final Cnew f33251this = new Cnew(null);

    /* renamed from: do, reason: not valid java name */
    private final Callable<Result> f33252do;

    /* renamed from: if, reason: not valid java name */
    private final Cdo<Result>.Cif f33254if;

    /* renamed from: for, reason: not valid java name */
    private volatile int f33253for = 0;

    /* renamed from: new, reason: not valid java name */
    private final AtomicBoolean f33255new = new AtomicBoolean();

    /* renamed from: try, reason: not valid java name */
    private final AtomicBoolean f33256try = new AtomicBoolean();

    /* renamed from: org.chromium.base.task.do$do, reason: invalid class name and collision with other inner class name */
    public class CallableC0475do implements Callable<Result> {
        public CallableC0475do() {
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            Cdo.this.f33256try.set(true);
            Result result = null;
            try {
                result = (Result) Cdo.this.m37250this();
                Binder.flushPendingCommands();
                return result;
            } finally {
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: org.chromium.base.task.do$for, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cfor {
        public static final int H6 = 0;
        public static final int I6 = 1;
        public static final int J6 = 2;
    }

    /* renamed from: org.chromium.base.task.do$if, reason: invalid class name */
    public class Cif extends FutureTask<Result> {
        public Cif(Callable<Result> callable) {
            super(callable);
        }

        /* renamed from: do, reason: not valid java name */
        public Class m37253do() {
            return Cdo.this.getClass();
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                Cdo.this.m37230default(get());
            } catch (InterruptedException e) {
                rv0.m7150const(Cdo.f33248case, e.toString(), new Object[0]);
            } catch (CancellationException unused) {
                Cdo.this.m37230default(null);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
            }
        }

        @Override // java.util.concurrent.FutureTask, java.util.concurrent.RunnableFuture, java.lang.Runnable
        public void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            TraceEvent traceEventM36956const = TraceEvent.m36956const("AsyncTask.run: " + Cdo.this.f33254if.m37253do());
            try {
                super.run();
                if (traceEventM36956const != null) {
                    traceEventM36956const.close();
                }
            } catch (Throwable th) {
                if (traceEventM36956const != null) {
                    try {
                        traceEventM36956const.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
    }

    /* renamed from: org.chromium.base.task.do$new, reason: invalid class name */
    public static class Cnew implements RejectedExecutionHandler {
        private Cnew() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            Cdo.f33249else.execute(runnable);
        }

        public /* synthetic */ Cnew(CallableC0475do callableC0475do) {
            this();
        }
    }

    public Cdo() {
        CallableC0475do callableC0475do = new CallableC0475do();
        this.f33252do = callableC0475do;
        this.f33254if = new Cif(callableC0475do);
    }

    /* renamed from: const, reason: not valid java name */
    private void m37229const() {
        if (this.f33253for != 0) {
            int i = this.f33253for;
            if (i == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.f33253for = 1;
        m37249switch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public void m37230default(Result result) {
        if (this.f33256try.get()) {
            return;
        }
        m37240throws(result);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m37233extends() {
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) AsyncTask.THREAD_POOL_EXECUTOR;
        threadPoolExecutor.setRejectedExecutionHandler(f33251this);
        threadPoolExecutor.shutdown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public void m37237import(Result result) {
        if (m37252while()) {
            m37247return(result);
        } else {
            mo6419static(result);
        }
        this.f33253for = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public static /* synthetic */ void m37238native(Runnable runnable) {
        PostTask.m37212goto(b52.f344catch, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public void m37240throws(final Result result) {
        if (this instanceof q6) {
            this.f33253for = 2;
        } else {
            ThreadUtils.m36939goto(new Runnable() { // from class: android.support.v4.c4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f587do.m37237import(result);
                }
            });
        }
    }

    @MainThread
    /* renamed from: break, reason: not valid java name */
    public final Cdo<Result> m37242break(Executor executor) {
        m37229const();
        executor.execute(this.f33254if);
        return this;
    }

    @MainThread
    /* renamed from: catch, reason: not valid java name */
    public final Cdo<Result> m37243catch(TaskRunner taskRunner) {
        m37229const();
        taskRunner.postTask(this.f33254if);
        return this;
    }

    @MainThread
    /* renamed from: class, reason: not valid java name */
    public final Cdo<Result> m37244class(b52 b52Var) {
        m37229const();
        PostTask.m37212goto(b52Var, this.f33254if);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m37245goto(boolean z) {
        this.f33255new.set(true);
        return this.f33254if.cancel(z);
    }

    @MainThread
    /* renamed from: public, reason: not valid java name */
    public void m37246public() {
    }

    @MainThread
    /* renamed from: return, reason: not valid java name */
    public void m37247return(Result result) {
        m37246public();
    }

    @MainThread
    /* renamed from: static */
    public abstract void mo6419static(Result result);

    @DoNotInline
    /* renamed from: super, reason: not valid java name */
    public final Result m37248super() throws ExecutionException, IllegalAccessException, InterruptedException, IllegalArgumentException, InvocationTargetException {
        String str;
        if (m37251throw() == 2 || !ThreadUtils.m36946throw()) {
            return this.f33254if.get();
        }
        StackTraceElement[] stackTrace = new Exception().getStackTrace();
        if (stackTrace.length > 1) {
            str = stackTrace[1].getClassName() + Ctry.f28883do + stackTrace[1].getMethodName() + Ctry.f28883do;
        } else {
            str = "";
        }
        TraceEvent traceEventM36956const = TraceEvent.m36956const(str + "AsyncTask.get");
        try {
            Result result = this.f33254if.get();
            if (traceEventM36956const == null) {
                return result;
            }
            traceEventM36956const.close();
            return result;
        } catch (Throwable th) {
            if (traceEventM36956const != null) {
                try {
                    traceEventM36956const.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @MainThread
    /* renamed from: switch, reason: not valid java name */
    public void m37249switch() {
    }

    @WorkerThread
    /* renamed from: this, reason: not valid java name */
    public abstract Result m37250this();

    /* renamed from: throw, reason: not valid java name */
    public final int m37251throw() {
        return this.f33253for;
    }

    /* renamed from: while, reason: not valid java name */
    public final boolean m37252while() {
        return this.f33255new.get();
    }
}
