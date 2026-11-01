package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class f2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Predicate<? super T> f25634for;

    /* renamed from: io.reactivex.internal.operators.flowable.f2$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25635do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25636for;

        /* renamed from: if, reason: not valid java name */
        public final Predicate<? super T> f25637if;

        /* renamed from: new, reason: not valid java name */
        public boolean f25638new;

        public Cdo(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            this.f25635do = subscriber;
            this.f25637if = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25636for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25638new) {
                return;
            }
            this.f25638new = true;
            this.f25635do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25638new) {
                jp1.l(th);
            } else {
                this.f25638new = true;
                this.f25635do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25638new) {
                return;
            }
            this.f25635do.onNext(t);
            try {
                if (this.f25637if.test(t)) {
                    this.f25638new = true;
                    this.f25636for.cancel();
                    this.f25635do.onComplete();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25636for.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f25636for, subscription)) {
                this.f25636for = subscription;
                this.f25635do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25636for.request(j);
        }
    }

    public f2(io.reactivex.Cfor<T> cfor, Predicate<? super T> predicate) {
        super(cfor);
        this.f25634for = predicate;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25634for));
    }
}
