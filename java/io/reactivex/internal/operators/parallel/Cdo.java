package io.reactivex.internal.operators.parallel;

import android.support.v4.cz;
import android.support.v4.jp1;
import android.support.v4.t80;
import android.support.v4.ub1;
import io.reactivex.functions.BiConsumer;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.Callable;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.parallel.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo<T, C> extends ub1<C> {

    /* renamed from: do, reason: not valid java name */
    public final ub1<? extends T> f27040do;

    /* renamed from: for, reason: not valid java name */
    public final BiConsumer<? super C, ? super T> f27041for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends C> f27042if;

    /* renamed from: io.reactivex.internal.operators.parallel.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0332do<T, C> extends cz<T, C> {
        private static final long serialVersionUID = -4767392946044436228L;
        public C collection;
        public final BiConsumer<? super C, ? super T> collector;
        public boolean done;

        public C0332do(Subscriber<? super C> subscriber, C c, BiConsumer<? super C, ? super T> biConsumer) {
            super(subscriber);
            this.collection = c;
            this.collector = biConsumer;
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
            C c = this.collection;
            this.collection = null;
            complete(c);
        }

        @Override // android.support.v4.cz, org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                jp1.l(th);
                return;
            }
            this.done = true;
            this.collection = null;
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            try {
                this.collector.accept(this.collection, t);
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

    public Cdo(ub1<? extends T> ub1Var, Callable<? extends C> callable, BiConsumer<? super C, ? super T> biConsumer) {
        this.f27040do = ub1Var;
        this.f27042if = callable;
        this.f27041for = biConsumer;
    }

    public void h(Subscriber<?>[] subscriberArr, Throwable th) {
        for (Subscriber<?> subscriber : subscriberArr) {
            io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
        }
    }

    @Override // android.support.v4.ub1
    /* renamed from: strictfp */
    public int mo7358strictfp() {
        return this.f27040do.mo7358strictfp();
    }

    @Override // android.support.v4.ub1
    public void subscribe(Subscriber<? super C>[] subscriberArr) {
        if (g(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super Object>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                try {
                    subscriberArr2[i] = new C0332do(subscriberArr[i], Cif.m29468else(this.f27042if.call(), "The initialSupplier returned a null value"), this.f27041for);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    h(subscriberArr, th);
                    return;
                }
            }
            this.f27040do.subscribe(subscriberArr2);
        }
    }
}
