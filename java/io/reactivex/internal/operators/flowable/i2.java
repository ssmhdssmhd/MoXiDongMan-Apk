package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.r6;
import io.reactivex.Ctry;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.Cfor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class i2<T> extends io.reactivex.internal.operators.flowable.Cdo<T, T> {

    /* renamed from: case, reason: not valid java name */
    public final boolean f25685case;

    /* renamed from: for, reason: not valid java name */
    public final long f25686for;

    /* renamed from: new, reason: not valid java name */
    public final TimeUnit f25687new;

    /* renamed from: try, reason: not valid java name */
    public final Ctry f25688try;

    /* renamed from: io.reactivex.internal.operators.flowable.i2$do, reason: invalid class name */
    public static final class Cdo<T> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;
        public volatile boolean cancelled;
        public volatile boolean done;
        public final Subscriber<? super T> downstream;
        public final boolean emitLast;
        public long emitted;
        public Throwable error;
        public final AtomicReference<T> latest = new AtomicReference<>();
        public final AtomicLong requested = new AtomicLong();
        public final long timeout;
        public volatile boolean timerFired;
        public boolean timerRunning;
        public final TimeUnit unit;
        public Subscription upstream;
        public final Ctry.Cfor worker;

        public Cdo(Subscriber<? super T> subscriber, long j, TimeUnit timeUnit, Ctry.Cfor cfor, boolean z) {
            this.downstream = subscriber;
            this.timeout = j;
            this.unit = timeUnit;
            this.worker = cfor;
            this.emitLast = z;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.cancelled = true;
            this.upstream.cancel();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.latest.lazySet(null);
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<T> atomicReference = this.latest;
            AtomicLong atomicLong = this.requested;
            Subscriber<? super T> subscriber = this.downstream;
            int iAddAndGet = 1;
            while (!this.cancelled) {
                boolean z = this.done;
                if (z && this.error != null) {
                    atomicReference.lazySet(null);
                    subscriber.onError(this.error);
                    this.worker.dispose();
                    return;
                }
                boolean z2 = atomicReference.get() == null;
                if (z) {
                    if (z2 || !this.emitLast) {
                        atomicReference.lazySet(null);
                        subscriber.onComplete();
                    } else {
                        T andSet = atomicReference.getAndSet(null);
                        long j = this.emitted;
                        if (j != atomicLong.get()) {
                            this.emitted = j + 1;
                            subscriber.onNext(andSet);
                            subscriber.onComplete();
                        } else {
                            subscriber.onError(new a01("Could not emit final value due to lack of requests"));
                        }
                    }
                    this.worker.dispose();
                    return;
                }
                if (z2) {
                    if (this.timerFired) {
                        this.timerRunning = false;
                        this.timerFired = false;
                    }
                } else if (!this.timerRunning || this.timerFired) {
                    T andSet2 = atomicReference.getAndSet(null);
                    long j2 = this.emitted;
                    if (j2 == atomicLong.get()) {
                        this.upstream.cancel();
                        subscriber.onError(new a01("Could not emit value due to lack of requests"));
                        this.worker.dispose();
                        return;
                    } else {
                        subscriber.onNext(andSet2);
                        this.emitted = j2 + 1;
                        this.timerFired = false;
                        this.timerRunning = true;
                        this.worker.mo29362for(this, this.timeout, this.unit);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.latest.set(t);
            drain();
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
                r6.m6775do(this.requested, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.timerFired = true;
            drain();
        }
    }

    public i2(io.reactivex.Cfor<T> cfor, long j, TimeUnit timeUnit, Ctry ctry, boolean z) {
        super(cfor);
        this.f25686for = j;
        this.f25687new = timeUnit;
        this.f25688try = ctry;
        this.f25685case = z;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super T> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25686for, this.f25687new, this.f25688try.mo4229if(), this.f25685case));
    }
}
