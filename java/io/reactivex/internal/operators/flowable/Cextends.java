package io.reactivex.internal.operators.flowable;

import android.support.v4.ez;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cextends<T> extends io.reactivex.internal.operators.flowable.Cdo<T, Long> {

    /* renamed from: io.reactivex.internal.operators.flowable.extends$do, reason: invalid class name */
    public static final class Cdo extends ez<Long> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 4973004223787171406L;
        public long count;
        public Subscription upstream;

        public Cdo(Subscriber<? super Long> subscriber) {
            super(subscriber);
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            complete(Long.valueOf(this.count));
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.count++;
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

    public Cextends(io.reactivex.Cfor<T> cfor) {
        super(cfor);
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Long> subscriber) {
        this.f25614if.m5(new Cdo(subscriber));
    }
}
