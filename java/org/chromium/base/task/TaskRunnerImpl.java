package org.chromium.base.task;

import android.os.Process;
import android.support.v4.b52;
import android.support.v4.ii0;
import android.support.v4.lo0;
import android.util.Pair;
import androidx.annotation.Nullable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import org.chromium.base.TraceEvent;

@lo0("base")
/* loaded from: classes3.dex */
public class TaskRunnerImpl implements TaskRunner {

    /* renamed from: break, reason: not valid java name */
    private static final ReferenceQueue<Object> f33234break = new ReferenceQueue<>();

    /* renamed from: catch, reason: not valid java name */
    @ii0("sCleaners")
    private static final Set<Cdo> f33235catch = new HashSet();

    /* renamed from: class, reason: not valid java name */
    public static final /* synthetic */ boolean f33236class = false;

    /* renamed from: case, reason: not valid java name */
    private final Object f33237case;

    /* renamed from: do, reason: not valid java name */
    private final b52 f33238do;

    /* renamed from: else, reason: not valid java name */
    @ii0("mPreNativeTaskLock")
    private boolean f33239else;

    /* renamed from: for, reason: not valid java name */
    private final int f33240for;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    @ii0("mPreNativeTaskLock")
    private LinkedList<Runnable> f33241goto;

    /* renamed from: if, reason: not valid java name */
    private final String f33242if;

    /* renamed from: new, reason: not valid java name */
    private volatile long f33243new;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    @ii0("mPreNativeTaskLock")
    private List<Pair<Runnable, Long>> f33244this;

    /* renamed from: try, reason: not valid java name */
    public final Runnable f33245try;

    public interface Natives {
        boolean belongsToCurrentThread(long j);

        void destroy(long j);

        long init(int i, int i2, boolean z, boolean z2, byte b, byte[] bArr);

        void postDelayedTask(long j, Runnable runnable, long j2, String str);
    }

    /* renamed from: org.chromium.base.task.TaskRunnerImpl$do, reason: invalid class name */
    public static class Cdo extends WeakReference<TaskRunnerImpl> {

        /* renamed from: do, reason: not valid java name */
        public final long f33246do;

        public Cdo(TaskRunnerImpl taskRunnerImpl) {
            super(taskRunnerImpl, TaskRunnerImpl.f33234break);
            this.f33246do = taskRunnerImpl.f33243new;
        }

        /* renamed from: do, reason: not valid java name */
        public void m37224do() {
            Cthis.m37264if().destroy(this.f33246do);
        }
    }

    public TaskRunnerImpl(b52 b52Var) {
        this(b52Var, "TaskRunnerImpl", 0);
        m37222new();
    }

    @ii0("mPreNativeTaskLock")
    /* renamed from: case, reason: not valid java name */
    private void m37219case() {
        if (this.f33239else) {
            return;
        }
        this.f33239else = true;
        if (!PostTask.m37216this(this)) {
            mo7627try();
        } else {
            this.f33241goto = new LinkedList<>();
            this.f33244this = new ArrayList();
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static void m37222new() {
        while (true) {
            Cdo cdo = (Cdo) f33234break.poll();
            if (cdo == null) {
                return;
            }
            cdo.m37224do();
            Set<Cdo> set = f33235catch;
            synchronized (set) {
                set.remove(cdo);
            }
        }
    }

    /* renamed from: else */
    public void mo7626else() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        TraceEvent traceEventM36956const = TraceEvent.m36956const(this.f33242if);
        try {
            synchronized (this.f33237case) {
                LinkedList<Runnable> linkedList = this.f33241goto;
                if (linkedList == null) {
                    if (traceEventM36956const != null) {
                        traceEventM36956const.close();
                        return;
                    }
                    return;
                }
                Runnable runnablePoll = linkedList.poll();
                int i = this.f33238do.f359do;
                if (i == 1) {
                    Process.setThreadPriority(0);
                } else if (i != 2) {
                    Process.setThreadPriority(10);
                } else {
                    Process.setThreadPriority(-1);
                }
                runnablePoll.run();
                if (traceEventM36956const != null) {
                    traceEventM36956const.close();
                }
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

    /* renamed from: for, reason: not valid java name */
    public Boolean m37223for() {
        synchronized (this.f33237case) {
            m37219case();
        }
        if (this.f33243new == 0) {
            return null;
        }
        return Boolean.valueOf(Cthis.m37264if().belongsToCurrentThread(this.f33243new));
    }

    /* renamed from: goto */
    public void mo711goto() {
        PostTask.m37218try().execute(this.f33245try);
    }

    @Override // org.chromium.base.task.TaskRunner
    public void postDelayedTask(Runnable runnable, long j) {
        if (this.f33243new != 0) {
            Cthis.m37264if().postDelayedTask(this.f33243new, runnable, j, runnable.getClass().getName());
            return;
        }
        synchronized (this.f33237case) {
            m37219case();
            if (this.f33243new != 0) {
                Cthis.m37264if().postDelayedTask(this.f33243new, runnable, j, runnable.getClass().getName());
                return;
            }
            if (j == 0) {
                this.f33241goto.add(runnable);
                mo711goto();
            } else {
                this.f33244this.add(new Pair<>(runnable, Long.valueOf(j)));
            }
        }
    }

    @Override // org.chromium.base.task.TaskRunner
    public void postTask(Runnable runnable) {
        postDelayedTask(runnable, 0L);
    }

    /* renamed from: try */
    public void mo7627try() {
        Natives nativesM37264if = Cthis.m37264if();
        int i = this.f33240for;
        b52 b52Var = this.f33238do;
        long jInit = nativesM37264if.init(i, b52Var.f359do, b52Var.f361if, b52Var.f360for, b52Var.f362new, b52Var.f363try);
        synchronized (this.f33237case) {
            LinkedList<Runnable> linkedList = this.f33241goto;
            if (linkedList != null) {
                Iterator<Runnable> it = linkedList.iterator();
                while (it.hasNext()) {
                    Runnable next = it.next();
                    Cthis.m37264if().postDelayedTask(jInit, next, 0L, next.getClass().getName());
                }
                this.f33241goto = null;
            }
            List<Pair<Runnable, Long>> list = this.f33244this;
            if (list != null) {
                for (Pair<Runnable, Long> pair : list) {
                    Cthis.m37264if().postDelayedTask(jInit, (Runnable) pair.first, ((Long) pair.second).longValue(), pair.getClass().getName());
                }
                this.f33244this = null;
            }
            this.f33243new = jInit;
        }
        Set<Cdo> set = f33235catch;
        synchronized (set) {
            set.add(new Cdo(this));
        }
        m37222new();
    }

    public TaskRunnerImpl(b52 b52Var, String str, int i) {
        this.f33245try = new Runnable() { // from class: android.support.v4.z42
            @Override // java.lang.Runnable
            public final void run() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                this.f8449do.mo7626else();
            }
        };
        this.f33237case = new Object();
        this.f33238do = b52Var.m447case();
        this.f33242if = str + ".PreNativeTask.run";
        this.f33240for = i;
    }
}
