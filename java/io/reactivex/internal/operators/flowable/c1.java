package io.reactivex.internal.operators.flowable;

import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.internal.subscriptions.Cif;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class c1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final BooleanSupplier f25558for;

    /* renamed from: io.reactivex.internal.operators.flowable.c1$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        public final Subscriber<? super T> downstream;
        public long produced;
        public final Cif sa;
        public final Publisher<? extends T> source;
        public final BooleanSupplier stop;

        public Cdo(Subscriber<? super T> subscriber, BooleanSupplier booleanSupplier, Cif cif, Publisher<? extends T> publisher) {
            this.downstream = subscriber;
            this.sa = cif;
            this.source = publisher;
            this.stop = booleanSupplier;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            try {
                if (this.stop.getAsBoolean()) {
                    this.downstream.onComplete();
                } else {
                    subscribeNext();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
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

    public c1(Cfor<T> cfor, BooleanSupplier booleanSupplier) {
        super(cfor);
        this.f25558for = booleanSupplier;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cif cif = new Cif(false);
        subscriber.onSubscribe(cif);
        new Cdo(subscriber, this.f25558for, cif, this.f25614if).subscribeNext();
    }
}
