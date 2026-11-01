package io.reactivex.internal.operators.parallel;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.for, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfor<T> extends ub1<T> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f27053do;

    /* renamed from: if, reason: not valid java name */
    public final Predicate<? super T> f27054if;

    /* renamed from: io.reactivex.internal.operators.parallel.for$do, reason: invalid class name */
    public static abstract class Cdo<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Predicate<? super T> f27055do;

        /* renamed from: for, reason: not valid java name */
        public boolean f27056for;

        /* renamed from: if, reason: not valid java name */
        public Subscription f27057if;

        public Cdo(Predicate<? super T> predicate) {
            this.f27055do = predicate;
        }

        @Override // org.reactivestreams.Subscription
        public final void cancel() {
            this.f27057if.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public final void onNext(T t) {
            if (tryOnNext(t) || this.f27056for) {
                return;
            }
            this.f27057if.request(1L);
        }

        @Override // org.reactivestreams.Subscription
        public final void request(long j) {
            this.f27057if.request(j);
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0333for<T> extends Cdo<T> {

        /* renamed from: new, reason: not valid java name */
        public final Subscriber<? super T> f27058new;

        public C0333for(Subscriber<? super T> subscriber, Predicate<? super T> predicate) {
            super(predicate);
            this.f27058new = subscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27056for) {
                return;
            }
            this.f27056for = true;
            this.f27058new.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27056for) {
                jp1.l(th);
            } else {
                this.f27056for = true;
                this.f27058new.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27057if, subscription)) {
                this.f27057if = subscription;
                this.f27058new.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (!this.f27056for) {
                try {
                    if (this.f27055do.test(t)) {
                        this.f27058new.onNext(t);
                        return true;
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }
    }

    /* renamed from: io.reactivex.internal.operators.parallel.for$if, reason: invalid class name */
    public static final class Cif<T> extends Cdo<T> {

        /* renamed from: new, reason: not valid java name */
        public final ConditionalSubscriber<? super T> f27059new;

        public Cif(ConditionalSubscriber<? super T> conditionalSubscriber, Predicate<? super T> predicate) {
            super(predicate);
            this.f27059new = conditionalSubscriber;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27056for) {
                return;
            }
            this.f27056for = true;
            this.f27059new.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27056for) {
                jp1.l(th);
            } else {
                this.f27056for = true;
                this.f27059new.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.f27057if, subscription)) {
                this.f27057if = subscription;
                this.f27059new.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        public boolean tryOnNext(T t) {
            if (!this.f27056for) {
                try {
                    if (this.f27055do.test(t)) {
                        return this.f27059new.tryOnNext(t);
                    }
                } catch (Throwable th) {
                    t80.m7781if(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }
    }

    public Cfor(ub1<T> ub1Var, Predicate<? super T> predicate) {
        this.f27053do = ub1Var;
        this.f27054if = predicate;
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27053do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super T> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new Cif((ConditionalSubscriber) subscriber, this.f27054if);
                } else {
                    subscriberArr2[i] = new C0333for(subscriber, this.f27054if);
                }
            }
            this.f27053do.subscribe(subscriberArr2);
        }
    }
}
