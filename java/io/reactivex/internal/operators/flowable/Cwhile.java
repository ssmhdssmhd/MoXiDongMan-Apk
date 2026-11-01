package io.reactivex.internal.operators.flowable;

import android.support.v4.ez;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.while, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cwhile<T, U> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<? extends U> f26034for;

    /* renamed from: new, reason: not valid java name */
    public final BiConsumer<? super U, ? super T> f26035new;

    /* renamed from: io.reactivex.internal.operators.flowable.while$do, reason: invalid class name */
    public static final class Cdo<T, U> extends ez<U> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -3589550218733891694L;
        public final BiConsumer<? super U, ? super T> collector;
        public boolean done;
        public final U u;
        public Subscription upstream;

        public Cdo(Subscriber<? super U> subscriber, U u, BiConsumer<? super U, ? super T> biConsumer) {
            super(subscriber);
            this.collector = biConsumer;
            this.u = u;
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            complete(this.u);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
            } else {
                this.done = true;
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                this.collector.accept(this.u, t);
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

    public Cwhile(io.reactivex.Cfor<T> cfor, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        super(cfor);
        this.f26034for = callable;
        this.f26035new = biConsumer;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        try {
            this.f25614if.m5(new Cdo(subscriber, Cif.m29468else(this.f26034for.call(), "The initial value supplied is null"), this.f26035new));
        } catch (Throwable th) {
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
