package io.reactivex.internal.operators.observable;

import io.reactivex.Cnew;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class n<T> extends Cnew<T> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<? extends T> f26727do;

    /* renamed from: io.reactivex.internal.operators.observable.n$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final Observer<? super T> f26728do;

        /* renamed from: if, reason: not valid java name */
        public Subscription f26729if;

        public Cdo(Observer<? super T> observer) {
            this.f26728do = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26729if.cancel();
            this.f26729if = Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26729if == Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f26728do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f26728do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f26728do.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26729if, subscription)) {
                this.f26729if = subscription;
                this.f26728do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public n(Publisher<? extends T> publisher) {
        this.f26727do = publisher;
    }

    @Override // io.reactivex.Cnew
    public void subscribeActual(Observer<? super T> observer) {
        this.f26727do.subscribe(new Cdo(observer));
    }
}
