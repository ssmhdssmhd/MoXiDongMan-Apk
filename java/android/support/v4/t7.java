package android.support.v4;

import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public abstract class t7<T, R> implements ConditionalSubscriber<T>, QueueSubscription<R> {

    /* renamed from: do, reason: not valid java name */
    public final ConditionalSubscriber<? super R> f6428do;

    /* renamed from: for, reason: not valid java name */
    public QueueSubscription<T> f6429for;

    /* renamed from: if, reason: not valid java name */
    public Subscription f6430if;

    /* renamed from: new, reason: not valid java name */
    public boolean f6431new;

    /* renamed from: try, reason: not valid java name */
    public int f6432try;

    public t7(ConditionalSubscriber<? super R> conditionalSubscriber) {
        this.f6428do = conditionalSubscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        this.f6430if.cancel();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        this.f6429for.clear();
    }

    /* renamed from: do, reason: not valid java name */
    public void m7737do() {
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7738for(Throwable th) {
        t80.m7781if(th);
        this.f6430if.cancel();
        onError(th);
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m7739if() {
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.f6429for.isEmpty();
    }

    /* renamed from: new, reason: not valid java name */
    public final int m7740new(int i) {
        QueueSubscription<T> queueSubscription = this.f6429for;
        if (queueSubscription == null || (i & 4) != 0) {
            return 0;
        }
        int iRequestFusion = queueSubscription.requestFusion(i);
        if (iRequestFusion != 0) {
            this.f6432try = iRequestFusion;
        }
        return iRequestFusion;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.f6431new) {
            return;
        }
        this.f6431new = true;
        this.f6428do.onComplete();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        if (this.f6431new) {
            jp1.l(th);
        } else {
            this.f6431new = true;
            this.f6428do.onError(th);
        }
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public final void onSubscribe(Subscription subscription) {
        if (Cfor.validate(this.f6430if, subscription)) {
            this.f6430if = subscription;
            if (subscription instanceof QueueSubscription) {
                this.f6429for = (QueueSubscription) subscription;
            }
            if (m7739if()) {
                this.f6428do.onSubscribe(this);
                m7737do();
            }
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        this.f6430if.request(j);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public final boolean offer(R r, R r2) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
