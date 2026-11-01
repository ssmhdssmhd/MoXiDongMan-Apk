package io.reactivex.internal.operators.single;

import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.single.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally<T, R> extends Cfor<R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f27175for;

    /* renamed from: if, reason: not valid java name */
    public final SingleSource<T> f27176if;

    public Cfinally(SingleSource<T> singleSource, Function<? super T, ? extends Publisher<? extends R>> function) {
        this.f27176if = singleSource;
        this.f27175for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f27176if.subscribe(new Cdo(subscriber, this.f27175for));
    }

    /* renamed from: io.reactivex.internal.operators.single.finally$do, reason: invalid class name */
    public static final class Cdo<S, T> extends AtomicLong implements SingleObserver<S>, FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 7759721921468635667L;
        public Disposable disposable;
        public final Subscriber<? super T> downstream;
        public final Function<? super S, ? extends Publisher<? extends T>> mapper;
        public final AtomicReference<Subscription> parent = new AtomicReference<>();

        public Cdo(Subscriber<? super T> subscriber, Function<? super S, ? extends Publisher<? extends T>> function) {
            this.downstream = subscriber;
            this.mapper = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.disposable.dispose();
            io.reactivex.internal.subscriptions.Cfor.cancel(this.parent);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.disposable = disposable;
            this.downstream.onSubscribe(this);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(S s) {
            try {
                ((Publisher) Cif.m29468else(this.mapper.apply(s), "the mapper returned a null Publisher")).subscribe(this);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            io.reactivex.internal.subscriptions.Cfor.deferredRequest(this.parent, this, j);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.deferredSetOnce(this.parent, this, subscription);
        }
    }
}
