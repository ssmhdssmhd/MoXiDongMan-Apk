package io.reactivex.internal.schedulers;

import android.support.v4.hy1;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: io.reactivex.internal.schedulers.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis extends AtomicLong implements ThreadFactory {
    private static final long serialVersionUID = -7789753024099756196L;
    public final boolean nonBlocking;
    public final String prefix;
    public final int priority;

    /* renamed from: io.reactivex.internal.schedulers.this$do, reason: invalid class name */
    public static final class Cdo extends Thread implements NonBlockingThread {
        public Cdo(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public Cthis(String str) {
        this(str, 5, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        String str = this.prefix + hy1.f2561for + incrementAndGet();
        Thread cdo = this.nonBlocking ? new Cdo(runnable, str) : new Thread(runnable, str);
        cdo.setPriority(this.priority);
        cdo.setDaemon(true);
        return cdo;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public String toString() {
        return "RxThreadFactory[" + this.prefix + "]";
    }

    public Cthis(String str, int i) {
        this(str, i, false);
    }

    public Cthis(String str, int i, boolean z) {
        this.prefix = str;
        this.priority = i;
        this.nonBlocking = z;
    }
}
