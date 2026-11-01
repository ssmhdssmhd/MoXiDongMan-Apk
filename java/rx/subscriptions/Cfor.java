package rx.subscriptions;

import android.support.v4.dq;
import java.util.concurrent.Future;
import rx.Subscription;
import rx.functions.Action0;

/* renamed from: rx.subscriptions.for, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final Cif f36229do = new Cif();

    /* renamed from: rx.subscriptions.for$do, reason: invalid class name */
    public static final class Cdo implements Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Future<?> f36230do;

        public Cdo(Future<?> future) {
            this.f36230do = future;
        }

        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return this.f36230do.isCancelled();
        }

        @Override // rx.Subscription
        public void unsubscribe() {
            this.f36230do.cancel(true);
        }
    }

    /* renamed from: rx.subscriptions.for$if, reason: invalid class name */
    public static final class Cif implements Subscription {
        @Override // rx.Subscription
        public boolean isUnsubscribed() {
            return true;
        }

        @Override // rx.Subscription
        public void unsubscribe() {
        }
    }

    private Cfor() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static Subscription m39225do(Action0 action0) {
        return rx.subscriptions.Cdo.m39224if(action0);
    }

    /* renamed from: for, reason: not valid java name */
    public static dq m39226for(Subscription... subscriptionArr) {
        return new dq(subscriptionArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static Subscription m39227if() {
        return rx.subscriptions.Cdo.m39223do();
    }

    /* renamed from: new, reason: not valid java name */
    public static Subscription m39228new(Future<?> future) {
        return new Cdo(future);
    }

    /* renamed from: try, reason: not valid java name */
    public static Subscription m39229try() {
        return f36229do;
    }
}
