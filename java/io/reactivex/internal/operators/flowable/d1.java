package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.processors.Celse;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class d1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super io.reactivex.Cfor<Object>, ? extends Publisher<?>> f25610for;

    /* renamed from: io.reactivex.internal.operators.flowable.d1$do, reason: invalid class name */
    public static final class Cdo<T> extends Cfor<T, Object> {
        private static final long serialVersionUID = -2680129890138081029L;

        public Cdo(Subscriber<? super T> subscriber, io.reactivex.processors.Cfor<Object> cfor, Subscription subscription) {
            super(subscriber, cfor, subscription);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            again(0);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.receiver.cancel();
            this.downstream.onError(th);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.d1$for, reason: invalid class name */
    public static abstract class Cfor<T, U> extends io.reactivex.internal.subscriptions.Cif implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -5604623027276966720L;
        public final Subscriber<? super T> downstream;
        public final io.reactivex.processors.Cfor<U> processor;
        private long produced;
        public final Subscription receiver;

        public Cfor(Subscriber<? super T> subscriber, io.reactivex.processors.Cfor<U> cfor, Subscription subscription) {
            super(false);
            this.downstream = subscriber;
            this.processor = cfor;
            this.receiver = subscription;
        }

        public final void again(U u) {
            setSubscription(io.reactivex.internal.subscriptions.Cdo.INSTANCE);
            long j = this.produced;
            if (j != 0) {
                this.produced = 0L;
                produced(j);
            }
            this.receiver.request(1L);
            this.processor.onNext(u);
        }

        @Override // io.reactivex.internal.subscriptions.Cif, org.reactivestreams.Subscription
        public final void cancel() {
            super.cancel();
            this.receiver.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            this.produced++;
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public final void onSubscribe(Subscription subscription) {
            setSubscription(subscription);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.d1$if, reason: invalid class name */
    public static final class Cif<T, U> extends AtomicInteger implements FlowableSubscriber<Object>, Subscription {
        private static final long serialVersionUID = 2827772011130406689L;
        public final Publisher<T> source;
        public Cfor<T, U> subscriber;
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();

        public Cif(Publisher<T> publisher) {
            this.source = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.subscriber.cancel();
            this.subscriber.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.subscriber.cancel();
            this.subscriber.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (getAndIncrement() == 0) {
                while (this.upstream.get() != io.reactivex.internal.subscriptions.Cfor.CANCELLED) {
                    this.source.subscribe(this.subscriber);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this.upstream, this.requested, subscription);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            io.reactivex.internal.subscriptions.Cfor.deferredRequest(this.upstream, this.requested, j);
        }
    }

    public d1(io.reactivex.Cfor<T> cfor, Function<? super io.reactivex.Cfor<Object>, ? extends Publisher<?>> function) {
        super(cfor);
        this.f25610for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        bx1 bx1Var = new bx1(subscriber);
        io.reactivex.processors.Cfor<T> cforP7 = Celse.S7(8).P7();
        try {
            Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.f25610for.apply(cforP7), "handler returned a null Publisher");
            Cif cif = new Cif(this.f25614if);
            Cdo cdo = new Cdo(bx1Var, cforP7, cif);
            cif.subscriber = cdo;
            subscriber.onSubscribe(cdo);
            publisher.subscribe(cif);
            cif.onNext(0);
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
