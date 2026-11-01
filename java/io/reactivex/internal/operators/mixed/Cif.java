package io.reactivex.internal.operators.mixed;

import io.reactivex.Cfor;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.mixed.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif<R> extends Cfor<R> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<? extends R> f26315for;

    /* renamed from: if, reason: not valid java name */
    public final CompletableSource f26316if;

    public Cif(CompletableSource completableSource, Publisher<? extends R> publisher) {
        this.f26316if = completableSource;
        this.f26315for = publisher;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f26316if.subscribe(new Cdo(subscriber, this.f26315for));
    }

    /* renamed from: io.reactivex.internal.operators.mixed.if$do, reason: invalid class name */
    public static final class Cdo<R> extends AtomicReference<Subscription> implements FlowableSubscriber<R>, CompletableObserver, Subscription {
        private static final long serialVersionUID = -8948264376121066672L;
        public final Subscriber<? super R> downstream;
        public Publisher<? extends R> other;
        public final AtomicLong requested = new AtomicLong();
        public Disposable upstream;

        public Cdo(Subscriber<? super R> subscriber, Publisher<? extends R> publisher) {
            this.downstream = subscriber;
            this.other = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.dispose();
            io.reactivex.internal.subscriptions.Cfor.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Publisher<? extends R> publisher = this.other;
            if (publisher == null) {
                this.downstream.onComplete();
            } else {
                this.other = null;
                publisher.subscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(R r) {
            this.downstream.onNext(r);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (io.reactivex.internal.disposables.Cdo.validate(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            io.reactivex.internal.subscriptions.Cfor.deferredRequest(this, this.requested, j);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this, this.requested, subscription);
        }
    }
}
