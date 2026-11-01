package io.reactivex.internal.schedulers;

import freemarker.core.b2;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: io.reactivex.internal.schedulers.class, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cclass {

    /* renamed from: do, reason: not valid java name */
    public static final String f27284do = "rx2.purge-enabled";

    /* renamed from: for, reason: not valid java name */
    public static final String f27285for = "rx2.purge-period-seconds";

    /* renamed from: if, reason: not valid java name */
    public static final boolean f27286if;

    /* renamed from: new, reason: not valid java name */
    public static final int f27287new;

    /* renamed from: try, reason: not valid java name */
    public static final AtomicReference<ScheduledExecutorService> f27288try = new AtomicReference<>();

    /* renamed from: case, reason: not valid java name */
    public static final Map<ScheduledThreadPoolExecutor, Object> f27283case = new ConcurrentHashMap();

    /* renamed from: io.reactivex.internal.schedulers.class$do, reason: invalid class name */
    public static final class Cdo implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            Iterator it = new ArrayList(Cclass.f27283case.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    Cclass.f27283case.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    /* renamed from: io.reactivex.internal.schedulers.class$if, reason: invalid class name */
    public static final class Cif implements Function<String, String> {
        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public String apply(String str) throws Exception {
            return System.getProperty(str);
        }
    }

    static {
        Cif cif = new Cif();
        boolean zM29672if = m29672if(true, f27284do, true, true, cif);
        f27286if = zM29672if;
        f27287new = m29671for(zM29672if, f27285for, 1, 1, cif);
        m29674try();
    }

    private Cclass() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: case, reason: not valid java name */
    public static void m29668case(boolean z, ScheduledExecutorService scheduledExecutorService) {
        if (z && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f27283case.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static ScheduledExecutorService m29669do(ThreadFactory threadFactory) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        m29668case(f27286if, scheduledExecutorServiceNewScheduledThreadPool);
        return scheduledExecutorServiceNewScheduledThreadPool;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m29670else(boolean z) {
        if (!z) {
            return;
        }
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f27288try;
            ScheduledExecutorService scheduledExecutorService = atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new Cthis("RxSchedulerPurge"));
            if (atomicReference.compareAndSet(scheduledExecutorService, scheduledExecutorServiceNewScheduledThreadPool)) {
                Cdo cdo = new Cdo();
                int i = f27287new;
                scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(cdo, i, i, TimeUnit.SECONDS);
                return;
            }
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m29671for(boolean z, String str, int i, int i2, Function<String, String> function) {
        if (!z) {
            return i2;
        }
        try {
            String strApply = function.apply(str);
            return strApply == null ? i : Integer.parseInt(strApply);
        } catch (Throwable unused) {
            return i;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m29672if(boolean z, String str, boolean z2, boolean z3, Function<String, String> function) {
        if (!z) {
            return z3;
        }
        try {
            String strApply = function.apply(str);
            return strApply == null ? z2 : b2.f23511if.equals(strApply);
        } catch (Throwable unused) {
            return z2;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m29673new() {
        ScheduledExecutorService andSet = f27288try.getAndSet(null);
        if (andSet != null) {
            andSet.shutdownNow();
        }
        f27283case.clear();
    }

    /* renamed from: try, reason: not valid java name */
    public static void m29674try() {
        m29670else(f27286if);
    }
}
