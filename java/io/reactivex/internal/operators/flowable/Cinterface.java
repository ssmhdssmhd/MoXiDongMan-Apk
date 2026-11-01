package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Cnew;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.interface, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cinterface<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: io.reactivex.internal.operators.flowable.interface$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public Subscriber<? super T> f25703do;

        /* renamed from: if, reason: not valid java name */
        public Subscription f25704if;

        public Cdo(Subscriber<? super T> subscriber) {
            this.f25703do = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Subscription subscription = this.f25704if;
            this.f25704if = Cnew.INSTANCE;
            this.f25703do = Cnew.asSubscriber();
            subscription.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscriber<? super T> subscriber = this.f25703do;
            this.f25704if = Cnew.INSTANCE;
            this.f25703do = Cnew.asSubscriber();
            subscriber.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscriber<? super T> subscriber = this.f25703do;
            this.f25704if = Cnew.INSTANCE;
            this.f25703do = Cnew.asSubscriber();
            subscriber.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f25703do.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f25704if, subscription)) {
                this.f25704if = subscription;
                this.f25703do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25704if.request(j);
        }
    }

    public Cinterface(io.reactivex.Cfor<T> cfor) {
        super(cfor);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber));
    }
}
