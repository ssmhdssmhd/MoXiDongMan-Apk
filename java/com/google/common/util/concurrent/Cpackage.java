package com.google.common.util.concurrent;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

/* renamed from: com.google.common.util.concurrent.package, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cpackage implements Lock {
    /* renamed from: do */
    public abstract Lock mo18191do();

    @Override // java.util.concurrent.locks.Lock
    public void lock() {
        mo18191do().lock();
    }

    @Override // java.util.concurrent.locks.Lock
    public void lockInterruptibly() throws InterruptedException {
        mo18191do().lockInterruptibly();
    }

    @Override // java.util.concurrent.locks.Lock
    public Condition newCondition() {
        return mo18191do().newCondition();
    }

    @Override // java.util.concurrent.locks.Lock
    public boolean tryLock() {
        return mo18191do().tryLock();
    }

    @Override // java.util.concurrent.locks.Lock
    public void unlock() {
        mo18191do().unlock();
    }

    @Override // java.util.concurrent.locks.Lock
    public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
        return mo18191do().tryLock(j, timeUnit);
    }
}
