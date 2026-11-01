package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class z1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f26082for;

    /* renamed from: io.reactivex.internal.operators.flowable.z1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5636543848937116287L;
        public boolean done;
        public final Subscriber<? super T> downstream;
        public final long limit;
        public long remaining;
        public Subscription upstream;

        public Cdo(Subscriber<? super T> subscriber, long j) {
            this.downstream = subscriber;
            this.limit = j;
            this.remaining = j;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.upstream.cancel();
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            long j = this.remaining;
            long j2 = j - 1;
            this.remaining = j2;
            if (j > 0) {
                boolean z = j2 == 0;
                this.downstream.onNext(t);
                if (z) {
                    this.upstream.cancel();
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (this.limit != 0) {
                    this.downstream.onSubscribe(this);
                    return;
                }
                subscription.cancel();
                this.done = true;
                io.reactivex.internal.subscriptions.Cdo.complete(this.downstream);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                if (get() || !compareAndSet(false, true) || j < this.limit) {
                    this.upstream.request(j);
                } else {
                    this.upstream.request(Long.MAX_VALUE);
                }
            }
        }
    }

    public z1(io.reactivex.Cfor<T> cfor, long j) {
        super(cfor);
        this.f26082for = j;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f26082for));
    }
}
