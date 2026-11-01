package io.reactivex.internal.operators.flowable;

import android.support.v4.a01;
import android.support.v4.e12;
import android.support.v4.h4;
import android.support.v4.jp1;
import android.support.v4.r6;
import android.support.v4.t80;
import android.support.v4.wm0;
import io.reactivex.FlowableSubscriber;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Cif;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport;
import io.reactivex.internal.subscriptions.Cfor;
import io.reactivex.internal.util.Ctry;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* renamed from: io.reactivex.internal.operators.flowable.return, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Creturn<T, R> extends io.reactivex.internal.operators.flowable.Cdo<T, R> {

    /* renamed from: case, reason: not valid java name */
    public final Ctry f25846case;

    /* renamed from: for, reason: not valid java name */
    public final Function<? super T, ? extends Publisher<? extends R>> f25847for;

    /* renamed from: new, reason: not valid java name */
    public final int f25848new;

    /* renamed from: try, reason: not valid java name */
    public final int f25849try;

    /* renamed from: io.reactivex.internal.operators.flowable.return$do, reason: invalid class name */
    public static final class Cdo<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, InnerQueuedSubscriberSupport<R> {
        private static final long serialVersionUID = -4255299542215038287L;
        public volatile boolean cancelled;
        public volatile wm0<R> current;
        public volatile boolean done;
        public final Subscriber<? super R> downstream;
        public final Ctry errorMode;
        public final Function<? super T, ? extends Publisher<? extends R>> mapper;
        public final int maxConcurrency;
        public final int prefetch;
        public final e12<wm0<R>> subscribers;
        public Subscription upstream;
        public final h4 errors = new h4();
        public final AtomicLong requested = new AtomicLong();

        public Cdo(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2, Ctry ctry) {
            this.downstream = subscriber;
            this.mapper = function;
            this.maxConcurrency = i;
            this.prefetch = i2;
            this.errorMode = ctry;
            this.subscribers = new e12<>(Math.min(i2, i));
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            drainAndCancel();
        }

        public void cancelAll() {
            wm0<R> wm0Var = this.current;
            this.current = null;
            if (wm0Var != null) {
                wm0Var.cancel();
            }
            while (true) {
                wm0<R> wm0VarPoll = this.subscribers.poll();
                if (wm0VarPoll == null) {
                    return;
                } else {
                    wm0VarPoll.cancel();
                }
            }
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        public void drain() {
            wm0<R> wm0VarPoll;
            int i;
            long j;
            boolean z;
            SimpleQueue<R> simpleQueueQueue;
            if (getAndIncrement() != 0) {
                return;
            }
            wm0<R> wm0Var = this.current;
            Subscriber<? super R> subscriber = this.downstream;
            Ctry ctry = this.errorMode;
            int iAddAndGet = 1;
            while (true) {
                long j2 = this.requested.get();
                if (wm0Var != null) {
                    wm0VarPoll = wm0Var;
                } else {
                    if (ctry != Ctry.END && this.errors.get() != null) {
                        cancelAll();
                        subscriber.onError(this.errors.terminate());
                        return;
                    }
                    boolean z2 = this.done;
                    wm0VarPoll = this.subscribers.poll();
                    if (z2 && wm0VarPoll == null) {
                        Throwable thTerminate = this.errors.terminate();
                        if (thTerminate != null) {
                            subscriber.onError(thTerminate);
                            return;
                        } else {
                            subscriber.onComplete();
                            return;
                        }
                    }
                    if (wm0VarPoll != null) {
                        this.current = wm0VarPoll;
                    }
                }
                if (wm0VarPoll == null || (simpleQueueQueue = wm0VarPoll.queue()) == null) {
                    i = iAddAndGet;
                    j = 0;
                    z = false;
                } else {
                    i = iAddAndGet;
                    j = 0;
                    while (j != j2) {
                        if (this.cancelled) {
                            cancelAll();
                            return;
                        }
                        if (ctry == Ctry.IMMEDIATE && this.errors.get() != null) {
                            this.current = null;
                            wm0VarPoll.cancel();
                            cancelAll();
                            subscriber.onError(this.errors.terminate());
                            return;
                        }
                        boolean zIsDone = wm0VarPoll.isDone();
                        try {
                            R rPoll = simpleQueueQueue.poll();
                            boolean z3 = rPoll == null;
                            if (zIsDone && z3) {
                                this.current = null;
                                this.upstream.request(1L);
                                wm0VarPoll = null;
                                z = true;
                                break;
                            }
                            if (z3) {
                                break;
                            }
                            subscriber.onNext(rPoll);
                            j++;
                            wm0VarPoll.requestOne();
                        } catch (Throwable th) {
                            t80.m7781if(th);
                            this.current = null;
                            wm0VarPoll.cancel();
                            cancelAll();
                            subscriber.onError(th);
                            return;
                        }
                    }
                    z = false;
                    if (j == j2) {
                        if (this.cancelled) {
                            cancelAll();
                            return;
                        }
                        if (ctry == Ctry.IMMEDIATE && this.errors.get() != null) {
                            this.current = null;
                            wm0VarPoll.cancel();
                            cancelAll();
                            subscriber.onError(this.errors.terminate());
                            return;
                        }
                        boolean zIsDone2 = wm0VarPoll.isDone();
                        boolean zIsEmpty = simpleQueueQueue.isEmpty();
                        if (zIsDone2 && zIsEmpty) {
                            this.current = null;
                            this.upstream.request(1L);
                            wm0VarPoll = null;
                            z = true;
                        }
                    }
                }
                if (j != 0 && j2 != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j);
                }
                if (z) {
                    wm0Var = wm0VarPoll;
                    iAddAndGet = i;
                } else {
                    iAddAndGet = addAndGet(-i);
                    if (iAddAndGet == 0) {
                        return;
                    } else {
                        wm0Var = wm0VarPoll;
                    }
                }
            }
        }

        public void drainAndCancel() {
            if (getAndIncrement() == 0) {
                do {
                    cancelAll();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        public void innerComplete(wm0<R> wm0Var) {
            wm0Var.setDone();
            drain();
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        public void innerError(wm0<R> wm0Var, Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
                return;
            }
            wm0Var.setDone();
            if (this.errorMode != Ctry.END) {
                this.upstream.cancel();
            }
            drain();
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        public void innerNext(wm0<R> wm0Var, R r) {
            if (wm0Var.queue().offer(r)) {
                drain();
            } else {
                wm0Var.cancel();
                innerError(wm0Var, new a01());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.errors.addThrowable(th)) {
                jp1.l(th);
            } else {
                this.done = true;
                drain();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Publisher publisher = (Publisher) Cif.m29468else(this.mapper.apply(t), "The mapper returned a null Publisher");
                wm0<R> wm0Var = new wm0<>(this, this.prefetch);
                if (this.cancelled) {
                    return;
                }
                this.subscribers.offer(wm0Var);
                publisher.subscribe(wm0Var);
                if (this.cancelled) {
                    wm0Var.cancel();
                    drainAndCancel();
                }
            } catch (Throwable th) {
                t80.m7781if(th);
                this.upstream.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (Cfor.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                int i = this.maxConcurrency;
                subscription.request(i == Integer.MAX_VALUE ? Long.MAX_VALUE : i);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (Cfor.validate(j)) {
                r6.m6775do(this.requested, j);
                drain();
            }
        }
    }

    public Creturn(io.reactivex.Cfor<T> cfor, Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2, Ctry ctry) {
        super(cfor);
        this.f25847for = function;
        this.f25848new = i;
        this.f25849try = i2;
        this.f25846case = ctry;
    }

    @Override // io.reactivex.Cfor
    public void n5(Subscriber<? super R> subscriber) {
        this.f25614if.m5(new Cdo(subscriber, this.f25847for, this.f25848new, this.f25849try, this.f25846case));
    }
}
