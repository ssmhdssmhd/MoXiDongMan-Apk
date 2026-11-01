package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.LongConsumer;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class a<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    private final Consumer<? super Subscription> f25518for;

    /* renamed from: new, reason: not valid java name */
    private final LongConsumer f25519new;

    /* renamed from: try, reason: not valid java name */
    private final Action f25520try;

    /* renamed from: io.reactivex.internal.operators.flowable.a$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25521do;

        /* renamed from: for, reason: not valid java name */
        public final LongConsumer f25522for;

        /* renamed from: if, reason: not valid java name */
        public final Consumer<? super Subscription> f25523if;

        /* renamed from: new, reason: not valid java name */
        public final Action f25524new;

        /* renamed from: try, reason: not valid java name */
        public Subscription f25525try;

        public Cdo(Subscriber<? super T> subscriber, Consumer<? super Subscription> consumer, LongConsumer longConsumer, Action action) {
            this.f25521do = subscriber;
            this.f25523if = consumer;
            this.f25524new = action;
            this.f25522for = longConsumer;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            Subscription subscription = this.f25525try;
            Cfor cfor = Cfor.CANCELLED;
            if (subscription != cfor) {
                this.f25525try = cfor;
                try {
                    this.f25524new.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
                subscription.cancel();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25525try != Cfor.CANCELLED) {
                this.f25521do.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25525try != Cfor.CANCELLED) {
                this.f25521do.onError(th);
            } else {
                jp1.l(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f25521do.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            try {
                this.f25523if.accept(subscription);
                if (Cfor.validate(this.f25525try, subscription)) {
                    this.f25525try = subscription;
                    this.f25521do.onSubscribe(this);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                subscription.cancel();
                this.f25525try = Cfor.CANCELLED;
                io.reactivex.internal.subscriptions.Cdo.error(th, this.f25521do);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            try {
                this.f25522for.accept(j);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
            this.f25525try.request(j);
        }
    }

    public a(io.reactivex.Cfor<T> cfor, Consumer<? super Subscription> consumer, LongConsumer longConsumer, Action action) {
        super(cfor);
        this.f25518for = consumer;
        this.f25519new = longConsumer;
        this.f25520try = action;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25518for, this.f25519new, this.f25520try));
    }
}
