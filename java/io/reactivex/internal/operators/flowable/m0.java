package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class m0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> implements Consumer<T> {

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super T> f25744for;

    /* renamed from: io.reactivex.internal.operators.flowable.m0$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -6246093802440953054L;
        public boolean done;
        public final Subscriber<? super T> downstream;
        public final Consumer<? super T> onDrop;
        public Subscription upstream;

        public Cdo(Subscriber<? super T> subscriber, Consumer<? super T> consumer) {
            this.downstream = subscriber;
            this.onDrop = consumer;
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
            if (get() != 0) {
                this.downstream.onNext(t);
                r6.m6779try(this, 1L);
                return;
            }
            try {
                this.onDrop.accept(t);
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
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

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this, j);
            }
        }
    }

    public m0(io.reactivex.Cfor<T> cfor) {
        super(cfor);
        this.f25744for = this;
    }

    @Override // io.reactivex.functions.Consumer
    public void accept(T t) {
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25744for));
    }

    public m0(io.reactivex.Cfor<T> cfor, Consumer<? super T> consumer) {
        super(cfor);
        this.f25744for = consumer;
    }
}
