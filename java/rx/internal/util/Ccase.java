package rx.internal.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: rx.internal.util.case, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ccase extends AtomicLong implements ThreadFactory {
    public static final ThreadFactory NONE = new Cdo();
    private static final long serialVersionUID = -8841098858898482335L;
    public final String prefix;

    /* renamed from: rx.internal.util.case$do, reason: invalid class name */
    public static class Cdo implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            throw new AssertionError("No threads allowed.");
        }
    }

    public Ccase(String str) {
        this.prefix = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.prefix + incrementAndGet());
        thread.setDaemon(true);
        return thread;
    }
}
