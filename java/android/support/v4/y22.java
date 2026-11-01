package android.support.v4;

import rx.Observer;
import rx.Producer;
import rx.Subscription;

/* loaded from: classes4.dex */
public abstract class y22<T> implements Observer<T>, Subscription {
    private static final long NOT_SET = Long.MIN_VALUE;
    private Producer producer;
    private long requested;
    private final y22<?> subscriber;
    private final d32 subscriptions;

    public y22() {
        this(null, false);
    }

    private void addToRequested(long j) {
        long j2 = this.requested;
        if (j2 == Long.MIN_VALUE) {
            this.requested = j;
            return;
        }
        long j3 = j2 + j;
        if (j3 < 0) {
            this.requested = Long.MAX_VALUE;
        } else {
            this.requested = j3;
        }
    }

    public final void add(Subscription subscription) {
        this.subscriptions.m1132do(subscription);
    }

    @Override // rx.Subscription
    public final boolean isUnsubscribed() {
        return this.subscriptions.isUnsubscribed();
    }

    public void onStart() {
    }

    public final void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("number requested cannot be negative: " + j);
        }
        synchronized (this) {
            Producer producer = this.producer;
            if (producer != null) {
                producer.request(j);
            } else {
                addToRequested(j);
            }
        }
    }

    public void setProducer(Producer producer) {
        long j;
        y22<?> y22Var;
        boolean z;
        synchronized (this) {
            j = this.requested;
            this.producer = producer;
            y22Var = this.subscriber;
            z = y22Var != null && j == Long.MIN_VALUE;
        }
        if (z) {
            y22Var.setProducer(producer);
        } else if (j == Long.MIN_VALUE) {
            producer.request(Long.MAX_VALUE);
        } else {
            producer.request(j);
        }
    }

    @Override // rx.Subscription
    public final void unsubscribe() {
        this.subscriptions.unsubscribe();
    }

    public y22(y22<?> y22Var) {
        this(y22Var, true);
    }

    public y22(y22<?> y22Var, boolean z) {
        this.requested = Long.MIN_VALUE;
        this.subscriber = y22Var;
        this.subscriptions = (!z || y22Var == null) ? new d32() : y22Var.subscriptions;
    }
}
