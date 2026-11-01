package rx.internal.schedulers;

import java.util.concurrent.TimeUnit;
import rx.Cif;
import rx.Subscription;
import rx.functions.Action0;
import rx.subscriptions.Cfor;

/* renamed from: rx.internal.schedulers.case, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Ccase extends Cif {

    /* renamed from: do, reason: not valid java name */
    public static final Ccase f35693do = new Ccase();

    /* renamed from: rx.internal.schedulers.case$do, reason: invalid class name */
    public final class Cdo extends Cif.Cdo implements Subscription {

        /* renamed from: do, reason: not valid java name */
        public final rx.subscriptions.Cdo f35694do = new rx.subscriptions.Cdo();

        public Cdo() {
        }

        @Override // rx.Cif.Cdo
        /* renamed from: for */
        public Subscription mo38375for(Action0 action0, long j, TimeUnit timeUnit) {
            return mo38376if(new Cbreak(action0, this, Ccase.this.mo38373if() + timeUnit.toMillis(j)));
        }

        @Override // rx.Cif.Cdo
        /* renamed from: if */
        public Subscription mo38376if(Action0 action0) {
            action0.call();
            return Cfor.m39229try();
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f35694do.isUnsubscribed();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.f35694do.unsubscribe();
        }
    }

    private Ccase() {
    }

    @Override // rx.Cif
    /* renamed from: do */
    public Cif.Cdo mo971do() {
        return new Cdo();
    }
}
