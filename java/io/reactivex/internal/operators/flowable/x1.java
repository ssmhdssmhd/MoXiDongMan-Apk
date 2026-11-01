package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cif;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class x1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<? extends T> f26047for;

    /* renamed from: io.reactivex.internal.operators.flowable.x1$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T> {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f26048do;

        /* renamed from: if, reason: not valid java name */
        public final Publisher<? extends T> f26050if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26051new = true;

        /* renamed from: for, reason: not valid java name */
        public final Cif f26049for = new Cif(false);

        public Cdo(Subscriber<? super T> subscriber, Publisher<? extends T> publisher) {
            this.f26048do = subscriber;
            this.f26050if = publisher;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f26051new) {
                this.f26048do.onComplete();
            } else {
                this.f26051new = false;
                this.f26050if.subscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f26048do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f26051new) {
                this.f26051new = false;
            }
            this.f26048do.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f26049for.setSubscription(subscription);
        }
    }

    public x1(Cfor<T> cfor, Publisher<? extends T> publisher) {
        super(cfor);
        this.f26047for = publisher;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f26047for);
        subscriber.onSubscribe(cdo.f26049for);
        this.f25614if.m5(cdo);
    }
}
