package com.uber.autodispose;

import android.support.v4.a51;
import android.support.v4.jp1;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* renamed from: com.uber.autodispose.native, reason: invalid class name */
/* loaded from: classes2.dex */
enum Cnative implements Subscription {
    CANCELLED;

    public static boolean cancel(AtomicReference<Subscription> atomicReference) {
        Subscription andSet;
        Subscription subscription = atomicReference.get();
        Cnative cnative = CANCELLED;
        if (subscription == cnative || (andSet = atomicReference.getAndSet(cnative)) == cnative) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static void deferredRequest(AtomicReference<Subscription> atomicReference, AtomicLong atomicLong, long j) {
        Subscription subscription = atomicReference.get();
        if (subscription != null) {
            subscription.request(j);
            return;
        }
        if (validate(j)) {
            Ctry.m24677do(atomicLong, j);
            Subscription subscription2 = atomicReference.get();
            if (subscription2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    subscription2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<Subscription> atomicReference, AtomicLong atomicLong, Subscription subscription) {
        if (!setOnce(atomicReference, subscription)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        subscription.request(andSet);
        return true;
    }

    public static boolean isCancelled(Subscription subscription) {
        return subscription == CANCELLED;
    }

    public static boolean replace(AtomicReference<Subscription> atomicReference, @a51 Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = atomicReference.get();
            if (subscription2 == CANCELLED) {
                if (subscription == null) {
                    return false;
                }
                subscription.cancel();
                return false;
            }
        } while (!atomicReference.compareAndSet(subscription2, subscription));
        return true;
    }

    public static void reportMoreProduced(long j) {
        jp1.l(new IllegalStateException("More produced than requested: " + j));
    }

    public static void reportSubscriptionSet() {
        jp1.l(new IllegalStateException("Subscription already set!"));
    }

    public static boolean set(AtomicReference<Subscription> atomicReference, @a51 Subscription subscription) {
        Subscription subscription2;
        do {
            subscription2 = atomicReference.get();
            if (subscription2 == CANCELLED) {
                if (subscription == null) {
                    return false;
                }
                subscription.cancel();
                return false;
            }
        } while (!atomicReference.compareAndSet(subscription2, subscription));
        if (subscription2 == null) {
            return true;
        }
        subscription2.cancel();
        return true;
    }

    public static boolean setIfNotSet(AtomicReference<Subscription> atomicReference, Subscription subscription) {
        Cconst.m24610do(subscription, "s is null");
        return atomicReference.compareAndSet(null, subscription);
    }

    public static boolean setOnce(AtomicReference<Subscription> atomicReference, Subscription subscription) {
        Cconst.m24610do(subscription, "s is null");
        if (atomicReference.compareAndSet(null, subscription)) {
            return true;
        }
        subscription.cancel();
        if (atomicReference.get() == CANCELLED) {
            return false;
        }
        reportSubscriptionSet();
        return false;
    }

    public static boolean validate(@a51 Subscription subscription, Subscription subscription2) {
        if (subscription2 == null) {
            jp1.l(new NullPointerException("next is null"));
            return false;
        }
        if (subscription == null) {
            return true;
        }
        subscription2.cancel();
        reportSubscriptionSet();
        return false;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
    }

    public static boolean validate(long j) {
        if (j > 0) {
            return true;
        }
        jp1.l(new IllegalArgumentException("n > 0 required but it was " + j));
        return false;
    }
}
