package io.reactivex.internal.operators.flowable;

import android.support.v4.jp1;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class o2<T, D> extends Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super D, ? extends Publisher<? extends T>> f25773for;

    /* renamed from: if, reason: not valid java name */
    public final Callable<? extends D> f25774if;

    /* renamed from: new, reason: not valid java name */
    public final Consumer<? super D> f25775new;

    /* renamed from: try, reason: not valid java name */
    public final boolean f25776try;

    /* renamed from: io.reactivex.internal.operators.flowable.o2$do, reason: invalid class name */
    public static final class Cdo<T, D> extends AtomicBoolean implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 5904473792286235046L;
        public final Consumer<? super D> disposer;
        public final Subscriber<? super T> downstream;
        public final boolean eager;
        public final D resource;
        public Subscription upstream;

        public Cdo(Subscriber<? super T> subscriber, D d, Consumer<? super D> consumer, boolean z) {
            this.downstream = subscriber;
            this.resource = d;
            this.disposer = consumer;
            this.eager = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            disposeAfter();
            this.upstream.cancel();
        }

        public void disposeAfter() {
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept(this.resource);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    jp1.l(th);
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.eager) {
                this.downstream.onComplete();
                this.upstream.cancel();
                disposeAfter();
                return;
            }
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept(this.resource);
                } catch (Throwable th) {
                    t80.m7781if(th);
                    this.downstream.onError(th);
                    return;
                }
            }
            this.upstream.cancel();
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.eager) {
                this.downstream.onError(th);
                this.upstream.cancel();
                disposeAfter();
                return;
            }
            Throwable th2 = null;
            if (compareAndSet(false, true)) {
                try {
                    this.disposer.accept(this.resource);
                } catch (Throwable th3) {
                    th2 = th3;
                    t80.m7781if(th2);
                }
            }
            this.upstream.cancel();
            if (th2 != null) {
                this.downstream.onError(new io.reactivex.exceptions.Cdo(th, th2));
            } else {
                this.downstream.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.upstream.request(j);
        }
    }

    public o2(Callable<? extends D> callable, Function<? super D, ? extends Publisher<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        this.f25774if = callable;
        this.f25773for = function;
        this.f25775new = consumer;
        this.f25776try = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        try {
            D dCall = this.f25774if.call();
            try {
                ((Publisher) Cif.m29468else(this.f25773for.apply(dCall), "The sourceSupplier returned a null Publisher")).subscribe(new Cdo(subscriber, dCall, this.f25775new, this.f25776try));
            } catch (Throwable th) {
                t80.m7781if(th);
                try {
                    this.f25775new.accept(dCall);
                    io.reactivex.internal.subscriptions.Cdo.error(th, subscriber);
                } catch (Throwable th2) {
                    t80.m7781if(th2);
                    io.reactivex.internal.subscriptions.Cdo.error(new io.reactivex.exceptions.Cdo(th, th2), subscriber);
                }
            }
        } catch (Throwable th3) {
            t80.m7781if(th3);
            io.reactivex.internal.subscriptions.Cdo.error(th3, subscriber);
        }
    }
}
