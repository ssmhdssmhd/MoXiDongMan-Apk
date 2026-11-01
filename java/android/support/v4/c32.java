package android.support.v4;

import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.Cdo;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class c32<T> extends AtomicReference<Disposable> implements FlowableSubscriber<T>, Disposable, Subscription {
    private static final long serialVersionUID = -8612022020200669122L;
    public final Subscriber<? super T> downstream;
    public final AtomicReference<Subscription> upstream = new AtomicReference<>();

    public c32(Subscriber<? super T> subscriber) {
        this.downstream = subscriber;
    }

    @Override // org.reactivestreams.Subscription
    public void cancel() {
        dispose();
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Cfor.cancel(this.upstream);
        Cdo.dispose(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.upstream.get() == Cfor.CANCELLED;
    }

    @Override // org.reactivestreams.Subscriber
    public void onComplete() {
        Cdo.dispose(this);
        this.downstream.onComplete();
    }

    @Override // org.reactivestreams.Subscriber
    public void onError(Throwable th) {
        Cdo.dispose(this);
        this.downstream.onError(th);
    }

    @Override // org.reactivestreams.Subscriber
    public void onNext(T t) {
        this.downstream.onNext(t);
    }

    @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
    public void onSubscribe(Subscription subscription) {
        if (Cfor.setOnce(this.upstream, subscription)) {
            this.downstream.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.Subscription
    public void request(long j) {
        if (Cfor.validate(j)) {
            this.upstream.get().request(j);
        }
    }

    public void setResource(Disposable disposable) {
        Cdo.set(this, disposable);
    }
}
