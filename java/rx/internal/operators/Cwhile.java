package rx.internal.operators;

import android.support.v4.dq;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.Cif;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Subscription;
import rx.functions.Action0;

/* renamed from: rx.internal.operators.while, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cwhile implements Completable.OnSubscribe {

    /* renamed from: do, reason: not valid java name */
    public final Completable f35539do;

    /* renamed from: for, reason: not valid java name */
    public final TimeUnit f35540for;

    /* renamed from: if, reason: not valid java name */
    public final long f35541if;

    /* renamed from: new, reason: not valid java name */
    public final rx.Cif f35542new;

    /* renamed from: try, reason: not valid java name */
    public final Completable f35543try;

    /* renamed from: rx.internal.operators.while$do, reason: invalid class name */
    public class Cdo implements Action0 {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f35544do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ CompletableSubscriber f35545for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ dq f35546if;

        /* renamed from: rx.internal.operators.while$do$do, reason: invalid class name and collision with other inner class name */
        public class C0540do implements CompletableSubscriber {
            public C0540do() {
            }

            @Override // rx.CompletableSubscriber
            public void onCompleted() {
                Cdo.this.f35546if.unsubscribe();
                Cdo.this.f35545for.onCompleted();
            }

            @Override // rx.CompletableSubscriber
            public void onError(Throwable th) {
                Cdo.this.f35546if.unsubscribe();
                Cdo.this.f35545for.onError(th);
            }

            @Override // rx.CompletableSubscriber
            public void onSubscribe(Subscription subscription) {
                Cdo.this.f35546if.m1488do(subscription);
            }
        }

        public Cdo(AtomicBoolean atomicBoolean, dq dqVar, CompletableSubscriber completableSubscriber) {
            this.f35544do = atomicBoolean;
            this.f35546if = dqVar;
            this.f35545for = completableSubscriber;
        }

        @Override // rx.functions.Action0
        public void call() {
            if (this.f35544do.compareAndSet(false, true)) {
                this.f35546if.m1489for();
                Completable completable = Cwhile.this.f35543try;
                if (completable == null) {
                    this.f35545for.onError(new TimeoutException());
                } else {
                    completable.V(new C0540do());
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.while$if, reason: invalid class name */
    public class Cif implements CompletableSubscriber {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ dq f35549do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ CompletableSubscriber f35550for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ AtomicBoolean f35551if;

        public Cif(dq dqVar, AtomicBoolean atomicBoolean, CompletableSubscriber completableSubscriber) {
            this.f35549do = dqVar;
            this.f35551if = atomicBoolean;
            this.f35550for = completableSubscriber;
        }

        @Override // rx.CompletableSubscriber
        public void onCompleted() {
            if (this.f35551if.compareAndSet(false, true)) {
                this.f35549do.unsubscribe();
                this.f35550for.onCompleted();
            }
        }

        @Override // rx.CompletableSubscriber
        public void onError(Throwable th) {
            if (!this.f35551if.compareAndSet(false, true)) {
                rx.plugins.Cif.m39151protected(th);
            } else {
                this.f35549do.unsubscribe();
                this.f35550for.onError(th);
            }
        }

        @Override // rx.CompletableSubscriber
        public void onSubscribe(Subscription subscription) {
            this.f35549do.m1488do(subscription);
        }
    }

    public Cwhile(Completable completable, long j, TimeUnit timeUnit, rx.Cif cif, Completable completable2) {
        this.f35539do = completable;
        this.f35541if = j;
        this.f35540for = timeUnit;
        this.f35542new = cif;
        this.f35543try = completable2;
    }

    @Override // rx.functions.Action1
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void call(CompletableSubscriber completableSubscriber) {
        dq dqVar = new dq();
        completableSubscriber.onSubscribe(dqVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        Cif.Cdo cdoMo971do = this.f35542new.mo971do();
        dqVar.m1488do(cdoMo971do);
        cdoMo971do.mo38375for(new Cdo(atomicBoolean, dqVar, completableSubscriber), this.f35541if, this.f35540for);
        this.f35539do.V(new Cif(dqVar, atomicBoolean, completableSubscriber));
    }
}
