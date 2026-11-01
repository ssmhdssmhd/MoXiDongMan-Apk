package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.Iterator;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class x2<T, U, V> extends io.reactivex.internal.operators.flowable.Cdo<T, V> {

    /* renamed from: for, reason: not valid java name */
    public final Iterable<U> f26052for;

    /* renamed from: new, reason: not valid java name */
    public final BiFunction<? super T, ? super U, ? extends V> f26053new;

    /* renamed from: io.reactivex.internal.operators.flowable.x2$do, reason: invalid class name */
    public static final class Cdo<T, U, V> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super V> f26054do;

        /* renamed from: for, reason: not valid java name */
        public final BiFunction<? super T, ? super U, ? extends V> f26055for;

        /* renamed from: if, reason: not valid java name */
        public final Iterator<U> f26056if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f26057new;

        /* renamed from: try, reason: not valid java name */
        public boolean f26058try;

        public Cdo(Subscriber<? super V> subscriber, Iterator<U> it, BiFunction<? super T, ? super U, ? extends V> biFunction) {
            this.f26054do = subscriber;
            this.f26056if = it;
            this.f26055for = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f26057new.cancel();
        }

        /* renamed from: do, reason: not valid java name */
        public void m29545do(Throwable th) {
            t80.m7781if(th);
            this.f26058try = true;
            this.f26057new.cancel();
            this.f26054do.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f26058try) {
                return;
            }
            this.f26058try = true;
            this.f26054do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f26058try) {
                jp1.l(th);
            } else {
                this.f26058try = true;
                this.f26054do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f26058try) {
                return;
            }
            try {
                try {
                    this.f26054do.onNext(Cif.m29468else(this.f26055for.apply(t, Cif.m29468else(this.f26056if.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f26056if.hasNext()) {
                            return;
                        }
                        this.f26058try = true;
                        this.f26057new.cancel();
                        this.f26054do.onComplete();
                    } catch (Throwable th) {
                        m29545do(th);
                    }
                } catch (Throwable th2) {
                    m29545do(th2);
                }
            } catch (Throwable th3) {
                m29545do(th3);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26057new, subscription)) {
                this.f26057new = subscription;
                this.f26054do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f26057new.request(j);
        }
    }

    public x2(io.reactivex.Cfor<T> cfor, Iterable<U> iterable, BiFunction<? super T, ? super U, ? extends V> biFunction) {
        super(cfor);
        this.f26052for = iterable;
        this.f26053new = biFunction;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super V> subscriber) {
        try {
            Iterator it = (Iterator) Cif.m29468else(this.f26052for.iterator(), "The iterator returned by other is null");
            try {
                if (it.hasNext()) {
                    this.f25614if.m5(new Cdo(subscriber, it, this.f26053new));
                } else {
                    io.reactivex.internal.subscriptions.Cdo.complete(subscriber);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
            }
        } catch (Throwable th2) {
            t80.m7781if(th2);
            io.reactivex.internal.subscriptions.Cdo.error(th2, subscriber);
        }
    }
}
