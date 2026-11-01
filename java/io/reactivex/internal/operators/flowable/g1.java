package io.reactivex.internal.operators.flowable;

import android.support.v4.bx1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.operators.flowable.d1;
import io.reactivex.processors.Celse;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class g1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super Cfor<Throwable>, ? extends Publisher<?>> f25654for;

    /* renamed from: io.reactivex.internal.operators.flowable.g1$do, reason: invalid class name */
    public static final class Cdo<T> extends d1.Cfor<T, Throwable> {
        private static final long serialVersionUID = -2680129890138081029L;

        public Cdo(Subscriber<? super T> subscriber, io.reactivex.processors.Cfor<Throwable> cfor, Subscription subscription) {
            super(subscriber, cfor, subscription);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.receiver.cancel();
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            again(th);
        }
    }

    public g1(Cfor<T> cfor, Function<? super Cfor<Throwable>, ? extends Publisher<?>> function) {
        super(cfor);
        this.f25654for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        bx1 bx1Var = new bx1(subscriber);
        io.reactivex.processors.Cfor<T> cforP7 = Celse.S7(8).P7();
        try {
            Publisher publisher = (Publisher) Cif.m29468else(this.f25654for.apply(cforP7), "handler returned a null Publisher");
            d1.Cif cif = new d1.Cif(this.f25614if);
            Cdo cdo = new Cdo(bx1Var, cforP7, cif);
            cif.subscriber = cdo;
            subscriber.onSubscribe(cdo);
            publisher.subscribe(cif);
            cif.onNext(0);
        } catch (Throwable th) {
            t80.m7781if(th);
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }
}
