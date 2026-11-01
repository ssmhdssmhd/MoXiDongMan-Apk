package io.reactivex.internal.operators.flowable;

import android.support.v4.ez;
import android.support.v4.jp1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.NoSuchElementException;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class b<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final long f25537for;

    /* renamed from: new, reason: not valid java name */
    public final T f25538new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f25539try;

    /* renamed from: io.reactivex.internal.operators.flowable.b$do, reason: invalid class name */
    public static final class Cdo<T> extends ez<T> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 4066607327284737757L;
        public long count;
        public final T defaultValue;
        public boolean done;
        public final boolean errorOnFewer;
        public final long index;
        public Subscription upstream;

        public Cdo(Subscriber<? super T> subscriber, long j, T t, boolean z) {
            super(subscriber);
            this.index = j;
            this.defaultValue = t;
            this.errorOnFewer = z;
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
            T t = this.defaultValue;
            if (t != null) {
                complete(t);
            } else if (this.errorOnFewer) {
                this.downstream.onError(new NoSuchElementException());
            } else {
                this.downstream.onComplete();
            }
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
            long j = this.count;
            if (j != this.index) {
                this.count = j + 1;
                return;
            }
            this.done = true;
            this.upstream.cancel();
            complete(t);
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

    public b(io.reactivex.Cfor<T> cfor, long j, T t, boolean z) {
        super(cfor);
        this.f25537for = j;
        this.f25538new = t;
        this.f25539try = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25537for, this.f25538new, this.f25539try));
    }
}
