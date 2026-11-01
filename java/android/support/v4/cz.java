package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public abstract class cz<T, R> extends ez<R> implements FlowableSubscriber<T> {
    private static final long serialVersionUID = 2984505488220891551L;
    public boolean hasValue;
    public Subscription upstream;

    public cz(Subscriber<? super R> subscriber) {
        super(subscriber);
    }

    @Override // android.support.v4.ez, org.reactivestreams.Subscription
    public void cancel() {
        super.cancel();
        this.upstream.cancel();
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        if (this.hasValue) {
            complete(this.value);
        } else {
            this.downstream.onComplete();
        }
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        this.value = null;
        this.downstream.onError(th);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (Cfor.validate(this.upstream, subscription)) {
            this.upstream = subscription;
            this.downstream.onSubscribe(this);
            subscription.request(Long.MAX_VALUE);
        }
    }
}
