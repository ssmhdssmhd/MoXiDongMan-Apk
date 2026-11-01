package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.bx1;
import android.support.v4.r6;
import io.reactivex.FlowableSubscriber;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class h1<T> extends io.reactivex.Cfor<T> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<?> f25670for;

    /* renamed from: if, reason: not valid java name */
    public final Publisher<T> f25671if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f25672new;

    /* renamed from: io.reactivex.internal.operators.flowable.h1$do, reason: invalid class name */
    public static final class Cdo<T> extends Cfor<T> {
        private static final long serialVersionUID = -3029755663834015785L;
        public volatile boolean done;
        public final AtomicInteger wip;

        public Cdo(Subscriber<? super T> subscriber, Publisher<?> publisher) {
            super(subscriber, publisher);
            this.wip = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.h1.Cfor
        public void completion() {
            this.done = true;
            if (this.wip.getAndIncrement() == 0) {
                emit();
                this.downstream.onComplete();
            }
        }

        @Override // io.reactivex.internal.operators.flowable.h1.Cfor
        public void run() {
            if (this.wip.getAndIncrement() == 0) {
                do {
                    boolean z = this.done;
                    emit();
                    if (z) {
                        this.downstream.onComplete();
                        return;
                    }
                } while (this.wip.decrementAndGet() != 0);
            }
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.h1$for, reason: invalid class name */
    public static abstract class Cfor<T> extends AtomicReference<T> implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -3517602651313910099L;
        public final Subscriber<? super T> downstream;
        public final Publisher<?> sampler;
        public Subscription upstream;
        public final AtomicLong requested = new AtomicLong();
        public final AtomicReference<Subscription> other = new AtomicReference<>();

        public Cfor(Subscriber<? super T> subscriber, Publisher<?> publisher) {
            this.downstream = subscriber;
            this.sampler = publisher;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.other);
            this.upstream.cancel();
        }

        public void complete() {
            this.upstream.cancel();
            completion();
        }

        public abstract void completion();

        public void emit() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                if (this.requested.get() != 0) {
                    this.downstream.onNext(andSet);
                    r6.m6779try(this.requested, 1L);
                } else {
                    cancel();
                    this.downstream.onError(new a01("Couldn't emit value due to lack of requests!"));
                }
            }
        }

        public void error(Throwable th) {
            this.upstream.cancel();
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.other);
            completion();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.other);
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                if (this.other.get() == null) {
                    this.sampler.subscribe(new Cnew(this));
                    subscription.request(Long.MAX_VALUE);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (io.reactivex.internal.subscriptions.Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
            }
        }

        public abstract void run();

        public void setOther(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this.other, subscription, Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.h1$if, reason: invalid class name */
    public static final class Cif<T> extends Cfor<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        public Cif(Subscriber<? super T> subscriber, Publisher<?> publisher) {
            super(subscriber, publisher);
        }

        @Override // io.reactivex.internal.operators.flowable.h1.Cfor
        public void completion() {
            this.downstream.onComplete();
        }

        @Override // io.reactivex.internal.operators.flowable.h1.Cfor
        public void run() {
            emit();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.h1$new, reason: invalid class name */
    public static final class Cnew<T> implements FlowableSubscriber<Object> {

        /* renamed from: do, reason: not valid java name */
        public final Cfor<T> f25673do;

        public Cnew(Cfor<T> cfor) {
            this.f25673do = cfor;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f25673do.complete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f25673do.error(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.f25673do.run();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f25673do.setOther(subscription);
        }
    }

    public h1(Publisher<T> publisher, Publisher<?> publisher2, boolean z) {
        this.f25671if = publisher;
        this.f25670for = publisher2;
        this.f25672new = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        bx1 bx1Var = new bx1(subscriber);
        if (this.f25672new) {
            this.f25671if.subscribe(new Cdo(bx1Var, this.f25670for));
        } else {
            this.f25671if.subscribe(new Cif(bx1Var, this.f25670for));
        }
    }
}
