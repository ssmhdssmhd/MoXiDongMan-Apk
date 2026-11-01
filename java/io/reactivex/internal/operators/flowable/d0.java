package io.reactivex.internal.operators.flowable;

import android.support.v4.t80;
import android.support.v4.xz1;
import io.reactivex.Cfor;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;

/* loaded from: classes3.dex */
public final class d0<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends R> f25607for;

    /* renamed from: new, reason: not valid java name */
    public final Function<? super Throwable, ? extends R> f25608new;

    /* renamed from: try, reason: not valid java name */
    public final Callable<? extends R> f25609try;

    /* renamed from: io.reactivex.internal.operators.flowable.d0$do, reason: invalid class name */
    public static final class Cdo<T, R> extends xz1<T, R> {
        private static final long serialVersionUID = 2757120512858778108L;
        public final Callable<? extends R> onCompleteSupplier;
        public final Function<? super Throwable, ? extends R> onErrorMapper;
        public final Function<? super T, ? extends R> onNextMapper;

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends R> function, Function<? super Throwable, ? extends R> function2, Callable<? extends R> callable) {
            super(subscriber);
            this.onNextMapper = function;
            this.onErrorMapper = function2;
            this.onCompleteSupplier = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            try {
                complete(Cif.m29468else(this.onCompleteSupplier.call(), "The onComplete publisher returned is null"));
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            try {
                complete(Cif.m29468else(this.onErrorMapper.apply(th), "The onError publisher returned is null"));
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Object objM29468else = Cif.m29468else(this.onNextMapper.apply(t), "The onNext publisher returned is null");
                this.produced++;
                this.downstream.onNext(objM29468else);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.downstream.onError(th);
            }
        }
    }

    public d0(Cfor<T> cfor, Function<? super T, ? extends R> function, Function<? super Throwable, ? extends R> function2, Callable<? extends R> callable) {
        super(cfor);
        this.f25607for = function;
        this.f25608new = function2;
        this.f25609try = callable;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25607for, this.f25608new, this.f25609try));
    }
}
