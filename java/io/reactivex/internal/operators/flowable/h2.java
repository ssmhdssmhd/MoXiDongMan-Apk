package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.bx1;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.tw1;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class h2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f25674for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25675new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f25676try;

    /* renamed from: io.reactivex.internal.operators.flowable.h2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -9102637559663639004L;
        public boolean done;
        public final Subscriber<? super T> downstream;
        public volatile boolean gate;
        public final long timeout;
        public final tw1 timer = new tw1();
        public final TimeUnit unit;
        public Subscription upstream;
        public final Ctry.Cfor worker;

        public Cdo(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry.Cfor cfor) {
            this.downstream = subscriber;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.downstream.onError(th);
            this.worker.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done || this.gate) {
                return;
            }
            this.gate = true;
            if (get() == 0) {
                this.done = true;
                cancel();
                this.downstream.onError(new a01("Could not deliver value due to lack of requests"));
            } else {
                this.downstream.onNext(t);
                r6.m6779try(this, 1L);
                Disposable disposable = this.timer.get();
                if (disposable != null) {
                    disposable.dispose();
                }
                this.timer.replace(this.worker.mo29362for(this, this.timeout, this.unit));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.gate = false;
        }
    }

    public h2(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, Ctry ctry) {
        super(cfor);
        this.f25674for = j;
        this.f25675new = timeUnit;
        this.f25676try = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(new bx1(subscriber), this.f25674for, this.f25675new, this.f25676try.mo4229if()));
    }
}
