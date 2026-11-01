package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.subscriptions.Cif;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class p0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super Throwable, ? extends Publisher<? extends T>> f25780for;

    /* renamed from: new, reason: not valid java name */
    public final boolean f25781new;

    /* renamed from: io.reactivex.internal.operators.flowable.p0$do, reason: invalid class name */
    public static final class Cdo<T> extends Cif implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 4063763155303814625L;
        public final boolean allowFatal;
        public boolean done;
        public final Subscriber<? super T> downstream;
        public final Function<? super Throwable, ? extends Publisher<? extends T>> nextSupplier;
        public boolean once;
        public long produced;

        public Cdo(Subscriber<? super T> subscriber, Function<? super Throwable, ? extends Publisher<? extends T>> function, boolean z) {
            super(false);
            this.downstream = subscriber;
            this.nextSupplier = function;
            this.allowFatal = z;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.once = true;
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.once) {
                if (this.done) {
                    jp1.l(th);
                    return;
                } else {
                    this.downstream.onError(th);
                    return;
                }
            }
            this.once = true;
            if (this.allowFatal && !(th instanceof Exception)) {
                this.downstream.onError(th);
                return;
            }
            try {
                Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.nextSupplier.apply(th), "The nextSupplier returned a null Publisher");
                long j = this.produced;
                if (j != 0) {
                    produced(j);
                }
                publisher.subscribe(this);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (!this.once) {
                this.produced++;
            }
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            setSubscription(subscription);
        }
    }

    public p0(Cfor<T> cfor, Function<? super Throwable, ? extends Publisher<? extends T>> function, boolean z) {
        super(cfor);
        this.f25780for = function;
        this.f25781new = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        Cdo cdo = new Cdo(subscriber, this.f25780for, this.f25781new);
        subscriber.onSubscribe(cdo);
        this.f25614if.m5(cdo);
    }
}
