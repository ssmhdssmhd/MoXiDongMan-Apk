package io.reactivex.internal.operators.flowable;

import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.subscriptions.Cif;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class e1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final BiPredicate<? super Integer, ? super Throwable> f25620for;

    /* renamed from: io.reactivex.internal.operators.flowable.e1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        public final Subscriber<? super T> downstream;
        public final BiPredicate<? super Integer, ? super Throwable> predicate;
        public long produced;
        public int retries;
        public final Cif sa;
        public final Publisher<? extends T> source;

        public Cdo(Subscriber<? super T> subscriber, BiPredicate<? super Integer, ? super Throwable> biPredicate, Cif cif, Publisher<? extends T> publisher) {
            this.downstream = subscriber;
            this.sa = cif;
            this.source = publisher;
            this.predicate = biPredicate;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            try {
                BiPredicate<? super Integer, ? super Throwable> biPredicate = this.predicate;
                int i = this.retries + 1;
                this.retries = i;
                if (biPredicate.test(Integer.valueOf(i), th)) {
                    subscribeNext();
                } else {
                    this.downstream.onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
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

    public e1(Cfor<T> cfor, BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        super(cfor);
        this.f25620for = biPredicate;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cif cif = new Cif(false);
        subscriber.onSubscribe(cif);
        new Cdo(subscriber, this.f25620for, cif, this.f25614if).subscribeNext();
    }
}
