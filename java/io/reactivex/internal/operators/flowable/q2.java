package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.p10;
import android.support.v4.r6;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.processors.Celse;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class q2<T, B> extends io.reactivex.internal.operators.flowable.Cdo<T, Cfor<T>> {

    /* renamed from: for, reason: not valid java name */
    public final Publisher<B> f25820for;

    /* renamed from: new, reason: not valid java name */
    public final int f25821new;

    /* renamed from: io.reactivex.internal.operators.flowable.q2$do, reason: invalid class name */
    public static final class Cdo<T, B> extends p10<B> {

        /* renamed from: for, reason: not valid java name */
        public boolean f25822for;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, B> f25823if;

        public Cdo(Cif<T, B> cif) {
            this.f25823if = cif;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25822for) {
                return;
            }
            this.f25822for = true;
            this.f25823if.innerComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25822for) {
                jp1.l(th);
            } else {
                this.f25822for = true;
                this.f25823if.innerError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            if (this.f25822for) {
                return;
            }
            this.f25823if.innerNext();
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.q2$if, reason: invalid class name */
    public static final class Cif<T, B> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        public static final Object NEXT_WINDOW = new Object();
        private static final long serialVersionUID = 2233020065421370272L;
        public final int capacityHint;
        public volatile boolean done;
        public final Subscriber<? super Cfor<T>> downstream;
        public long emitted;
        public Celse<T> window;
        public final Cdo<T, B> boundarySubscriber = new Cdo<>(this);
        public final AtomicReference<Subscription> upstream = new AtomicReference<>();
        public final AtomicInteger windows = new AtomicInteger(1);
        public final io.reactivex.internal.queue.Cdo<Object> queue = new io.reactivex.internal.queue.Cdo<>();
        public final h4 errors = new h4();
        public final AtomicBoolean stopWindows = new AtomicBoolean();
        public final AtomicLong requested = new AtomicLong();

        public Cif(Subscriber<? super Cfor<T>> subscriber, int i) {
            this.downstream = subscriber;
            this.capacityHint = i;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.stopWindows.compareAndSet(false, true)) {
                this.boundarySubscriber.dispose();
                if (this.windows.decrementAndGet() == 0) {
                    io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super Cfor<T>> subscriber = this.downstream;
            io.reactivex.internal.queue.Cdo<Object> cdo = this.queue;
            h4 h4Var = this.errors;
            long j = this.emitted;
            int iAddAndGet = 1;
            while (this.windows.get() != 0) {
                Celse<T> celse = this.window;
                boolean z = this.done;
                if (z && h4Var.get() != null) {
                    cdo.clear();
                    Throwable thTerminate = h4Var.terminate();
                    if (celse != 0) {
                        this.window = null;
                        celse.onError(thTerminate);
                    }
                    subscriber.onError(thTerminate);
                    return;
                }
                Object objPoll = cdo.poll();
                boolean z2 = objPoll == null;
                if (z && z2) {
                    Throwable thTerminate2 = h4Var.terminate();
                    if (thTerminate2 == null) {
                        if (celse != 0) {
                            this.window = null;
                            celse.onComplete();
                        }
                        subscriber.onComplete();
                        return;
                    }
                    if (celse != 0) {
                        this.window = null;
                        celse.onError(thTerminate2);
                    }
                    subscriber.onError(thTerminate2);
                    return;
                }
                if (z2) {
                    this.emitted = j;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else if (objPoll != NEXT_WINDOW) {
                    celse.onNext(objPoll);
                } else {
                    if (celse != 0) {
                        this.window = null;
                        celse.onComplete();
                    }
                    if (!this.stopWindows.get()) {
                        Celse<T> celseT7 = Celse.T7(this.capacityHint, this);
                        this.window = celseT7;
                        this.windows.getAndIncrement();
                        if (j != this.requested.get()) {
                            j++;
                            subscriber.onNext(celseT7);
                        } else {
                            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
                            this.boundarySubscriber.dispose();
                            h4Var.addThrowable(new a01("Could not deliver a window due to lack of requests"));
                            this.done = true;
                        }
                    }
                }
            }
            cdo.clear();
            this.window = null;
        }

        public void innerComplete() {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            this.done = true;
            drain();
        }

        public void innerError(Throwable th) {
            io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        public void innerNext() {
            this.queue.offer(NEXT_WINDOW);
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.boundarySubscriber.dispose();
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.boundarySubscriber.dispose();
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            io.reactivex.internal.subscriptions.Cfor.setOnce(this.upstream, subscription, Long.MAX_VALUE);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            r6.m6775do(this.requested, j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.windows.decrementAndGet() == 0) {
                io.reactivex.internal.subscriptions.Cfor.cancel(this.upstream);
            }
        }
    }

    public q2(Cfor<T> cfor, Publisher<B> publisher, int i) {
        super(cfor);
        this.f25820for = publisher;
        this.f25821new = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Cfor<T>> subscriber) {
        Cif cif = new Cif(subscriber, this.f25821new);
        subscriber.onSubscribe(cif);
        cif.innerNext();
        this.f25820for.subscribe(cif.boundarySubscriber);
        this.f25614if.m5(cif);
    }
}
