package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.jz1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class y0<T, R> extends jz1<R> {

    /* renamed from: do, reason: not valid java name */
    public final Publisher<T> f26063do;

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<R, ? super T, R> f26064for;

    /* renamed from: if, reason: not valid java name */
    public final R f26065if;

    /* renamed from: io.reactivex.internal.operators.flowable.y0$do, reason: invalid class name */
    public static final class Cdo<T, R> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: do, reason: not valid java name */
        public final SingleObserver<? super R> f26066do;

        /* renamed from: for, reason: not valid java name */
        public R f26067for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<R, ? super T, R> f26068if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f26069new;

        public Cdo(SingleObserver<? super R> singleObserver, BiFunction<R, ? super T, R> biFunction, R r) {
            this.f26066do = singleObserver;
            this.f26067for = r;
            this.f26068if = biFunction;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f26069new.cancel();
            this.f26069new = Cfor.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f26069new == Cfor.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            R r = this.f26067for;
            if (r != null) {
                this.f26067for = null;
                this.f26069new = Cfor.CANCELLED;
                this.f26066do.onSuccess(r);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f26067for == null) {
                jp1.l(th);
                return;
            }
            this.f26067for = null;
            this.f26069new = Cfor.CANCELLED;
            this.f26066do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            R r = this.f26067for;
            if (r != null) {
                try {
                    this.f26067for = (R) Cif.m29468else(this.f26068if.apply(r, t), "The reducer returned a null value");
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.f26069new.cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26069new, subscription)) {
                this.f26069new = subscription;
                this.f26066do.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public y0(Publisher<T> publisher, R r, BiFunction<R, ? super T, R> biFunction) {
        this.f26063do = publisher;
        this.f26065if = r;
        this.f26064for = biFunction;
    }

    @Override // android.support.v4.jz1
    public void g0(SingleObserver<? super R> singleObserver) {
        this.f26063do.subscribe(new Cdo(singleObserver, this.f26064for, this.f26065if));
    }
}
