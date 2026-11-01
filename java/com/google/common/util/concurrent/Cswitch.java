package com.google.common.util.concurrent;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;

/* renamed from: com.google.common.util.concurrent.switch, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cswitch implements Condition {
    @Override // java.util.concurrent.locks.Condition
    public void await() throws InterruptedException {
        mo18189do().await();
    }

    @Override // java.util.concurrent.locks.Condition
    public long awaitNanos(long j) throws InterruptedException {
        return mo18189do().awaitNanos(j);
    }

    @Override // java.util.concurrent.locks.Condition
    public void awaitUninterruptibly() {
        mo18189do().awaitUninterruptibly();
    }

    @Override // java.util.concurrent.locks.Condition
    public boolean awaitUntil(Date date) throws InterruptedException {
        return mo18189do().awaitUntil(date);
    }

    /* renamed from: do */
    public abstract Condition mo18189do();

    @Override // java.util.concurrent.locks.Condition
    public void signal() {
        mo18189do().signal();
    }

    @Override // java.util.concurrent.locks.Condition
    public void signalAll() {
        mo18189do().signalAll();
    }

    @Override // java.util.concurrent.locks.Condition
    public boolean await(long j, TimeUnit timeUnit) throws InterruptedException {
        return mo18189do().await(j, timeUnit);
    }
}
