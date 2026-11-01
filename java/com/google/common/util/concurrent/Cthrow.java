package com.google.common.util.concurrent;

import android.support.v4.ki0;
import java.util.concurrent.Executor;

@ki0
/* renamed from: com.google.common.util.concurrent.throw, reason: invalid class name */
/* loaded from: classes2.dex */
enum Cthrow implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
