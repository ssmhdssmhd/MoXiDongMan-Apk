package io.reactivex.internal.operators.flowable;

import android.support.v4.ez;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class w0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<T, T, T> f26024for;

    /* renamed from: io.reactivex.internal.operators.flowable.w0$do, reason: invalid class name */
    public static final class Cdo<T> extends ez<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -4663883003264602070L;
        public final BiFunction<T, T, T> reducer;
        public Subscription upstream;

        public Cdo(Subscriber<? super T> subscriber, BiFunction<T, T, T> biFunction) {
            super(subscriber);
            this.reducer = biFunction;
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.upstream.cancel();
            this.upstream = Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = this.upstream;
            Cfor cfor = Cfor.CANCELLED;
            if (subscription == cfor) {
                return;
            }
            this.upstream = cfor;
            T t = this.value;
            if (t != null) {
                complete(t);
            } else {
                this.downstream.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            Subscription subscription = this.upstream;
            Cfor cfor = Cfor.CANCELLED;
            if (subscription == cfor) {
                jp1.l(th);
            } else {
                this.upstream = cfor;
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.upstream == Cfor.CANCELLED) {
                return;
            }
            T t2 = this.value;
            if (t2 == null) {
                this.value = t;
                return;
            }
            try {
                this.value = (T) Cif.m29468else(this.reducer.apply(t2, t), "The reducer returned a null value");
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.cancel();
                onError(th);
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
    }

    public w0(io.reactivex.Cfor<T> cfor, BiFunction<T, T, T> biFunction) {
        super(cfor);
        this.f26024for = biFunction;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f26024for));
    }
}
