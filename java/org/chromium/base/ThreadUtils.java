package org.chromium.base;

import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import org.chromium.base.annotations.CalledByNative;

/* loaded from: classes3.dex */
public class ThreadUtils {

    /* renamed from: do, reason: not valid java name */
    private static final Object f33091do = new Object();

    /* renamed from: for, reason: not valid java name */
    private static Handler f33092for;

    /* renamed from: if, reason: not valid java name */
    private static boolean f33093if;

    /* renamed from: new, reason: not valid java name */
    private static boolean f33094new;

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ boolean f33095try = false;

    /* renamed from: org.chromium.base.ThreadUtils$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: for, reason: not valid java name */
        public static final /* synthetic */ boolean f33096for = false;

        /* renamed from: do, reason: not valid java name */
        private final long f33097do = Process.myTid();

        /* renamed from: if, reason: not valid java name */
        private boolean f33098if;

        /* renamed from: do, reason: not valid java name */
        public void m36949do() {
        }

        /* renamed from: for, reason: not valid java name */
        public void m36950for() {
            m36951if();
            this.f33098if = true;
        }

        /* renamed from: if, reason: not valid java name */
        public void m36951if() {
            m36949do();
            if (this.f33098if) {
                throw new IllegalStateException("Operation is not allowed after destroy().");
            }
        }
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public static <T> FutureTask<T> m36930break(Callable<T> callable) {
        return m36932catch(new FutureTask(callable));
    }

    /* renamed from: case, reason: not valid java name */
    public static Looper m36931case() {
        return m36947try().getLooper();
    }

    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public static <T> FutureTask<T> m36932catch(FutureTask<T> futureTask) {
        if (m36946throw()) {
            futureTask.run();
        } else {
            m36936else(futureTask);
        }
        return futureTask;
    }

    @Deprecated
    /* renamed from: class, reason: not valid java name */
    public static void m36933class(Runnable runnable) {
        if (m36946throw()) {
            runnable.run();
        } else {
            m36947try().post(runnable);
        }
    }

    @Deprecated
    /* renamed from: const, reason: not valid java name */
    public static <T> T m36934const(Callable<T> callable) throws ExecutionException {
        FutureTask futureTask = new FutureTask(callable);
        m36932catch(futureTask);
        try {
            return (T) futureTask.get();
        } catch (InterruptedException e) {
            throw new RuntimeException("Interrupted waiting for callable", e);
        }
    }

    @Deprecated
    /* renamed from: else, reason: not valid java name */
    public static <T> FutureTask<T> m36936else(FutureTask<T> futureTask) {
        m36947try().post(futureTask);
        return futureTask;
    }

    @Deprecated
    /* renamed from: final, reason: not valid java name */
    public static void m36937final(Runnable runnable) throws ExecutionException, InterruptedException {
        if (m36946throw()) {
            runnable.run();
            return;
        }
        FutureTask futureTask = new FutureTask(runnable, null);
        m36936else(futureTask);
        try {
            futureTask.get();
        } catch (Exception e) {
            throw new RuntimeException("Exception occurred while waiting for runnable", e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m36938for() {
    }

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public static void m36939goto(Runnable runnable) {
        m36947try().post(runnable);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m36940if() {
    }

    /* renamed from: import, reason: not valid java name */
    public static void m36941import(Looper looper) {
        synchronized (f33091do) {
            if (looper == null) {
                f33092for = null;
                return;
            }
            Handler handler = f33092for;
            if (handler != null && handler.getLooper() != looper) {
                throw new RuntimeException("UI thread looper is already set to " + f33092for.getLooper() + " (Main thread looper is " + Looper.getMainLooper() + "), cannot set to new looper " + looper);
            }
            f33092for = new Handler(looper);
            TraceEvent.m36955class();
        }
    }

    @CalledByNative
    private static boolean isThreadPriorityAudio(int i) {
        return Process.getThreadPriority(i) == -16;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m36942native(boolean z) {
        synchronized (f33091do) {
            f33093if = z;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m36943new() {
        if (!f33094new && !m36946throw()) {
            throw new IllegalStateException("Must be called on the UI thread.");
        }
    }

    @CalledByNative
    public static void setThreadPriorityAudio(int i) throws SecurityException, IllegalArgumentException {
        Process.setThreadPriority(i, -16);
    }

    @Deprecated
    /* renamed from: super, reason: not valid java name */
    public static <T> T m36944super(Callable<T> callable) {
        try {
            return (T) m36934const(callable);
        } catch (ExecutionException e) {
            throw new RuntimeException("Error occurred waiting for callable", e);
        }
    }

    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public static void m36945this(Runnable runnable, long j) {
        m36947try().postDelayed(runnable, j);
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m36946throw() {
        return m36947try().getLooper() == Looper.myLooper();
    }

    /* renamed from: try, reason: not valid java name */
    public static Handler m36947try() {
        boolean z;
        synchronized (f33091do) {
            if (f33092for != null) {
                z = false;
            } else {
                if (f33093if) {
                    throw new RuntimeException("Did not yet override the UI thread");
                }
                f33092for = new Handler(Looper.getMainLooper());
                z = true;
            }
        }
        if (z) {
            TraceEvent.m36955class();
        }
        return f33092for;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m36948while(boolean z) {
        f33094new = z;
    }
}
