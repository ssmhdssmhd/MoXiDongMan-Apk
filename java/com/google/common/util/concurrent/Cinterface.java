package com.google.common.util.concurrent;

import android.support.v4.b51;
import android.support.v4.gm1;
import android.support.v4.ki0;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

@gm1(gm1.Cdo.FULL)
@ki0(emulated = true)
/* renamed from: com.google.common.util.concurrent.interface, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cinterface<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: do, reason: not valid java name */
    private static final Runnable f15856do;

    /* renamed from: for, reason: not valid java name */
    private static final Runnable f15857for;

    /* renamed from: if, reason: not valid java name */
    private static final Runnable f15858if;

    /* renamed from: new, reason: not valid java name */
    private static final int f15859new = 1000;

    /* renamed from: com.google.common.util.concurrent.interface$if, reason: invalid class name */
    public static final class Cif implements Runnable {
        private Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    static {
        f15856do = new Cif();
        f15858if = new Cif();
        f15857for = new Cif();
    }

    public abstract void afterRanInterruptibly(@b51 T t, @b51 Throwable th);

    public final void interruptTask() {
        Runnable runnable = get();
        if ((runnable instanceof Thread) && compareAndSet(runnable, f15858if)) {
            try {
                ((Thread) runnable).interrupt();
            } finally {
                if (getAndSet(f15856do) == f15857for) {
                    LockSupport.unpark((Thread) runnable);
                }
            }
        }
    }

    public abstract boolean isDone();

    @Override // java.lang.Runnable
    public final void run() {
        T tRunInterruptibly;
        Thread threadCurrentThread = Thread.currentThread();
        if (compareAndSet(null, threadCurrentThread)) {
            boolean z = !isDone();
            if (z) {
                try {
                    tRunInterruptibly = runInterruptibly();
                } catch (Throwable th) {
                    if (!compareAndSet(threadCurrentThread, f15856do)) {
                        Runnable runnable = get();
                        boolean z2 = false;
                        int i = 0;
                        while (true) {
                            Runnable runnable2 = f15858if;
                            if (runnable != runnable2 && runnable != f15857for) {
                                break;
                            }
                            i++;
                            if (i > 1000) {
                                Runnable runnable3 = f15857for;
                                if (runnable == runnable3 || compareAndSet(runnable2, runnable3)) {
                                    z2 = Thread.interrupted() || z2;
                                    LockSupport.park(this);
                                }
                            } else {
                                Thread.yield();
                            }
                            runnable = get();
                        }
                        if (z2) {
                            threadCurrentThread.interrupt();
                        }
                    }
                    if (z) {
                        afterRanInterruptibly(null, th);
                        return;
                    }
                    return;
                }
            } else {
                tRunInterruptibly = null;
            }
            if (!compareAndSet(threadCurrentThread, f15856do)) {
                Runnable runnable4 = get();
                boolean z3 = false;
                int i2 = 0;
                while (true) {
                    Runnable runnable5 = f15858if;
                    if (runnable4 != runnable5 && runnable4 != f15857for) {
                        break;
                    }
                    i2++;
                    if (i2 > 1000) {
                        Runnable runnable6 = f15857for;
                        if (runnable4 == runnable6 || compareAndSet(runnable5, runnable6)) {
                            z3 = Thread.interrupted() || z3;
                            LockSupport.park(this);
                        }
                    } else {
                        Thread.yield();
                    }
                    runnable4 = get();
                }
                if (z3) {
                    threadCurrentThread.interrupt();
                }
            }
            if (z) {
                afterRanInterruptibly(tRunInterruptibly, null);
            }
        }
    }

    public abstract T runInterruptibly() throws Exception;

    public abstract String toPendingString();

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f15856do) {
            str = "running=[DONE]";
        } else if (runnable == f15858if) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        return str + ", " + toPendingString();
    }
}
