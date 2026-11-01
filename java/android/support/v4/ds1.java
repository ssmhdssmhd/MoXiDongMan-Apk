package android.support.v4;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import rx.Cif;
import rx.internal.schedulers.Ccase;
import rx.internal.schedulers.Ccatch;
import rx.internal.schedulers.Cfor;
import rx.internal.schedulers.SchedulerLifecycle;
import rx.plugins.Cnew;
import rx.schedulers.Cdo;

/* loaded from: classes4.dex */
public final class ds1 {

    /* renamed from: new, reason: not valid java name */
    private static final AtomicReference<ds1> f1119new = new AtomicReference<>();

    /* renamed from: do, reason: not valid java name */
    private final Cif f1120do;

    /* renamed from: for, reason: not valid java name */
    private final Cif f1121for;

    /* renamed from: if, reason: not valid java name */
    private final Cif f1122if;

    private ds1() {
        kp1 kp1VarM39188case = Cnew.m39185for().m39188case();
        Cif cifM4469else = kp1VarM39188case.m4469else();
        if (cifM4469else != null) {
            this.f1120do = cifM4469else;
        } else {
            this.f1120do = kp1.m4461do();
        }
        Cif cifM4470this = kp1VarM39188case.m4470this();
        if (cifM4470this != null) {
            this.f1122if = cifM4470this;
        } else {
            this.f1122if = kp1.m4462for();
        }
        Cif cifM4467break = kp1VarM39188case.m4467break();
        if (cifM4467break != null) {
            this.f1121for = cifM4467break;
        } else {
            this.f1121for = kp1.m4466try();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m1513break() {
        ds1 ds1VarM1519for = m1519for();
        ds1VarM1519for.m1524catch();
        synchronized (ds1VarM1519for) {
            rx.internal.schedulers.Cnew.f35772new.start();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Cif m1514case() {
        return rx.plugins.Cif.m39143implements(m1519for().f1121for);
    }

    /* renamed from: class, reason: not valid java name */
    public static Cdo m1515class() {
        return new Cdo();
    }

    /* renamed from: const, reason: not valid java name */
    public static Cif m1516const() {
        return Ccatch.f35696do;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m1517do() {
        return rx.plugins.Cif.m39133continue(m1519for().f1120do);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m1518else() {
        ds1 andSet = f1119new.getAndSet(null);
        if (andSet != null) {
            andSet.m1525this();
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static ds1 m1519for() {
        while (true) {
            AtomicReference<ds1> atomicReference = f1119new;
            ds1 ds1Var = atomicReference.get();
            if (ds1Var != null) {
                return ds1Var;
            }
            ds1 ds1Var2 = new ds1();
            if (atomicReference.compareAndSet(null, ds1Var2)) {
                return ds1Var2;
            }
            ds1Var2.m1525this();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1520goto() {
        ds1 ds1VarM1519for = m1519for();
        ds1VarM1519for.m1525this();
        synchronized (ds1VarM1519for) {
            rx.internal.schedulers.Cnew.f35772new.shutdown();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Cif m1521if(Executor executor) {
        return new Cfor(executor);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cif m1522new() {
        return Ccase.f35693do;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cif m1523try() {
        return rx.plugins.Cif.m39162transient(m1519for().f1122if);
    }

    /* renamed from: catch, reason: not valid java name */
    public synchronized void m1524catch() {
        Object obj = this.f1120do;
        if (obj instanceof SchedulerLifecycle) {
            ((SchedulerLifecycle) obj).start();
        }
        Object obj2 = this.f1122if;
        if (obj2 instanceof SchedulerLifecycle) {
            ((SchedulerLifecycle) obj2).start();
        }
        Object obj3 = this.f1121for;
        if (obj3 instanceof SchedulerLifecycle) {
            ((SchedulerLifecycle) obj3).start();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public synchronized void m1525this() {
        Object obj = this.f1120do;
        if (obj instanceof SchedulerLifecycle) {
            ((SchedulerLifecycle) obj).shutdown();
        }
        Object obj2 = this.f1122if;
        if (obj2 instanceof SchedulerLifecycle) {
            ((SchedulerLifecycle) obj2).shutdown();
        }
        Object obj3 = this.f1121for;
        if (obj3 instanceof SchedulerLifecycle) {
            ((SchedulerLifecycle) obj3).shutdown();
        }
    }
}
