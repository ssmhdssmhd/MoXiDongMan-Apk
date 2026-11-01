package io.reactivex.internal.operators.parallel;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.else, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Celse<T, R> extends ub1<R> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f27043do;

    /* renamed from: if, reason: not valid java name */
    public final Function<? super T, ? extends R> f27044if;

    /* renamed from: io.reactivex.internal.operators.parallel.else$do, reason: invalid class name */
    public static final class Cdo<T, R> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final ConditionalSubscriber<? super R> f27045do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f27046for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends R> f27047if;

        /* renamed from: new, reason: not valid java name */
        public boolean f27048new;

        public Cdo(ConditionalSubscriber<? super R> conditionalSubscriber, Function<? super T, ? extends R> function) {
            this.f27045do = conditionalSubscriber;
            this.f27047if = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f27046for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27048new) {
                return;
            }
            this.f27048new = true;
            this.f27045do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27048new) {
                jp1.l(th);
            } else {
                this.f27048new = true;
                this.f27045do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f27048new) {
                return;
            }
            try {
                this.f27045do.onNext(io.reactivex.internal.functions.Cif.m29468else(this.f27047if.apply(t), "The mapper returned a null value"));
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f27046for, subscription)) {
                this.f27046for = subscription;
                this.f27045do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f27046for.request(j);
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (this.f27048new) {
                return false;
            }
            try {
                return this.f27045do.tryOnNext(io.reactivex.internal.functions.Cif.m29468else(this.f27047if.apply(t), "The mapper returned a null value"));
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                onError(th);
                return false;
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.else$if, reason: invalid class name */
    public static final class Cif<T, R> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super R> f27049do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f27050for;

        /* renamed from: if, reason: not valid java name */
        public final Function<? super T, ? extends R> f27051if;

        /* renamed from: new, reason: not valid java name */
        public boolean f27052new;

        public Cif(Subscriber<? super R> subscriber, Function<? super T, ? extends R> function) {
            this.f27049do = subscriber;
            this.f27051if = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f27050for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27052new) {
                return;
            }
            this.f27052new = true;
            this.f27049do.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27052new) {
                jp1.l(th);
            } else {
                this.f27052new = true;
                this.f27049do.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f27052new) {
                return;
            }
            try {
                this.f27049do.onNext(io.reactivex.internal.functions.Cif.m29468else(this.f27051if.apply(t), "The mapper returned a null value"));
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f27050for, subscription)) {
                this.f27050for = subscription;
                this.f27049do.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f27050for.request(j);
        }
    }

    public Celse(ub1<T> ub1Var, Function<? super T, ? extends R> function) {
        this.f27043do = ub1Var;
        this.f27044if = function;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27043do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super R>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super R> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new Cdo((ConditionalSubscriber) subscriber, this.f27044if);
                } else {
                    subscriberArr2[i] = new Cif(subscriber, this.f27044if);
                }
            }
            this.f27043do.subscribe(subscriberArr2);
        }
    }
}
