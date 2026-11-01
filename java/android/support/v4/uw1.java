package android.support.v4;

import java.util.concurrent.atomic.AtomicReference;
import rx.Subscription;
import rx.subscriptions.Cfor;

/* loaded from: classes4.dex */
public final class uw1 extends AtomicReference<Subscription> implements Subscription {
    private static final long serialVersionUID = 995205034283130269L;

    public uw1() {
    }

    public Subscription current() {
        Subscription subscription = (Subscription) super.get();
        return subscription == rc2.INSTANCE ? Cfor.m39229try() : subscription;
    }

    @Override // rx.Subscription
    public boolean isUnsubscribed() {
        return get() == rc2.INSTANCE;
    }

    public boolean replace(Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = get();
            if (subscription2 == rc2.INSTANCE) {
                if (subscription == null) {
                    return false;
                }
                subscription.unsubscribe();
                return false;
            }
        } while (!compareAndSet(subscription2, subscription));
        return true;
    }

    public boolean replaceWeak(Subscription subscription) {
        Subscription subscription2 = get();
        rc2 rc2Var = rc2.INSTANCE;
        if (subscription2 == rc2Var) {
            if (subscription != null) {
                subscription.unsubscribe();
            }
            return false;
        }
        if (compareAndSet(subscription2, subscription) || get() != rc2Var) {
            return true;
        }
        if (subscription != null) {
            subscription.unsubscribe();
        }
        return false;
    }

    @Override // rx.Subscription
    public void unsubscribe() {
        Subscription andSet;
        Subscription subscription = get();
        rc2 rc2Var = rc2.INSTANCE;
        if (subscription == rc2Var || (andSet = getAndSet(rc2Var)) == null || andSet == rc2Var) {
            return;
        }
        andSet.unsubscribe();
    }

    public boolean update(Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = get();
            if (subscription2 == rc2.INSTANCE) {
                if (subscription == null) {
                    return false;
                }
                subscription.unsubscribe();
                return false;
            }
        } while (!compareAndSet(subscription2, subscription));
        if (subscription2 == null) {
            return true;
        }
        subscription2.unsubscribe();
        return true;
    }

    public boolean updateWeak(Subscription subscription) {
        Subscription subscription2 = get();
        rc2 rc2Var = rc2.INSTANCE;
        if (subscription2 == rc2Var) {
            if (subscription != null) {
                subscription.unsubscribe();
            }
            return false;
        }
        if (compareAndSet(subscription2, subscription)) {
            return true;
        }
        Subscription subscription3 = get();
        if (subscription != null) {
            subscription.unsubscribe();
        }
        return subscription3 == rc2Var;
    }

    public uw1(Subscription subscription) {
        lazySet(subscription);
    }
}
