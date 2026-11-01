package io.reactivex.internal.operators.flowable;

import android.support.v4.t80;
import android.support.v4.xz1;
import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class q0<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super Throwable, ? extends T> f25812for;

    /* renamed from: io.reactivex.internal.operators.flowable.q0$do, reason: invalid class name */
    public static final class Cdo<T> extends xz1<T, T> {
        private static final long serialVersionUID = -3740826063558713822L;
        public final Function<? super Throwable, ? extends T> valueSupplier;

        public Cdo(Subscriber<? super T> subscriber, Function<? super Throwable, ? extends T> function) {
            super(subscriber);
            this.valueSupplier = function;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            try {
                complete(Cif.m29468else(this.valueSupplier.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.produced++;
            this.downstream.onNext(t);
        }
    }

    public q0(Cfor<T> cfor, Function<? super Throwable, ? extends T> function) {
        super(cfor);
        this.f25812for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25812for));
    }
}
