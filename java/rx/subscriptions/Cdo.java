package rx.subscriptions;

import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.functions.Action0;

/* renamed from: rx.subscriptions.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo implements Subscription {

    /* renamed from: if, reason: not valid java name */
    public static final Action0 f36227if = new C0572do();

    /* renamed from: do, reason: not valid java name */
    public final AtomicReference<Action0> f36228do;

    /* renamed from: rx.subscriptions.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0572do implements Action0 {
        @Override // rx.functions.Action0
        public void call() {
        }
    }

    public Cdo() {
        this.f36228do = new AtomicReference<>();
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m39223do() {
        return new Cdo();
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m39224if(Action0 action0) {
        return new Cdo(action0);
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return this.f36228do.get() == f36227if;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        Action0 andSet;
        Action0 action0 = this.f36228do.get();
        Action0 action02 = f36227if;
        if (action0 == action02 || (andSet = this.f36228do.getAndSet(action02)) == null || andSet == action02) {
            return;
        }
        andSet.call();
    }

    private Cdo(Action0 action0) {
        this.f36228do = new AtomicReference<>(action0);
    }
}
