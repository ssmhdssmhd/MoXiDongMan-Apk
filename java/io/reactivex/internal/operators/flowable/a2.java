package io.reactivex.internal.operators.flowable;

import android.support.v4.r6;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class a2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final int f25533for;

    /* renamed from: io.reactivex.internal.operators.flowable.a2$do, reason: invalid class name */
    public static final class Cdo<T> extends ArrayDeque<T> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 7240042530241604978L;
        public volatile boolean cancelled;
        public final int count;
        public volatile boolean done;
        public final Subscriber<? super T> downstream;
        public Subscription upstream;
        public final AtomicLong requested = new AtomicLong();
        public final AtomicInteger wip = new AtomicInteger();

        public Cdo(Subscriber<? super T> subscriber, int i) {
            this.downstream = subscriber;
            this.count = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
        }

        public void drain() {
            if (this.wip.getAndIncrement() == 0) {
                Subscriber<? super T> subscriber = this.downstream;
                long jAddAndGet = this.requested.get();
                while (!this.cancelled) {
                    if (this.done) {
                        long j = 0;
                        while (j != jAddAndGet) {
                            if (this.cancelled) {
                                return;
                            }
                            T tPoll = poll();
                            if (tPoll == null) {
                                subscriber.onComplete();
                                return;
                            } else {
                                subscriber.onNext(tPoll);
                                j++;
                            }
                        }
                        if (j != 0 && jAddAndGet != Long.MAX_VALUE) {
                            jAddAndGet = this.requested.addAndGet(-j);
                        }
                    }
                    if (this.wip.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.count == size()) {
                poll();
            }
            offer(t);
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
                r6.m6775do(this.requested, j);
                drain();
            }
        }
    }

    public a2(io.reactivex.Cfor<T> cfor, int i) {
        super(cfor);
        this.f25533for = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25533for));
    }
}
