package org.chromium.base.task;

import android.support.v4.b52;
import android.support.v4.ii0;
import android.support.v4.lo0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.chromium.base.annotations.CalledByNative;

@lo0("base")
/* loaded from: classes3.dex */
public class PostTask {

    /* renamed from: else, reason: not valid java name */
    public static final /* synthetic */ boolean f33229else = false;

    /* renamed from: for, reason: not valid java name */
    private static volatile boolean f33230for;

    /* renamed from: try, reason: not valid java name */
    private static volatile Executor f33233try;

    /* renamed from: do, reason: not valid java name */
    private static final Object f33228do = new Object();

    /* renamed from: if, reason: not valid java name */
    @ii0("sPreNativeTaskRunnerLock")
    private static List<TaskRunnerImpl> f33231if = new ArrayList();

    /* renamed from: new, reason: not valid java name */
    private static final Executor f33232new = new Cnew();

    /* renamed from: case, reason: not valid java name */
    private static AtomicReferenceArray<TaskExecutor> f33227case = m37214new();

    public interface Natives {
        void postDelayedTask(int i, boolean z, boolean z2, byte b, byte[] bArr, Runnable runnable, long j, String str);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m37203break(int i, TaskExecutor taskExecutor) {
        f33227case.set(i, taskExecutor);
    }

    /* renamed from: case, reason: not valid java name */
    private static TaskExecutor m37204case(b52 b52Var) {
        return f33227case.get(b52Var.f362new);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m37205catch() {
        f33233try = null;
    }

    /* renamed from: class, reason: not valid java name */
    public static void m37206class(b52 b52Var, Runnable runnable) {
        if (m37204case(b52Var).canRunTaskImmediately(b52Var)) {
            runnable.run();
        } else {
            m37212goto(b52Var, runnable);
        }
    }

    @Deprecated
    /* renamed from: const, reason: not valid java name */
    public static <T> T m37207const(b52 b52Var, Callable<T> callable) {
        return (T) m37215super(b52Var, new FutureTask(callable));
    }

    /* renamed from: do, reason: not valid java name */
    public static SequencedTaskRunner m37208do(b52 b52Var) {
        return m37204case(b52Var).createSequencedTaskRunner(b52Var);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m37209else(b52 b52Var, Runnable runnable, long j) {
        if (!f33230for || b52Var.f358case) {
            m37204case(b52Var).postDelayedTask(b52Var, runnable, j);
        } else {
            b52 b52VarM447case = b52Var.m447case();
            Celse.m37255if().postDelayedTask(b52VarM447case.f359do, b52VarM447case.f361if, b52VarM447case.f360for, b52VarM447case.f362new, b52VarM447case.f363try, runnable, j, runnable.getClass().getName());
        }
    }

    @Deprecated
    /* renamed from: final, reason: not valid java name */
    public static void m37210final(b52 b52Var, Runnable runnable) {
        m37215super(b52Var, new FutureTask(runnable, null));
    }

    /* renamed from: for, reason: not valid java name */
    public static TaskRunner m37211for(b52 b52Var) {
        return m37204case(b52Var).createTaskRunner(b52Var);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m37212goto(b52 b52Var, Runnable runnable) {
        m37209else(b52Var, runnable, 0L);
    }

    /* renamed from: if, reason: not valid java name */
    public static SingleThreadTaskRunner m37213if(b52 b52Var) {
        return m37204case(b52Var).createSingleThreadTaskRunner(b52Var);
    }

    /* renamed from: new, reason: not valid java name */
    private static AtomicReferenceArray<TaskExecutor> m37214new() {
        AtomicReferenceArray<TaskExecutor> atomicReferenceArray = new AtomicReferenceArray<>(5);
        atomicReferenceArray.set(0, new Ccase());
        return atomicReferenceArray;
    }

    @CalledByNative
    private static void onNativeSchedulerReady() {
        List<TaskRunnerImpl> list;
        f33230for = true;
        synchronized (f33228do) {
            list = f33231if;
            f33231if = null;
        }
        Iterator<TaskRunnerImpl> it = list.iterator();
        while (it.hasNext()) {
            it.next().mo7627try();
        }
    }

    @CalledByNative
    private static void onNativeSchedulerShutdownForTesting() {
        synchronized (f33228do) {
            f33231if = new ArrayList();
        }
        f33230for = false;
        f33227case.set(0, new Ccase());
        for (int i = 1; i < f33227case.length(); i++) {
            f33227case.set(i, null);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private static <T> T m37215super(b52 b52Var, FutureTask<T> futureTask) {
        m37206class(b52Var, futureTask);
        try {
            return futureTask.get();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m37216this(TaskRunnerImpl taskRunnerImpl) {
        synchronized (f33228do) {
            List<TaskRunnerImpl> list = f33231if;
            if (list == null) {
                return false;
            }
            list.add(taskRunnerImpl);
            return true;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m37217throw(Executor executor) {
        f33233try = executor;
    }

    /* renamed from: try, reason: not valid java name */
    public static Executor m37218try() {
        return f33233try != null ? f33233try : f33232new;
    }
}
