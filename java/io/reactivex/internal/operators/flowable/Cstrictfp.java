package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.strictfp, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cstrictfp<T, U> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<U> f25865for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<? extends T> f25866if;

    /* renamed from: io.reactivex.internal.operators.flowable.strictfp$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 2259811067697317255L;
        public final Subscriber<? super T> downstream;
        public final Publisher<? extends T> main;
        public final Cdo<T>.C0289do other = new C0289do();
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();

        /* renamed from: io.reactivex.internal.operators.flowable.strictfp$do$do, reason: invalid class name and collision with other inner class name */
        public final class C0289do extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
            private static final long serialVersionUID = -3892798459447644106L;

            public C0289do() {
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                if (get() != io.reactivex.internal.subscriptions.Cfor.CANCELLED) {
                    Cdo.this.next();
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                if (get() != io.reactivex.internal.subscriptions.Cfor.CANCELLED) {
                    Cdo.this.downstream.onError(th);
                } else {
                    jp1.l(th);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(Object obj) {
                Subscription subscription = get();
                io.reactivex.internal.subscriptions.Cfor cfor = io.reactivex.internal.subscriptions.Cfor.CANCELLED;
                if (subscription != cfor) {
                    lazySet(cfor);
                    subscription.cancel();
                    Cdo.this.next();
                }
            }

            @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
            public void onSubscribe(Subscription subscription) {
                if (io.reactivex.internal.subscriptions.Cfor.setOnce(this, subscription)) {
                    subscription.request(Long.MAX_VALUE);
                }
            }
        }

        public Cdo(Subscriber<? super T> subscriber, Publisher<? extends T> publisher) {
            this.downstream = subscriber;
            this.main = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.other);
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
        }

        public void next() {
            this.main.subscribe(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this.upstream, this, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                io.reactivex.internal.subscriptions.Cfor.deferredRequest(this.upstream, this, j);
            }
        }
    }

    public Cstrictfp(Publisher<? extends T> publisher, Publisher<U> publisher2) {
        this.f25866if = publisher;
        this.f25865for = publisher2;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f25866if);
        subscriber.onSubscribe(cdo);
        this.f25865for.subscribe(cdo.other);
    }
}
