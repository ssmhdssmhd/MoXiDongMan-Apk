package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class k1<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final BiFunction<T, T, T> f25726for;

    /* renamed from: io.reactivex.internal.operators.flowable.k1$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f25727do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f25728for;

        /* renamed from: if, reason: not valid java name */
        public final BiFunction<T, T, T> f25729if;

        /* renamed from: new, reason: not valid java name */
        public T f25730new;

        /* renamed from: try, reason: not valid java name */
        public boolean f25731try;

        public Cdo(Subscriber<? super T> subscriber, BiFunction<T, T, T> biFunction) {
            this.f25727do = subscriber;
            this.f25729if = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f25728for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25731try) {
                return;
            }
            this.f25731try = true;
            this.f25727do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25731try) {
                jp1.l(th);
            } else {
                this.f25731try = true;
                this.f25727do.onError(th);
            }
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f25731try) {
                return;
            }
            Subscriber<? super T> subscriber = this.f25727do;
            T t2 = this.f25730new;
            if (t2 == null) {
                this.f25730new = t;
                subscriber.onNext(t);
                return;
            }
            try {
                ?? r4 = (T) Cif.m29468else(this.f25729if.apply(t2, t), "The value returned by the accumulator is null");
                this.f25730new = r4;
                subscriber.onNext(r4);
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f25728for.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f25728for, subscription)) {
                this.f25728for = subscription;
                this.f25727do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f25728for.request(j);
        }
    }

    public k1(io.reactivex.Cfor<T> cfor, BiFunction<T, T, T> biFunction) {
        super(cfor);
        this.f25726for = biFunction;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25726for));
    }
}
