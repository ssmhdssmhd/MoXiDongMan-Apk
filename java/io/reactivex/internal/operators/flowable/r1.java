package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class r1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f25833for;

    /* renamed from: io.reactivex.internal.operators.flowable.r1$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25834do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25835for;

        /* renamed from: if, reason: not valid java name */
        public long f25836if;

        public Cdo(Subscriber<? super T> subscriber, long j) {
            this.f25834do = subscriber;
            this.f25836if = j;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25835for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25834do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25834do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            long j = this.f25836if;
            if (j != 0) {
                this.f25836if = j - 1;
            } else {
                this.f25834do.onNext(t);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f25835for, subscription)) {
                long j = this.f25836if;
                this.f25835for = subscription;
                this.f25834do.onSubscribe(this);
                subscription.request(j);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25835for.request(j);
        }
    }

    public r1(io.reactivex.Cfor<T> cfor, long j) {
        super(cfor);
        this.f25833for = j;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25833for));
    }
}
