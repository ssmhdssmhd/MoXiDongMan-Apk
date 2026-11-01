package rx.internal.schedulers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: rx.internal.schedulers.new, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cnew implements SchedulerLifecycle {

    /* renamed from: for, reason: not valid java name */
    private static final ScheduledExecutorService f35770for;

    /* renamed from: if, reason: not valid java name */
    private static final ScheduledExecutorService[] f35771if = new ScheduledExecutorService[0];

    /* renamed from: new, reason: not valid java name */
    public static final Cnew f35772new;

    /* renamed from: try, reason: not valid java name */
    private static int f35773try;

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<ScheduledExecutorService[]> f35774do = new AtomicReference<>(f35771if);

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f35770for = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f35772new = new Cnew();
    }

    private Cnew() {
        start();
    }

    /* renamed from: do, reason: not valid java name */
    public static ScheduledExecutorService m38854do() {
        ScheduledExecutorService[] scheduledExecutorServiceArr = f35772new.f35774do.get();
        if (scheduledExecutorServiceArr == f35771if) {
            return f35770for;
        }
        int i = f35773try + 1;
        if (i >= scheduledExecutorServiceArr.length) {
            i = 0;
        }
        f35773try = i;
        return scheduledExecutorServiceArr[i];
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        ScheduledExecutorService[] scheduledExecutorServiceArr;
        ScheduledExecutorService[] scheduledExecutorServiceArr2;
        do {
            scheduledExecutorServiceArr = this.f35774do.get();
            scheduledExecutorServiceArr2 = f35771if;
            if (scheduledExecutorServiceArr == scheduledExecutorServiceArr2) {
                return;
            }
        } while (!this.f35774do.compareAndSet(scheduledExecutorServiceArr, scheduledExecutorServiceArr2));
        for (ScheduledExecutorService scheduledExecutorService : scheduledExecutorServiceArr) {
            Celse.m38847try(scheduledExecutorService);
            scheduledExecutorService.shutdownNow();
        }
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void start() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        if (iAvailableProcessors > 4) {
            iAvailableProcessors /= 2;
        }
        if (iAvailableProcessors > 8) {
            iAvailableProcessors = 8;
        }
        ScheduledExecutorService[] scheduledExecutorServiceArr = new ScheduledExecutorService[iAvailableProcessors];
        int i = 0;
        for (int i2 = 0; i2 < iAvailableProcessors; i2++) {
            scheduledExecutorServiceArr[i2] = Ctry.create();
        }
        if (!this.f35774do.compareAndSet(f35771if, scheduledExecutorServiceArr)) {
            while (i < iAvailableProcessors) {
                scheduledExecutorServiceArr[i].shutdownNow();
                i++;
            }
        } else {
            while (i < iAvailableProcessors) {
                ScheduledExecutorService scheduledExecutorService = scheduledExecutorServiceArr[i];
                if (!Celse.m38844class(scheduledExecutorService) && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
                    Celse.m38846goto((ScheduledThreadPoolExecutor) scheduledExecutorService);
                }
                i++;
            }
        }
    }
}
