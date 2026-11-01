package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class n2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Ctry f25755for;

    /* renamed from: io.reactivex.internal.operators.flowable.n2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 1015244841293359600L;
        public final Subscriber<? super T> downstream;
        public final Ctry scheduler;
        public Subscription upstream;

        /* renamed from: io.reactivex.internal.operators.flowable.n2$do$do, reason: invalid class name and collision with other inner class name */
        public final class RunnableC0286do implements Runnable {
            public RunnableC0286do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Cdo.this.upstream.cancel();
            }
        }

        public Cdo(Subscriber<? super T> subscriber, Ctry ctry) {
            this.downstream = subscriber;
            this.scheduler = ctry;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (compareAndSet(false, true)) {
                this.scheduler.mo29697new(new RunnableC0286do());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (get()) {
                return;
            }
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (get()) {
                jp1.l(th);
            } else {
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (get()) {
                return;
            }
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    public n2(io.reactivex.Cfor<T> cfor, Ctry ctry) {
        super(cfor);
        this.f25755for = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25755for));
    }
}
