package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.bx1;
import android.support.v4.jp1;
import android.support.v4.p10;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.private, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cprivate<T, U> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<U>> f25793for;

    /* renamed from: io.reactivex.internal.operators.flowable.private$do, reason: invalid class name */
    public static final class Cdo<T, U> extends AtomicLong implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 6725975399620862591L;
        public final Function<? super T, ? extends Publisher<U>> debounceSelector;
        public final AtomicReference<Disposable> debouncer = new AtomicReference<>();
        public boolean done;
        public final Subscriber<? super T> downstream;
        public volatile long index;
        public Subscription upstream;

        /* renamed from: io.reactivex.internal.operators.flowable.private$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0288do<T, U> extends p10<U> {

            /* renamed from: case, reason: not valid java name */
            public final AtomicBoolean f25794case = new AtomicBoolean();

            /* renamed from: for, reason: not valid java name */
            public final long f25795for;

            /* renamed from: if, reason: not valid java name */
            public final Cdo<T, U> f25796if;

            /* renamed from: new, reason: not valid java name */
            public final T f25797new;

            /* renamed from: try, reason: not valid java name */
            public boolean f25798try;

            public C0288do(Cdo<T, U> cdo, long j, T t) {
                this.f25796if = cdo;
                this.f25795for = j;
                this.f25797new = t;
            }

            /* renamed from: new, reason: not valid java name */
            public void m29496new() {
                if (this.f25794case.compareAndSet(false, true)) {
                    this.f25796if.emit(this.f25795for, this.f25797new);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onComplete() {
                if (this.f25798try) {
                    return;
                }
                this.f25798try = true;
                m29496new();
            }

            @Override // org.reactivestreams.Subscriber
            public void onError(Throwable th) {
                if (this.f25798try) {
                    jp1.l(th);
                } else {
                    this.f25798try = true;
                    this.f25796if.onError(th);
                }
            }

            @Override // org.reactivestreams.Subscriber
            public void onNext(U u) {
                if (this.f25798try) {
                    return;
                }
                this.f25798try = true;
                m5829do();
                m29496new();
            }
        }

        public Cdo(Subscriber<? super T> subscriber, Function<? super T, ? extends Publisher<U>> function) {
            this.downstream = subscriber;
            this.debounceSelector = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.upstream.cancel();
            io.reactivex.internal.disposables.Cdo.dispose(this.debouncer);
        }

        public void emit(long j, T t) {
            if (j == this.index) {
                if (get() != 0) {
                    this.downstream.onNext(t);
                    r6.m6779try(this, 1L);
                } else {
                    cancel();
                    this.downstream.onError(new a01("Could not deliver value due to lack of requests"));
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            Disposable disposable = this.debouncer.get();
            if (io.reactivex.internal.disposables.Cdo.isDisposed(disposable)) {
                return;
            }
            C0288do c0288do = (C0288do) disposable;
            if (c0288do != null) {
                c0288do.m29496new();
            }
            io.reactivex.internal.disposables.Cdo.dispose(this.debouncer);
            this.downstream.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            io.reactivex.internal.disposables.Cdo.dispose(this.debouncer);
            this.downstream.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            long j = this.index + 1;
            this.index = j;
            Disposable disposable = this.debouncer.get();
            if (disposable != null) {
                disposable.dispose();
            }
            try {
                Publisher publisher = (Publisher) Cif.m29468else(this.debounceSelector.apply(t), "The publisher supplied is null");
                C0288do c0288do = new C0288do(this, j, t);
                if (this.debouncer.compareAndSet(disposable, c0288do)) {
                    publisher.subscribe(c0288do);
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                cancel();
                this.downstream.onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this, j);
            }
        }
    }

    public Cprivate(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends Publisher<U>> function) {
        super(cfor);
        this.f25793for = function;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(new bx1(subscriber), this.f25793for));
    }
}
