package rx.internal.schedulers;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import rx.Cif;
import rx.Completable;
import rx.CompletableSubscriber;
import rx.Observable;
import rx.Observer;
import rx.Subscription;
import rx.functions.Action0;
import rx.functions.Func1;

/* renamed from: rx.internal.schedulers.this, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cthis extends rx.Cif implements Subscription {

    /* renamed from: new, reason: not valid java name */
    public static final Subscription f35775new = new Cfor();

    /* renamed from: try, reason: not valid java name */
    public static final Subscription f35776try = rx.subscriptions.Cfor.m39229try();

    /* renamed from: do, reason: not valid java name */
    private final rx.Cif f35777do;

    /* renamed from: for, reason: not valid java name */
    private final Subscription f35778for;

    /* renamed from: if, reason: not valid java name */
    private final Observer<Observable<Completable>> f35779if;

    /* renamed from: rx.internal.schedulers.this$case, reason: invalid class name */
    public static class Ccase implements Action0 {

        /* renamed from: do, reason: not valid java name */
        private CompletableSubscriber f35780do;

        /* renamed from: if, reason: not valid java name */
        private Action0 f35781if;

        public Ccase(Action0 action0, CompletableSubscriber completableSubscriber) {
            this.f35781if = action0;
            this.f35780do = completableSubscriber;
        }

        @Override // rx.functions.Action0
        public void call() {
            try {
                this.f35781if.call();
            } finally {
                this.f35780do.onCompleted();
            }
        }
    }

    /* renamed from: rx.internal.schedulers.this$do, reason: invalid class name */
    public class Cdo implements Func1<Celse, Completable> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f35782do;

        /* renamed from: rx.internal.schedulers.this$do$do, reason: invalid class name and collision with other inner class name */
        public class C0554do implements Completable.OnSubscribe {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Celse f35784do;

            public C0554do(Celse celse) {
                this.f35784do = celse;
            }

            @Override // rx.functions.Action1
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public void call(CompletableSubscriber completableSubscriber) {
                completableSubscriber.onSubscribe(this.f35784do);
                this.f35784do.m38857do(Cdo.this.f35782do, completableSubscriber);
            }
        }

        public Cdo(Cif.Cdo cdo) {
            this.f35782do = cdo;
        }

        @Override // rx.functions.Func1
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Completable call(Celse celse) {
            return Completable.m38170throw(new C0554do(celse));
        }
    }

    /* renamed from: rx.internal.schedulers.this$else, reason: invalid class name */
    public static abstract class Celse extends AtomicReference<Subscription> implements Subscription {
        public Celse() {
            super(Cthis.f35775new);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: do, reason: not valid java name */
        public void m38857do(Cif.Cdo cdo, CompletableSubscriber completableSubscriber) {
            Subscription subscription;
            Subscription subscription2 = get();
            if (subscription2 != Cthis.f35776try && subscription2 == (subscription = Cthis.f35775new)) {
                Subscription subscriptionCallActual = callActual(cdo, completableSubscriber);
                if (compareAndSet(subscription, subscriptionCallActual)) {
                    return;
                }
                subscriptionCallActual.unsubscribe();
            }
        }

        public abstract Subscription callActual(Cif.Cdo cdo, CompletableSubscriber completableSubscriber);

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return get().isUnsubscribed();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            Subscription subscription;
            Subscription subscription2 = Cthis.f35776try;
            do {
                subscription = get();
                if (subscription == Cthis.f35776try) {
                    return;
                }
            } while (!compareAndSet(subscription, subscription2));
            if (subscription != Cthis.f35775new) {
                subscription.unsubscribe();
            }
        }
    }

    /* renamed from: rx.internal.schedulers.this$for, reason: invalid class name */
    public static class Cfor implements Subscription {
        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return false;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
        }
    }

    /* renamed from: rx.internal.schedulers.this$if, reason: invalid class name */
    public class Cif extends Cif.Cdo {

        /* renamed from: do, reason: not valid java name */
        private final AtomicBoolean f35786do = new AtomicBoolean();

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Observer f35787for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cif.Cdo f35788if;

        public Cif(Cif.Cdo cdo, Observer observer) {
            this.f35788if = cdo;
            this.f35787for = observer;
        }

        @Override // rx.Cif.Cdo
        /* renamed from: for */
        public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
            Cnew cnew = new Cnew(action0, j, timeUnit);
            this.f35787for.onNext(cnew);
            return cnew;
        }

        @Override // rx.Cif.Cdo
        /* renamed from: if */
        public Subscription mo38376if(Action0 action0) {
            Ctry ctry = new Ctry(action0);
            this.f35787for.onNext(ctry);
            return ctry;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f35786do.get();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            if (this.f35786do.compareAndSet(false, true)) {
                this.f35788if.unsubscribe();
                this.f35787for.onCompleted();
            }
        }
    }

    /* renamed from: rx.internal.schedulers.this$new, reason: invalid class name */
    public static class Cnew extends Celse {
        private final Action0 action;
        private final long delayTime;
        private final TimeUnit unit;

        public Cnew(Action0 action0, long j, TimeUnit timeUnit) {
            this.action = action0;
            this.delayTime = j;
            this.unit = timeUnit;
        }

        @Override // rx.internal.schedulers.Cthis.Celse
        public Subscription callActual(Cif.Cdo cdo, CompletableSubscriber completableSubscriber) {
            return cdo.mo38375for(new Ccase(this.action, completableSubscriber), this.delayTime, this.unit);
        }
    }

    /* renamed from: rx.internal.schedulers.this$try, reason: invalid class name */
    public static class Ctry extends Celse {
        private final Action0 action;

        public Ctry(Action0 action0) {
            this.action = action0;
        }

        @Override // rx.internal.schedulers.Cthis.Celse
        public Subscription callActual(Cif.Cdo cdo, CompletableSubscriber completableSubscriber) {
            return cdo.mo38376if(new Ccase(this.action, completableSubscriber));
        }
    }

    public Cthis(Func1<Observable<Observable<Completable>>, Completable> func1, rx.Cif cif) {
        this.f35777do = cif;
        rx.subjects.Cfor cforG6 = rx.subjects.Cfor.g6();
        this.f35779if = new rx.observers.Cfor(cforG6);
        this.f35778for = func1.call(cforG6.v2()).A();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        Cif.Cdo cdoMo971do = this.f35777do.mo971do();
        rx.internal.operators.Ctry ctryG6 = rx.internal.operators.Ctry.g6();
        rx.observers.Cfor cfor = new rx.observers.Cfor(ctryG6);
        Object objK1 = ctryG6.K1(new Cdo(cdoMo971do));
        Cif cif = new Cif(cdoMo971do, cfor);
        this.f35779if.onNext(objK1);
        return cif;
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f35778for.isUnsubscribed();
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        this.f35778for.unsubscribe();
    }
}
