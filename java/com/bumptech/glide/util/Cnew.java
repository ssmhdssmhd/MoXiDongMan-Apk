package com.bumptech.glide.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* renamed from: com.bumptech.glide.util.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew {

    /* renamed from: do, reason: not valid java name */
    private static final Executor f10488do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static final Executor f10489if = new Cif();

    /* renamed from: com.bumptech.glide.util.new$do, reason: invalid class name */
    public class Cdo implements Executor {

        /* renamed from: do, reason: not valid java name */
        private final Handler f10490do = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f10490do.post(runnable);
        }
    }

    /* renamed from: com.bumptech.glide.util.new$if, reason: invalid class name */
    public class Cif implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }

    private Cnew() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Executor m12078do() {
        return f10489if;
    }

    @VisibleForTesting
    /* renamed from: for, reason: not valid java name */
    public static void m12079for(ExecutorService executorService) {
        executorService.shutdownNow();
        try {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (executorService.awaitTermination(5L, timeUnit)) {
                return;
            }
            executorService.shutdownNow();
            if (executorService.awaitTermination(5L, timeUnit)) {
            } else {
                throw new RuntimeException("Failed to shutdown");
            }
        } catch (InterruptedException e) {
            executorService.shutdownNow();
            Thread.currentThread().interrupt();
            throw new RuntimeException(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Executor m12080if() {
        return f10488do;
    }
}
