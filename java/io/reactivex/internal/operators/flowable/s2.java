package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.p10;
import android.support.v4.r6;
import android.support.v4.t80;
import io.reactivex.Cfor;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.processors.Celse;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: classes3.dex */
public final class s2<T, B> extends io.reactivex.internal.operators.flowable.Cdo<T, Cfor<T>> {

    /* renamed from: for, reason: not valid java name */
    public final Callable<? extends Publisher<B>> f25856for;

    /* renamed from: new, reason: not valid java name */
    public final int f25857new;

    /* renamed from: io.reactivex.internal.operators.flowable.s2$do, reason: invalid class name */
    public static final class Cdo<T, B> extends p10<B> {

        /* renamed from: for, reason: not valid java name */
        public boolean f25858for;

        /* renamed from: if, reason: not valid java name */
        public final Cif<T, B> f25859if;

        public Cdo(Cif<T, B> cif) {
            this.f25859if = cif;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f25858for) {
                return;
            }
            this.f25858for = true;
            this.f25859if.innerComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f25858for) {
                jp1.l(th);
            } else {
                this.f25858for = true;
                this.f25859if.innerError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(B b) {
            if (this.f25858for) {
                return;
            }
            this.f25858for = true;
            dispose();
            this.f25859if.innerNext(this);
        }
    }

    /* renamed from: io.reactivex.internal.operators.flowable.s2$if, reason: invalid class name */
    public static final class Cif<T, B> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, Runnable {
        public static final Cdo<Object, Object> BOUNDARY_DISPOSED = new Cdo<>(null);
        public static final Object NEXT_WINDOW = new Object();
        private static final long serialVersionUID = 2233020065421370272L;
        public final int capacityHint;
        public volatile boolean done;
        public final Subscriber<? super Cfor<T>> downstream;
        public long emitted;
        public final Callable<? extends Publisher<B>> other;
        public Subscription upstream;
        public Celse<T> window;
        public final AtomicReference<Cdo<T, B>> boundarySubscriber = new AtomicReference<>();
        public final AtomicInteger windows = new AtomicInteger(1);
        public final io.reactivex.internal.queue.Cdo<Object> queue = new io.reactivex.internal.queue.Cdo<>();
        public final h4 errors = new h4();
        public final AtomicBoolean stopWindows = new AtomicBoolean();
        public final AtomicLong requested = new AtomicLong();

        public Cif(Subscriber<? super Cfor<T>> subscriber, int i, Callable<? extends Publisher<B>> callable) {
            this.downstream = subscriber;
            this.capacityHint = i;
            this.other = callable;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.stopWindows.compareAndSet(false, true)) {
                disposeBoundary();
                if (this.windows.decrementAndGet() == 0) {
                    this.upstream.cancel();
                }
            }
        }

        public void disposeBoundary() {
            AtomicReference<Cdo<T, B>> atomicReference = this.boundarySubscriber;
            Cdo<Object, Object> cdo = BOUNDARY_DISPOSED;
            Disposable disposable = (Disposable) atomicReference.getAndSet(cdo);
            if (disposable == null || disposable == cdo) {
                return;
            }
            disposable.dispose();
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
                        if (j != this.requested.get()) {
                            Celse<T> celseT7 = Celse.T7(this.capacityHint, this);
                            this.window = celseT7;
                            this.windows.getAndIncrement();
                            try {
                                Publisher publisher = (Publisher) io.reactivex.internal.functions.Cif.m29468else(this.other.call(), "The other Callable returned a null Publisher");
                                Cdo<T, B> cdo2 = new Cdo<>(this);
                                if (this.boundarySubscriber.compareAndSet(null, cdo2)) {
                                    publisher.subscribe(cdo2);
                                    j++;
                                    subscriber.onNext(celseT7);
                                }
                            } catch (Throwable th) {
                                t80.m7781if(th);
                                h4Var.addThrowable(th);
                                this.done = true;
                            }
                        } else {
                            this.upstream.cancel();
                            disposeBoundary();
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
            this.upstream.cancel();
            this.done = true;
            drain();
        }

        public void innerError(Throwable th) {
            this.upstream.cancel();
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        public void innerNext(Cdo<T, B> cdo) {
            this.boundarySubscriber.compareAndSet(cdo, null);
            this.queue.offer(NEXT_WINDOW);
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            disposeBoundary();
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            disposeBoundary();
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
            if (io.reactivex.internal.subscriptions.Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                this.queue.offer(NEXT_WINDOW);
                drain();
                subscription.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            r6.m6775do(this.requested, j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.windows.decrementAndGet() == 0) {
                this.upstream.cancel();
            }
        }
    }

    public s2(Cfor<T> cfor, Callable<? extends Publisher<B>> callable, int i) {
        super(cfor);
        this.f25856for = callable;
        this.f25857new = i;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super Cfor<T>> subscriber) {
        this.f25614if.m5(new Cif(subscriber, this.f25857new, this.f25856for));
    }
}
