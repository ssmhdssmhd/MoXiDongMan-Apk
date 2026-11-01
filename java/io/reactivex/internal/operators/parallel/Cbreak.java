package io.reactivex.internal.operators.parallel;

import android.support.v4.cz;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.break, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cbreak<T, R> extends ub1<R> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<? extends T> f27024do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<R, ? super T, R> f27025for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<R> f27026if;

    /* renamed from: io.reactivex.internal.operators.parallel.break$do, reason: invalid class name */
    public static final class Cdo<T, R> extends cz<T, R> {
        private static final long serialVersionUID = 8200530050639449080L;
        public R accumulator;
        public boolean done;
        public final BiFunction<R, ? super T, R> reducer;

        public Cdo(Subscriber<? super R> subscriber, R r, BiFunction<R, ? super T, R> biFunction) {
            super(subscriber);
            this.accumulator = r;
            this.reducer = biFunction;
        }

        @Override // android.support.v4.cz, android.support.v4.ez, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.upstream.cancel();
        }

        @Override // android.support.v4.cz, org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            R r = this.accumulator;
            this.accumulator = null;
            complete(r);
        }

        @Override // android.support.v4.cz, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.accumulator = null;
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                this.accumulator = (R) Cif.m29468else(this.reducer.apply(this.accumulator, t), "The reducer returned a null value");
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                onError(th);
            }
        }

        @Override // android.support.v4.cz, io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public Cbreak(ub1<? extends T> ub1Var, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        this.f27024do = ub1Var;
        this.f27026if = callable;
        this.f27025for = biFunction;
    }

    public void h(Subscriber<?>[] subscriberArr, Throwable th) {
        for (Subscriber<?> subscriber : subscriberArr) {
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27024do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super R>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super Object>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                try {
                    subscriberArr2[i] = new Cdo(subscriberArr[i], Cif.m29468else(this.f27026if.call(), "The initialSupplier returned a null value"), this.f27025for);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    h(subscriberArr, th);
                    return;
                }
            }
            this.f27024do.subscribe(subscriberArr2);
        }
    }
}
