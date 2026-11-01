package rx.internal.schedulers;

import android.support.v4.d32;
import android.support.v4.dq;
import android.support.v4.j32;
import android.support.v4.s80;
import android.support.v4.yd1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.util.Ccase;
import rx.subscriptions.Cfor;

/* renamed from: rx.internal.schedulers.else, reason: invalid class name */
/* loaded from: classes4.dex */
public class Celse extends Cif.Cdo implements Subscription {

    /* renamed from: break, reason: not valid java name */
    private static volatile Object f35728break = null;

    /* renamed from: case, reason: not valid java name */
    private static final boolean f35729case;

    /* renamed from: new, reason: not valid java name */
    private static final String f35734new = "rx.scheduler.jdk6.purge-force";

    /* renamed from: try, reason: not valid java name */
    private static final String f35736try = "RxSchedulerPurge-";

    /* renamed from: do, reason: not valid java name */
    private final ScheduledExecutorService f35737do;

    /* renamed from: if, reason: not valid java name */
    public volatile boolean f35738if;

    /* renamed from: catch, reason: not valid java name */
    private static final Object f35730catch = new Object();

    /* renamed from: goto, reason: not valid java name */
    private static final ConcurrentHashMap<ScheduledThreadPoolExecutor, ScheduledThreadPoolExecutor> f35733goto = new ConcurrentHashMap<>();

    /* renamed from: this, reason: not valid java name */
    private static final AtomicReference<ScheduledExecutorService> f35735this = new AtomicReference<>();

    /* renamed from: for, reason: not valid java name */
    private static final String f35732for = "rx.scheduler.jdk6.purge-frequency-millis";

    /* renamed from: else, reason: not valid java name */
    public static final int f35731else = Integer.getInteger(f35732for, 1000).intValue();

    /* renamed from: rx.internal.schedulers.else$do, reason: invalid class name */
    public static class Cdo implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            Celse.m38845else();
        }
    }

    static {
        boolean z = Boolean.getBoolean(f35734new);
        int iM9812do = yd1.m9812do();
        f35729case = !z && (iM9812do == 0 || iM9812do >= 21);
    }

    public Celse(ThreadFactory threadFactory) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (!m38844class(scheduledExecutorServiceNewScheduledThreadPool) && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            m38846goto((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool);
        }
        this.f35737do = scheduledExecutorServiceNewScheduledThreadPool;
    }

    /* renamed from: case, reason: not valid java name */
    public static Method m38843case(ScheduledExecutorService scheduledExecutorService) throws SecurityException {
        for (Method method : scheduledExecutorService.getClass().getMethods()) {
            if (method.getName().equals("setRemoveOnCancelPolicy")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && parameterTypes[0] == Boolean.TYPE) {
                    return method;
                }
            }
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m38844class(ScheduledExecutorService scheduledExecutorService) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method methodM38843case;
        if (f35729case) {
            if (scheduledExecutorService instanceof ScheduledThreadPoolExecutor) {
                Object obj = f35728break;
                Object obj2 = f35730catch;
                if (obj == obj2) {
                    return false;
                }
                if (obj == null) {
                    methodM38843case = m38843case(scheduledExecutorService);
                    if (methodM38843case != null) {
                        obj2 = methodM38843case;
                    }
                    f35728break = obj2;
                } else {
                    methodM38843case = (Method) obj;
                }
            } else {
                methodM38843case = m38843case(scheduledExecutorService);
            }
            if (methodM38843case != null) {
                try {
                    methodM38843case.invoke(scheduledExecutorService, Boolean.TRUE);
                    return true;
                } catch (IllegalAccessException e) {
                    rx.plugins.Cif.m39151protected(e);
                } catch (IllegalArgumentException e2) {
                    rx.plugins.Cif.m39151protected(e2);
                } catch (InvocationTargetException e3) {
                    rx.plugins.Cif.m39151protected(e3);
                }
            }
        }
        return false;
    }

    @j32
    /* renamed from: else, reason: not valid java name */
    public static void m38845else() {
        try {
            Iterator<ScheduledThreadPoolExecutor> it = f35733goto.keySet().iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor next = it.next();
                if (next.isShutdown()) {
                    it.remove();
                } else {
                    next.purge();
                }
            }
        } catch (Throwable th) {
            s80.m7301try(th);
            rx.plugins.Cif.m39151protected(th);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m38846goto(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        while (true) {
            AtomicReference<ScheduledExecutorService> atomicReference = f35735this;
            if (atomicReference.get() != null) {
                break;
            }
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new Ccase(f35736try));
            if (atomicReference.compareAndSet(null, scheduledExecutorServiceNewScheduledThreadPool)) {
                Cdo cdo = new Cdo();
                int i = f35731else;
                scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(cdo, i, i, TimeUnit.MILLISECONDS);
                break;
            }
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
        f35733goto.putIfAbsent(scheduledThreadPoolExecutor, scheduledThreadPoolExecutor);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m38847try(ScheduledExecutorService scheduledExecutorService) {
        f35733goto.remove(scheduledExecutorService);
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m38848break(Action0 action0, long j, TimeUnit timeUnit, dq dqVar) {
        Cgoto cgoto = new Cgoto(rx.plugins.Cif.c(action0), dqVar);
        dqVar.m1488do(cgoto);
        cgoto.add(j <= 0 ? this.f35737do.submit(cgoto) : this.f35737do.schedule(cgoto, j, timeUnit));
        return cgoto;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cgoto m38849catch(Action0 action0, long j, TimeUnit timeUnit, d32 d32Var) {
        Cgoto cgoto = new Cgoto(rx.plugins.Cif.c(action0), d32Var);
        d32Var.m1132do(cgoto);
        cgoto.add(j <= 0 ? this.f35737do.submit(cgoto) : this.f35737do.schedule(cgoto, j, timeUnit));
        return cgoto;
    }

    @Override // rx.Cif.Cdo
    /* renamed from: for */
    public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
        return this.f35738if ? Cfor.m39229try() : m38850this(action0, j, timeUnit);
    }

    @Override // rx.Cif.Cdo
    /* renamed from: if */
    public Subscription mo38376if(Action0 action0) {
        return mo38375for(action0, 0L, null);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f35738if;
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m38850this(Action0 action0, long j, TimeUnit timeUnit) {
        Cgoto cgoto = new Cgoto(rx.plugins.Cif.c(action0));
        cgoto.add(j <= 0 ? this.f35737do.submit(cgoto) : this.f35737do.schedule(cgoto, j, timeUnit));
        return cgoto;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.f35738if = true;
        this.f35737do.shutdownNow();
        m38847try(this.f35737do);
    }
}
