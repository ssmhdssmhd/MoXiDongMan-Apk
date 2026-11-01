package io.reactivex.internal.operators.parallel;

import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.LongConsumer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.this, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cthis<T> extends ub1<T> {

    /* renamed from: case, reason: not valid java name */
    public final Action f27098case;

    /* renamed from: do, reason: not valid java name */
    public final ub1<T> f27099do;

    /* renamed from: else, reason: not valid java name */
    public final Consumer<? super Subscription> f27100else;

    /* renamed from: for, reason: not valid java name */
    public final Consumer<? super T> f27101for;

    /* renamed from: goto, reason: not valid java name */
    public final LongConsumer f27102goto;

    /* renamed from: if, reason: not valid java name */
    public final Consumer<? super T> f27103if;

    /* renamed from: new, reason: not valid java name */
    public final Consumer<? super Throwable> f27104new;

    /* renamed from: this, reason: not valid java name */
    public final Action f27105this;

    /* renamed from: try, reason: not valid java name */
    public final Action f27106try;

    /* renamed from: io.reactivex.internal.operators.parallel.this$do, reason: invalid class name */
    public static final class Cdo<T> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: do, reason: not valid java name */
        public final Subscriber<? super T> f27107do;

        /* renamed from: for, reason: not valid java name */
        public Subscription f27108for;

        /* renamed from: if, reason: not valid java name */
        public final Cthis<T> f27109if;

        /* renamed from: new, reason: not valid java name */
        public boolean f27110new;

        public Cdo(Subscriber<? super T> subscriber, Cthis<T> cthis) {
            this.f27107do = subscriber;
            this.f27109if = cthis;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            try {
                this.f27109if.f27105this.run();
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
            this.f27108for.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f27110new) {
                return;
            }
            this.f27110new = true;
            try {
                this.f27109if.f27106try.run();
                this.f27107do.onComplete();
                try {
                    this.f27109if.f27098case.run();
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                this.f27107do.onError(th2);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f27110new) {
                jp1.l(th);
                return;
            }
            this.f27110new = true;
            try {
                this.f27109if.f27104new.accept(th);
            } catch (Throwable th2) {
                t80.m7781if(th2);
                th = new io.reactivex.exceptions.Cdo(th, th2);
            }
            this.f27107do.onError(th);
            try {
                this.f27109if.f27098case.run();
            } catch (Throwable th3) {
                t80.m7781if(th3);
                jp1.l(th3);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f27110new) {
                return;
            }
            try {
                this.f27109if.f27103if.accept(t);
                this.f27107do.onNext(t);
                try {
                    this.f27109if.f27101for.accept(t);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    onError(th);
                }
            } catch (Throwable th2) {
                t80.m7781if(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.f27108for, subscription)) {
                this.f27108for = subscription;
                try {
                    this.f27109if.f27100else.accept(subscription);
                    this.f27107do.onSubscribe(this);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    subscription.cancel();
                    this.f27107do.onSubscribe(io.reactivex.internal.subscriptions.Cdo.INSTANCE);
                    onError(th);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            try {
                this.f27109if.f27102goto.accept(j);
            } catch (Throwable th) {
                t80.m7781if(th);
                jp1.l(th);
            }
            this.f27108for.request(j);
        }
    }

    public Cthis(ub1<T> ub1Var, Consumer<? super T> consumer, Consumer<? super T> consumer2, Consumer<? super Throwable> consumer3, Action action, Action action2, Consumer<? super Subscription> consumer4, LongConsumer longConsumer, Action action3) {
        this.f27099do = ub1Var;
        this.f27103if = (Consumer) Cif.m29468else(consumer, "onNext is null");
        this.f27101for = (Consumer) Cif.m29468else(consumer2, "onAfterNext is null");
        this.f27104new = (Consumer) Cif.m29468else(consumer3, "onError is null");
        this.f27106try = (Action) Cif.m29468else(action, "onComplete is null");
        this.f27098case = (Action) Cif.m29468else(action2, "onAfterTerminated is null");
        this.f27100else = (Consumer) Cif.m29468else(consumer4, "onSubscribe is null");
        this.f27102goto = (LongConsumer) Cif.m29468else(longConsumer, "onRequest is null");
        this.f27105this = (Action) Cif.m29468else(action3, "onCancel is null");
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27099do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr2[i] = new Cdo(subscriberArr[i], this);
            }
            this.f27099do.subscribe(subscriberArr2);
        }
    }
}
