package io.reactivex.internal.operators.flowable;

import android.support.v4.ez;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.Collection;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class l2<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.Cdo<T, U> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<U> f25742for;

    /* renamed from: io.reactivex.internal.operators.flowable.l2$do, reason: invalid class name */
    public static final class Cdo<T, U extends Collection<? super T>> extends ez<U> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -8134157938864266736L;
        public Subscription upstream;

        /* JADX WARN: Multi-variable type inference failed */
        public Cdo(Subscriber<? super U> subscriber, U u) {
            super(subscriber);
            this.value = u;
        }

        @Override // android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.upstream.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            complete(this.value);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.value = null;
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            Collection collection = (Collection) this.value;
            if (collection != null) {
                collection.add(t);
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

    public l2(io.reactivex.Cfor<T> cfor, Callable<U> callable) {
        super(cfor);
        this.f25742for = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super U> subscriber) {
        try {
            this.f25614if.m5(new Cdo(subscriber, (Collection) Cif.m29468else(this.f25742for.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
