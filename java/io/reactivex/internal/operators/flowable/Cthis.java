package io.reactivex.internal.operators.flowable;

import android.support.v4.ez;
import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<T> extends io.reactivex.internal.operators.flowable.Cdo<T, Boolean> {

    /* renamed from: for, reason: not valid java name */
    public final Predicate<? super T> f25929for;

    /* renamed from: io.reactivex.internal.operators.flowable.this$do, reason: invalid class name */
    public static final class Cdo<T> extends ez<Boolean> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -2311252482644620661L;
        public boolean done;
        public final Predicate<? super T> predicate;
        public Subscription upstream;

        public Cdo(Subscriber<? super Boolean> subscriber, Predicate<? super T> predicate) {
            super(subscriber);
            this.predicate = predicate;
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
            complete(Boolean.FALSE);
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
                if (this.predicate.test(t)) {
                    this.done = true;
                    this.upstream.cancel();
                    complete(Boolean.TRUE);
                }
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

    public Cthis(io.reactivex.Cfor<T> cfor, Predicate<? super T> predicate) {
        super(cfor);
        this.f25929for = predicate;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Boolean> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25929for));
    }
}
