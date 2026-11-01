package org.chromium.base.task;

import android.support.v4.b52;
import android.support.v4.c02;
import android.support.v4.sw1;
import android.view.Choreographer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import org.chromium.base.ThreadUtils;

/* renamed from: org.chromium.base.task.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase implements TaskExecutor {

    /* renamed from: do, reason: not valid java name */
    private final Map<b52, TaskRunner> f33247do = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ Cif m37226for() throws Exception {
        return new Cif(Choreographer.getInstance());
    }

    /* renamed from: if, reason: not valid java name */
    private synchronized Cif m37227if() {
        return (Cif) ThreadUtils.m36944super(new Callable() { // from class: org.chromium.base.task.try
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Ccase.m37226for();
            }
        });
    }

    @Override // org.chromium.base.task.TaskExecutor
    public boolean canRunTaskImmediately(b52 b52Var) {
        return false;
    }

    @Override // org.chromium.base.task.TaskExecutor
    public SequencedTaskRunner createSequencedTaskRunner(b52 b52Var) {
        return b52Var.f358case ? m37227if() : new sw1(b52Var);
    }

    @Override // org.chromium.base.task.TaskExecutor
    public SingleThreadTaskRunner createSingleThreadTaskRunner(b52 b52Var) {
        return b52Var.f358case ? m37227if() : new c02(null, b52Var);
    }

    @Override // org.chromium.base.task.TaskExecutor
    public TaskRunner createTaskRunner(b52 b52Var) {
        return b52Var.f358case ? m37227if() : new TaskRunnerImpl(b52Var);
    }

    @Override // org.chromium.base.task.TaskExecutor
    public synchronized void postDelayedTask(b52 b52Var, Runnable runnable, long j) {
        if (b52Var.m451if()) {
            createTaskRunner(b52Var).postDelayedTask(runnable, j);
        } else {
            TaskRunner taskRunnerCreateTaskRunner = this.f33247do.get(b52Var);
            if (taskRunnerCreateTaskRunner == null) {
                taskRunnerCreateTaskRunner = createTaskRunner(b52Var);
                this.f33247do.put(b52Var, taskRunnerCreateTaskRunner);
            }
            taskRunnerCreateTaskRunner.postDelayedTask(runnable, j);
        }
    }
}
