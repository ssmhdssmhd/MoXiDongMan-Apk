package org.chromium.base.task;

import android.support.v4.b52;

/* loaded from: classes3.dex */
public interface TaskExecutor {
    boolean canRunTaskImmediately(b52 b52Var);

    SequencedTaskRunner createSequencedTaskRunner(b52 b52Var);

    SingleThreadTaskRunner createSingleThreadTaskRunner(b52 b52Var);

    TaskRunner createTaskRunner(b52 b52Var);

    void postDelayedTask(b52 b52Var, Runnable runnable, long j);
}
