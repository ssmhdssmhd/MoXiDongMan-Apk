package rx.internal.schedulers;

import android.support.v4.dq;
import android.support.v4.x01;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;

/* renamed from: rx.internal.schedulers.for, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfor extends Cif {

    /* renamed from: do, reason: not valid java name */
    public final Executor f35739do;

    /* renamed from: rx.internal.schedulers.for$do, reason: invalid class name */
    public static final class Cdo extends Cif.Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final Executor f35740do;

        /* renamed from: for, reason: not valid java name */
        public final ConcurrentLinkedQueue<Cgoto> f35741for = new ConcurrentLinkedQueue<>();

        /* renamed from: new, reason: not valid java name */
        public final AtomicInteger f35743new = new AtomicInteger();

        /* renamed from: if, reason: not valid java name */
        public final dq f35742if = new dq();

        /* renamed from: try, reason: not valid java name */
        public final ScheduledExecutorService f35744try = Cnew.m38854do();

        /* renamed from: rx.internal.schedulers.for$do$do, reason: invalid class name and collision with other inner class name */
        public class C0550do implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ x01 f35745do;

            public C0550do(x01 x01Var) {
                this.f35745do = x01Var;
            }

            @Override // rx.functions.Action0
            public void call() {
                Cdo.this.f35742if.m1492try(this.f35745do);
            }
        }

        /* renamed from: rx.internal.schedulers.for$do$if, reason: invalid class name */
        public class Cif implements Action0 {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ x01 f35747do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ Subscription f35748for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ Action0 f35749if;

            public Cif(x01 x01Var, Action0 action0, Subscription subscription) {
                this.f35747do = x01Var;
                this.f35749if = action0;
                this.f35748for = subscription;
            }

            @Override // rx.functions.Action0
            public void call() {
                if (this.f35747do.isUnsubscribed()) {
                    return;
                }
                Subscription subscriptionMo38376if = Cdo.this.mo38376if(this.f35749if);
                this.f35747do.m9321if(subscriptionMo38376if);
                if (subscriptionMo38376if.getClass() == Cgoto.class) {
                    ((Cgoto) subscriptionMo38376if).add(this.f35748for);
                }
            }
        }

        public Cdo(Executor executor) {
            this.f35740do = executor;
        }

        @Override // rx.Cif.Cdo
        /* renamed from: for */
        public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
            if (j <= 0) {
                return mo38376if(action0);
            }
            if (isUnsubscribed()) {
                return rx.subscriptions.Cfor.m39229try();
            }
            Action0 action0C = rx.plugins.Cif.c(action0);
            x01 x01Var = new x01();
            x01 x01Var2 = new x01();
            x01Var2.m9321if(x01Var);
            this.f35742if.m1488do(x01Var2);
            Subscription subscriptionM39225do = rx.subscriptions.Cfor.m39225do(new C0550do(x01Var2));
            Cgoto cgoto = new Cgoto(new Cif(x01Var2, action0C, subscriptionM39225do));
            x01Var.m9321if(cgoto);
            try {
                cgoto.add(this.f35744try.schedule(cgoto, j, timeUnit));
                return subscriptionM39225do;
            } catch (RejectedExecutionException e) {
                rx.plugins.Cif.m39151protected(e);
                throw e;
            }
        }

        @Override // rx.Cif.Cdo
        /* renamed from: if */
        public Subscription mo38376if(Action0 action0) {
            if (isUnsubscribed()) {
                return rx.subscriptions.Cfor.m39229try();
            }
            Cgoto cgoto = new Cgoto(rx.plugins.Cif.c(action0), this.f35742if);
            this.f35742if.m1488do(cgoto);
            this.f35741for.offer(cgoto);
            if (this.f35743new.getAndIncrement() == 0) {
                try {
                    this.f35740do.execute(this);
                } catch (RejectedExecutionException e) {
                    this.f35742if.m1492try(cgoto);
                    this.f35743new.decrementAndGet();
                    rx.plugins.Cif.m39151protected(e);
                    throw e;
                }
            }
            return cgoto;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f35742if.isUnsubscribed();
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.f35742if.isUnsubscribed()) {
                Cgoto cgotoPoll = this.f35741for.poll();
                if (cgotoPoll == null) {
                    return;
                }
                if (!cgotoPoll.isUnsubscribed()) {
                    if (this.f35742if.isUnsubscribed()) {
                        this.f35741for.clear();
                        return;
                    }
                    cgotoPoll.run();
                }
                if (this.f35743new.decrementAndGet() == 0) {
                    return;
                }
            }
            this.f35741for.clear();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.f35742if.unsubscribe();
            this.f35741for.clear();
        }
    }

    public Cfor(Executor executor) {
        this.f35739do = executor;
    }

    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        return new Cdo(this.f35739do);
    }
}
