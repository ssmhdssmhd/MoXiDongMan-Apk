package com.google.common.util.concurrent;

import android.support.v4.lf;
import android.support.v4.li0;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@lf
@li0
/* loaded from: classes2.dex */
abstract class o extends n implements ScheduledExecutorService {

    /* renamed from: if, reason: not valid java name */
    public final ScheduledExecutorService f15869if;

    public o(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f15869if = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        return this.f15869if.schedule(mo18243do(runnable), j, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.f15869if.scheduleAtFixedRate(mo18243do(runnable), j, j2, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return this.f15869if.scheduleWithFixedDelay(mo18243do(runnable), j, j2, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
        return this.f15869if.schedule(mo18244if(callable), j, timeUnit);
    }
}
