package io.reactivex.internal.subscriptions;

import android.support.v4.r6;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.subscriptions.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends AtomicInteger implements Subscription {
    private static final long serialVersionUID = -2189523197179400958L;
    public Subscription actual;
    public final boolean cancelOnReplace;
    public volatile boolean cancelled;
    public long requested;
    public boolean unbounded;
    public final AtomicReference<Subscription> missedSubscription = new AtomicReference<>();
    public final AtomicLong missedRequested = new AtomicLong();
    public final AtomicLong missedProduced = new AtomicLong();

    public Cif(boolean z) {
        this.cancelOnReplace = z;
    }

    public void cancel() {
        if (this.cancelled) {
            return;
        }
        this.cancelled = true;
        drain();
    }

    final void drain() {
        if (getAndIncrement() != 0) {
            return;
        }
        drainLoop();
    }

    final void drainLoop() {
        int iAddAndGet = 1;
        Subscription subscription = null;
        long jM6776for = 0;
        do {
            Subscription andSet = this.missedSubscription.get();
            if (andSet != null) {
                andSet = this.missedSubscription.getAndSet(null);
            }
            long andSet2 = this.missedRequested.get();
            if (andSet2 != 0) {
                andSet2 = this.missedRequested.getAndSet(0L);
            }
            long andSet3 = this.missedProduced.get();
            if (andSet3 != 0) {
                andSet3 = this.missedProduced.getAndSet(0L);
            }
            Subscription subscription2 = this.actual;
            if (this.cancelled) {
                if (subscription2 != null) {
                    subscription2.cancel();
                    this.actual = null;
                }
                if (andSet != null) {
                    andSet.cancel();
                }
            } else {
                long jM6776for2 = this.requested;
                if (jM6776for2 != Long.MAX_VALUE) {
                    jM6776for2 = r6.m6776for(jM6776for2, andSet2);
                    if (jM6776for2 != Long.MAX_VALUE) {
                        jM6776for2 -= andSet3;
                        if (jM6776for2 < 0) {
                            Cfor.reportMoreProduced(jM6776for2);
                            jM6776for2 = 0;
                        }
                    }
                    this.requested = jM6776for2;
                }
                if (andSet != null) {
                    if (subscription2 != null && this.cancelOnReplace) {
                        subscription2.cancel();
                    }
                    this.actual = andSet;
                    if (jM6776for2 != 0) {
                        jM6776for = r6.m6776for(jM6776for, jM6776for2);
                        subscription = andSet;
                    }
                } else if (subscription2 != null && andSet2 != 0) {
                    jM6776for = r6.m6776for(jM6776for, andSet2);
                    subscription = subscription2;
                }
            }
            iAddAndGet = addAndGet(-iAddAndGet);
        } while (iAddAndGet != 0);
        if (jM6776for != 0) {
            subscription.request(jM6776for);
        }
    }

    public final boolean isCancelled() {
        return this.cancelled;
    }

    public final boolean isUnbounded() {
        return this.unbounded;
    }

    public final void produced(long j) {
        if (this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            r6.m6775do(this.missedProduced, j);
            drain();
            return;
        }
        long j2 = this.requested;
        if (j2 != Long.MAX_VALUE) {
            long j3 = j2 - j;
            if (j3 < 0) {
                Cfor.reportMoreProduced(j3);
                j3 = 0;
            }
            this.requested = j3;
        }
        if (decrementAndGet() == 0) {
            return;
        }
        drainLoop();
    }

    @Override // org.reactivestreams.Subscription
    public final void request(long j) {
        if (!Cfor.validate(j) || this.unbounded) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            r6.m6775do(this.missedRequested, j);
            drain();
            return;
        }
        long j2 = this.requested;
        if (j2 != Long.MAX_VALUE) {
            long jM6776for = r6.m6776for(j2, j);
            this.requested = jM6776for;
            if (jM6776for == Long.MAX_VALUE) {
                this.unbounded = true;
            }
        }
        Subscription subscription = this.actual;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (subscription != null) {
            subscription.request(j);
        }
    }

    public final void setSubscription(Subscription subscription) {
        if (this.cancelled) {
            subscription.cancel();
            return;
        }
        io.reactivex.internal.functions.Cif.m29468else(subscription, "s is null");
        if (get() != 0 || !compareAndSet(0, 1)) {
            Subscription andSet = this.missedSubscription.getAndSet(subscription);
            if (andSet != null && this.cancelOnReplace) {
                andSet.cancel();
            }
            drain();
            return;
        }
        Subscription subscription2 = this.actual;
        if (subscription2 != null && this.cancelOnReplace) {
            subscription2.cancel();
        }
        this.actual = subscription;
        long j = this.requested;
        if (decrementAndGet() != 0) {
            drainLoop();
        }
        if (j != 0) {
            subscription.request(j);
        }
    }
}
