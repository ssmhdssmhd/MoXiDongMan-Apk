package io.reactivex.internal.operators.flowable;

import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cif;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class b1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f25541for;

    /* renamed from: io.reactivex.internal.operators.flowable.b1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        public final Subscriber<? super T> downstream;
        public long produced;
        public long remaining;
        public final Cif sa;
        public final Publisher<? extends T> source;

        public Cdo(Subscriber<? super T> subscriber, long j, Cif cif, Publisher<? extends T> publisher) {
            this.downstream = subscriber;
            this.sa = cif;
            this.source = publisher;
            this.remaining = j;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            long j = this.remaining;
            if (j != Long.MAX_VALUE) {
                this.remaining = j - 1;
            }
            if (j != 0) {
                subscribeNext();
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.produced++;
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.sa.setSubscription(subscription);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.sa.isCancelled()) {
                    long j = this.produced;
                    if (j != 0) {
                        this.produced = 0L;
                        this.sa.produced(j);
                    }
                    this.source.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    public b1(Cfor<T> cfor, long j) {
        super(cfor);
        this.f25541for = j;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cif cif = new Cif(false);
        subscriber.onSubscribe(cif);
        long j = this.f25541for;
        new Cdo(subscriber, j != Long.MAX_VALUE ? j - 1 : Long.MAX_VALUE, cif, this.f25614if).subscribeNext();
    }
}
