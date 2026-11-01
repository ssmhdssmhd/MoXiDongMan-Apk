package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class r<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.flowable.r$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25824do;

        /* renamed from: if, reason: not valid java name */
        public Subscription f25825if;

        public Cdo(Subscriber<? super T> subscriber) {
            this.f25824do = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25825if.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25824do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25824do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f25824do.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f25825if, subscription)) {
                this.f25825if = subscription;
                this.f25824do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25825if.request(j);
        }
    }

    public r(io.reactivex.Cfor<T> cfor) {
        super(cfor);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber));
    }
}
