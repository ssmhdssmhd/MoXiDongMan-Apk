package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t41;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.volatile, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cvolatile<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends t41<R>> f26013for;

    /* renamed from: io.reactivex.internal.operators.flowable.volatile$do, reason: invalid class name */
    public static final class Cdo<T, R> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super R> f26014do;

        /* renamed from: for, reason: not valid java name */
        public boolean f26015for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends t41<R>> f26016if;

        /* renamed from: new, reason: not valid java name */
        public Subscription f26017new;

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends t41<R>> function) {
            this.f26014do = subscriber;
            this.f26016if = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f26017new.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f26015for) {
                return;
            }
            this.f26015for = true;
            this.f26014do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f26015for) {
                jp1.l(th);
            } else {
                this.f26015for = true;
                this.f26014do.onError(th);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f26015for) {
                if (t instanceof t41) {
                    t41 t41Var = (t41) t;
                    if (t41Var.m7724else()) {
                        jp1.l(t41Var.m7726new());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                t41 t41Var2 = (t41) Cif.m29468else(this.f26016if.apply(t), "The selector returned a null Notification");
                if (t41Var2.m7724else()) {
                    this.f26017new.cancel();
                    onError(t41Var2.m7726new());
                } else if (!t41Var2.m7723case()) {
                    this.f26014do.onNext((Object) t41Var2.m7727try());
                } else {
                    this.f26017new.cancel();
                    onComplete();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.f26017new.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f26017new, subscription)) {
                this.f26017new = subscription;
                this.f26014do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f26017new.request(j);
        }
    }

    public Cvolatile(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends t41<R>> function) {
        super(cfor);
        this.f26013for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f26013for));
    }
}
