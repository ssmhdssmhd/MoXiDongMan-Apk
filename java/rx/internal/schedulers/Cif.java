package rx.internal.schedulers;

import android.support.v4.d32;
import android.support.v4.dq;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;
import rx.internal.util.Ccase;

/* renamed from: rx.internal.schedulers.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif extends rx.Cif implements SchedulerLifecycle {

    /* renamed from: case, reason: not valid java name */
    public static final C0553if f35753case;

    /* renamed from: for, reason: not valid java name */
    public static final String f35754for = "rx.scheduler.max-computation-threads";

    /* renamed from: new, reason: not valid java name */
    public static final int f35755new;

    /* renamed from: try, reason: not valid java name */
    public static final Cfor f35756try;

    /* renamed from: do, reason: not valid java name */
    public final ThreadFactory f35757do;

    /* renamed from: if, reason: not valid java name */
    public final AtomicReference<C0553if> f35758if = new AtomicReference<>(f35753case);

    /* renamed from: rx.internal.schedulers.if$do, reason: invalid class name */
    public static final class Cdo extends Cif.Cdo {

        /* renamed from: do, reason: not valid java name */
        private final d32 f35759do;

        /* renamed from: for, reason: not valid java name */
        private final d32 f35760for;

        /* renamed from: if, reason: not valid java name */
        private final dq f35761if;

        /* renamed from: new, reason: not valid java name */
        private final Cfor f35762new;

        /* renamed from: rx.internal.schedulers.if$do$do, reason: invalid class name and collision with other inner class name */
        public class C0551do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Action0 f35763do;

            public C0551do(Action0 action0) {
                this.f35763do = action0;
            }

            @Override // rx.functions.Action0
            public void call() {
                if (Cdo.this.isUnsubscribed()) {
                    return;
                }
                this.f35763do.call();
            }
        }

        /* renamed from: rx.internal.schedulers.if$do$if, reason: invalid class name and collision with other inner class name */
        public class C0552if implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Action0 f35765do;

            public C0552if(Action0 action0) {
                this.f35765do = action0;
            }

            @Override // rx.functions.Action0
            public void call() {
                if (Cdo.this.isUnsubscribed()) {
                    return;
                }
                this.f35765do.call();
            }
        }

        public Cdo(Cfor cfor) {
            d32 d32Var = new d32();
            this.f35759do = d32Var;
            dq dqVar = new dq();
            this.f35761if = dqVar;
            this.f35760for = new d32(d32Var, dqVar);
            this.f35762new = cfor;
        }

        @Override // rx.Cif.Cdo
        /* renamed from: for */
        public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
            return isUnsubscribed() ? rx.subscriptions.Cfor.m39229try() : this.f35762new.m38848break(new C0552if(action0), j, timeUnit, this.f35761if);
        }

        @Override // rx.Cif.Cdo
        /* renamed from: if */
        public Subscription mo38376if(Action0 action0) {
            return isUnsubscribed() ? rx.subscriptions.Cfor.m39229try() : this.f35762new.m38849catch(new C0551do(action0), 0L, null, this.f35759do);
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f35760for.isUnsubscribed();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.f35760for.unsubscribe();
        }
    }

    /* renamed from: rx.internal.schedulers.if$for, reason: invalid class name */
    public static final class Cfor extends Celse {
        public Cfor(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }

    /* renamed from: rx.internal.schedulers.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0553if {

        /* renamed from: do, reason: not valid java name */
        public final int f35767do;

        /* renamed from: for, reason: not valid java name */
        public long f35768for;

        /* renamed from: if, reason: not valid java name */
        public final Cfor[] f35769if;

        public C0553if(ThreadFactory threadFactory, int i) {
            this.f35767do = i;
            this.f35769if = new Cfor[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.f35769if[i2] = new Cfor(threadFactory);
            }
        }

        /* renamed from: do, reason: not valid java name */
        public Cfor m38852do() {
            int i = this.f35767do;
            if (i == 0) {
                return Cif.f35756try;
            }
            Cfor[] cforArr = this.f35769if;
            long j = this.f35768for;
            this.f35768for = 1 + j;
            return cforArr[(int) (j % i)];
        }

        /* renamed from: if, reason: not valid java name */
        public void m38853if() {
            for (Cfor cfor : this.f35769if) {
                cfor.unsubscribe();
            }
        }
    }

    static {
        int iIntValue = Integer.getInteger(f35754for, 0).intValue();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        if (iIntValue <= 0 || iIntValue > iAvailableProcessors) {
            iIntValue = iAvailableProcessors;
        }
        f35755new = iIntValue;
        Cfor cfor = new Cfor(Ccase.NONE);
        f35756try = cfor;
        cfor.unsubscribe();
        f35753case = new C0553if(null, 0);
    }

    public Cif(ThreadFactory threadFactory) {
        this.f35757do = threadFactory;
        start();
    }

    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        return new Cdo(this.f35758if.get().m38852do());
    }

    /* renamed from: new, reason: not valid java name */
    public Subscription m38851new(Action0 action0) {
        return this.f35758if.get().m38852do().m38850this(action0, -1L, TimeUnit.NANOSECONDS);
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        C0553if c0553if;
        C0553if c0553if2;
        do {
            c0553if = this.f35758if.get();
            c0553if2 = f35753case;
            if (c0553if == c0553if2) {
                return;
            }
        } while (!this.f35758if.compareAndSet(c0553if, c0553if2));
        c0553if.m38853if();
    }

    @Override // rx.internal.schedulers.SchedulerLifecycle
    public void start() {
        C0553if c0553if = new C0553if(this.f35757do, f35755new);
        if (this.f35758if.compareAndSet(f35753case, c0553if)) {
            return;
        }
        c0553if.m38853if();
    }
}
