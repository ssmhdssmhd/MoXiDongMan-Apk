package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public abstract class v7<T, R> implements FlowableSubscriber<T>, QueueSubscription<R> {

    /* renamed from: do, reason: not valid java name */
    public final Subscriber<? super R> f7101do;

    /* renamed from: for, reason: not valid java name */
    public QueueSubscription<T> f7102for;

    /* renamed from: if, reason: not valid java name */
    public Subscription f7103if;

    /* renamed from: new, reason: not valid java name */
    public boolean f7104new;

    /* renamed from: try, reason: not valid java name */
    public int f7105try;

    public v7(Subscriber<? super R> subscriber) {
        this.f7101do = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f7103if.cancel();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        this.f7102for.clear();
    }

    /* renamed from: do, reason: not valid java name */
    public void m8756do() {
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8757for(Throwable th) {
        t80.m7781if(th);
        this.f7103if.cancel();
        onError(th);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m8758if() {
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f7102for.isEmpty();
    }

    /* renamed from: new, reason: not valid java name */
    public final int m8759new(int i) {
        QueueSubscription<T> queueSubscription = this.f7102for;
        if (queueSubscription == null || (i & 4) != 0) {
            return 0;
        }
        int iRequestFusion = queueSubscription.requestFusion(i);
        if (iRequestFusion != 0) {
            this.f7105try = iRequestFusion;
        }
        return iRequestFusion;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f7104new) {
            return;
        }
        this.f7104new = true;
        this.f7101do.onComplete();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f7104new) {
            jp1.l(th);
        } else {
            this.f7104new = true;
            this.f7101do.onError(th);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (Cfor.validate(this.f7103if, subscription)) {
            this.f7103if = subscription;
            if (subscription instanceof QueueSubscription) {
                this.f7102for = (QueueSubscription) subscription;
            }
            if (m8758if()) {
                this.f7101do.onSubscribe(this);
                m8756do();
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        this.f7103if.request(j);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r, R r2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
