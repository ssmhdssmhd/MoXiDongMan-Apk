package io.reactivex.internal.operators.flowable;

import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class v1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Predicate<? super T> f26004for;

    /* renamed from: io.reactivex.internal.operators.flowable.v1$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f26005do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f26006for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f26007if;

        /* renamed from: new, reason: not valid java name */
        public boolean f26008new;

        public Cdo(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            this.f26005do = subscriber;
            this.f26007if = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f26006for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f26005do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f26005do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f26008new) {
                this.f26005do.onNext(t);
                return;
            }
            try {
                if (this.f26007if.test(t)) {
                    this.f26006for.request(1L);
                } else {
                    this.f26008new = true;
                    this.f26005do.onNext(t);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26006for.cancel();
                this.f26005do.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26006for, subscription)) {
                this.f26006for = subscription;
                this.f26005do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f26006for.request(j);
        }
    }

    public v1(io.reactivex.Cfor<T> cfor, Predicate<? super T> predicate) {
        super(cfor);
        this.f26004for = predicate;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f26004for));
    }
}
