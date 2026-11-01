package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class u2<T, U, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<? super T, ? super U, ? extends R> f25994for;

    /* renamed from: new, reason: not valid java name */
    public final Publisher<? extends U> f25995new;

    /* renamed from: io.reactivex.internal.operators.flowable.u2$do, reason: invalid class name */
    public final class Cdo implements FlowableSubscriber<U> {

        /* renamed from: do, reason: not valid java name */
        private final Cif<T, U, R> f25996do;

        public Cdo(Cif<T, U, R> cif) {
            this.f25996do = cif;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25996do.otherError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(U u) {
            this.f25996do.lazySet(u);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (this.f25996do.setOther(subscription)) {
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.u2$if, reason: invalid class name */
    public static final class Cif<T, U, R> extends AtomicReference<U> implements ConditionalSubscriber<T>, Subscription {
        private static final long serialVersionUID = -312246233408980075L;
        public final BiFunction<? super T, ? super U, ? extends R> combiner;
        public final Subscriber<? super R> downstream;
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();
        public final AtomicReference<Subscription> other = new AtomicReference<>();

        public Cif(Subscriber<? super R> subscriber, BiFunction<? super T, ? super U, ? extends R> biFunction) {
            this.downstream = subscriber;
            this.combiner = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Cfor.cancel(this.upstream);
            Cfor.cancel(this.other);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Cfor.cancel(this.other);
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Cfor.cancel(this.other);
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (tryOnNext(t)) {
                return;
            }
            this.upstream.get().request(1L);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            Cfor.deferredSetOnce(this.upstream, this.requested, subscription);
        }

        public void otherError(Throwable th) {
            Cfor.cancel(this.upstream);
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            Cfor.deferredRequest(this.upstream, this.requested, j);
        }

        public boolean setOther(Subscription subscription) {
            return Cfor.setOnce(this.other, subscription);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            U u = get();
            if (u != null) {
                try {
                    this.downstream.onNext(io.reactivex.internal.functions.Cif.m29468else(this.combiner.apply(t, u), "The combiner returned a null value"));
                    return true;
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    this.downstream.onError(th);
                }
            }
            return false;
        }
    }

    public u2(io.reactivex.Cfor<T> cfor, BiFunction<? super T, ? super U, ? extends R> biFunction, Publisher<? extends U> publisher) {
        super(cfor);
        this.f25994for = biFunction;
        this.f25995new = publisher;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        bx1 bx1Var = new bx1(subscriber);
        Cif cif = new Cif(bx1Var, this.f25994for);
        bx1Var.onSubscribe(cif);
        this.f25995new.subscribe(new Cdo(cif));
        this.f25614if.m5(cif);
    }
}
