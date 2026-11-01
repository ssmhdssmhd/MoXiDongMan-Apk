package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class b0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f25540for;

    /* renamed from: io.reactivex.internal.operators.flowable.b0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 2288246011222124525L;
        public final Subscriber<? super T> downstream;
        public long remaining;
        public Subscription upstream;

        public Cdo(Subscriber<? super T> subscriber, long j) {
            this.downstream = subscriber;
            this.remaining = j;
            lazySet(j);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.remaining > 0) {
                this.remaining = 0L;
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.remaining <= 0) {
                jp1.l(th);
            } else {
                this.remaining = 0L;
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.remaining;
            if (j > 0) {
                long j2 = j - 1;
                this.remaining = j2;
                this.downstream.onNext(t);
                if (j2 == 0) {
                    this.upstream.cancel();
                    this.downstream.onComplete();
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                if (this.remaining == 0) {
                    subscription.cancel();
                    io.reactivex.internal.subscriptions.Cdo.complete(this.downstream);
                } else {
                    this.upstream = subscription;
                    this.downstream.onSubscribe(this);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            long j2;
            long j3;
            if (Cfor.validate(j)) {
                do {
                    j2 = get();
                    if (j2 == 0) {
                        return;
                    } else {
                        j3 = j2 <= j ? j2 : j;
                    }
                } while (!compareAndSet(j2, j2 - j3));
                this.upstream.request(j3);
            }
        }
    }

    public b0(io.reactivex.Cfor<T> cfor, long j) {
        super(cfor);
        this.f25540for = j;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25540for));
    }
}
